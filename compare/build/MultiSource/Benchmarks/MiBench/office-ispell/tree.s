	.file	"tree.c"
	.text
	.globl	treeinit                        # -- Begin function treeinit
	.p2align	5
	.type	treeinit,@function
treeinit:                               # @treeinit
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	lu12i.w	$a2, 2
	ori	$a2, $a2, 2128
	sub.d	$sp, $sp, $a2
	move	$s0, $a1
	move	$s1, $a0
	bnez	$a0, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	move	$s1, $a0
.LBB0_2:                                # %if.end
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(getenv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_42
# %bb.3:                                # %if.end4
	move	$fp, $a0
	beqz	$s1, .LBB0_12
# %bb.4:                                # %if.else54
	ld.bu	$a0, $s1, 0
	ori	$a1, $zero, 47
	beq	$a0, $a1, .LBB0_7
# %bb.5:                                # %if.else54
	ori	$a1, $zero, 46
	bne	$a0, $a1, .LBB0_32
# %bb.6:                                # %lor.lhs.false.tail
	ld.bu	$a0, $s1, 1
	ori	$a1, $zero, 47
	bne	$a0, $a1, .LBB0_30
.LBB0_7:                                # %if.then64
	pcalau12i	$a0, %pc_hi20(personaldict)
	addi.d	$fp, $a0, %pc_lo12(personaldict)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(dictf)
	st.d	$a0, $s1, %pc_lo12(dictf)
	beqz	$a0, .LBB0_39
# %bb.8:                                # %if.then69
	move	$fp, $a0
	lu12i.w	$a1, 2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_11
# %bb.9:                                # %while.body.i96.preheader
	lu12i.w	$s0, 2
	.p2align	4, , 16
.LBB0_10:                               # %while.body.i96
                                        # =>This Inner Loop Header: Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_10
.LBB0_11:                               # %treeload.exit99
	ld.d	$s2, $s1, %pc_lo12(dictf)
	b	.LBB0_29
.LBB0_12:                               # %if.then6
	pcalau12i	$a0, %pc_hi20(personaldict)
	addi.d	$s1, $a0, %pc_lo12(personaldict)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_14
# %bb.13:                               # %if.then4.i
	st.b	$zero, $s1, 0
.LBB0_14:                               # %if.end.i
	pcalau12i	$s3, %pc_hi20(dictf)
	st.d	$a0, $s3, %pc_lo12(dictf)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a3, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 16
	move	$a2, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_16
.LBB0_15:
	move	$s2, $a0
	ld.bu	$a0, $s1, 0
	bnez	$a0, .LBB0_20
	b	.LBB0_18
.LBB0_16:                               # %trydict.exit32
	ld.d	$a0, $s3, %pc_lo12(dictf)
	st.b	$zero, $sp, 16
	beqz	$a0, .LBB0_43
.LBB0_17:
	move	$s2, $zero
	ld.bu	$a0, $s1, 0
	bnez	$a0, .LBB0_20
.LBB0_18:                               # %if.then34
	ld.bu	$a0, $sp, 16
	beqz	$a0, .LBB0_55
# %bb.19:                               # %if.then38
	pcalau12i	$a0, %pc_hi20(personaldict)
	addi.d	$a0, $a0, %pc_lo12(personaldict)
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
.LBB0_20:                               # %if.end43
	ld.d	$fp, $s3, %pc_lo12(dictf)
	beqz	$fp, .LBB0_25
.LBB0_21:                               # %if.then46
	lu12i.w	$a1, 2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_24
# %bb.22:                               # %while.body.i.preheader
	lu12i.w	$s0, 2
	.p2align	4, , 16
.LBB0_23:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_23
.LBB0_24:                               # %treeload.exit
	ld.d	$a0, $s3, %pc_lo12(dictf)
	pcalau12i	$a1, %pc_hi20(newwords)
	st.w	$zero, $a1, %pc_lo12(newwords)
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB0_25:                               # %if.end48
	beqz	$s2, .LBB0_39
# %bb.26:                               # %if.then51
	lu12i.w	$a1, 2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_29
# %bb.27:                               # %while.body.i89.preheader
	lu12i.w	$fp, 2
	.p2align	4, , 16
.LBB0_28:                               # %while.body.i89
                                        # =>This Inner Loop Header: Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_28
.LBB0_29:                               # %treeload.exit92
	pcalau12i	$a0, %pc_hi20(newwords)
	st.w	$zero, $a0, %pc_lo12(newwords)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB0_39
.LBB0_30:                               # %sub_1119
	ld.bu	$a0, $s1, 1
	ori	$a1, $zero, 46
	bne	$a0, $a1, .LBB0_32
# %bb.31:                               # %lor.rhs.tail
	ld.bu	$a0, $s1, 2
	ori	$a1, $zero, 47
	beq	$a0, $a1, .LBB0_7
.LBB0_32:                               # %if.else72
	pcalau12i	$a0, %pc_hi20(personaldict)
	addi.d	$s0, $a0, %pc_lo12(personaldict)
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(dictf)
	st.d	$a0, $s2, %pc_lo12(dictf)
	beqz	$a0, .LBB0_37
# %bb.33:                               # %if.then77
	move	$s0, $a0
	lu12i.w	$a1, 2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_36
# %bb.34:                               # %while.body.i103.preheader
	lu12i.w	$fp, 2
	.p2align	4, , 16
.LBB0_35:                               # %while.body.i103
                                        # =>This Inner Loop Header: Depth=1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 16
	add.d	$a0, $sp, $a0
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_35
.LBB0_36:                               # %treeload.exit106
	ld.d	$a0, $s2, %pc_lo12(dictf)
	pcalau12i	$a1, %pc_hi20(newwords)
	st.w	$zero, $a1, %pc_lo12(newwords)
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(dictf)
	bnez	$a0, .LBB0_39
	b	.LBB0_56
.LBB0_37:                               # %if.then81
	pcalau12i	$a0, %pc_hi20(personaldict)
	addi.d	$s0, $a0, %pc_lo12(personaldict)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	move	$a0, $s0
	move	$a2, $fp
	move	$a3, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(dictf)
	beqz	$a0, .LBB0_56
# %bb.38:                               # %if.then86
	pcaddu18i	$ra, %call36(treeload)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(dictf)
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(dictf)
	beqz	$a0, .LBB0_56
.LBB0_39:                               # %if.end97
	pcalau12i	$a0, %got_pc_hi20(lflag)
	ld.d	$a0, $a0, %got_pc_lo12(lflag)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(aflag)
	ld.d	$a1, $a1, %got_pc_lo12(aflag)
	ld.w	$a1, $a1, 0
	or	$a0, $a0, $a1
	bnez	$a0, .LBB0_42
# %bb.40:                               # %land.lhs.true101
	pcalau12i	$a0, %pc_hi20(personaldict)
	addi.d	$a0, $a0, %pc_lo12(personaldict)
	ori	$a1, $zero, 2
	ori	$fp, $zero, 2
	pcaddu18i	$ra, %call36(access)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB0_42
# %bb.41:                               # %land.lhs.true105
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	bne	$a0, $fp, .LBB0_57
.LBB0_42:                               # %cleanup
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2128
	add.d	$sp, $sp, $a0
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_43:                               # %if.then11
	pcalau12i	$a0, %pc_hi20(personaldict)
	addi.d	$s2, $a0, %pc_lo12(personaldict)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a3, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_45
# %bb.44:                               # %if.then4.i38
	st.b	$zero, $s2, 0
.LBB0_45:                               # %if.end.i43
	st.d	$a0, $s3, %pc_lo12(dictf)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a3, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a4, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 16
	move	$a2, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_15
# %bb.46:                               # %if.end15
	ld.d	$a0, $s3, %pc_lo12(dictf)
	st.b	$zero, $sp, 16
	bnez	$a0, .LBB0_17
# %bb.47:                               # %if.then19
	pcalau12i	$a0, %pc_hi20(personaldict)
	addi.d	$s2, $a0, %pc_lo12(personaldict)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_49
# %bb.48:                               # %if.then4.i55
	st.b	$zero, $s2, 0
.LBB0_49:                               # %if.end.i60
	st.d	$a0, $s3, %pc_lo12(dictf)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a3, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 16
	move	$a2, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_15
# %bb.50:                               # %if.end23
	ld.d	$a0, $s3, %pc_lo12(dictf)
	st.b	$zero, $sp, 16
	bnez	$a0, .LBB0_17
# %bb.51:                               # %if.then27
	pcalau12i	$a0, %pc_hi20(personaldict)
	addi.d	$s2, $a0, %pc_lo12(personaldict)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a3, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_53
# %bb.52:                               # %if.then4.i72
	st.b	$zero, $s2, 0
.LBB0_53:                               # %if.end.i77
	st.d	$a0, $s3, %pc_lo12(dictf)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a3, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a4, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 16
	move	$a2, $fp
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_15
# %bb.54:                               # %if.then4.i80
	move	$s2, $zero
	st.b	$zero, $sp, 16
	ld.bu	$a0, $s1, 0
	bnez	$a0, .LBB0_20
	b	.LBB0_18
.LBB0_55:                               # %if.else
	pcalau12i	$a0, %pc_hi20(personaldict)
	addi.d	$a0, $a0, %pc_lo12(personaldict)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$a3, $a2, %pc_lo12(.L.str.2)
	move	$a2, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s3, %pc_lo12(dictf)
	bnez	$fp, .LBB0_21
	b	.LBB0_25
.LBB0_56:                               # %if.then93
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(perror)
	jirl	$ra, $ra, 0
	b	.LBB0_42
.LBB0_57:                               # %if.then109
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	pcalau12i	$a2, %pc_hi20(personaldict)
	addi.d	$a2, $a2, %pc_lo12(personaldict)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	b	.LBB0_42
.Lfunc_end0:
	.size	treeinit, .Lfunc_end0-treeinit
                                        # -- End function
	.p2align	5                               # -- Begin function treeload
	.type	treeload,@function
treeload:                               # @treeload
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2096
	sub.d	$sp, $sp, $a1
	move	$fp, $a0
	lu12i.w	$a1, 2
	addi.d	$a0, $sp, 8
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_3
# %bb.1:                                # %while.body.preheader
	lu12i.w	$s0, 2
	.p2align	4, , 16
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_2
.LBB1_3:                                # %while.end
	pcalau12i	$a0, %pc_hi20(newwords)
	st.w	$zero, $a0, %pc_lo12(newwords)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2096
	add.d	$sp, $sp, $a0
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	treeload, .Lfunc_end1-treeload
                                        # -- End function
	.globl	treeinsert                      # -- Begin function treeinsert
	.p2align	5
	.type	treeinsert,@function
treeinsert:                             # @treeinsert
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(cantexpand)
	ld.bu	$a3, $s2, %pc_lo12(cantexpand)
	move	$fp, $a2
	move	$s0, $a0
	bnez	$a3, .LBB2_6
# %bb.1:                                # %land.lhs.true
	pcalau12i	$s4, %pc_hi20(pershsize)
	ld.bu	$a0, $s4, %pc_lo12(pershsize)
	bnez	$a0, .LBB2_6
# %bb.2:                                # %if.end13
	move	$s3, $a1
	pcalau12i	$s5, %pc_hi20(pershtab)
	ld.d	$s1, $s5, %pc_lo12(pershtab)
	ori	$a0, $zero, 1
	st.b	$a0, $s4, %pc_lo12(pershsize)
	ori	$a0, $zero, 53
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, %pc_lo12(pershtab)
	beqz	$a0, .LBB2_22
# %bb.3:                                # %for.end62
	move	$a1, $s3
	beqz	$s1, .LBB2_6
# %bb.4:                                # %if.then65
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_5:                                # %if.end68
	move	$a1, $s3
.LBB2_6:                                # %if.end68
	addi.d	$a2, $sp, 128
	move	$a0, $s0
	pcaddu18i	$ra, %call36(makedent)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_21
# %bb.7:                                # %if.end73
	beqz	$fp, .LBB2_9
# %bb.8:                                # %if.then75
	ld.d	$a0, $sp, 144
	lu12i.w	$a1, 32768
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 144
.LBB2_9:                                # %if.end78
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 120
	ori	$a3, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(upcase)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(lookup)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_12
# %bb.10:                               # %if.then85
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(combinecaps)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB2_20
# %bb.11:                               # %if.then89
	ld.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB2_21
.LBB2_12:                               # %if.else92
	ld.d	$a1, $sp, 136
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 120
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_24
.LBB2_13:                               # %if.end.i
	pcalau12i	$a0, %pc_hi20(pershsize)
	ld.bu	$a0, $a0, %pc_lo12(pershsize)
	ori	$a1, $zero, 53
	maskeqz	$a1, $a1, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(hash)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(pershtab)
	ld.d	$a1, $a1, %pc_lo12(pershtab)
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 3
	add.d	$a0, $a1, $a0
	ld.bu	$a1, $a0, 19
	andi	$a1, $a1, 4
	bnez	$a1, .LBB2_15
# %bb.14:                               # %if.end13.thread.i
	ld.d	$a1, $sp, 144
	st.d	$a1, $a0, 16
	vld	$vr0, $sp, 128
	vst	$vr0, $a0, 0
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_15:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB2_15
# %bb.16:                               # %while.end.i
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_26
# %bb.17:                               # %if.then15.i
	ld.d	$a1, $sp, 144
	vld	$vr0, $sp, 128
	st.d	$a1, $a0, 16
	vst	$vr0, $a0, 0
	st.d	$a0, $s0, 0
.LBB2_18:                               # %tinsert.exit
	ld.d	$a1, $a0, 16
	lu12i.w	$a2, 196608
	and	$a1, $a1, $a2
	st.d	$zero, $a0, 0
	bne	$a1, $a2, .LBB2_20
# %bb.19:                               # %if.then99
	pcaddu18i	$ra, %call36(addvheader)
	jirl	$ra, $ra, 0
.LBB2_20:                               # %if.end102
	pcalau12i	$a0, %pc_hi20(newwords)
	ld.w	$a1, $a0, %pc_lo12(newwords)
	or	$a1, $a1, $fp
	st.w	$a1, $a0, %pc_lo12(newwords)
.LBB2_21:                               # %cleanup
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB2_22:                               # %if.then17
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s7, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	ori	$s6, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB2_25
# %bb.23:                               # %if.end22
	ld.d	$a3, $s7, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 47
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	st.b	$s6, $s2, %pc_lo12(cantexpand)
	st.b	$zero, $s4, %pc_lo12(pershsize)
	st.d	$s1, $s5, %pc_lo12(pershtab)
	pcalau12i	$a0, %pc_hi20(newwords)
	st.w	$s6, $a0, %pc_lo12(newwords)
	b	.LBB2_5
.LBB2_24:                               # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 136
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	pcalau12i	$a3, %pc_hi20(.L.str.18)
	addi.d	$a4, $a3, %pc_lo12(.L.str.18)
	ori	$a3, $zero, 449
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB2_13
.LBB2_25:                               # %if.then21
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_26:                               # %if.then10.i
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	treeinsert, .Lfunc_end2-treeinsert
                                        # -- End function
	.globl	treelookup                      # -- Begin function treelookup
	.p2align	5
	.type	treelookup,@function
treelookup:                             # @treelookup
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$s0, %pc_hi20(pershsize)
	ld.bu	$a1, $s0, %pc_lo12(pershsize)
	beqz	$a1, .LBB3_8
# %bb.1:                                # %if.end
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 120
	ori	$a3, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ichartostr)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s0, %pc_lo12(pershsize)
	ori	$a1, $zero, 53
	maskeqz	$a1, $a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hash)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(pershtab)
	ld.d	$a1, $a1, %pc_lo12(pershtab)
	beqz	$a1, .LBB3_8
