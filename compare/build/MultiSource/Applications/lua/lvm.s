	.file	"lvm.c"
	.text
	.hidden	luaV_tonumber                   # -- Begin function luaV_tonumber
	.globl	luaV_tonumber
	.p2align	5
	.type	luaV_tonumber,@function
luaV_tonumber:                          # @luaV_tonumber
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 8
	ori	$a3, $zero, 3
	beq	$a2, $a3, .LBB0_6
# %bb.1:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB0_4
# %bb.2:                                # %land.lhs.true
	ld.d	$a0, $a0, 0
	addi.d	$a0, $a0, 24
	move	$fp, $a1
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(luaO_str2d)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_4
# %bb.3:                                # %if.then3
	move	$a0, $fp
	fld.d	$fa0, $sp, 8
	fst.d	$fa0, $fp, 0
	ori	$a1, $zero, 3
	st.w	$a1, $fp, 8
	b	.LBB0_5
.LBB0_4:                                # %if.else
	move	$a0, $zero
.LBB0_5:
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB0_6:                                # %cleanup
	ret
.Lfunc_end0:
	.size	luaV_tonumber, .Lfunc_end0-luaV_tonumber
                                        # -- End function
	.hidden	luaV_tostring                   # -- Begin function luaV_tostring
	.globl	luaV_tostring
	.p2align	5
	.type	luaV_tostring,@function
luaV_tostring:                          # @luaV_tostring
# %bb.0:                                # %entry
	ld.w	$a2, $a1, 8
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB1_2
# %bb.1:                                # %if.else
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a2, $a1, 0
	pcalau12i	$a3, %pc_hi20(.L.str)
	addi.d	$a3, $a3, %pc_lo12(.L.str)
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	move	$s0, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s0, 8
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB1_2:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	luaV_tostring, .Lfunc_end1-luaV_tostring
                                        # -- End function
	.hidden	luaV_gettable                   # -- Begin function luaV_gettable
	.globl	luaV_gettable
	.p2align	5
	.type	luaV_gettable,@function
luaV_gettable:                          # @luaV_gettable
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
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	ld.w	$a1, $a1, 8
	ori	$s6, $zero, 100
	ori	$s7, $zero, 5
	ori	$s8, $zero, 6
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s3, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB2_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bne	$a1, $s7, .LBB2_6
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.d	$s5, $s2, 0
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(luaH_get)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.w	$a0, $a0, 8
	bnez	$a0, .LBB2_11
# %bb.3:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.d	$a0, $s5, 16
	beqz	$a0, .LBB2_11
# %bb.4:                                # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.bu	$a1, $a0, 10
	andi	$a1, $a1, 1
	bnez	$a1, .LBB2_11
# %bb.5:                                # %cond.end10
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.d	$a1, $fp, 32
	ld.d	$a2, $a1, 296
	move	$a1, $zero
	pcaddu18i	$ra, %call36(luaT_gettm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_8
	b	.LBB2_11
	.p2align	4, , 16
.LBB2_6:                                # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(luaT_gettmbyobj)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 8
	bnez	$a1, .LBB2_8
# %bb.7:                                # %if.then24
                                        #   in Loop: Header=BB2_1 Depth=1
	move	$s4, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(luaG_typeerror)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	.p2align	4, , 16
.LBB2_8:                                # %if.end26
                                        #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a1, $a0, 8
	beq	$a1, $s8, .LBB2_12
# %bb.9:                                # %for.cond
                                        #   in Loop: Header=BB2_1 Depth=1
	addi.w	$s6, $s6, -1
	move	$s2, $a0
	bnez	$s6, .LBB2_1
# %bb.10:                               # %for.end
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
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
	pcaddu18i	$t8, %call36(luaG_runerror)
	jr	$t8
.LBB2_11:                               # %if.then14
	ld.d	$a0, $s4, 0
	st.d	$a0, $s0, 0
	ld.w	$a0, $s4, 8
	st.w	$a0, $s0, 8
	b	.LBB2_15
.LBB2_12:                               # %if.then30
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 0
	ld.d	$s3, $fp, 64
	st.d	$a2, $a1, 0
	ld.w	$a0, $a0, 8
	st.w	$a0, $a1, 8
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 16
	ld.w	$a1, $s2, 8
	st.w	$a1, $a0, 24
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 32
	ld.d	$a2, $fp, 56
	ld.d	$a1, $fp, 16
	ld.w	$a3, $s1, 8
	sub.d	$a2, $a2, $a1
	ori	$a4, $zero, 48
	st.w	$a3, $a0, 40
	blt	$a4, $a2, .LBB2_14
# %bb.13:                               # %if.then.i
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB2_14:                               # %callTMres.exit
	sub.d	$s0, $s0, $s3
	addi.d	$a0, $a1, 48
	st.d	$a0, $fp, 16
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_call)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 64
	addi.d	$a2, $a0, -16
	st.d	$a2, $fp, 16
	ld.d	$a2, $a0, -16
	stx.d	$a2, $a1, $s0
	ld.w	$a0, $a0, -8
	add.d	$a1, $a1, $s0
	st.w	$a0, $a1, 8
.LBB2_15:                               # %cleanup35
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
.Lfunc_end2:
	.size	luaV_gettable, .Lfunc_end2-luaV_gettable
                                        # -- End function
	.hidden	luaV_settable                   # -- Begin function luaV_settable
	.globl	luaV_settable
	.p2align	5
	.type	luaV_settable,@function
luaV_settable:                          # @luaV_settable
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
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	ld.w	$a1, $a1, 8
	ori	$s6, $zero, 100
	ori	$s7, $zero, 5
	ori	$s8, $zero, 6
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s3, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB3_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bne	$a1, $s7, .LBB3_6
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$s4, $s2, 0
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(luaH_set)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.w	$a0, $a0, 8
	bnez	$a0, .LBB3_11
# %bb.3:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $s4, 16
	beqz	$a0, .LBB3_11
# %bb.4:                                # %cond.false
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.bu	$a1, $a0, 10
	andi	$a1, $a1, 2
	bnez	$a1, .LBB3_11
# %bb.5:                                # %cond.end10
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a1, $fp, 32
	ld.d	$a2, $a1, 304
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(luaT_gettm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_8
	b	.LBB3_11
	.p2align	4, , 16
.LBB3_6:                                # %if.else
                                        #   in Loop: Header=BB3_1 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaT_gettmbyobj)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 8
	bnez	$a1, .LBB3_8
# %bb.7:                                # %if.then38
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$s4, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(luaG_typeerror)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	.p2align	4, , 16
.LBB3_8:                                # %if.end40
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.w	$a1, $a0, 8
	beq	$a1, $s8, .LBB3_15
# %bb.9:                                # %for.cond
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.w	$s6, $s6, -1
	move	$s2, $a0
	bnez	$s6, .LBB3_1
# %bb.10:                               # %for.end
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
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
	pcaddu18i	$t8, %call36(luaG_runerror)
	jr	$t8
.LBB3_11:                               # %if.then14
	ld.d	$a0, $s0, 0
	st.d	$a0, $s5, 0
	ld.w	$a0, $s0, 8
	ori	$a1, $zero, 4
	st.w	$a0, $s5, 8
	blt	$a0, $a1, .LBB3_14
# %bb.12:                               # %land.lhs.true
	ld.d	$a0, $s0, 0
	ld.bu	$a0, $a0, 9
	andi	$a0, $a0, 3
	beqz	$a0, .LBB3_14
# %bb.13:                               # %land.lhs.true26
	ld.bu	$a0, $s4, 9
	andi	$a0, $a0, 4
	bnez	$a0, .LBB3_18
.LBB3_14:                               # %cleanup49
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
.LBB3_15:                               # %if.then44
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	ld.w	$a0, $a0, 8
	st.w	$a0, $a1, 8
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 16
	ld.w	$a1, $s2, 8
	st.w	$a1, $a0, 24
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 32
	ld.w	$a1, $s1, 8
	st.w	$a1, $a0, 40
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 48
	ld.d	$a2, $fp, 56
	ld.d	$a1, $fp, 16
	ld.w	$a3, $s0, 8
	sub.d	$a2, $a2, $a1
	ori	$a4, $zero, 64
	st.w	$a3, $a0, 56
	blt	$a4, $a2, .LBB3_17
# %bb.16:                               # %if.then.i
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB3_17:                               # %callTM.exit
	addi.d	$a0, $a1, 64
	st.d	$a0, $fp, 16
	move	$a0, $fp
	move	$a2, $zero
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
	pcaddu18i	$t8, %call36(luaD_call)
	jr	$t8
.LBB3_18:                               # %if.then31
	move	$a0, $fp
	move	$a1, $s4
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
	pcaddu18i	$t8, %call36(luaC_barrierback)
	jr	$t8
.Lfunc_end3:
	.size	luaV_settable, .Lfunc_end3-luaV_settable
                                        # -- End function
	.hidden	luaV_lessthan                   # -- Begin function luaV_lessthan
	.globl	luaV_lessthan
	.p2align	5
	.type	luaV_lessthan,@function
luaV_lessthan:                          # @luaV_lessthan
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a3, $a1, 8
	ld.w	$a4, $a2, 8
	bne	$a3, $a4, .LBB4_13
# %bb.1:                                # %if.else
	ori	$a4, $zero, 4
	beq	$a3, $a4, .LBB4_4
# %bb.2:                                # %if.else
	ori	$a4, $zero, 3
	bne	$a3, $a4, .LBB4_6
# %bb.3:                                # %if.then4
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	b	.LBB4_7
.LBB4_4:                                # %if.then11
	ld.d	$s2, $a1, 0
	ld.d	$s1, $a2, 0
	addi.d	$fp, $s2, 24
	addi.d	$s0, $s1, 24
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcoll)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_8
.LBB4_5:                                # %l_strcmp.exit
	bstrpick.d	$a0, $a0, 31, 31
	b	.LBB4_7
.LBB4_6:                                # %if.else17
	ori	$a3, $zero, 13
	move	$s1, $a0
	move	$s0, $a1
	move	$fp, $a2
	pcaddu18i	$ra, %call36(call_orderTM)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB4_12
.LBB4_7:                                # %cleanup
	addi.w	$a0, $a0, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_8:                                # %if.else.preheader.i
	ld.d	$s1, $s1, 16
	ld.d	$s3, $s2, 16
	addi.w	$s2, $zero, -1
	.p2align	4, , 16
.LBB4_9:                                # %if.else.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB4_14
# %bb.10:                               # %if.else8.i
                                        #   in Loop: Header=BB4_9 Depth=1
	beq	$a0, $s3, .LBB4_15
# %bb.11:                               # %cleanup16.i
                                        #   in Loop: Header=BB4_9 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$fp, $fp, $a0
	sub.d	$s3, $s3, $a0
	add.d	$s0, $s0, $a0
	sub.d	$s1, $s1, $a0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcoll)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_9
	b	.LBB4_5
.LBB4_12:                               # %if.end24
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
.LBB4_13:                               # %if.then
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(luaG_ordererror)
	jr	$t8
.LBB4_14:
	move	$a0, $zero
	b	.LBB4_5
.LBB4_15:
	move	$a0, $s2
	b	.LBB4_5
.Lfunc_end4:
	.size	luaV_lessthan, .Lfunc_end4-luaV_lessthan
                                        # -- End function
	.p2align	5                               # -- Begin function call_orderTM
	.type	call_orderTM,@function
call_orderTM:                           # @call_orderTM
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s4, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	move	$a2, $a3
	pcaddu18i	$ra, %call36(luaT_gettmbyobj)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.w	$a0, $a0, 8
	addi.w	$s2, $zero, -1
	beqz	$a0, .LBB5_8
# %bb.1:                                # %if.end
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(luaT_gettmbyobj)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(luaO_rawequalObj)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_8
# %bb.2:                                # %if.end4
	ld.d	$s2, $fp, 16
	ld.d	$a0, $s3, 0
	ld.d	$s4, $fp, 64
	st.d	$a0, $s2, 0
	ld.w	$a0, $s3, 8
	st.w	$a0, $s2, 8
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 16
	ld.w	$a1, $s1, 8
	st.w	$a1, $a0, 24
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 32
	ld.d	$a2, $fp, 56
	ld.d	$a1, $fp, 16
	ld.w	$a3, $s0, 8
	sub.d	$a2, $a2, $a1
	ori	$a4, $zero, 48
	st.w	$a3, $a0, 40
	blt	$a4, $a2, .LBB5_4
# %bb.3:                                # %if.then.i
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB5_4:                                # %callTMres.exit
	sub.d	$s1, $s2, $s4
	addi.d	$a0, $a1, 48
	st.d	$a0, $fp, 16
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_call)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 64
	addi.d	$a2, $a0, -16
	st.d	$a2, $fp, 16
	ld.d	$a2, $a0, -16
	stx.d	$a2, $a1, $s1
	ld.w	$a2, $a0, -8
	ld.d	$a0, $fp, 16
	add.d	$a1, $a1, $s1
	st.w	$a2, $a1, 8
	ld.w	$s2, $a0, 8
	beqz	$s2, .LBB5_8
# %bb.5:                                # %callTMres.exit
	bne	$s2, $s0, .LBB5_7
# %bb.6:                                # %land.rhs
	ld.w	$a0, $a0, 0
	sltu	$s2, $zero, $a0
	b	.LBB5_8
.LBB5_7:                                # %lor.end.fold.split
	ori	$s2, $zero, 1
.LBB5_8:                                # %cleanup
	move	$a0, $s2
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
	.size	call_orderTM, .Lfunc_end5-call_orderTM
                                        # -- End function
	.hidden	luaV_equalval                   # -- Begin function luaV_equalval
	.globl	luaV_equalval
	.p2align	5
	.type	luaV_equalval,@function
luaV_equalval:                          # @luaV_equalval
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a4, $a1, 8
	ori	$a5, $zero, 7
	bltu	$a5, $a4, .LBB6_2
# %bb.1:                                # %entry
	move	$a3, $a0
	ori	$a0, $zero, 1
	slli.d	$a4, $a4, 2
	pcalau12i	$a5, %pc_hi20(.LJTI6_0)
	addi.d	$a5, $a5, %pc_lo12(.LJTI6_0)
	ldx.w	$a4, $a5, $a4
	add.d	$a4, $a5, $a4
	jr	$a4
.LBB6_2:                                # %sw.bb8
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a2, 0
	b	.LBB6_4
.LBB6_3:                                # %sw.bb3
	ld.w	$a0, $a1, 0
	ld.w	$a1, $a2, 0
.LBB6_4:                                # %cleanup
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	b	.LBB6_27
.LBB6_5:                                # %sw.bb13
	ld.d	$a5, $a1, 0
	ld.d	$a4, $a2, 0
	beq	$a5, $a4, .LBB6_27
# %bb.6:                                # %if.end
	ld.d	$s0, $a5, 16
	beqz	$s0, .LBB6_26
# %bb.7:                                # %cond.false.i
	ld.bu	$a0, $s0, 10
	andi	$a0, $a0, 16
	bnez	$a0, .LBB6_26
# %bb.8:                                # %cond.end3.i
	move	$s1, $a1
	move	$s2, $a2
	move	$s3, $a3
	ld.d	$a0, $a3, 32
	ld.d	$fp, $a4, 16
	ld.d	$a2, $a0, 328
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaT_gettm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_26
# %bb.9:                                # %if.end.i
	beq	$s0, $fp, .LBB6_20
.LBB6_10:                               # %if.end10.i
	beqz	$fp, .LBB6_26
# %bb.11:                               # %cond.false14.i
	ld.bu	$a2, $fp, 10
	andi	$a2, $a2, 16
	bnez	$a2, .LBB6_26
# %bb.12:                               # %cond.end29.i
	move	$s0, $a0
	ld.d	$a0, $s3, 32
	ld.d	$a2, $a0, 328
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaT_gettm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_26
# %bb.13:                               # %if.end34.i
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaO_rawequalObj)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	move	$fp, $s3
	move	$a2, $s1
	bnez	$a1, .LBB6_21
	b	.LBB6_26
.LBB6_14:                               # %sw.bb1
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	b	.LBB6_27
.LBB6_15:                               # %sw.bb21
	ld.d	$a5, $a1, 0
	ld.d	$a4, $a2, 0
	beq	$a5, $a4, .LBB6_27
# %bb.16:                               # %if.end27
	ld.d	$s0, $a5, 16
	beqz	$s0, .LBB6_26
# %bb.17:                               # %cond.false.i30
	ld.bu	$a0, $s0, 10
	andi	$a0, $a0, 16
	bnez	$a0, .LBB6_26
# %bb.18:                               # %cond.end3.i34
	move	$s1, $a1
	move	$s2, $a2
	move	$s3, $a3
	ld.d	$a0, $a3, 32
	ld.d	$fp, $a4, 16
	ld.d	$a2, $a0, 328
	ori	$a1, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(luaT_gettm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_26
# %bb.19:                               # %if.end.i39
	bne	$s0, $fp, .LBB6_10
.LBB6_20:
	move	$fp, $s3
	move	$a2, $s1
.LBB6_21:                               # %if.end40
	ld.d	$s0, $fp, 16
	ld.d	$a1, $a0, 0
	ld.d	$s1, $fp, 64
	st.d	$a1, $s0, 0
	ld.w	$a0, $a0, 8
	st.w	$a0, $s0, 8
	ld.d	$a0, $fp, 16
	ld.d	$a1, $a2, 0
	st.d	$a1, $a0, 16
	ld.w	$a1, $a2, 8
	st.w	$a1, $a0, 24
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 32
	ld.d	$a2, $fp, 56
	ld.d	$a1, $fp, 16
	ld.w	$a3, $s2, 8
	sub.d	$a2, $a2, $a1
	ori	$a4, $zero, 48
	st.w	$a3, $a0, 40
	blt	$a4, $a2, .LBB6_23
# %bb.22:                               # %if.then.i
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB6_23:                               # %callTMres.exit
	sub.d	$s1, $s0, $s1
	addi.d	$a0, $a1, 48
	st.d	$a0, $fp, 16
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_call)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 64
	addi.d	$a2, $a0, -16
	st.d	$a2, $fp, 16
	ld.d	$a2, $a0, -16
	stx.d	$a2, $a1, $s1
	ld.w	$a2, $a0, -8
	ld.d	$a0, $fp, 16
	add.d	$a1, $a1, $s1
	st.w	$a2, $a1, 8
	ld.w	$a1, $a0, 8
	beqz	$a1, .LBB6_26
# %bb.24:                               # %callTMres.exit
	bne	$a1, $s0, .LBB6_28
# %bb.25:                               # %land.rhs
	ld.w	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	b	.LBB6_27
.LBB6_26:
	move	$a0, $zero
.LBB6_27:                               # %cleanup
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_28:                               # %lor.end.fold.split
	ori	$a0, $zero, 1
	b	.LBB6_27
.Lfunc_end6:
	.size	luaV_equalval, .Lfunc_end6-luaV_equalval
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI6_0:
	.word	.LBB6_27-.LJTI6_0
	.word	.LBB6_3-.LJTI6_0
	.word	.LBB6_2-.LJTI6_0
	.word	.LBB6_14-.LJTI6_0
	.word	.LBB6_2-.LJTI6_0
	.word	.LBB6_15-.LJTI6_0
	.word	.LBB6_2-.LJTI6_0
	.word	.LBB6_5-.LJTI6_0
                                        # -- End function
	.text
	.hidden	luaV_concat                     # -- Begin function luaV_concat
	.globl	luaV_concat
	.p2align	5
	.type	luaV_concat,@function
luaV_concat:                            # @luaV_concat
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
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	move	$fp, $a2
	move	$s8, $a1
	move	$s1, $a0
	ori	$s7, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_1:                                # %if.then
                                        #   in Loop: Header=BB7_3 Depth=1
	ori	$a4, $zero, 15
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(call_binTM)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 1
	beqz	$a0, .LBB7_16
.LBB7_2:                                # %if.end83
                                        #   in Loop: Header=BB7_3 Depth=1
	sub.w	$s8, $s8, $s0
	sub.w	$fp, $fp, $s0
	bge	$s7, $s8, .LBB7_23
.LBB7_3:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_11 Depth 2
                                        #     Child Loop BB7_21 Depth 2
	ld.d	$s0, $s1, 24
	alsl.d	$s4, $fp, $s0, 4
	ld.w	$a0, $s4, -8
	addi.w	$a0, $a0, -3
	addi.d	$s5, $s4, -16
	bltu	$s7, $a0, .LBB7_1