# %bb.2:                                # %land.rhs.preheader
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 3
	add.d	$fp, $a1, $a0
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_3:                                # %while.end
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB3_8
.LBB3_4:                                # %land.rhs
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
	ld.d	$s0, $fp, 16
	slli.d	$a0, $s0, 37
	bgez	$a0, .LBB3_8
# %bb.5:                                # %while.body
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.d	$a1, $fp, 8
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_9
# %bb.6:                                # %while.cond10.preheader
                                        #   in Loop: Header=BB3_4 Depth=1
	slli.d	$a0, $s0, 33
	bgez	$a0, .LBB3_3
	.p2align	4, , 16
.LBB3_7:                                # %while.body15
                                        #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $fp, 0
	ld.bu	$a0, $fp, 19
	andi	$a0, $a0, 64
	bnez	$a0, .LBB3_7
	b	.LBB3_3
.LBB3_8:
	move	$fp, $zero
.LBB3_9:                                # %cleanup
	move	$a0, $fp
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end3:
	.size	treelookup, .Lfunc_end3-treelookup
                                        # -- End function
	.globl	treeoutput                      # -- Begin function treeoutput
	.p2align	5
	.type	treeoutput,@function
treeoutput:                             # @treeoutput
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
	pcalau12i	$fp, %pc_hi20(newwords)
	ld.w	$a0, $fp, %pc_lo12(newwords)
	beqz	$a0, .LBB4_55