# %bb.4:                                # %lor.lhs.false6
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a0, $s4, 8
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB7_7
# %bb.5:                                # %lor.lhs.false6
                                        #   in Loop: Header=BB7_3 Depth=1
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB7_1
# %bb.6:                                # %luaV_tostring.exit
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a2, $s4, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a1, $sp, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s4, 8
.LBB7_7:                                # %if.else
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$s6, $a0, 16
	beqz	$s6, .LBB7_17
# %bb.8:                                # %for.cond.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	ori	$s0, $zero, 1
	ori	$a0, $zero, 2
	blt	$s8, $a0, .LBB7_20
# %bb.9:                                # %land.rhs.preheader
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s3, $s8, -1
	ori	$s0, $zero, 1
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_10:                               # %if.end56
                                        #   in Loop: Header=BB7_11 Depth=2
	add.d	$s6, $s2, $s6
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, -1
	addi.d	$s5, $s5, -16
	beqz	$s3, .LBB7_19
.LBB7_11:                               # %land.rhs
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s5, 8
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB7_14
# %bb.12:                               # %land.rhs
                                        #   in Loop: Header=BB7_11 Depth=2
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB7_20
# %bb.13:                               # %luaV_tostring.exit69
                                        #   in Loop: Header=BB7_11 Depth=2
	ld.d	$a2, $s5, 0
	addi.d	$a0, $sp, 56
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a1, $sp, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s5, 8
.LBB7_14:                               # %for.body
                                        #   in Loop: Header=BB7_11 Depth=2
	ld.d	$a0, $s5, 0
	ld.d	$s2, $a0, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s6
	bltu	$s2, $a0, .LBB7_10
# %bb.15:                               # %if.then55
                                        #   in Loop: Header=BB7_11 Depth=2
	move	$a0, $s1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(luaG_runerror)
	jirl	$ra, $ra, 0
	b	.LBB7_10
	.p2align	4, , 16
.LBB7_16:                               # %if.then17
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(luaG_concaterror)
	jirl	$ra, $ra, 0
	b	.LBB7_2
.LBB7_17:                               # %if.then22
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.w	$a0, $s4, -8
	ori	$s0, $zero, 1
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB7_2
# %bb.18:                               # %if.else.i56
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a2, $s4, -16
	addi.d	$a0, $sp, 56
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	addi.d	$a1, $sp, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, -16
	ori	$a0, $zero, 4
	st.w	$a0, $s4, -8
	b	.LBB7_2
.LBB7_19:                               #   in Loop: Header=BB7_3 Depth=1
	move	$s0, $s8
.LBB7_20:                               # %for.end
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $s1, 32
	addi.d	$a1, $s4, 16
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $a0, 88
	move	$a0, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(luaZ_openspace)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$s5, $zero
	bstrpick.d	$a0, $s0, 31, 0
	addi.d	$s3, $s0, 1
	slli.d	$a1, $fp, 4
	slli.d	$a0, $a0, 4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	sub.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$s2, $a0, 16
	.p2align	4, , 16
.LBB7_21:                               # %for.body60
                                        #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 0
	ld.d	$s6, $a1, 16
	add.d	$a0, $s4, $s5
	addi.d	$a1, $a1, 24
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$s5, $s6, $s5
	addi.w	$s3, $s3, -1
	addi.d	$s2, $s2, 16
	blt	$s7, $s3, .LBB7_21
# %bb.22:                               # %for.end75
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$s2, $a0, $a1
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(luaS_newlstr)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	ori	$a0, $zero, 4
	st.w	$a0, $s2, 8
	addi.d	$s0, $s0, -1
	b	.LBB7_2
.LBB7_23:                               # %do.end
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
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
.Lfunc_end7:
	.size	luaV_concat, .Lfunc_end7-luaV_concat
                                        # -- End function
	.p2align	5                               # -- Begin function call_binTM
	.type	call_binTM,@function
call_binTM:                             # @call_binTM
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s3, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$fp, $a0
	move	$a2, $a4
	pcaddu18i	$ra, %call36(luaT_gettmbyobj)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 8
	bnez	$a1, .LBB8_2
# %bb.1:                                # %if.end
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(luaT_gettmbyobj)
	jirl	$ra, $ra, 0
	ld.w	$a1, $a0, 8
	beqz	$a1, .LBB8_6
.LBB8_2:                                # %if.end5
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 0
	ld.d	$s3, $fp, 64
	st.d	$a2, $a1, 0
	ld.w	$a0, $a0, 8
	st.w	$a0, $a1, 8
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 16
	ld.w	$a1, $s2, 8
	st.w	$a1, $a0, 24
	ld.d	$a0, $fp, 16
	ld.d	$a1, $s1, 0
	st.d	$a1, $a0, 32
	ld.d	$a2, $fp, 56
	ld.d	$a1, $fp, 16
	ld.w	$a3, $s1, 8
	sub.d	$a2, $a2, $a1
	ori	$a4, $zero, 48
	st.w	$a3, $a0, 40
	blt	$a4, $a2, .LBB8_4
# %bb.3:                                # %if.then.i
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
.LBB8_4:                                # %callTMres.exit
	sub.d	$s1, $s0, $s3
	addi.d	$a0, $a1, 48
	st.d	$a0, $fp, 16
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_call)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 64
	addi.d	$a2, $a0, -16
	st.d	$a2, $fp, 16
	ld.d	$a2, $a0, -16
	stx.d	$a2, $a1, $s1
	ld.w	$a0, $a0, -8
	add.d	$a1, $a1, $s1
	st.w	$a0, $a1, 8
.LBB8_5:                                # %cleanup
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB8_6:
	move	$s0, $zero
	b	.LBB8_5
.Lfunc_end8:
	.size	call_binTM, .Lfunc_end8-call_binTM
                                        # -- End function
	.hidden	luaV_execute                    # -- Begin function luaV_execute
	.globl	luaV_execute
	.p2align	5
	.type	luaV_execute,@function
luaV_execute:                           # @luaV_execute
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
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.LJTI9_0)
	addi.d	$s7, $a0, %pc_lo12(.LJTI9_0)
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, -1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
.LBB9_1:                                # %reentry
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
                                        #       Child Loop BB9_149 Depth 3
                                        #       Child Loop BB9_29 Depth 3
                                        #       Child Loop BB9_162 Depth 3
                                        #       Child Loop BB9_188 Depth 3
                                        #       Child Loop BB9_62 Depth 3
                                        #     Child Loop BB9_201 Depth 2
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a1, 32
	ld.d	$s8, $fp, 48
	ld.d	$s2, $fp, 24
	ld.d	$s0, $a0, 16
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $a1, 40
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB9_6
.LBB9_2:                                # %if.then1058
                                        #   in Loop: Header=BB9_6 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
.LBB9_3:                                # %if.end1081
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaG_runerror)
	jirl	$ra, $ra, 0
.LBB9_4:                                # %if.end1081
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $s3, 0
	fld.d	$fa1, $s3, 32
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s3, 0
	ori	$a0, $zero, 3
	st.w	$a0, $s3, 8
.LBB9_5:                                # %sw.bb661
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -4
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 12
	add.d	$a0, $s8, $a0
	addu16i.d	$a0, $a0, -8
	addi.d	$s8, $a0, 4
	.p2align	4, , 16
.LBB9_6:                                # %for.cond
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_149 Depth 3
                                        #       Child Loop BB9_29 Depth 3
                                        #       Child Loop BB9_162 Depth 3
                                        #       Child Loop BB9_188 Depth 3
                                        #       Child Loop BB9_62 Depth 3
	ld.bu	$a0, $fp, 100
	move	$s1, $s8
	ld.w	$s4, $s8, 0
	andi	$a1, $a0, 12
	addi.d	$s8, $s8, 4
	beqz	$a1, .LBB9_22
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a1, $fp, 108
	addi.w	$a1, $a1, -1
	st.w	$a1, $fp, 108
	andi	$s3, $a0, 4
	beqz	$a1, .LBB9_10
# %bb.8:                                # %lor.lhs.false
                                        #   in Loop: Header=BB9_6 Depth=2
	beqz	$s3, .LBB9_22
# %bb.9:                                # %if.then.thread
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s2, $fp, 48
	st.d	$s8, $fp, 48
	b	.LBB9_12
	.p2align	4, , 16
.LBB9_10:                               # %if.then
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s2, $fp, 48
	andi	$a0, $a0, 8
	st.d	$s8, $fp, 48
	beqz	$a0, .LBB9_12
# %bb.11:                               # %if.then.i
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a0, $fp, 104
	st.w	$a0, $fp, 108
	ori	$a1, $zero, 3
	move	$a0, $fp
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(luaD_callhook)
	jirl	$ra, $ra, 0
.LBB9_12:                               # %if.end.i
                                        #   in Loop: Header=BB9_6 Depth=2
	beqz	$s3, .LBB9_20
# %bb.13:                               # %if.then7.i
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 32
	ld.d	$a1, $a0, 24
	ld.d	$a0, $a0, 40
	sub.d	$a2, $s8, $a1
	srli.d	$a2, $a2, 2
	addi.w	$a3, $a2, -1
	beqz	$a0, .LBB9_17
# %bb.14:                               # %cond.end.thread.i
                                        #   in Loop: Header=BB9_6 Depth=2
	slli.d	$a2, $a3, 2
	ldx.w	$a2, $a0, $a2
	beqz	$a3, .LBB9_19
# %bb.15:                               # %cond.end.thread.i
                                        #   in Loop: Header=BB9_6 Depth=2
	bgeu	$s2, $s8, .LBB9_19
# %bb.16:                               # %cond.end31.i
                                        #   in Loop: Header=BB9_6 Depth=2
	sub.d	$a1, $s2, $a1
	slli.d	$a1, $a1, 30
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	srai.d	$a1, $a1, 32
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	bne	$a2, $a0, .LBB9_19
	b	.LBB9_20
.LBB9_17:                               # %cond.end.i
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a2, $zero
	beqz	$a3, .LBB9_19
# %bb.18:                               # %cond.end.i
                                        #   in Loop: Header=BB9_6 Depth=2
	bltu	$s2, $s8, .LBB9_20
.LBB9_19:                               # %if.then35.i
                                        #   in Loop: Header=BB9_6 Depth=2
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_callhook)
	jirl	$ra, $ra, 0
.LBB9_20:                               # %traceexec.exit
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.bu	$a0, $fp, 10
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB9_210
# %bb.21:                               # %if.end
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s2, $fp, 24
.LBB9_22:                               # %if.end14
                                        #   in Loop: Header=BB9_6 Depth=2
	andi	$a0, $s4, 63
	ori	$a1, $zero, 37
	bltu	$a1, $a0, .LBB9_6
# %bb.23:                               # %if.end14
                                        #   in Loop: Header=BB9_6 Depth=2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s7, $a0
	bstrpick.d	$s5, $s4, 13, 6
	add.d	$a0, $s7, $a0
	alsl.d	$s3, $s5, $s2, 4
	jr	$a0
.LBB9_24:                               # %sw.bb
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	add.d	$a1, $s2, $a0
	ldx.d	$a0, $s2, $a0
	ld.w	$a1, $a1, 8
	st.d	$a0, $s3, 0
	st.w	$a1, $s3, 8
	b	.LBB9_6
.LBB9_25:                               # %sw.bb1229
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 32
	ld.d	$a0, $a0, 32
	lu12i.w	$a1, -4
	lu32i.d	$a1, 0
	and	$a1, $s4, $a1
	srli.d	$a1, $a1, 11
	ldx.d	$s1, $a0, $a1
	ld.bu	$s4, $s1, 112
	ld.d	$a2, $a2, 24
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(luaF_newLclosure)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s1, $a0, 32
	beqz	$s4, .LBB9_31
# %bb.26:                               # %for.body1244.lr.ph
                                        #   in Loop: Header=BB9_6 Depth=2
	addi.d	$s1, $s5, 40
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	b	.LBB9_29
	.p2align	4, , 16
.LBB9_27:                               # %if.else1258
                                        #   in Loop: Header=BB9_29 Depth=3
	alsl.d	$a1, $a0, $s2, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaF_findupval)
	jirl	$ra, $ra, 0
.LBB9_28:                               # %for.inc1268
                                        #   in Loop: Header=BB9_29 Depth=3
	st.d	$a0, $s1, 0
	addi.d	$s8, $s8, 4
	addi.d	$s4, $s4, -1
	addi.d	$s1, $s1, 8
	beqz	$s4, .LBB9_31
.LBB9_29:                               # %for.body1244
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$a0, $s8, 0
	andi	$a1, $a0, 63
	ori	$a2, $zero, 4
	srli.d	$a0, $a0, 23
	bne	$a1, $a2, .LBB9_27
# %bb.30:                               # %if.then1249
                                        #   in Loop: Header=BB9_29 Depth=3
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s6, $a0
	b	.LBB9_28
.LBB9_31:                               # %for.end1271
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s5, $s3, 0
	ori	$a0, $zero, 6
	st.w	$a0, $s3, 8
	ld.d	$a0, $fp, 32
	st.d	$s8, $fp, 48
	ld.d	$a1, $a0, 120
	ld.d	$a0, $a0, 112
	bltu	$a1, $a0, .LBB9_33
# %bb.32:                               # %if.then1282
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaC_step)
	jirl	$ra, $ra, 0
.LBB9_33:                               # %if.end1283
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s2, $fp, 24
	b	.LBB9_6
.LBB9_34:                               # %sw.bb854
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	add.d	$a1, $s2, $a0
	ld.w	$a0, $a1, 8
	beqz	$a0, .LBB9_166
# %bb.35:                               # %sw.bb854
                                        #   in Loop: Header=BB9_6 Depth=2
	ori	$a2, $zero, 1
	bne	$a0, $a2, .LBB9_169
# %bb.36:                               # %land.rhs867
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a2, $a1, 0
	sltui	$a2, $a2, 1
	bstrpick.d	$a3, $s4, 22, 14
	bne	$a2, $a3, .LBB9_167
	b	.LBB9_168
.LBB9_37:                               # %sw.bb445
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	bstrpick.d	$a1, $s4, 31, 23
	addi.w	$a2, $zero, -1
	slt	$a2, $a2, $s4
	bstrpick.d	$a0, $a0, 30, 23
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	masknez	$a1, $s0, $a2
	maskeqz	$a2, $s2, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a0, $a1, 4
	lu12i.w	$a0, 1024
	and	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $a1
	ld.w	$a4, $a2, 8
	srli.d	$a0, $s4, 10
	andi	$a3, $a0, 4080
	ori	$a0, $zero, 3
	add.d	$a3, $a1, $a3
	bne	$a4, $a0, .LBB9_134
# %bb.38:                               # %land.lhs.true485
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a1, $a3, 8
	bne	$a1, $a0, .LBB9_134
# %bb.39:                               # %if.then489
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fdiv.d	$fa2, $fa0, $fa1
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	fneg.d	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	b	.LBB9_171
.LBB9_40:                               # %sw.bb333
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	bstrpick.d	$a1, $s4, 31, 23
	addi.w	$a2, $zero, -1
	slt	$a2, $a2, $s4
	bstrpick.d	$a0, $a0, 30, 23
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	masknez	$a1, $s0, $a2
	maskeqz	$a2, $s2, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a0, $a1, 4
	lu12i.w	$a0, 1024
	and	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $a1
	ld.w	$a4, $a2, 8
	srli.d	$a0, $s4, 10
	andi	$a3, $a0, 4080
	ori	$a0, $zero, 3
	add.d	$a3, $a1, $a3
	bne	$a4, $a0, .LBB9_135
# %bb.41:                               # %land.lhs.true373
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a1, $a3, 8
	bne	$a1, $a0, .LBB9_135
# %bb.42:                               # %if.then377
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB9_171
.LBB9_43:                               # %sw.bb1228
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(luaF_close)
	jirl	$ra, $ra, 0
	b	.LBB9_6
.LBB9_44:                               # %sw.bb193
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	add.d	$a1, $s2, $a0
	ldx.d	$a0, $s2, $a0
	ld.w	$a2, $a1, 8
	st.d	$a0, $s3, 16
	st.w	$a2, $s3, 24
	st.d	$s8, $fp, 48
	b	.LBB9_90
.LBB9_45:                               # %sw.bb57
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 20
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a1, $a0, 0
	b	.LBB9_66
.LBB9_46:                               # %sw.bb225
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	bstrpick.d	$a1, $s4, 31, 23
	addi.w	$a2, $zero, -1
	slt	$a2, $a2, $s4
	bstrpick.d	$a0, $a0, 30, 23
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	masknez	$a1, $s0, $a2
	maskeqz	$a2, $s2, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a0, $a1, 4
	lu12i.w	$a0, 1024
	and	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $a1
	ld.w	$a4, $a2, 8
	srli.d	$a0, $s4, 10
	andi	$a3, $a0, 4080
	ori	$a0, $zero, 3
	add.d	$a3, $a1, $a3
	bne	$a4, $a0, .LBB9_136
# %bb.47:                               # %land.lhs.true264
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a1, $a3, 8
	bne	$a1, $a0, .LBB9_136
# %bb.48:                               # %if.then268
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fadd.d	$fa0, $fa0, $fa1
	b	.LBB9_171
.LBB9_49:                               # %sw.bb138
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	bstrpick.d	$a1, $s4, 31, 23
	addi.w	$a2, $zero, -1
	slt	$a2, $a2, $s4
	bstrpick.d	$a0, $a0, 30, 23
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	masknez	$a1, $s0, $a2
	maskeqz	$a2, $s2, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a0, $a1, 4
	lu12i.w	$a0, 1024
	and	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	srli.d	$a1, $s4, 10
	andi	$a1, $a1, 4080
	add.d	$a3, $a0, $a1
	move	$a0, $fp
	move	$a1, $s3
	b	.LBB9_64
.LBB9_50:                               # %sw.bb776
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	bstrpick.d	$a1, $s4, 31, 23
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	slt	$a2, $a2, $s4
	bstrpick.d	$a0, $a0, 30, 23
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	masknez	$a1, $s0, $a2
	maskeqz	$a2, $s2, $a2
	or	$a1, $a2, $a1
	alsl.d	$a1, $a0, $a1, 4
	lu12i.w	$a0, 1024
	and	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a2
	srli.d	$a2, $s4, 10
	andi	$a2, $a2, 4080
	add.d	$a2, $a0, $a2
	ld.w	$a0, $a1, 8
	ld.w	$a3, $a2, 8
	bne	$a0, $a3, .LBB9_142
# %bb.51:                               # %if.else.i
                                        #   in Loop: Header=BB9_6 Depth=2
	ori	$a3, $zero, 4
	beq	$a0, $a3, .LBB9_182
# %bb.52:                               # %if.else.i
                                        #   in Loop: Header=BB9_6 Depth=2
	ori	$a3, $zero, 3
	bne	$a0, $a3, .LBB9_184
# %bb.53:                               # %if.then4.i
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $a1, 0
	fld.d	$fa1, $a2, 0
	fcmp.cle.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beq	$a0, $s5, .LBB9_55
	b	.LBB9_56
.LBB9_54:                               # %sw.bb726
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	bstrpick.d	$a1, $s4, 31, 23
	addi.w	$a2, $zero, -1
	slt	$a2, $a2, $s4
	bstrpick.d	$a0, $a0, 30, 23
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	masknez	$a1, $s0, $a2
	maskeqz	$a2, $s2, $a2
	or	$a1, $a2, $a1
	alsl.d	$a1, $a0, $a1, 4
	lu12i.w	$a0, 1024
	and	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a2
	srli.d	$a2, $s4, 10
	andi	$a2, $a2, 4080
	add.d	$a2, $a0, $a2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaV_lessthan)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB9_56
.LBB9_55:                               # %if.then717
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.wu	$a0, $s8, 0
	srli.d	$a0, $a0, 12
	lu12i.w	$a1, 255
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	add.d	$a0, $s8, $a0
	addu16i.d	$a0, $a0, -8
	addi.d	$s8, $a0, 4
.LBB9_56:                               # %if.end723
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s2, $fp, 24
	addi.d	$s8, $s8, 4
	b	.LBB9_6
.LBB9_57:                               # %sw.bb37
                                        #   in Loop: Header=BB9_6 Depth=2
	bstrpick.d	$a0, $s4, 31, 23
	st.w	$a0, $s3, 0
	ori	$a0, $zero, 1
	st.w	$a0, $s3, 8
	lu12i.w	$a0, 2044
	and	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	addi.d	$a1, $s1, 8
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s8, $a0
	or	$s8, $a0, $a1
	b	.LBB9_6