# %bb.1:                                # %if.end
	pcalau12i	$a0, %pc_hi20(personaldict)
	addi.d	$a0, $a0, %pc_lo12(personaldict)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(dictf)
	st.d	$a0, $s1, %pc_lo12(dictf)
	beqz	$a0, .LBB4_56
# %bb.2:                                # %if.else
	pcalau12i	$a0, %pc_hi20(pershtab)
	pcalau12i	$a1, %pc_hi20(pershsize)
	ld.bu	$s8, $a1, %pc_lo12(pershsize)
	ld.d	$s5, $a0, %pc_lo12(pershtab)
	ori	$a0, $zero, 1272
	maskeqz	$a0, $a0, $s8
	add.d	$s6, $s5, $a0
	lu12i.w	$s2, 49152
	move	$s7, $zero
	beqz	$s8, .LBB4_10
# %bb.3:                                # %for.cond8.preheader.preheader
	move	$a0, $s5
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_4:                                # %for.inc18
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a0, $a0, 24
	bgeu	$a0, $s6, .LBB4_10
.LBB4_5:                                # %for.cond8.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_8 Depth 2
                                        #       Child Loop BB4_9 Depth 3
	beqz	$a0, .LBB4_4
# %bb.6:                                # %for.body10.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$a1, $a0
	b	.LBB4_8
	.p2align	4, , 16
.LBB4_7:                                # %for.inc
                                        #   in Loop: Header=BB4_8 Depth=2
	ld.d	$a1, $a1, 0
	and	$a2, $a2, $s2
	xor	$a2, $a2, $s2
	sltui	$a2, $a2, 1
	add.w	$s7, $s7, $a2
	beqz	$a1, .LBB4_4
.LBB4_8:                                # %for.body10
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_9 Depth 3
	ld.d	$a2, $a1, 16
	slli.d	$a3, $a2, 33
	bgez	$a3, .LBB4_7
	.p2align	4, , 16
.LBB4_9:                                # %while.body
                                        #   Parent Loop BB4_5 Depth=1
                                        #     Parent Loop BB4_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 0
	ld.bu	$a3, $a1, 19
	andi	$a3, $a3, 64
	bnez	$a3, .LBB4_9
	b	.LBB4_7
.LBB4_10:                               # %for.end19
	pcalau12i	$a0, %got_pc_hi20(hashtbl)
	ld.d	$a0, $a0, %got_pc_lo12(hashtbl)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(hashsize)
	ld.d	$a0, $a0, %got_pc_lo12(hashsize)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$s3, $a0, 0
	slli.d	$a0, $s3, 4
	alsl.d	$a0, $s3, $a0, 3
	lu12i.w	$s4, 196608
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	blez	$s3, .LBB4_16
# %bb.11:                               # %for.body24.preheader
	add.d	$a0, $s0, $a0
	move	$a1, $s0
	b	.LBB4_13
	.p2align	4, , 16