.LBB9_58:                               # %sw.bb389
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	bstrpick.d	$a1, $s4, 31, 23
	addi.w	$a2, $zero, -1
	slt	$a2, $a2, $s4
	bstrpick.d	$a0, $a0, 30, 23
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	masknez	$a1, $s0, $a2
	maskeqz	$a2, $s2, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a0, $a1, 4
	lu12i.w	$a0, 1024
	and	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $a1
	ld.w	$a4, $a2, 8
	srli.d	$a0, $s4, 10
	andi	$a3, $a0, 4080
	ori	$a0, $zero, 3
	add.d	$a3, $a1, $a3
	bne	$a4, $a0, .LBB9_137
# %bb.59:                               # %land.lhs.true429
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a1, $a3, 8
	bne	$a1, $a0, .LBB9_137
# %bb.60:                               # %if.then433
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fdiv.d	$fa0, $fa0, $fa1
	b	.LBB9_171
.LBB9_61:                               # %sw.bb48
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	add.d	$a0, $s2, $a0
	.p2align	4, , 16
.LBB9_62:                               # %do.body
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a1, $a0, -16
	st.w	$zero, $a0, 8
	move	$a0, $a1
	bgeu	$a1, $s3, .LBB9_62
	b	.LBB9_6
.LBB9_63:                               # %sw.bb97
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 24
	st.d	$a0, $sp, 56
	ori	$a0, $zero, 5
	st.w	$a0, $sp, 64
	st.d	$s8, $fp, 48
	lu12i.w	$a0, -4
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 10
	add.d	$a2, $s0, $a0
	addi.d	$a1, $sp, 56
	move	$a0, $fp
	move	$a3, $s3
.LBB9_64:                               # %for.cond
                                        #   in Loop: Header=BB9_6 Depth=2
	pcaddu18i	$ra, %call36(luaV_settable)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 24
	b	.LBB9_6
.LBB9_65:                               # %sw.bb26
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -4
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 10
	ldx.d	$a1, $s0, $a0
	add.d	$a0, $s0, $a0
.LBB9_66:                               # %for.cond
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$a1, $s3, 0
	ld.w	$a0, $a0, 8
	st.w	$a0, $s3, 8
	b	.LBB9_6
.LBB9_67:                               # %sw.bb1096
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a0, $s3, 32
	ld.w	$a1, $s3, 40
	st.d	$a0, $s3, 80
	ld.d	$a0, $s3, 16
	st.w	$a1, $s3, 88
	ld.w	$a1, $s3, 24
	ld.d	$a2, $s3, 0
	st.d	$a0, $s3, 64
	ld.w	$a0, $s3, 8
	st.w	$a1, $s3, 72
	st.d	$a2, $s3, 48
	addi.d	$a1, $s3, 48
	st.w	$a0, $s3, 56
	addi.d	$a0, $s3, 96
	st.d	$a0, $fp, 16
	st.d	$s8, $fp, 48
	bstrpick.d	$a2, $s4, 22, 14
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaD_call)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 16
	ld.d	$s2, $fp, 24
	st.d	$a0, $fp, 16
	alsl.d	$a0, $s5, $s2, 4
	ld.w	$a1, $a0, 56
	beqz	$a1, .LBB9_69
# %bb.68:                               # %if.then1137
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a2, $a0, 48
	st.d	$a2, $a0, 32
	st.w	$a1, $a0, 40
	ld.wu	$a0, $s8, 0
	srli.d	$a0, $a0, 12
	lu12i.w	$a1, 255
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	add.d	$a0, $s8, $a0
	addu16i.d	$a0, $a0, -8
	addi.d	$s8, $a0, 4
.LBB9_69:                               # %if.end1150
                                        #   in Loop: Header=BB9_6 Depth=2
	addi.d	$s8, $s8, 4
	b	.LBB9_6
.LBB9_70:                               # %sw.bb503
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	bstrpick.d	$a1, $s4, 31, 23
	addi.w	$a2, $zero, -1
	slt	$a2, $a2, $s4
	bstrpick.d	$a0, $a0, 30, 23
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	masknez	$a1, $s0, $a2
	maskeqz	$a2, $s2, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a0, $a1, 4
	lu12i.w	$a0, 1024
	and	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $a1
	ld.w	$a4, $a2, 8
	srli.d	$a0, $s4, 10
	andi	$a3, $a0, 4080
	ori	$a0, $zero, 3
	add.d	$a3, $a1, $a3
	bne	$a4, $a0, .LBB9_138
# %bb.71:                               # %land.lhs.true543
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a1, $a3, 8
	bne	$a1, $a0, .LBB9_138
# %bb.72:                               # %if.then547
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	b	.LBB9_171
.LBB9_73:                               # %sw.bb1289
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s1, $fp, 40
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 32
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s1, 8
	ld.bu	$a3, $a0, 113
	bstrpick.d	$a0, $s4, 31, 23
	sub.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 4
	nor	$a2, $a3, $zero
	add.w	$s4, $a1, $a2
	slli.d	$s6, $s4, 4
	bnez	$a0, .LBB9_145
# %bb.74:                               # %if.then1311
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a0, $fp, 56
	ld.d	$a1, $fp, 16
	sub.d	$a0, $a0, $a1
	addi.w	$a1, $s6, 0
	st.d	$s8, $fp, 48
	blt	$a1, $a0, .LBB9_76
# %bb.75:                               # %if.then1321
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(luaD_growstack)
	jirl	$ra, $ra, 0
.LBB9_76:                               # %if.end1323
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s2, $fp, 24
	alsl.d	$s3, $s5, $s2, 4
	alsl.d	$a0, $s4, $s3, 4
	st.d	$a0, $fp, 16
	move	$a0, $s4
	bgtz	$a0, .LBB9_146
	b	.LBB9_6
.LBB9_77:                               # %sw.bb1015
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $s3, 32
	fld.d	$fa2, $s3, 0
	fld.d	$fa1, $s3, 16
	movgr2fr.d	$fa3, $zero
	fcmp.cule.d	$fcc0, $fa0, $fa3
	fadd.d	$fa0, $fa0, $fa2
	bcnez	$fcc0, .LBB9_151
# %bb.78:                               # %cond.true1024
                                        #   in Loop: Header=BB9_6 Depth=2
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB9_6
	b	.LBB9_152
.LBB9_79:                               # %sw.bb604
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	add.d	$s4, $s2, $a0
	ld.w	$a0, $s4, 8
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB9_170
# %bb.80:                               # %sw.bb604
                                        #   in Loop: Header=BB9_6 Depth=2
	ori	$a1, $zero, 5
	bne	$a0, $a1, .LBB9_172
# %bb.81:                               # %sw.bb611
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(luaH_getn)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	b	.LBB9_171
.LBB9_82:                               # %sw.bb66
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -4
	lu32i.d	$a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 24
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 10
	add.d	$a2, $s0, $a0
	st.d	$a1, $sp, 56
	ori	$a0, $zero, 5
	st.w	$a0, $sp, 64
	st.d	$s8, $fp, 48
	addi.d	$a1, $sp, 56
	b	.LBB9_91
.LBB9_83:                               # %sw.bb630
                                        #   in Loop: Header=BB9_6 Depth=2
	bstrpick.d	$s1, $s4, 31, 23
	bstrpick.d	$a2, $s4, 22, 14
	st.d	$s8, $fp, 48
	sub.d	$a0, $a2, $s1
	addi.d	$a1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaV_concat)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 120
	ld.d	$a0, $a0, 112
	bltu	$a1, $a0, .LBB9_85
# %bb.84:                               # %if.then646
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaC_step)
	jirl	$ra, $ra, 0
.LBB9_85:                               # %if.end647
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s2, $fp, 24
	addi.w	$a0, $s1, 0
	alsl.d	$a1, $a0, $s2, 4
	slli.d	$a0, $a0, 4
	ldx.d	$a0, $s2, $a0
	ld.w	$a1, $a1, 8
	alsl.d	$a2, $s5, $s2, 4
	slli.d	$a3, $s5, 4
	stx.d	$a0, $s2, $a3
	st.w	$a1, $a2, 8
	b	.LBB9_6
.LBB9_86:                               # %sw.bb277
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	bstrpick.d	$a1, $s4, 31, 23
	addi.w	$a2, $zero, -1
	slt	$a2, $a2, $s4
	bstrpick.d	$a0, $a0, 30, 23
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	masknez	$a1, $s0, $a2
	maskeqz	$a2, $s2, $a2
	or	$a1, $a2, $a1
	alsl.d	$a2, $a0, $a1, 4
	lu12i.w	$a0, 1024
	and	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a1, $a0, $a1
	ld.w	$a4, $a2, 8
	srli.d	$a0, $s4, 10
	andi	$a3, $a0, 4080
	ori	$a0, $zero, 3
	add.d	$a3, $a1, $a3
	bne	$a4, $a0, .LBB9_139
# %bb.87:                               # %land.lhs.true317
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a1, $a3, 8
	bne	$a1, $a0, .LBB9_139
# %bb.88:                               # %if.then321
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $a2, 0
	fld.d	$fa1, $a3, 0
	fsub.d	$fa0, $fa0, $fa1
	b	.LBB9_171
.LBB9_89:                               # %sw.bb77
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	add.d	$a1, $s2, $a0
.LBB9_90:                               # %for.cond
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, 1024
	and	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a2
	srli.d	$a2, $s4, 10
	andi	$a2, $a2, 4080
	add.d	$a2, $a0, $a2
.LBB9_91:                               # %for.cond
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
	move	$a3, $s3
	pcaddu18i	$ra, %call36(luaV_gettable)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 24
	b	.LBB9_6
.LBB9_92:                               # %sw.bb560
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	add.d	$a2, $s2, $a0
	ld.w	$a1, $a2, 8
	ori	$a0, $zero, 3
	bne	$a1, $a0, .LBB9_153
# %bb.93:                               # %if.then569
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $a2, 0
	fneg.d	$fa0, $fa0
	fst.d	$fa0, $s3, 0
	st.w	$a0, $s3, 8
	b	.LBB9_6
.LBB9_94:                               # %sw.bb175
                                        #   in Loop: Header=BB9_6 Depth=2
	bstrpick.d	$a0, $s4, 31, 23
	bstrpick.d	$s2, $s4, 22, 14
	pcaddu18i	$ra, %call36(luaO_fb2int)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(luaO_fb2int)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(luaH_new)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	ori	$a0, $zero, 5
	st.w	$a0, $s3, 8
	ld.d	$a0, $fp, 32
	st.d	$s8, $fp, 48
	ld.d	$a1, $a0, 120
	ld.d	$a0, $a0, 112
	bltu	$a1, $a0, .LBB9_96