.LBB4_12:                               # %for.inc39
                                        #   in Loop: Header=BB4_13 Depth=1
	addi.d	$a1, $a1, 24
	bgeu	$a1, $a0, .LBB4_16
.LBB4_13:                               # %for.body24
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, 16
	and	$a3, $a2, $s2
	bne	$a3, $s2, .LBB4_12
# %bb.14:                               # %for.body24
                                        #   in Loop: Header=BB4_13 Depth=1
	and	$a2, $a2, $s4
	beq	$a2, $s4, .LBB4_12
# %bb.15:                               # %land.lhs.true
                                        #   in Loop: Header=BB4_13 Depth=1
	ld.d	$a2, $a1, 8
	sltu	$a2, $zero, $a2
	add.w	$s7, $s7, $a2
	b	.LBB4_12
.LBB4_16:                               # %for.end41
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a0, $s7, 4
	alsl.d	$a0, $s7, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_27
# %bb.17:                               # %for.cond108.preheader
	move	$fp, $a0
	beqz	$s8, .LBB4_37
# %bb.18:
	move	$a0, $fp
	b	.LBB4_20
	.p2align	4, , 16
.LBB4_19:                               # %for.inc135
                                        #   in Loop: Header=BB4_20 Depth=1
	addi.d	$s5, $s5, 24
	bgeu	$s5, $s6, .LBB4_36