# %bb.95:                               # %if.then190
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaC_step)
	jirl	$ra, $ra, 0
.LBB9_96:                               # %if.end191
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s2, $fp, 24
	b	.LBB9_6
.LBB9_97:                               # %sw.bb109
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 20
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.d	$a1, $a1, $a0
	ld.d	$a0, $a1, 16
	ld.d	$a2, $s3, 0
	st.d	$a2, $a0, 0
	ld.w	$a2, $s3, 8
	ori	$a3, $zero, 4
	st.w	$a2, $a0, 8
	blt	$a2, $a3, .LBB9_6
# %bb.98:                               # %land.lhs.true125
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a2, $s3, 0
	ld.bu	$a0, $a2, 9
	andi	$a0, $a0, 3
	beqz	$a0, .LBB9_6
# %bb.99:                               # %land.lhs.true130
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.bu	$a0, $a1, 9
	andi	$a0, $a0, 4
	beqz	$a0, .LBB9_6
# %bb.100:                              # %if.then135
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaC_barrierf)
	jirl	$ra, $ra, 0
	b	.LBB9_6
.LBB9_101:                              # %sw.bb1047
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	ld.w	$a0, $s3, 8
	ori	$s1, $zero, 3
	beq	$a0, $s1, .LBB9_105
# %bb.102:                              # %lor.lhs.false1054
                                        #   in Loop: Header=BB9_6 Depth=2
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB9_2
# %bb.103:                              # %land.lhs.true.i599
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a0, $s3, 0
	addi.d	$a0, $a0, 24
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(luaO_str2d)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_2
# %bb.104:                              # %luaV_tonumber.exit.thread
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $sp, 56
	fst.d	$fa0, $s3, 0
	ori	$a0, $zero, 3
	st.w	$a0, $s3, 8
.LBB9_105:                              # %if.else1059
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a0, $s3, 24
	beq	$a0, $s1, .LBB9_109
# %bb.106:                              # %lor.lhs.false1063
                                        #   in Loop: Header=BB9_6 Depth=2
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB9_181
# %bb.107:                              # %land.lhs.true.i606
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a0, $s3, 16
	addi.d	$a0, $a0, 24
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(luaO_str2d)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_181
# %bb.108:                              # %luaV_tonumber.exit614.thread
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $sp, 56
	fst.d	$fa0, $s3, 16
	ori	$a0, $zero, 3
	st.w	$a0, $s3, 24
.LBB9_109:                              # %if.else1069
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a0, $s3, 40
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB9_4
# %bb.110:                              # %lor.lhs.false1073
                                        #   in Loop: Header=BB9_6 Depth=2
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB9_212
# %bb.111:                              # %land.lhs.true.i617
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a0, $s3, 32
	addi.d	$a0, $a0, 24
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(luaO_str2d)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_212
# %bb.112:                              # %luaV_tonumber.exit625.thread
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $sp, 56
	fst.d	$fa0, $s3, 32
	ori	$a0, $zero, 3
	st.w	$a0, $s3, 40
	b	.LBB9_4
.LBB9_113:                              # %sw.bb579
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	add.d	$a1, $s2, $a0
	ld.w	$a3, $a1, 8
	ori	$a0, $zero, 1
	ori	$a2, $zero, 1
	beqz	$a3, .LBB9_176
# %bb.114:                              # %sw.bb579
                                        #   in Loop: Header=BB9_6 Depth=2
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB9_175
# %bb.115:                              # %land.rhs
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a1, $a1, 0
	sltui	$a2, $a1, 1
	b	.LBB9_176
.LBB9_116:                              # %sw.bb667
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	bstrpick.d	$a1, $s4, 31, 23
	addi.w	$a2, $zero, -1
	slt	$a2, $a2, $s4
	bstrpick.d	$a0, $a0, 30, 23
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	masknez	$a1, $s0, $a2
	maskeqz	$a2, $s2, $a2
	or	$a1, $a2, $a1
	alsl.d	$a1, $a0, $a1, 4
	lu12i.w	$a0, 1024
	and	$a0, $s4, $a0
	sltui	$a0, $a0, 1
	masknez	$a2, $s0, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a2
	srli.d	$a2, $s4, 10
	andi	$a2, $a2, 4080
	add.d	$a2, $a0, $a2
	st.d	$s8, $fp, 48
	ld.w	$a0, $a1, 8
	ld.w	$a3, $a2, 8
	bne	$a0, $a3, .LBB9_154
# %bb.117:                              # %land.rhs709
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaV_equalval)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB9_55
	b	.LBB9_56
.LBB9_118:                              # %sw.bb893
                                        #   in Loop: Header=BB9_6 Depth=2
	bstrpick.d	$a0, $s4, 31, 23
	beqz	$a0, .LBB9_120
# %bb.119:                              # %if.then902
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	add.d	$a0, $s3, $a0
	st.d	$a0, $fp, 16
.LBB9_120:                              # %if.end905
                                        #   in Loop: Header=BB9_6 Depth=2
	bstrpick.d	$s1, $s4, 22, 14
	addi.w	$a2, $s1, -1
	st.d	$s8, $fp, 48
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(luaD_precall)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB9_194
# %bb.121:                              # %sw.bb909
                                        #   in Loop: Header=BB9_6 Depth=2
	beqz	$s1, .LBB9_123
# %bb.122:                              # %if.then912
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 16
	st.d	$a0, $fp, 16
.LBB9_123:                              # %if.end916
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s2, $fp, 24
	b	.LBB9_6
.LBB9_124:                              # %sw.bb920
                                        #   in Loop: Header=BB9_6 Depth=2
	bstrpick.d	$a0, $s4, 31, 23
	beqz	$a0, .LBB9_126
# %bb.125:                              # %if.then926
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	add.d	$a0, $s3, $a0
	st.d	$a0, $fp, 16
.LBB9_126:                              # %if.end930
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	addi.w	$a2, $zero, -1
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(luaD_precall)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB9_196
# %bb.127:                              # %sw.bb981
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s2, $fp, 24
	b	.LBB9_6
.LBB9_128:                              # %sw.bb1153
                                        #   in Loop: Header=BB9_6 Depth=2
	bstrpick.d	$s6, $s4, 31, 23
	beqz	$s6, .LBB9_155
# %bb.129:                              # %if.end1172
                                        #   in Loop: Header=BB9_6 Depth=2
	bstrpick.d	$a0, $s4, 22, 14
	beqz	$a0, .LBB9_156
.LBB9_130:                              # %if.end1177
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a1, $s3, 8
	ori	$a2, $zero, 5
	bne	$a1, $a2, .LBB9_6
	b	.LBB9_157
.LBB9_131:                              # %sw.bb826
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a0, $s3, 8
	beqz	$a0, .LBB9_177
# %bb.132:                              # %sw.bb826
                                        #   in Loop: Header=BB9_6 Depth=2
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB9_180
# %bb.133:                              # %land.rhs834
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a0, $s3, 0
	sltui	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 22, 14
	bne	$a0, $a1, .LBB9_178
	b	.LBB9_179
.LBB9_134:                              # %if.else499
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	ori	$a4, $zero, 9
	b	.LBB9_140
.LBB9_135:                              # %if.else385
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	ori	$a4, $zero, 7
	b	.LBB9_140
.LBB9_136:                              # %if.else
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	ori	$a4, $zero, 5
	b	.LBB9_140
.LBB9_137:                              # %if.else441
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	ori	$a4, $zero, 8
	b	.LBB9_140
.LBB9_138:                              # %if.else556
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	ori	$a4, $zero, 10
	b	.LBB9_140
.LBB9_139:                              # %if.else329
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	ori	$a4, $zero, 6
.LBB9_140:                              # %for.cond
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
	move	$a1, $s3
.LBB9_141:                              # %for.cond
                                        #   in Loop: Header=BB9_6 Depth=2
	pcaddu18i	$ra, %call36(Arith)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 24
	b	.LBB9_6
.LBB9_142:                              # %if.then.i595
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
.LBB9_143:                              # %lessequal.exit
                                        #   in Loop: Header=BB9_6 Depth=2
	pcaddu18i	$ra, %call36(luaG_ordererror)
	jirl	$ra, $ra, 0
.LBB9_144:                              # %lessequal.exit
                                        #   in Loop: Header=BB9_6 Depth=2
	beq	$a0, $s5, .LBB9_55
	b	.LBB9_56
.LBB9_145:                              #   in Loop: Header=BB9_6 Depth=2
	addi.w	$a0, $a0, -1
	blez	$a0, .LBB9_6
.LBB9_146:                              # %for.body1336.lr.ph
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a1, $zero
	addi.d	$a2, $s3, 8
	sub.d	$a3, $zero, $s6
	b	.LBB9_149
	.p2align	4, , 16
.LBB9_147:                              # %if.then1339
                                        #   in Loop: Header=BB9_149 Depth=3
	ld.d	$a4, $s1, 0
	ldx.d	$a5, $a4, $a3
	add.d	$a4, $a4, $a3
	st.d	$a5, $a2, -8
	ld.w	$a4, $a4, 8
.LBB9_148:                              # %for.inc1358
                                        #   in Loop: Header=BB9_149 Depth=3
	st.w	$a4, $a2, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	beq	$a0, $a1, .LBB9_6
.LBB9_149:                              # %for.body1336
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	$a1, $s4, .LBB9_147
# %bb.150:                              #   in Loop: Header=BB9_149 Depth=3
	move	$a4, $zero
	b	.LBB9_148
.LBB9_151:                              # %cond.false1027
                                        #   in Loop: Header=BB9_6 Depth=2
	fcmp.cult.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB9_6
.LBB9_152:                              # %if.then1030
                                        #   in Loop: Header=BB9_6 Depth=2
	lu12i.w	$a0, -4
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 12
	add.d	$a0, $s8, $a0
	addu16i.d	$a0, $a0, -8
	addi.d	$s8, $a0, 4
	fst.d	$fa0, $s3, 0
	ori	$a0, $zero, 3
	st.w	$a0, $s3, 8
	fst.d	$fa0, $s3, 48
	st.w	$a0, $s3, 56
	b	.LBB9_6