.LBB4_20:                               # %for.cond112.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
                                        #       Child Loop BB4_26 Depth 3
	beqz	$s5, .LBB4_19
# %bb.21:                               # %for.body115.preheader
                                        #   in Loop: Header=BB4_20 Depth=1
	move	$a1, $s5
	b	.LBB4_24
	.p2align	4, , 16
.LBB4_22:                               #   in Loop: Header=BB4_24 Depth=2
	move	$a0, $a2
.LBB4_23:                               # %for.inc132
                                        #   in Loop: Header=BB4_24 Depth=2
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB4_19
.LBB4_24:                               # %for.body115
                                        #   Parent Loop BB4_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_26 Depth 3
	ld.d	$a3, $a1, 16
	and	$a2, $a3, $s2
	bne	$a2, $s2, .LBB4_23
# %bb.25:                               # %if.then121
                                        #   in Loop: Header=BB4_24 Depth=2
	addi.d	$a2, $a0, 8
	slli.d	$a3, $a3, 33
	st.d	$a1, $a0, 0
	bgez	$a3, .LBB4_22
	.p2align	4, , 16
.LBB4_26:                               # %while.body128
                                        #   Parent Loop BB4_20 Depth=1
                                        #     Parent Loop BB4_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a1, $a1, 0
	ld.bu	$a0, $a1, 19
	andi	$a0, $a0, 64
	bnez	$a0, .LBB4_26
	b	.LBB4_22
.LBB4_27:                               # %for.cond49.preheader
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bnez	$s8, .LBB4_30
# %bb.28:                               # %for.end77
	bgtz	$s3, .LBB4_49
	b	.LBB4_55
	.p2align	4, , 16
.LBB4_29:                               # %for.inc75
                                        #   in Loop: Header=BB4_30 Depth=1
	addi.d	$s5, $s5, 24
	bgeu	$s5, $s6, .LBB4_48
.LBB4_30:                               # %for.cond53.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_33 Depth 2
                                        #       Child Loop BB4_35 Depth 3
	beqz	$s5, .LBB4_29