.LBB9_153:                              # %if.else575
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	ori	$a4, $zero, 11
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $a2
	b	.LBB9_141
.LBB9_154:                              #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $zero
	beq	$a0, $s5, .LBB9_55
	b	.LBB9_56
.LBB9_155:                              # %if.then1161
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 16
	ld.d	$a0, $a0, 16
	sub.d	$a1, $a1, $s3
	srli.d	$a1, $a1, 4
	addi.d	$s6, $a1, -1
	st.d	$a0, $fp, 16
	bstrpick.d	$a0, $s4, 22, 14
	bnez	$a0, .LBB9_130
.LBB9_156:                              # %if.then1175
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.w	$a0, $s1, 4
	addi.d	$s8, $s1, 8
	ld.w	$a1, $s3, 8
	ori	$a2, $zero, 5
	bne	$a1, $a2, .LBB9_6
.LBB9_157:                              # %if.end1182
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s3, $s3, 0
	ori	$a1, $zero, 50
	ld.w	$a2, $s3, 56
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s6, $a0
	addi.w	$s4, $a0, -50
	bge	$a2, $s4, .LBB9_159
# %bb.158:                              # %if.then1189
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(luaH_resizearray)
	jirl	$ra, $ra, 0
.LBB9_159:                              # %if.end1190
                                        #   in Loop: Header=BB9_6 Depth=2
	addi.w	$a0, $s6, 0
	blez	$a0, .LBB9_6
# %bb.160:                              # %for.body1194.lr.ph
                                        #   in Loop: Header=BB9_6 Depth=2
	addi.d	$s1, $a0, 1
	slli.d	$a0, $a0, 4
	alsl.d	$a0, $s5, $a0, 4
	add.d	$s5, $s2, $a0
	b	.LBB9_162
	.p2align	4, , 16
.LBB9_161:                              # %if.end1220
                                        #   in Loop: Header=BB9_162 Depth=3
	addi.d	$s1, $s1, -1
	addi.d	$s5, $s5, -16
	ori	$a0, $zero, 1
	addi.w	$s4, $s4, -1
	bge	$a0, $s1, .LBB9_6
.LBB9_162:                              # %for.body1194
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(luaH_setnum)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 0
	st.d	$a1, $a0, 0
	ld.w	$a1, $s5, 8
	ori	$a2, $zero, 4
	st.w	$a1, $a0, 8
	blt	$a1, $a2, .LBB9_161
# %bb.163:                              # %land.lhs.true1208
                                        #   in Loop: Header=BB9_162 Depth=3
	ld.d	$a0, $s5, 0
	ld.bu	$a0, $a0, 9
	andi	$a0, $a0, 3
	beqz	$a0, .LBB9_161
# %bb.164:                              # %land.lhs.true1214
                                        #   in Loop: Header=BB9_162 Depth=3
	ld.bu	$a0, $s3, 9
	andi	$a0, $a0, 4
	beqz	$a0, .LBB9_161
# %bb.165:                              # %if.then1219
                                        #   in Loop: Header=BB9_162 Depth=3
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(luaC_barrierback)
	jirl	$ra, $ra, 0
	b	.LBB9_161
.LBB9_166:                              #   in Loop: Header=BB9_6 Depth=2
	ori	$a2, $zero, 1
	bstrpick.d	$a3, $s4, 22, 14
	beq	$a2, $a3, .LBB9_168
.LBB9_167:                              # %if.then879
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a1, $a1, 0
	st.d	$a1, $s3, 0
	st.w	$a0, $s3, 8
	ld.wu	$a0, $s8, 0
	srli.d	$a0, $a0, 12
	lu12i.w	$a1, 255
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	add.d	$a0, $s8, $a0
	addu16i.d	$a0, $a0, -8
	addi.d	$s8, $a0, 4
.LBB9_168:                              # %if.end891
                                        #   in Loop: Header=BB9_6 Depth=2
	addi.d	$s8, $s8, 4
	b	.LBB9_6
.LBB9_169:                              # %lor.end873.fold.split
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a2, $zero
	bstrpick.d	$a3, $s4, 22, 14
	bne	$a2, $a3, .LBB9_167
	b	.LBB9_168
.LBB9_170:                              # %sw.bb618
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a0, $s4, 0
	ld.d	$a0, $a0, 16
	srli.d	$a1, $a0, 32
	lu52i.d	$a2, $zero, 1107
	or	$a1, $a1, $a2
	movgr2fr.d	$fa0, $a1
	lu12i.w	$a1, 256
	lu52i.d	$a1, $a1, 1107
	movgr2fr.d	$fa1, $a1
	fsub.d	$fa0, $fa0, $fa1
	lu12i.w	$a1, 275200
	bstrins.d	$a0, $a1, 63, 32
	movgr2fr.d	$fa1, $a0
	fadd.d	$fa0, $fa1, $fa0
.LBB9_171:                              # %for.cond
                                        #   in Loop: Header=BB9_6 Depth=2
	fst.d	$fa0, $s3, 0
	ori	$a0, $zero, 3
	st.w	$a0, $s3, 8
	b	.LBB9_6
.LBB9_172:                              # %sw.default
                                        #   in Loop: Header=BB9_6 Depth=2
	st.d	$s8, $fp, 48
	pcalau12i	$a0, %pc_hi20(luaO_nilobject_)
	addi.d	$a2, $a0, %pc_lo12(luaO_nilobject_)
	ori	$a4, $zero, 12
	move	$a0, $fp
	move	$a1, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(call_binTM)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_174
# %bb.173:                              # %if.then627
                                        #   in Loop: Header=BB9_6 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	move	$a0, $fp
	move	$a1, $s4
	pcaddu18i	$ra, %call36(luaG_typeerror)
	jirl	$ra, $ra, 0
.LBB9_174:                              # %if.end628
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s2, $fp, 24
	b	.LBB9_6
.LBB9_175:                              # %lor.end.fold.split
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a2, $zero
.LBB9_176:                              # %lor.end
                                        #   in Loop: Header=BB9_6 Depth=2
	st.w	$a2, $s3, 0
	st.w	$a0, $s3, 8
	b	.LBB9_6
.LBB9_177:                              #   in Loop: Header=BB9_6 Depth=2
	ori	$a0, $zero, 1
	bstrpick.d	$a1, $s4, 22, 14
	beq	$a0, $a1, .LBB9_179
.LBB9_178:                              # %if.then846
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.wu	$a0, $s8, 0
	srli.d	$a0, $a0, 12
	lu12i.w	$a1, 255
	ori	$a1, $a1, 4092
	and	$a0, $a0, $a1
	add.d	$a0, $s8, $a0
	addu16i.d	$a0, $a0, -8
	addi.d	$s8, $a0, 4
.LBB9_179:                              # %if.end852
                                        #   in Loop: Header=BB9_6 Depth=2
	addi.d	$s8, $s8, 4
	b	.LBB9_6
.LBB9_180:                              # %lor.end840.fold.split
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $zero
	bstrpick.d	$a1, $s4, 22, 14
	bne	$a0, $a1, .LBB9_178
	b	.LBB9_179
.LBB9_181:                              # %if.then1068
                                        #   in Loop: Header=BB9_6 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	b	.LBB9_3
.LBB9_182:                              # %if.then11.i
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s4, $a1, 0
	ld.d	$s1, $a2, 0
	addi.d	$s2, $s4, 24
	addi.d	$s3, $s1, 24
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcoll)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_187
.LBB9_183:                              # %l_strcmp.exit.i
                                        #   in Loop: Header=BB9_6 Depth=2
	slti	$a0, $a0, 1
	beq	$a0, $s5, .LBB9_55
	b	.LBB9_56
.LBB9_184:                              # %if.else17.i
                                        #   in Loop: Header=BB9_6 Depth=2
	ori	$a3, $zero, 14
	move	$a0, $fp
	move	$s2, $a1
	move	$s3, $a2
	pcaddu18i	$ra, %call36(call_orderTM)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB9_144
# %bb.185:                              # %if.else22.i
                                        #   in Loop: Header=BB9_6 Depth=2
	ori	$a3, $zero, 13
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(call_orderTM)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB9_191
# %bb.186:                              # %if.then26.i
                                        #   in Loop: Header=BB9_6 Depth=2
	sltui	$a0, $a0, 1
	beq	$a0, $s5, .LBB9_55
	b	.LBB9_56
.LBB9_187:                              # %if.else.preheader.i.i
                                        #   in Loop: Header=BB9_6 Depth=2
	ld.d	$s1, $s1, 16
	ld.d	$s4, $s4, 16
	.p2align	4, , 16
.LBB9_188:                              # %if.else.i.i
                                        #   Parent Loop BB9_1 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB9_192
# %bb.189:                              # %if.else8.i.i
                                        #   in Loop: Header=BB9_188 Depth=3
	beq	$a0, $s4, .LBB9_193
# %bb.190:                              # %cleanup16.i.i
                                        #   in Loop: Header=BB9_188 Depth=3
	addi.d	$a0, $a0, 1
	add.d	$s2, $s2, $a0
	sub.d	$s4, $s4, $a0
	add.d	$s3, $s3, $a0
	sub.d	$s1, $s1, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcoll)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_188
	b	.LBB9_183
.LBB9_191:                              # %if.end30.i
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	b	.LBB9_143
.LBB9_192:                              # %if.then6.i.i
                                        #   in Loop: Header=BB9_6 Depth=2
	xor	$a0, $s1, $s4
	sltu	$a0, $zero, $a0
	slti	$a0, $a0, 1
	beq	$a0, $s5, .LBB9_55
	b	.LBB9_56
.LBB9_193:                              #   in Loop: Header=BB9_6 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	slti	$a0, $a0, 1
	beq	$a0, $s5, .LBB9_55
	b	.LBB9_56
.LBB9_194:                              # %if.end905
                                        #   in Loop: Header=BB9_1 Depth=1
	bnez	$a0, .LBB9_211
# %bb.195:                              # %sw.bb908
                                        #   in Loop: Header=BB9_1 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB9_1
.LBB9_196:                              # %if.end930
                                        #   in Loop: Header=BB9_1 Depth=1
	bnez	$a0, .LBB9_211
# %bb.197:                              # %sw.bb933
                                        #   in Loop: Header=BB9_1 Depth=1
	ld.d	$s0, $fp, 40
	ld.d	$s1, $s0, -32
	ld.d	$a1, $fp, 152
	ld.d	$s2, $s0, 8
	move	$a0, $s1
	beqz	$a1, .LBB9_199