# %bb.31:                               # %for.body56.preheader
                                        #   in Loop: Header=BB4_30 Depth=1
	move	$fp, $s5
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_32:                               # %for.inc72
                                        #   in Loop: Header=BB4_33 Depth=2
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB4_29
.LBB4_33:                               # %for.body56
                                        #   Parent Loop BB4_30 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_35 Depth 3
	ld.d	$a0, $fp, 16
	and	$a0, $a0, $s2
	bne	$a0, $s2, .LBB4_32
# %bb.34:                               # %if.then62
                                        #   in Loop: Header=BB4_33 Depth=2
	ld.d	$a0, $s1, %pc_lo12(dictf)
	ori	$a2, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(toutent)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 19
	andi	$a0, $a0, 64
	beqz	$a0, .LBB4_32
	.p2align	4, , 16
.LBB4_35:                               # %while.body68
                                        #   Parent Loop BB4_30 Depth=1
                                        #     Parent Loop BB4_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$fp, $fp, 0
	ld.bu	$a0, $fp, 19
	andi	$a0, $a0, 64
	bnez	$a0, .LBB4_35
	b	.LBB4_32
.LBB4_36:                               # %for.end137.loopexit
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $a1, 0
.LBB4_37:                               # %for.end137
	blez	$s3, .LBB4_44
# %bb.38:                               # %for.body143.preheader
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a1, $s0, $a1
	b	.LBB4_40
	.p2align	4, , 16
.LBB4_39:                               # %for.inc163
                                        #   in Loop: Header=BB4_40 Depth=1
	addi.d	$s0, $s0, 24
	bgeu	$s0, $a1, .LBB4_44
.LBB4_40:                               # %for.body143
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s0, 16
	and	$a3, $a2, $s2
	bne	$a3, $s2, .LBB4_39
# %bb.41:                               # %for.body143
                                        #   in Loop: Header=BB4_40 Depth=1
	and	$a2, $a2, $s4
	beq	$a2, $s4, .LBB4_39
# %bb.42:                               # %land.lhs.true155
                                        #   in Loop: Header=BB4_40 Depth=1
	ld.d	$a2, $s0, 8
	beqz	$a2, .LBB4_39
# %bb.43:                               # %if.then159
                                        #   in Loop: Header=BB4_40 Depth=1
	addi.d	$a2, $a0, 8
	st.d	$s0, $a0, 0
	move	$a0, $a2
	b	.LBB4_39
.LBB4_44:                               # %for.end165
	bstrpick.d	$a1, $s7, 31, 0
	pcalau12i	$a0, %pc_hi20(pdictcmp)
	addi.d	$a3, $a0, %pc_lo12(pdictcmp)
	ori	$a2, $zero, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	blez	$s7, .LBB4_47
# %bb.45:                               # %for.body170.preheader
	addi.d	$s0, $s7, 1
	ori	$s2, $zero, 1
	move	$a2, $fp
	.p2align	4, , 16
.LBB4_46:                               # %for.body170
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, %pc_lo12(dictf)
	ld.d	$a1, $a2, 0
	addi.d	$s3, $a2, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(toutent)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	move	$a2, $s3
	bltu	$s2, $s0, .LBB4_46
.LBB4_47:                               # %for.end172
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(dictf)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$zero, $a1, %pc_lo12(newwords)
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
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.LBB4_48:                               # %for.end77.loopexit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$s3, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	slli.d	$a0, $s3, 4
	alsl.d	$a0, $s3, $a0, 3
	blez	$s3, .LBB4_55
.LBB4_49:                               # %for.body83.preheader
	add.d	$fp, $s0, $a0
	b	.LBB4_51
	.p2align	4, , 16
.LBB4_50:                               # %for.inc102
                                        #   in Loop: Header=BB4_51 Depth=1
	addi.d	$s0, $s0, 24
	bgeu	$s0, $fp, .LBB4_55
.LBB4_51:                               # %for.body83
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 16
	and	$a1, $a0, $s2
	bne	$a1, $s2, .LBB4_50
# %bb.52:                               # %for.body83
                                        #   in Loop: Header=BB4_51 Depth=1
	and	$a0, $a0, $s4
	beq	$a0, $s4, .LBB4_50
# %bb.53:                               # %land.lhs.true95
                                        #   in Loop: Header=BB4_51 Depth=1
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB4_50
# %bb.54:                               # %if.then99
                                        #   in Loop: Header=BB4_51 Depth=1
	ld.d	$a0, $s1, %pc_lo12(dictf)
	ori	$a2, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(toutent)
	jirl	$ra, $ra, 0
	b	.LBB4_50
.LBB4_55:                               # %cleanup
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
.LBB4_56:                               # %if.then2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	pcalau12i	$a2, %pc_hi20(personaldict)
	addi.d	$a2, $a2, %pc_lo12(personaldict)
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
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.Lfunc_end4:
	.size	treeoutput, .Lfunc_end4-treeoutput
                                        # -- End function
	.p2align	5                               # -- Begin function pdictcmp
	.type	pdictcmp,@function
pdictcmp:                               # @pdictcmp
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(casecmp)
	jr	$t8
.Lfunc_end5:
	.size	pdictcmp, .Lfunc_end5-pdictcmp
                                        # -- End function
	.globl	mymalloc                        # -- Begin function mymalloc
	.p2align	5
	.type	mymalloc,@function
mymalloc:                               # @mymalloc
# %bb.0:                                # %entry
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$t8, %call36(malloc)
	jr	$t8
.Lfunc_end6:
	.size	mymalloc, .Lfunc_end6-mymalloc
                                        # -- End function
	.globl	myfree                          # -- Begin function myfree
	.p2align	5
	.type	myfree,@function
myfree:                                 # @myfree
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(hashstrings)
	ld.d	$a1, $a1, %got_pc_lo12(hashstrings)
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB7_4
# %bb.1:                                # %entry
	bltu	$a0, $a1, .LBB7_4
# %bb.2:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(hashheader)
	ld.d	$a2, $a2, %got_pc_lo12(hashheader)
	ld.w	$a2, $a2, 12
	add.d	$a1, $a1, $a2
	bltu	$a1, $a0, .LBB7_4
# %bb.3:                                # %return
	ret
.LBB7_4:                                # %if.end
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end7:
	.size	myfree, .Lfunc_end7-myfree
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"WORDLIST"
	.size	.L.str, 9

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"HOME"
	.size	.L.str.1, 5

	.type	personaldict,@object            # @personaldict
	.local	personaldict
	.comm	personaldict,4096,1
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	".ispell_"
	.size	.L.str.2, 9

	.type	dictf,@object                   # @dictf
	.local	dictf
	.comm	dictf,8,8
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"words"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%s/%s%s"
	.size	.L.str.4, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"r"
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"%s/%s"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Can't open %s\r\n"
	.size	.L.str.9, 16

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.space	1
	.size	.L.str.10, 1

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Warning: Cannot update personal dictionary (%s)\r\n"
	.size	.L.str.11, 50

	.type	cantexpand,@object              # @cantexpand
	.local	cantexpand
	.comm	cantexpand,1,4
	.type	pershsize,@object               # @pershsize
	.local	pershsize
	.comm	pershsize,1,4
	.type	pershtab,@object                # @pershtab
	.local	pershtab
	.comm	pershtab,8,8
	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Ran out of space for personal dictionary\r\n"
	.size	.L.str.12, 43

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Continuing anyway (with reduced performance).\r\n"
	.size	.L.str.13, 48

	.type	newwords,@object                # @newwords
	.local	newwords
	.comm	newwords,4,4
	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"w"
	.size	.L.str.14, 2

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Can't create %s\r\n"
	.size	.L.str.15, 18

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s%s"
	.size	.L.str.16, 5

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.17, 51

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"/home/zhaoqi/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/tree.c"
	.size	.L.str.18, 81

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pdictcmp
	.addrsig_sym personaldict