# %bb.198:                              # %if.then942
                                        #   in Loop: Header=BB9_1 Depth=1
	ld.d	$a1, $s0, -40
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaF_close)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, -32
.LBB9_199:                              # %if.end944
                                        #   in Loop: Header=BB9_1 Depth=1
	ld.d	$a1, $s0, 0
	sub.d	$a1, $a1, $s2
	add.d	$a0, $a0, $a1
	st.d	$a0, $s0, -40
	ld.d	$a1, $fp, 16
	st.d	$a0, $fp, 24
	move	$a0, $zero
	bgeu	$s2, $a1, .LBB9_202
# %bb.200:                              # %for.body.preheader
                                        #   in Loop: Header=BB9_1 Depth=1
	addi.d	$a1, $s1, 8
	.p2align	4, , 16
.LBB9_201:                              # %for.body
                                        #   Parent Loop BB9_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s2, 0
	st.d	$a2, $a1, -8
	ld.w	$a2, $s2, 8
	st.w	$a2, $a1, 0
	ld.d	$a2, $fp, 16
	addi.d	$a0, $a0, 1
	addi.d	$s2, $s2, 16
	addi.d	$a1, $a1, 16
	bltu	$s2, $a2, .LBB9_201
.LBB9_202:                              # %for.end
                                        #   in Loop: Header=BB9_1 Depth=1
	alsl.d	$a0, $a0, $s1, 4
	st.d	$a0, $fp, 16
	st.d	$a0, $s0, -24
	ld.d	$a0, $fp, 48
	ld.w	$a1, $s0, -4
	st.d	$a0, $s0, -16
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, -4
	ld.d	$a0, $fp, 40
	addi.d	$a0, $a0, -40
	st.d	$a0, $fp, 40
	b	.LBB9_1
.LBB9_203:                              # %sw.bb985
                                        #   in Loop: Header=BB9_1 Depth=1
	bstrpick.d	$a0, $s4, 31, 23
	beqz	$a0, .LBB9_205
# %bb.204:                              # %if.then991
                                        #   in Loop: Header=BB9_1 Depth=1
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	add.d	$a0, $s3, $a0
	addi.d	$a0, $a0, -16
	st.d	$a0, $fp, 16
.LBB9_205:                              # %if.end996
                                        #   in Loop: Header=BB9_1 Depth=1
	ld.d	$a0, $fp, 152
	beqz	$a0, .LBB9_207
# %bb.206:                              # %if.then999
                                        #   in Loop: Header=BB9_1 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(luaF_close)
	jirl	$ra, $ra, 0
.LBB9_207:                              # %if.end1000
                                        #   in Loop: Header=BB9_1 Depth=1
	st.d	$s8, $fp, 48
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(luaD_poscall)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	beqz	$a1, .LBB9_211
# %bb.208:                              # %if.else1007
                                        #   in Loop: Header=BB9_1 Depth=1
	beqz	$a0, .LBB9_1
# %bb.209:                              # %if.then1009
                                        #   in Loop: Header=BB9_1 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 16
	st.d	$a0, $fp, 16
	b	.LBB9_1
.LBB9_210:                              # %if.then11
	st.d	$s1, $fp, 48
.LBB9_211:                              # %cleanup1369
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
.LBB9_212:                              # %if.then1078
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(luaG_runerror)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	luaV_execute, .Lfunc_end9-luaV_execute
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI9_0:
	.word	.LBB9_24-.LJTI9_0
	.word	.LBB9_65-.LJTI9_0
	.word	.LBB9_57-.LJTI9_0
	.word	.LBB9_61-.LJTI9_0
	.word	.LBB9_45-.LJTI9_0
	.word	.LBB9_82-.LJTI9_0
	.word	.LBB9_89-.LJTI9_0
	.word	.LBB9_63-.LJTI9_0
	.word	.LBB9_97-.LJTI9_0
	.word	.LBB9_49-.LJTI9_0
	.word	.LBB9_94-.LJTI9_0
	.word	.LBB9_44-.LJTI9_0
	.word	.LBB9_46-.LJTI9_0
	.word	.LBB9_86-.LJTI9_0
	.word	.LBB9_40-.LJTI9_0
	.word	.LBB9_58-.LJTI9_0
	.word	.LBB9_37-.LJTI9_0
	.word	.LBB9_70-.LJTI9_0
	.word	.LBB9_92-.LJTI9_0
	.word	.LBB9_113-.LJTI9_0
	.word	.LBB9_79-.LJTI9_0
	.word	.LBB9_83-.LJTI9_0
	.word	.LBB9_5-.LJTI9_0
	.word	.LBB9_116-.LJTI9_0
	.word	.LBB9_54-.LJTI9_0
	.word	.LBB9_50-.LJTI9_0
	.word	.LBB9_131-.LJTI9_0
	.word	.LBB9_34-.LJTI9_0
	.word	.LBB9_118-.LJTI9_0
	.word	.LBB9_124-.LJTI9_0
	.word	.LBB9_203-.LJTI9_0
	.word	.LBB9_77-.LJTI9_0
	.word	.LBB9_101-.LJTI9_0
	.word	.LBB9_67-.LJTI9_0
	.word	.LBB9_128-.LJTI9_0
	.word	.LBB9_43-.LJTI9_0
	.word	.LBB9_25-.LJTI9_0
	.word	.LBB9_73-.LJTI9_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function Arith
	.type	Arith,@function
Arith:                                  # @Arith
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
	move	$s0, $a2
	ld.w	$a2, $a2, 8
	ori	$s4, $zero, 3
	move	$s1, $a3
	move	$fp, $a1
	move	$s2, $a0
	move	$s3, $s0
	beq	$a2, $s4, .LBB10_4
# %bb.1:                                # %entry
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB10_7
# %bb.2:                                # %land.lhs.true.i
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, 24
	addi.d	$a1, $sp, 24
	move	$s3, $a4
	pcaddu18i	$ra, %call36(luaO_str2d)
	jirl	$ra, $ra, 0
	move	$a4, $s3
	beqz	$a0, .LBB10_7
# %bb.3:                                # %if.then3.i
	fld.d	$fa0, $sp, 24
	fst.d	$fa0, $sp, 16
	addi.d	$s3, $sp, 16
.LBB10_4:                               # %land.lhs.true
	ld.w	$a0, $s1, 8
	beq	$a0, $s4, .LBB10_9
# %bb.5:                                # %land.lhs.true
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB10_7
# %bb.6:                                # %land.lhs.true.i36
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, 24
	addi.d	$a1, $sp, 24
	addi.d	$s4, $sp, 24
	move	$s5, $a4
	pcaddu18i	$ra, %call36(luaO_str2d)
	jirl	$ra, $ra, 0
	move	$a4, $s5
	bnez	$a0, .LBB10_10
.LBB10_7:                               # %if.else
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(call_binTM)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_19
# %bb.8:                                # %if.then33
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(luaG_aritherror)
	jirl	$ra, $ra, 0
	b	.LBB10_19
.LBB10_9:
	move	$s4, $s1
.LBB10_10:                              # %if.then
	fld.d	$fa1, $s4, 0
	fld.d	$fa0, $s3, 0
	addi.d	$a0, $a4, -5
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI10_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI10_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB10_11:                              # %sw.bb
	fadd.d	$fa0, $fa0, $fa1
	b	.LBB10_18
.LBB10_12:                              # %sw.bb17
	fdiv.d	$fa2, $fa0, $fa1
	vreplvei.d	$vr2, $vr2, 0
	vfrintrm.d	$vr2, $vr2
	fneg.d	$fa2, $fa2
	fmadd.d	$fa0, $fa2, $fa1, $fa0
	b	.LBB10_18
.LBB10_13:                              # %sw.bb9
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB10_18
.LBB10_14:                              # %sw.bb13
	fdiv.d	$fa0, $fa0, $fa1
	b	.LBB10_18
.LBB10_15:                              # %sw.bb5
	fsub.d	$fa0, $fa0, $fa1
	b	.LBB10_18
.LBB10_16:                              # %sw.bb23
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	b	.LBB10_18
.LBB10_17:                              # %sw.bb28
	fneg.d	$fa0, $fa0
.LBB10_18:                              # %if.end34
	fst.d	$fa0, $fp, 0
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 8
.LBB10_19:                              # %if.end34
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
.Lfunc_end10:
	.size	Arith, .Lfunc_end10-Arith
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI10_0:
	.word	.LBB10_11-.LJTI10_0
	.word	.LBB10_15-.LJTI10_0
	.word	.LBB10_13-.LJTI10_0
	.word	.LBB10_14-.LJTI10_0
	.word	.LBB10_12-.LJTI10_0
	.word	.LBB10_16-.LJTI10_0
	.word	.LBB10_17-.LJTI10_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.14g"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"index"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"loop in gettable"
	.size	.L.str.2, 17

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"loop in settable"
	.size	.L.str.3, 17

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"string length overflow"
	.size	.L.str.4, 23

	.hidden	luaO_nilobject_
	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"get length of"
	.size	.L.str.5, 14

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"'for' initial value must be a number"
	.size	.L.str.6, 37

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"'for' limit must be a number"
	.size	.L.str.7, 29

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"'for' step must be a number"
	.size	.L.str.8, 28

	.hidden	luaO_str2d
	.hidden	luaS_newlstr
	.hidden	luaH_get
	.hidden	luaT_gettm
	.hidden	luaT_gettmbyobj
	.hidden	luaG_typeerror
	.hidden	luaG_runerror
	.hidden	luaH_set
	.hidden	luaC_barrierback
	.hidden	luaG_ordererror
	.hidden	luaG_concaterror
	.hidden	luaZ_openspace
	.hidden	luaC_barrierf
	.hidden	luaH_new
	.hidden	luaO_fb2int
	.hidden	luaC_step
	.hidden	luaH_getn
	.hidden	luaD_precall
	.hidden	luaF_close
	.hidden	luaD_poscall
	.hidden	luaD_call
	.hidden	luaH_resizearray
	.hidden	luaH_setnum
	.hidden	luaF_newLclosure
	.hidden	luaF_findupval
	.hidden	luaD_growstack
	.hidden	luaO_rawequalObj
	.hidden	luaD_callhook
	.hidden	luaG_aritherror
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym luaO_nilobject_
