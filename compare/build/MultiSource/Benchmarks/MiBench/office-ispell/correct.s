	.file	"correct.c"
	.text
	.globl	givehelp                        # -- Begin function givehelp
	.p2align	5
	.type	givehelp,@function
givehelp:                               # @givehelp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	beqz	$a0, .LBB0_2
# %bb.1:                                # %if.then
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	b	.LBB0_3
.LBB0_2:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
.LBB0_3:                                # %if.end
	ld.d	$fp, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 57
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 67
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 59
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 62
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 53
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 49
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 55
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 65
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 50
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 45
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 91
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 83
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 26
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 1
	ori	$s1, $zero, 32
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB0_6
# %bb.4:                                # %if.then24
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$fp, $a0, %got_pc_lo12(stdin)
	.p2align	4, , 16
.LBB0_5:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_5
.LBB0_6:                                # %if.end29
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	givehelp, .Lfunc_end0-givehelp
                                        # -- End function
	.globl	checkfile                       # -- Begin function checkfile
	.p2align	5
	.type	checkfile,@function
checkfile:                              # @checkfile
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
	pcalau12i	$a0, %got_pc_hi20(contextsize)
	ld.d	$a0, $a0, %got_pc_lo12(contextsize)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a2, $a0, 0
	bstrpick.d	$a0, $a2, 31, 0
	ori	$a1, $zero, 1
	lu12i.w	$s4, -2
	blt	$a2, $a1, .LBB1_8
# %bb.1:                                # %for.body.preheader
	bne	$a0, $a1, .LBB1_3
# %bb.2:
	move	$a1, $zero
	b	.LBB1_6
.LBB1_3:                                # %vector.ph
	pcalau12i	$a1, %got_pc_hi20(contextbufs)
	ld.d	$a1, $a1, %got_pc_lo12(contextbufs)
	lu12i.w	$a2, 2
	add.d	$a2, $a1, $a2
	bstrpick.d	$a1, $a0, 30, 1
	slli.d	$a1, $a1, 1
	lu12i.w	$a3, 4
	move	$a4, $a1
	.p2align	4, , 16
.LBB1_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	stx.b	$zero, $a2, $s4
	st.b	$zero, $a2, 0
	addi.d	$a4, $a4, -2
	add.d	$a2, $a2, $a3
	bnez	$a4, .LBB1_4
# %bb.5:                                # %middle.block
	beq	$a1, $a0, .LBB1_8
.LBB1_6:                                # %for.body.preheader37
	pcalau12i	$a2, %got_pc_hi20(contextbufs)
	ld.d	$a2, $a2, %got_pc_lo12(contextbufs)
	slli.d	$a3, $a1, 13
	add.d	$a2, $a2, $a3
	sub.d	$a1, $a0, $a1
	lu12i.w	$a3, 2
	.p2align	4, , 16
.LBB1_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.b	$zero, $a2, 0
	addi.d	$a1, $a1, -1
	add.d	$a2, $a2, $a3
	bnez	$a1, .LBB1_7
.LBB1_8:                                # %for.cond2.preheader
	ori	$s7, $zero, 2
	pcalau12i	$a1, %got_pc_hi20(contextbufs)
	ld.d	$fp, $a1, %got_pc_lo12(contextbufs)
	pcalau12i	$a1, %got_pc_hi20(quit)
	ld.d	$a1, $a1, %got_pc_lo12(quit)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(infile)
	ld.d	$s5, $a1, %got_pc_lo12(infile)
	lu12i.w	$a2, 1
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$s3, $a1, %got_pc_lo12(hashheader)
	pcalau12i	$a1, %got_pc_hi20(outfile)
	ld.d	$s6, $a1, %got_pc_lo12(outfile)
	add.d	$a1, $fp, $a2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s0, $zero, -1
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_9:                                # %if.end60
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(checkline)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.wu	$a0, $a0, 0
.LBB1_10:                               # %for.cond2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
                                        #     Child Loop BB1_17 Depth 2
	addi.w	$a1, $a0, 0
	blt	$a1, $s7, .LBB1_13
# %bb.11:                               # %for.body5.preheader
                                        #   in Loop: Header=BB1_10 Depth=1
	addi.d	$s8, $a0, 1
	slli.d	$a0, $a0, 13
	add.d	$a0, $fp, $a0
	lu12i.w	$a1, -4
	add.d	$s1, $a0, $a1
	add.d	$s2, $a0, $s4
	.p2align	4, , 16
.LBB1_12:                               # %for.body5
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, -1
	add.d	$s1, $s1, $s4
	add.d	$s2, $s2, $s4
	bltu	$s7, $s8, .LBB1_12
.LBB1_13:                               # %for.end11
                                        #   in Loop: Header=BB1_10 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a2, $s5, 0
	bnez	$a0, .LBB1_22
# %bb.14:                               # %if.end
                                        #   in Loop: Header=BB1_10 Depth=1
	move	$a0, $fp
	lu12i.w	$a1, 1
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_25
# %bb.15:                               # %if.end18
                                        #   in Loop: Header=BB1_10 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4095
	bne	$a0, $a1, .LBB1_9
# %bb.16:                               # %if.then23
                                        #   in Loop: Header=BB1_10 Depth=1
	ori	$a0, $zero, 4094
	ldx.bu	$a0, $fp, $a0
	lu12i.w	$s1, 1
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_17:                               # %land.rhs
                                        #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a0, $a0, 255
	add.d	$a0, $s3, $a0
	ld.bu	$a1, $a0, 982
	bnez	$a1, .LBB1_20
# %bb.18:                               # %lor.lhs.false
                                        #   in Loop: Header=BB1_17 Depth=2
	ld.bu	$a1, $a0, 1666
	bnez	$a1, .LBB1_20
# %bb.19:                               # %lor.rhs
                                        #   in Loop: Header=BB1_17 Depth=2
	ld.bu	$a0, $a0, 1894
	beqz	$a0, .LBB1_9
	.p2align	4, , 16
.LBB1_20:                               # %while.body47
                                        #   in Loop: Header=BB1_17 Depth=2
	ld.d	$a0, $s5, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s0, .LBB1_9
# %bb.21:                               # %if.end52
                                        #   in Loop: Header=BB1_17 Depth=2
	st.b	$a0, $s2, -1
	st.b	$zero, $s2, 0
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 1
	bnez	$s1, .LBB1_17
	b	.LBB1_9
.LBB1_22:                               # %while.cond.preheader
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$a0, $a0, %got_pc_lo12(contextbufs)
	lu12i.w	$a1, 2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_25
# %bb.23:                               # %while.body.preheader
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$fp, $a0, %got_pc_lo12(contextbufs)
	lu12i.w	$s0, 2
	.p2align	4, , 16
.LBB1_24:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s5, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_24
.LBB1_25:                               # %for.end61
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
.Lfunc_end1:
	.size	checkfile, .Lfunc_end1-checkfile
                                        # -- End function
	.globl	correct                         # -- Begin function correct
	.p2align	5
	.type	correct,@function
correct:                                # @correct
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	lu12i.w	$a5, 1
	ori	$a5, $a5, 2576
	sub.d	$sp, $sp, $a5
	move	$s5, $a4
	ld.d	$fp, $a4, 0
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	move	$s0, $a2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	move	$s6, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(minword)
	ld.d	$a1, $a1, %got_pc_lo12(minword)
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	bgeu	$a1, $a0, .LBB2_2
# %bb.1:                                # %checkagain.preheader
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_3
.LBB2_2:                                # %cleanup244
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2576
	add.d	$sp, $sp, $a0
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB2_3:                                # %lor.lhs.false.lr.ph
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$a1, $a0, %got_pc_lo12(contextbufs)
	sub.d	$a0, $fp, $s1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	sub.d	$a1, $a0, $a1
	addi.d	$a0, $sp, 320
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s6, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(currentfile)
	ld.d	$a0, $a0, %got_pc_lo12(currentfile)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(readonly)
	ld.d	$a0, $a0, %got_pc_lo12(readonly)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(li)
	ld.d	$s7, $a0, %got_pc_lo12(li)
	pcalau12i	$a0, %got_pc_hi20(contextsize)
	ld.d	$s8, $a0, %got_pc_lo12(contextsize)
	pcalau12i	$a0, %got_pc_hi20(minimenusize)
	ld.d	$a0, $a0, %got_pc_lo12(minimenusize)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(co)
	ld.d	$a0, $a0, %got_pc_lo12(co)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(maxposslen)
	ld.d	$a0, $a0, %got_pc_lo12(maxposslen)
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(pcount)
	ld.d	$a0, $a0, %got_pc_lo12(pcount)
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(possibilities)
	ld.d	$a0, $a0, %got_pc_lo12(possibilities)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(easypossibilities)
	ld.d	$fp, $a0, %got_pc_lo12(easypossibilities)
	ori	$s1, $zero, 10
	ori	$s4, $zero, 9
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2606
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s5, $sp, 152                   # 8-byte Folded Spill
.LBB2_4:                                # %lor.lhs.false
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
                                        #     Child Loop BB2_23 Depth 2
                                        #     Child Loop BB2_28 Depth 2
                                        #       Child Loop BB2_40 Depth 3
                                        #     Child Loop BB2_46 Depth 2
                                        #       Child Loop BB2_50 Depth 3
                                        #         Child Loop BB2_62 Depth 4
                                        #     Child Loop BB2_74 Depth 2
                                        #     Child Loop BB2_95 Depth 2
                                        #     Child Loop BB2_120 Depth 2
                                        #     Child Loop BB2_125 Depth 2
                                        #     Child Loop BB2_127 Depth 2
                                        #     Child Loop BB2_83 Depth 2
                                        #     Child Loop BB2_84 Depth 2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(compoundgood)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_2
# %bb.5:                                # %if.end7
                                        #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a1, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB2_7
# %bb.6:                                # %if.then10
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_7:                                # %if.end12
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB2_9
# %bb.8:                                # %if.then14
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_9:                                # %if.end16
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(makepossibilities)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.w	$a2, $s7, 0
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a2, $a0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	addi.w	$s0, $a0, -4
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.w	$a1, $a1, 8
	div.w	$a1, $a2, $a1
	mul.w	$a1, $a1, $s0
	bge	$a1, $a0, .LBB2_11
# %bb.10:                               # %if.then22
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	move	$a0, $a1
.LBB2_11:                               # %if.end24
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_21
# %bb.12:                               # %for.body.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$s5, $zero
	move	$s2, $zero
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_15
	.p2align	4, , 16
.LBB2_13:                               # %if.then34
                                        #   in Loop: Header=BB2_15 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_14:                               # %for.inc
                                        #   in Loop: Header=BB2_15 Depth=2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	addi.d	$s2, $s2, 1
	addi.d	$s3, $s3, 120
	addi.w	$s5, $s5, 1
	bge	$s2, $a0, .LBB2_21
.LBB2_15:                               # %for.body
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s8, 0
	div.w	$a1, $s5, $s0
	mul.d	$a2, $a1, $s0
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	ld.w	$a3, $a3, 0
	sub.d	$a2, $s5, $a2
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, 3
	addi.d	$a2, $a3, 8
	mul.w	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	bge	$s2, $a0, .LBB2_13
# %bb.16:                               # %if.else
                                        #   in Loop: Header=BB2_15 Depth=2
	blt	$a0, $s1, .LBB2_19
# %bb.17:                               # %if.else
                                        #   in Loop: Header=BB2_15 Depth=2
	bltu	$s4, $s2, .LBB2_19
# %bb.18:                               # %if.then40
                                        #   in Loop: Header=BB2_15 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_19:                               # %if.else45
                                        #   in Loop: Header=BB2_15 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
.LBB2_20:                               # %for.inc
                                        #   in Loop: Header=BB2_15 Depth=2
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_21:                               # %for.end
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a0, $zero, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 0
	ori	$s2, $zero, 2
	lu12i.w	$s1, -2
	blt	$a0, $s2, .LBB2_24
# %bb.22:                               # %for.body55.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$s0, $a0, 1
	slli.d	$a0, $a0, 13
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	add.d	$s3, $a0, $s1
	.p2align	4, , 16
.LBB2_23:                               # %for.body55
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s3
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(show_line)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, -1
	add.d	$s3, $s3, $s1
	bltu	$s2, $s0, .LBB2_23
.LBB2_24:                               # %for.end62
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bgeu	$a0, $s0, .LBB2_43
# %bb.25:                               # %land.rhs.lr.ph.i
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s5, $a0, %got_pc_lo12(contextbufs)
	move	$s7, $zero
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_26:                               # %if.then22.i.i
                                        #   in Loop: Header=BB2_28 Depth=2
	addi.d	$s5, $s5, 1
	andi	$a0, $s7, 7
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a0
.LBB2_27:                               # %show_char.exit.i
                                        #   in Loop: Header=BB2_28 Depth=2
	add.w	$s7, $a1, $s7
	bgeu	$s5, $s0, .LBB2_44
.LBB2_28:                               # %land.rhs.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_40 Depth 3
	ld.bu	$s2, $s5, 0
	beqz	$s2, .LBB2_44
# %bb.29:                               # %for.body.i
                                        #   in Loop: Header=BB2_28 Depth=2
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s3, $a0, %got_pc_lo12(hashheader)
	add.d	$a0, $s3, $s2
	ld.bu	$a0, $a0, 1894
	beqz	$a0, .LBB2_33
# %bb.30:                               # %land.rhs.i.i
                                        #   in Loop: Header=BB2_28 Depth=2
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a2, $s2
	blt	$a0, $a1, .LBB2_32
# %bb.31:                               # %if.then.i.i
                                        #   in Loop: Header=BB2_28 Depth=2
	pcalau12i	$a1, %got_pc_hi20(laststringch)
	ld.d	$a1, $a1, %got_pc_lo12(laststringch)
	ld.bu	$a1, $a1, 0
	xori	$a2, $a1, 128
	move	$a1, $a0
.LBB2_32:                               # %if.end.i.i
                                        #   in Loop: Header=BB2_28 Depth=2
	pcalau12i	$a0, %got_pc_hi20(vflag)
	ld.d	$a0, $a0, %got_pc_lo12(vflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_37
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_33:                               #   in Loop: Header=BB2_28 Depth=2
	ori	$a1, $zero, 1
	move	$a2, $s2
	pcalau12i	$a0, %got_pc_hi20(vflag)
	ld.d	$a0, $a0, %got_pc_lo12(vflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_37
.LBB2_34:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB2_28 Depth=2
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB2_37
# %bb.35:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB2_28 Depth=2
	add.d	$a0, $s3, $a2
	ld.bu	$a0, $a0, 982
	beqz	$a0, .LBB2_37
# %bb.36:                               # %if.then14.i.i
                                        #   in Loop: Header=BB2_28 Depth=2
	addi.d	$s5, $s5, 1
	ori	$a1, $zero, 1
	b	.LBB2_27
	.p2align	4, , 16
.LBB2_37:                               # %if.end19.i.i
                                        #   in Loop: Header=BB2_28 Depth=2
	beq	$s2, $s4, .LBB2_26
# %bb.38:                               # %if.end28.i.i
                                        #   in Loop: Header=BB2_28 Depth=2
	sub.w	$a0, $s0, $s5
	sltui	$a2, $a0, 1
	slt	$a3, $a1, $a0
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a0, $a3, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_42
# %bb.39:                               # %for.body.us.i.i.preheader
                                        #   in Loop: Header=BB2_28 Depth=2
	move	$a1, $zero
	move	$a2, $a0
	move	$a3, $s5
	.p2align	4, , 16
.LBB2_40:                               # %for.body.us.i.i
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_28 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a4, $a3, 0
	addi.d	$a3, $a3, 1
	andi	$a5, $a4, 255
	slti	$a6, $a4, 0
	addi.d	$a7, $a1, 2
	andi	$a4, $a4, 127
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	masknez	$a1, $a1, $a6
	maskeqz	$a5, $a7, $a6
	or	$a1, $a5, $a1
	sltui	$a5, $a4, 32
	addi.d	$a4, $a4, -127
	sltui	$a4, $a4, 1
	or	$a4, $a5, $a4
	add.d	$a1, $a4, $a1
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB2_40
# %bb.41:                               # %show_char.exit.loopexit.i
                                        #   in Loop: Header=BB2_28 Depth=2
	add.d	$s5, $s5, $a0
	b	.LBB2_27
.LBB2_42:                               #   in Loop: Header=BB2_28 Depth=2
	move	$a1, $zero
	b	.LBB2_27
.LBB2_43:                               #   in Loop: Header=BB2_4 Depth=1
	move	$s7, $zero
.LBB2_44:                               # %line_size.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(sg)
	ld.d	$s0, $a0, %got_pc_lo12(sg)
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	slli.d	$a2, $a0, 1
	nor	$a2, $a2, $zero
	add.w	$a2, $a1, $a2
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
	bge	$a2, $s7, .LBB2_69
# %bb.45:                               # %if.then68
                                        #   in Loop: Header=BB2_4 Depth=1
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a2, $a1, $a2
	srai.d	$a2, $a2, 1
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sub.d	$s3, $a3, $a2
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB2_68
	.p2align	4, , 16
.LBB2_46:                               # %while.body
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_50 Depth 3
                                        #         Child Loop BB2_62 Depth 4
	ld.d	$s7, $s5, 0
	ori	$a2, $zero, 1
	bgeu	$s3, $s7, .LBB2_66
# %bb.47:                               # %land.rhs.lr.ph.i75
                                        #   in Loop: Header=BB2_46 Depth=2
	move	$s2, $zero
	move	$s5, $s3
	b	.LBB2_50
	.p2align	4, , 16
.LBB2_48:                               # %if.then22.i.i126
                                        #   in Loop: Header=BB2_50 Depth=3
	addi.d	$s5, $s5, 1
	andi	$a0, $s2, 7
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a0
.LBB2_49:                               # %show_char.exit.i101
                                        #   in Loop: Header=BB2_50 Depth=3
	add.d	$s2, $a1, $s2
	bgeu	$s5, $s7, .LBB2_65
.LBB2_50:                               # %land.rhs.i77
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_46 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_62 Depth 4
	ld.bu	$s6, $s5, 0
	beqz	$s6, .LBB2_65
# %bb.51:                               # %for.body.i81
                                        #   in Loop: Header=BB2_50 Depth=3
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s1, $a0, %got_pc_lo12(hashheader)
	add.d	$a0, $s1, $s6
	ld.bu	$a0, $a0, 1894
	beqz	$a0, .LBB2_55
# %bb.52:                               # %land.rhs.i.i88
                                        #   in Loop: Header=BB2_50 Depth=3
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a2, $s6
	blt	$a0, $a1, .LBB2_54
# %bb.53:                               # %if.then.i.i138
                                        #   in Loop: Header=BB2_50 Depth=3
	pcalau12i	$a1, %got_pc_hi20(laststringch)
	ld.d	$a1, $a1, %got_pc_lo12(laststringch)
	ld.bu	$a1, $a1, 0
	xori	$a2, $a1, 128
	move	$a1, $a0
.LBB2_54:                               # %if.end.i.i91
                                        #   in Loop: Header=BB2_50 Depth=3
	pcalau12i	$a0, %got_pc_hi20(vflag)
	ld.d	$a0, $a0, %got_pc_lo12(vflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_59
	b	.LBB2_56
	.p2align	4, , 16
.LBB2_55:                               #   in Loop: Header=BB2_50 Depth=3
	ori	$a1, $zero, 1
	move	$a2, $s6
	pcalau12i	$a0, %got_pc_hi20(vflag)
	ld.d	$a0, $a0, %got_pc_lo12(vflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB2_59
.LBB2_56:                               # %land.lhs.true.i.i130
                                        #   in Loop: Header=BB2_50 Depth=3
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB2_59
# %bb.57:                               # %land.lhs.true.i.i130
                                        #   in Loop: Header=BB2_50 Depth=3
	add.d	$a0, $s1, $a2
	ld.bu	$a0, $a0, 982
	beqz	$a0, .LBB2_59
# %bb.58:                               # %if.then14.i.i136
                                        #   in Loop: Header=BB2_50 Depth=3
	addi.d	$s5, $s5, 1
	ori	$a1, $zero, 1
	b	.LBB2_49
	.p2align	4, , 16
.LBB2_59:                               # %if.end19.i.i95
                                        #   in Loop: Header=BB2_50 Depth=3
	beq	$s6, $s4, .LBB2_48
# %bb.60:                               # %if.end28.i.i97
                                        #   in Loop: Header=BB2_50 Depth=3
	sub.w	$a0, $s7, $s5
	sltui	$a2, $a0, 1
	slt	$a3, $a1, $a0
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a1, $a3
	or	$a0, $a3, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB2_64
# %bb.61:                               # %for.body.us.i.i106.preheader
                                        #   in Loop: Header=BB2_50 Depth=3
	move	$a1, $zero
	move	$a2, $a0
	move	$a3, $s5
	.p2align	4, , 16
.LBB2_62:                               # %for.body.us.i.i106
                                        #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_46 Depth=2
                                        #       Parent Loop BB2_50 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a4, $a3, 0
	addi.d	$a3, $a3, 1
	andi	$a5, $a4, 255
	slti	$a6, $a4, 0
	addi.d	$a7, $a1, 2
	andi	$a4, $a4, 127
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	masknez	$a1, $a1, $a6
	maskeqz	$a5, $a7, $a6
	or	$a1, $a5, $a1
	sltui	$a5, $a4, 32
	addi.d	$a4, $a4, -127
	sltui	$a4, $a4, 1
	or	$a4, $a5, $a4
	add.d	$a1, $a4, $a1
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	bnez	$a2, .LBB2_62
# %bb.63:                               # %show_char.exit.loopexit.i123
                                        #   in Loop: Header=BB2_50 Depth=3
	add.d	$s5, $s5, $a0
	b	.LBB2_49
.LBB2_64:                               #   in Loop: Header=BB2_50 Depth=3
	move	$a1, $zero
	b	.LBB2_49
	.p2align	4, , 16
.LBB2_65:                               # %line_size.exit140.loopexit
                                        #   in Loop: Header=BB2_46 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	addi.d	$a2, $s2, 1
	ld.d	$s5, $sp, 152                   # 8-byte Folded Reload
.LBB2_66:                               # %line_size.exit140
                                        #   in Loop: Header=BB2_46 Depth=2
	alsl.w	$a3, $a0, $a2, 1
	bge	$a1, $a3, .LBB2_68
# %bb.67:                               # %if.end81
                                        #   in Loop: Header=BB2_46 Depth=2
	sub.w	$a2, $a2, $a1
	add.d	$s3, $s3, $a2
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	bltu	$s3, $a2, .LBB2_46
.LBB2_68:                               # %while.end
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	sltu	$a0, $a2, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
.LBB2_69:                               # %if.end93
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a2, $a0, 0
	move	$a0, $s3
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(show_line)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB2_74
# %bb.70:                               # %if.then98
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $s7, 0
	addi.w	$a0, $a0, -2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB2_74
.LBB2_71:                               # %if.then193
                                        #   in Loop: Header=BB2_74 Depth=2
	slli.d	$a1, $s0, 3
	alsl.d	$a1, $s0, $a1, 1
	add.d	$a0, $a1, $a0
	addi.d	$s0, $a0, -48
.LBB2_72:                               # %if.end207
                                        #   in Loop: Header=BB2_74 Depth=2
	ld.w	$a0, $fp, 0
	blt	$s0, $a0, .LBB2_133
.LBB2_73:                               # %sw.epilog.sink.split
                                        #   in Loop: Header=BB2_74 Depth=2
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB2_74:                               # %for.cond102
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s3, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$s2, $a0, %got_pc_lo12(stdin)
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a0, $a0, 127
	addi.d	$s0, $a0, -48
	ori	$a1, $zero, 10
	bgeu	$s0, $a1, .LBB2_79
# %bb.75:                               # %sw.bb181
                                        #   in Loop: Header=BB2_74 Depth=2
	ld.w	$a0, $fp, 0
	ori	$s1, $zero, 10
	blt	$a0, $a1, .LBB2_72
# %bb.76:                               # %if.then185
                                        #   in Loop: Header=BB2_74 Depth=2
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a0, $a0, 127
	addi.d	$a1, $a0, -48
	bgeu	$s4, $a1, .LBB2_71
# %bb.77:                               # %if.else197
                                        #   in Loop: Header=BB2_74 Depth=2
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB2_72
# %bb.78:                               # %if.else197
                                        #   in Loop: Header=BB2_74 Depth=2
	beq	$a0, $s1, .LBB2_72
	b	.LBB2_73
	.p2align	4, , 16
.LBB2_79:                               # %for.cond102
                                        #   in Loop: Header=BB2_74 Depth=2
	ori	$s1, $zero, 10
	addi.d	$a0, $a0, -10
	ori	$a1, $zero, 110
	bltu	$a1, $a0, .LBB2_73
# %bb.80:                               # %for.cond102
                                        #   in Loop: Header=BB2_74 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI2_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI2_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB2_81:                               # %sw.bb226
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $s7, 0
	addi.w	$a0, $a0, -1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 220
	pcaddu18i	$ra, %call36(getline_ispell)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_110
# %bb.82:                               # %if.end236
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.d	$a1, $sp, 220
	lu12i.w	$a2, 2
	ori	$a2, $a2, 324
	add.d	$a2, $sp, $a2
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ori	$a5, $zero, 42
	ld.bu	$a3, $a1, 0
	bne	$a3, $a5, .LBB2_84
	.p2align	4, , 16
.LBB2_83:                               # %if.then.i204
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a0, $a0, 1
	st.h	$a4, $a2, 0
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 1
	ld.bu	$a3, $a1, 0
	beq	$a3, $a5, .LBB2_83
.LBB2_84:                               # %for.cond.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a3, .LBB2_100
# %bb.85:                               # %if.else.i
                                        #   in Loop: Header=BB2_84 Depth=2
	st.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, 1
	ld.bu	$a3, $a1, 0
	bne	$a3, $a5, .LBB2_84
	b	.LBB2_83
.LBB2_86:                               # %sw.bb153
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $s7, 0
	addi.w	$a0, $a0, -1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_88
# %bb.87:                               # %if.then156
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_88:                               # %if.end159
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(getline_ispell)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_109
# %bb.89:                               # %if.else167
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s5, $a0, %got_pc_lo12(contextbufs)
	addi.d	$a0, $sp, 320
	addi.d	$s0, $sp, 320
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	beq	$s2, $s5, .LBB2_91
# %bb.90:                               # %for.body.preheader.i
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 320
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$s5, $s2
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
.LBB2_91:                               # %for.end.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $a0, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(skipoverword)
	jirl	$ra, $ra, 0
	bgeu	$s6, $a0, .LBB2_111
# %bb.92:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	sub.d	$a3, $a0, $s6
	ori	$a2, $zero, 64
	bltu	$a3, $a2, .LBB2_118
# %bb.93:                               # %while.body.i.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	sub.d	$a1, $s5, $s6
	bltu	$a1, $a2, .LBB2_118
# %bb.94:                               # %vector.ph
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a4, $a3
	bstrins.d	$a4, $zero, 5, 0
	add.d	$a1, $s6, $a4
	add.d	$a2, $s5, $a4
	addi.d	$a5, $s5, 32
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	move	$a7, $a4
.LBB2_95:                               # %vector.body
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a7, $a7, -64
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB2_95
# %bb.96:                               # %middle.block
                                        #   in Loop: Header=BB2_4 Depth=1
	bne	$a3, $a4, .LBB2_119
	b	.LBB2_121
.LBB2_97:                               # %sw.bb107
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(changes)
	ld.d	$a0, $a0, %got_pc_lo12(changes)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_99
# %bb.98:                               # %if.then109
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a0, $a0, 95
	ori	$a1, $zero, 89
	bne	$a0, $a1, .LBB2_132
.LBB2_99:                               # %if.then121
                                        #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(done)
	jirl	$ra, $ra, 0
	b	.LBB2_132
.LBB2_100:                              # %for.end.i206
                                        #   in Loop: Header=BB2_4 Depth=1
	st.b	$zero, $a2, 0
	lu12i.w	$a1, 2
	ori	$a1, $a1, 324
	add.d	$a1, $sp, $a1
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB2_116
# %bb.101:                              # %if.then8.i
                                        #   in Loop: Header=BB2_4 Depth=1
	bnez	$a0, .LBB2_112
# %bb.102:                              # %if.then8.i
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$s0, %pc_hi20(lookharder.look)
	ld.b	$a1, $s0, %pc_lo12(lookharder.look)
	andi	$a1, $a1, 1
	bnez	$a1, .LBB2_112
# %bb.103:                              # %if.then11.i
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a1, $a0, %pc_lo12(.L.str.80)
	pcalau12i	$a0, %pc_hi20(.L.str.81)
	addi.d	$a2, $a0, %pc_lo12(.L.str.81)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a4, $a0, %pc_lo12(.L.str.82)
	addi.d	$a0, $sp, 320
	lu12i.w	$a3, 2
	ori	$a3, $a3, 324
	add.d	$a3, $sp, $a3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(shellescape)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_116
# %bb.104:                              # %if.end20.thread.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a0, $zero, 1
	st.b	$a0, $s0, %pc_lo12(lookharder.look)
	b	.LBB2_113
.LBB2_105:                              # %sw.bb138
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a0, $s7, 0
	addi.w	$a0, $a0, -1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 33
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(getline_ispell)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_117
# %bb.106:                              # %if.end148
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	b	.LBB2_115
.LBB2_107:                              # %sw.bb
                                        #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(stop)
	jirl	$ra, $ra, 0
	b	.LBB2_116
.LBB2_108:                              # %sw.bb137
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(givehelp)
	jirl	$ra, $ra, 0
	b	.LBB2_132
.LBB2_109:                              # %if.then164
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(ichartostr)
	jirl	$ra, $ra, 0
	b	.LBB2_131
.LBB2_110:                              # %if.then234
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB2_116
.LBB2_111:                              #   in Loop: Header=BB2_4 Depth=1
	move	$a2, $s6
	b	.LBB2_122
.LBB2_112:                              # %if.end20.i
                                        #   in Loop: Header=BB2_4 Depth=1
	bnez	$a0, .LBB2_114
.LBB2_113:                              # %if.then22.i
                                        #   in Loop: Header=BB2_4 Depth=1
	lu12i.w	$a0, 2
	ori	$a0, $a0, 324
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.83)
	addi.d	$a1, $a1, %pc_lo12(.L.str.83)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	lu12i.w	$a3, 2
	ori	$a3, $a3, 324
	add.d	$a4, $sp, $a3
	add.d	$a3, $a4, $a0
	stx.h	$a2, $a0, $a4
	st.b	$a1, $a3, 2
.LBB2_114:                              # %if.end25.i
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.84)
	addi.d	$a1, $a0, %pc_lo12(.L.str.84)
	pcalau12i	$a0, %pc_hi20(.L.str.85)
	addi.d	$a2, $a0, %pc_lo12(.L.str.85)
	pcalau12i	$a0, %pc_hi20(.L.str.82)
	addi.d	$a4, $a0, %pc_lo12(.L.str.82)
	addi.d	$a0, $sp, 320
	lu12i.w	$a3, 2
	ori	$a3, $a3, 324
	add.d	$a3, $sp, $a3
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
.LBB2_115:                              # %checkagain.backedge
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a0, $sp, 320
	pcaddu18i	$ra, %call36(shellescape)
	jirl	$ra, $ra, 0
.LBB2_116:                              # %checkagain.backedge
                                        #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	b	.LBB2_132
.LBB2_117:                              # %if.then145
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	b	.LBB2_132
.LBB2_118:                              #   in Loop: Header=BB2_4 Depth=1
	move	$a1, $s6
	move	$a2, $s5
.LBB2_119:                              # %while.body.i.preheader266
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$a3, $a2
.LBB2_120:                              # %while.body.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a1, 0
	addi.d	$a5, $a1, 1
	addi.d	$a2, $a3, 1
	st.b	$a4, $a3, 0
	move	$a1, $a5
	move	$a3, $a2
	bne	$a5, $a0, .LBB2_120
.LBB2_121:                              # %while.end.i.loopexit
                                        #   in Loop: Header=BB2_4 Depth=1
	move	$s5, $a2
	move	$a2, $a0
.LBB2_122:                              # %while.end.i
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$s5, $a1, 0
	ld.bu	$a1, $a2, 0
	beqz	$a1, .LBB2_126
# %bb.123:                              # %if.then.i
                                        #   in Loop: Header=BB2_4 Depth=1
	st.b	$a1, $s5, 0
	ld.bu	$a1, $a2, 1
	st.b	$zero, $a2, 0
	addi.d	$s5, $s5, 1
	beqz	$a1, .LBB2_126
# %bb.124:                              # %while.body11.i.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	sltu	$a2, $s6, $a0
	masknez	$a3, $s6, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a3
	ori	$a2, $zero, 2
	add.d	$a0, $a2, $a0
.LBB2_125:                              # %while.body11.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a1, $s5, 0
	ld.bu	$a1, $a0, 0
	addi.d	$s5, $s5, 1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB2_125
.LBB2_126:                              # %while.cond15.i.preheader
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	sub.d	$a0, $s2, $a0
	add.d	$a0, $s0, $a0
	.p2align	4, , 16
.LBB2_127:                              # %while.cond15.i
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s5, 1
	st.b	$a1, $s5, 0
	move	$s5, $a2
	bnez	$a1, .LBB2_127
# %bb.128:                              # %inserttoken.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a1, $s6
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_130
# %bb.129:                              # %if.then170
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a3, $a1, %pc_lo12(.L.str.35)
	ori	$a2, $zero, 494
	move	$a1, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB2_130:                              # %if.end173
                                        #   in Loop: Header=BB2_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(changes)
	ld.d	$a0, $a0, %got_pc_lo12(changes)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB2_131:                              # %if.end174
                                        #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bgeu	$a1, $a0, .LBB2_2
.LBB2_132:                              # %checkagain.backedge
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_4
	b	.LBB2_2
.LBB2_133:                              # %if.then210
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	pcalau12i	$a1, %got_pc_hi20(possibilities)
	ld.d	$a1, $a1, %got_pc_lo12(possibilities)
	ld.d	$s2, $a0, %got_pc_lo12(contextbufs)
	ori	$a0, $zero, 120
	mul.d	$a0, $s0, $a0
	add.d	$a1, $a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(changes)
	ld.d	$a0, $a0, %got_pc_lo12(changes)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $sp, 320
	addi.d	$fp, $sp, 320
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 176                   # 8-byte Folded Reload
	beq	$s4, $s2, .LBB2_135
# %bb.134:                              # %for.body.preheader.i158
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$a0, $a0, %got_pc_lo12(contextbufs)
	addi.d	$a1, $sp, 320
	addi.d	$fp, $sp, 320
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$fp, $fp, $s0
	move	$s2, $s4
.LBB2_135:                              # %for.end.i161
	ld.d	$s0, $s5, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(skipoverword)
	jirl	$ra, $ra, 0
	bgeu	$s6, $a0, .LBB2_141
# %bb.136:                              # %while.body.i194.preheader
	sub.d	$a3, $a0, $s6
	ori	$a1, $zero, 64
	bltu	$a3, $a1, .LBB2_142
# %bb.137:                              # %while.body.i194.preheader
	sub.d	$a2, $s2, $s6
	bltu	$a2, $a1, .LBB2_142
# %bb.138:                              # %vector.ph248
	move	$a4, $a3
	bstrins.d	$a4, $zero, 5, 0
	add.d	$a1, $s6, $a4
	add.d	$a2, $s2, $a4
	addi.d	$a5, $s2, 32
	addi.d	$a6, $s6, 32
	move	$a7, $a4
	.p2align	4, , 16
.LBB2_139:                              # %vector.body251
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a7, $a7, -64
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB2_139
# %bb.140:                              # %middle.block258
	bne	$a3, $a4, .LBB2_143
	b	.LBB2_145
.LBB2_141:
	move	$a3, $s6
	b	.LBB2_146
.LBB2_142:
	move	$a1, $s6
	move	$a2, $s2
.LBB2_143:                              # %while.body.i194.preheader264
	move	$a3, $a2
	.p2align	4, , 16
.LBB2_144:                              # %while.body.i194
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	addi.d	$a5, $a1, 1
	addi.d	$a2, $a3, 1
	st.b	$a4, $a3, 0
	move	$a1, $a5
	move	$a3, $a2
	bne	$a5, $a0, .LBB2_144
.LBB2_145:                              # %while.end.i169.loopexit
	move	$s2, $a2
	move	$a3, $a0
.LBB2_146:                              # %while.end.i169
	st.d	$s2, $s5, 0
	ld.bu	$a2, $a3, 0
	sub.d	$a1, $s0, $s4
	beqz	$a2, .LBB2_150
# %bb.147:                              # %if.then.i173
	st.b	$a2, $s2, 0
	ld.bu	$a2, $a3, 1
	st.b	$zero, $a3, 0
	addi.d	$s2, $s2, 1
	beqz	$a2, .LBB2_150
# %bb.148:                              # %while.body11.i177.preheader
	sltu	$a3, $s6, $a0
	masknez	$a4, $s6, $a3
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a4
	addi.d	$a0, $a0, 2
	.p2align	4, , 16
.LBB2_149:                              # %while.body11.i177
                                        # =>This Inner Loop Header: Depth=1
	st.b	$a2, $s2, 0
	ld.bu	$a2, $a0, 0
	addi.d	$s2, $s2, 1
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB2_149
.LBB2_150:                              # %while.cond15.i185.preheader
	add.d	$a0, $fp, $a1
	.p2align	4, , 16
.LBB2_151:                              # %while.cond15.i185
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s2, 1
	st.b	$a1, $s2, 0
	move	$s2, $a2
	bnez	$a1, .LBB2_151
# %bb.152:                              # %inserttoken.exit200
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_2
# %bb.153:                              # %if.then216
	ld.w	$a0, $s7, 0
	addi.w	$a0, $a0, -1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(sleep)
	jirl	$ra, $ra, 0
	b	.LBB2_2
.LBB2_154:                              # %sw.bb132
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 184
	move	$a2, $zero
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	b	.LBB2_156
.LBB2_155:                              # %sw.bb241
	pcalau12i	$a0, %got_pc_hi20(quit)
	ld.d	$a0, $a0, %got_pc_lo12(quit)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
.LBB2_156:                              # %sw.bb105
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	b	.LBB2_2
.LBB2_157:                              # %sw.bb128
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(lowcase)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 184
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(changes)
	ld.d	$a0, $a0, %got_pc_lo12(changes)
	st.w	$s0, $a0, 0
	b	.LBB2_2
.LBB2_158:                              # %sw.bb124
	move	$a0, $s6
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 184
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(erase)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(changes)
	ld.d	$a0, $a0, %got_pc_lo12(changes)
	st.w	$fp, $a0, 0
	b	.LBB2_2
.Lfunc_end2:
	.size	correct, .Lfunc_end2-correct
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_74-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_132-.LJTI2_0
	.word	.LBB2_74-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_107-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_156-.LJTI2_0
	.word	.LBB2_105-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_108-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_158-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_81-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_86-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_157-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_155-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_154-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_158-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_81-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_97-.LJTI2_0
	.word	.LBB2_86-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_157-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_73-.LJTI2_0
	.word	.LBB2_155-.LJTI2_0
                                        # -- End function
	.text
	.globl	compoundgood                    # -- Begin function compoundgood
	.p2align	5
	.type	compoundgood,@function
compoundgood:                           # @compoundgood
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(compoundflag)
	ld.d	$a2, $a2, %got_pc_lo12(compoundflag)
	ld.w	$a2, $a2, 0
	beqz	$a2, .LBB3_12
# %bb.1:                                # %if.end
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$s2, $a1, %got_pc_lo12(hashheader)
	ld.h	$s1, $s2, 8
	slli.d	$a1, $s1, 1
	bltu	$a0, $a1, .LBB3_12
# %bb.2:                                # %if.end5
	addi.d	$a0, $sp, 16
	addi.d	$s3, $sp, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	add.d	$s0, $s3, $s1
	add.d	$a0, $s0, $s1
	ld.bu	$a0, $a0, -1
	beqz	$a0, .LBB3_12
# %bb.3:                                # %for.body.preheader
	ori	$s3, $zero, 2
	ori	$s4, $zero, 1
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_4:                                # %for.inc
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.h	$a0, $s2, 8
	ldx.bu	$a0, $s0, $a0
	addi.d	$s0, $s0, 1
	beqz	$a0, .LBB3_12
.LBB3_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$s1, $s0, 0
	st.b	$zero, $s0, 0
	addi.d	$a0, $sp, 16
	ori	$a4, $zero, 2
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	st.b	$s1, $s0, 0
	beqz	$a0, .LBB3_4
# %bb.6:                                # %if.then15
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	move	$a0, $s0
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_8
# %bb.7:                                # %lor.lhs.false
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$a1, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(compoundgood)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_4
.LBB3_8:                                # %if.then20
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(whatcap)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(whatcap)
	jirl	$ra, $ra, 0
	rotri.d	$a0, $a0, 28
	addi.d	$a1, $a0, -2
	bltu	$a1, $s3, .LBB3_11
# %bb.9:                                # %if.then20
                                        #   in Loop: Header=BB3_5 Depth=1
	beq	$a0, $s4, .LBB3_14
# %bb.10:                               # %if.then20
                                        #   in Loop: Header=BB3_5 Depth=1
	bnez	$a0, .LBB3_4
.LBB3_11:                               # %sw.bb
	sltui	$a0, $s1, 1
	b	.LBB3_13
.LBB3_12:
	move	$a0, $zero
.LBB3_13:                               # %cleanup
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB3_14:                               # %sw.bb26
	lu12i.w	$a0, 65536
	xor	$a0, $s1, $a0
	sltui	$a0, $a0, 1
	b	.LBB3_13
.Lfunc_end3:
	.size	compoundgood, .Lfunc_end3-compoundgood
                                        # -- End function
	.globl	makepossibilities               # -- Begin function makepossibilities
	.p2align	5
	.type	makepossibilities,@function
makepossibilities:                      # @makepossibilities
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -688
	move	$s6, $a0
	lu12i.w	$a0, -3
	ori	$a0, $a0, 288
	pcalau12i	$a1, %got_pc_hi20(possibilities)
	ld.d	$s5, $a1, %got_pc_lo12(possibilities)
	lu12i.w	$a2, 2
	ori	$a1, $a2, 3808
	ori	$a2, $a2, 3928
	.p2align	4, , 16
.LBB4_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a3, $s5, $a0
	stx.b	$zero, $a3, $a1
	addi.d	$a0, $a0, 240
	stx.b	$zero, $a3, $a2
	bnez	$a0, .LBB4_1
# %bb.2:                                # %for.end
	pcalau12i	$a0, %got_pc_hi20(pcount)
	ld.d	$s3, $a0, %got_pc_lo12(pcount)
	pcalau12i	$a0, %got_pc_hi20(maxposslen)
	ld.d	$a1, $a0, %got_pc_lo12(maxposslen)
	pcalau12i	$a0, %got_pc_hi20(easypossibilities)
	ld.d	$s2, $a0, %got_pc_lo12(easypossibilities)
	st.w	$zero, $s3, 0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.w	$zero, $a1, 0
	st.w	$zero, $s2, 0
	ori	$a2, $zero, 1
	move	$a0, $s6
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_4
# %bb.3:                                # %if.then.i
	addi.d	$a0, $sp, 1428
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1428
	pcaddu18i	$ra, %call36(upcase)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1428
	move	$a1, $s6
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
.LBB4_4:                                # %wrongcapital.exit
	ld.w	$s4, $s3, 0
	ori	$a0, $zero, 99
	blt	$a0, $s4, .LBB4_108
# %bb.5:                                # %if.then
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	addi.d	$s0, $sp, 1429
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(Trynum)
	ld.d	$s1, $a0, %got_pc_lo12(Trynum)
	ld.bu	$a1, $s6, 0
	ld.w	$a0, $s1, 0
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	beqz	$a1, .LBB4_18
# %bb.6:                                # %for.cond3.preheader.lr.ph.i
	blez	$a0, .LBB4_25
# %bb.7:                                # %for.cond3.preheader.i.preheader
	pcalau12i	$a1, %got_pc_hi20(Try)
	ld.d	$s2, $a1, %got_pc_lo12(Try)
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$s3, $a1, %got_pc_lo12(hashheader)
	ori	$s7, $zero, 1
	addi.d	$s8, $sp, 1428
	move	$fp, $s6
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_8:                                # %for.end.i
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.b	$a1, $fp, 0
	ld.bu	$a2, $fp, 1
	addi.d	$fp, $fp, 1
	addi.d	$s4, $s8, 1
	st.b	$a1, $s8, 0
	move	$s8, $s4
	beqz	$a2, .LBB4_19
.LBB4_9:                                # %for.cond3.preheader.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_12 Depth 2
                                        #     Child Loop BB4_15 Depth 2
	blt	$a0, $s7, .LBB4_8
# %bb.10:                               # %for.body6.lr.ph.i
                                        #   in Loop: Header=BB4_9 Depth=1
	move	$s4, $zero
	addi.d	$a0, $sp, 1428
	bne	$s8, $a0, .LBB4_12
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_11:                               # %for.inc.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB4_8
.LBB4_12:                               # %for.body6.us.i
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a0, $s2, $s4
	st.b	$a0, $s8, 0
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_11
# %bb.13:                               # %if.then18.us.i
                                        #   in Loop: Header=BB4_12 Depth=2
	addi.d	$a0, $sp, 1428
	move	$a1, $s6
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_11
	b	.LBB4_27
	.p2align	4, , 16
.LBB4_14:                               # %for.inc.i
                                        #   in Loop: Header=BB4_15 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB4_8
.LBB4_15:                               # %for.body6.i
                                        #   Parent Loop BB4_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s2, $s4
	add.d	$a1, $s3, $a0
	ld.bu	$a1, $a1, 1666
	bnez	$a1, .LBB4_14
# %bb.16:                               # %if.end.i
                                        #   in Loop: Header=BB4_15 Depth=2
	st.b	$a0, $sp, 1428
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_14
# %bb.17:                               # %if.then18.i
                                        #   in Loop: Header=BB4_15 Depth=2
	addi.d	$a0, $sp, 1428
	move	$a1, $s6
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_14
	b	.LBB4_27
.LBB4_18:
	addi.d	$s4, $sp, 1428
.LBB4_19:                               # %for.cond28.preheader.i
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_27
# %bb.20:                               # %for.body31.i.preheader
	pcalau12i	$a0, %got_pc_hi20(Try)
	ld.d	$fp, $a0, %got_pc_lo12(Try)
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s2, $a0, %got_pc_lo12(hashheader)
	move	$s3, $zero
	b	.LBB4_22
	.p2align	4, , 16
.LBB4_21:                               # %for.inc52.i
                                        #   in Loop: Header=BB4_22 Depth=1
	ld.w	$a0, $s1, 0
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB4_27
.LBB4_22:                               # %for.body31.i
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $fp, $s3
	add.d	$a1, $s2, $a0
	ld.bu	$a1, $a1, 1666
	bnez	$a1, .LBB4_21
# %bb.23:                               # %if.end38.i
                                        #   in Loop: Header=BB4_22 Depth=1
	st.b	$a0, $s4, 0
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_21
# %bb.24:                               # %if.then44.i
                                        #   in Loop: Header=BB4_22 Depth=1
	addi.d	$a0, $sp, 1428
	move	$a1, $s6
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_21
	b	.LBB4_27
.LBB4_25:                               # %for.cond3.preheader.us.i.preheader
	addi.d	$a0, $s6, 1
	addi.d	$a2, $sp, 1428
	.p2align	4, , 16
.LBB4_26:                               # %for.cond3.preheader.us.i
                                        # =>This Inner Loop Header: Depth=1
	st.b	$a1, $a2, 0
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a2, 1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB4_26
.LBB4_27:                               # %if.end
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s4, $s3, 0
	ori	$a0, $zero, 99
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $s4, .LBB4_108
# %bb.28:                               # %if.then4
	addi.d	$a0, $sp, 1428
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 1429
	beqz	$a1, .LBB4_34
# %bb.29:                               # %for.body.preheader.i
	ld.bu	$a0, $sp, 1428
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_30:                               # %if.end12.i
                                        #   in Loop: Header=BB4_31 Depth=1
	ld.b	$a2, $s0, 0
	ld.bu	$a0, $s0, -1
	ld.bu	$a1, $s0, 1
	st.b	$a2, $s0, -1
	addi.d	$a2, $s0, 1
	st.b	$a0, $s0, 0
	move	$s0, $a2
	beqz	$a1, .LBB4_33
.LBB4_31:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	st.b	$a1, $s0, -1
	st.b	$a0, $s0, 0
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_30
# %bb.32:                               # %if.then.i22
                                        #   in Loop: Header=BB4_31 Depth=1
	addi.d	$a0, $sp, 1428
	move	$a1, $s6
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_30
.LBB4_33:                               # %if.end5
	ld.w	$s4, $s3, 0
	ori	$a0, $zero, 99
	blt	$a0, $s4, .LBB4_108
.LBB4_34:                               # %if.then7
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB4_41
# %bb.35:                               # %if.end.i27
	addi.d	$a1, $s6, 1
	addi.d	$a0, $sp, 1428
	addi.d	$fp, $sp, 1428
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 0
	beqz	$a0, .LBB4_41
# %bb.36:                               # %for.body.i30.preheader
	move	$s0, $zero
	b	.LBB4_38
	.p2align	4, , 16
.LBB4_37:                               # %if.end14.i
                                        #   in Loop: Header=BB4_38 Depth=1
	add.d	$a0, $s6, $s0
	ldx.b	$a1, $s6, $s0
	ld.bu	$a0, $a0, 1
	stx.b	$a1, $s0, $fp
	addi.d	$s0, $s0, 1
	beqz	$a0, .LBB4_40
.LBB4_38:                               # %for.body.i30
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_37
# %bb.39:                               # %if.then7.i
                                        #   in Loop: Header=BB4_38 Depth=1
	addi.d	$a0, $sp, 1428
	move	$a1, $s6
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_37
.LBB4_40:                               # %if.end8
	ld.w	$s4, $s3, 0
	ori	$a0, $zero, 99
	blt	$a0, $s4, .LBB4_108
.LBB4_41:                               # %if.then10
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.w	$fp, $a0, 0
	addi.d	$a0, $sp, 1428
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1428
	pcaddu18i	$ra, %call36(upcase)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB4_56
# %bb.42:                               # %for.body.lr.ph.i
	ld.w	$a0, $s1, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_56
# %bb.43:                               # %for.body.preheader.i37
	move	$s3, $zero
	addi.d	$a1, $s0, -1
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(Try)
	ld.d	$s7, $a1, %got_pc_lo12(Try)
	pcalau12i	$a1, %got_pc_hi20(hashheader)
	ld.d	$s8, $a1, %got_pc_lo12(hashheader)
	bstrpick.d	$s0, $s0, 30, 0
	addi.d	$s2, $sp, 1428
	b	.LBB4_45
	.p2align	4, , 16
.LBB4_44:                               # %for.end.i40
                                        #   in Loop: Header=BB4_45 Depth=1
	stx.b	$fp, $s3, $s2
	addi.d	$s3, $s3, 1
	beq	$s3, $s0, .LBB4_56
.LBB4_45:                               # %for.body.i38
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_53 Depth 2
                                        #     Child Loop BB4_48 Depth 2
	ldx.bu	$fp, $s3, $s2
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_44
# %bb.46:                               # %for.body7.lr.ph.i
                                        #   in Loop: Header=BB4_45 Depth=1
	sltui	$a0, $s3, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	xor	$a1, $s3, $a1
	sltui	$a1, $a1, 1
	move	$s4, $zero
	or	$a0, $a0, $a1
	bnez	$a0, .LBB4_48
	b	.LBB4_53
	.p2align	4, , 16
.LBB4_47:                               # %for.inc.us.i45
                                        #   in Loop: Header=BB4_48 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB4_44
.LBB4_48:                               # %for.body7.us.i
                                        #   Parent Loop BB4_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s7, $s4
	beq	$a0, $fp, .LBB4_47
# %bb.49:                               # %if.else.us.i
                                        #   in Loop: Header=BB4_48 Depth=2
	add.d	$a1, $s8, $a0
	ld.bu	$a1, $a1, 1666
	bnez	$a1, .LBB4_47
# %bb.50:                               # %if.end24.us.i
                                        #   in Loop: Header=BB4_48 Depth=2
	stx.b	$a0, $s3, $s2
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_47
# %bb.51:                               # %if.then32.us.i
                                        #   in Loop: Header=BB4_48 Depth=2
	addi.d	$a0, $sp, 1428
	move	$a1, $s6
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_47
	b	.LBB4_56
	.p2align	4, , 16
.LBB4_52:                               # %for.inc.i43
                                        #   in Loop: Header=BB4_53 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$s4, $s4, 1
	bge	$s4, $a0, .LBB4_44
.LBB4_53:                               # %for.body7.i
                                        #   Parent Loop BB4_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a0, $s7, $s4
	beq	$a0, $fp, .LBB4_52
# %bb.54:                               # %if.else.i
                                        #   in Loop: Header=BB4_53 Depth=2
	stx.b	$a0, $s3, $s2
	addi.d	$a0, $sp, 1428
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_52
# %bb.55:                               # %if.then32.i
                                        #   in Loop: Header=BB4_53 Depth=2
	addi.d	$a0, $sp, 1428
	move	$a1, $s6
	pcaddu18i	$ra, %call36(ins_cap)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_52
.LBB4_56:                               # %if.end11
	pcalau12i	$a0, %got_pc_hi20(compoundflag)
	ld.d	$a0, $a0, %got_pc_lo12(compoundflag)
	ld.w	$a0, $a0, 0
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s4, $s3, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_107
# %bb.57:                               # %if.end11
	ori	$a0, $zero, 99
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $s4, .LBB4_108
# %bb.58:                               # %if.then14
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -119
	addi.w	$a1, $zero, -116
	bltu	$a0, $a1, .LBB4_108
# %bb.59:                               # %if.end.i50
	addi.d	$s7, $sp, 1308
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 1309
	beqz	$a0, .LBB4_108
# %bb.60:                               # %for.body.lr.ph.i53
	addi.d	$a0, $sp, 1309
	addi.d	$s4, $sp, 1428
	b	.LBB4_62
.LBB4_61:                               # %for.inc62.i
                                        #   in Loop: Header=BB4_62 Depth=1
	ld.bu	$a1, $s7, 1
	addi.d	$a0, $s7, 1
	beqz	$a1, .LBB4_120
.LBB4_62:                               # %for.body.i54
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_66 Depth 2
                                        #     Child Loop BB4_78 Depth 2
                                        #     Child Loop BB4_89 Depth 2
                                        #       Child Loop BB4_92 Depth 3
                                        #         Child Loop BB4_94 Depth 4
                                        #         Child Loop BB4_101 Depth 4
	move	$s1, $s7
	ld.b	$a1, $s7, 0
	move	$s7, $a0
	st.b	$a1, $s1, -1
	st.b	$zero, $s1, 0
	addi.d	$a0, $sp, 1307
	ori	$a2, $zero, 1
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_61
# %bb.63:                               # %if.then13.i
                                        #   in Loop: Header=BB4_62 Depth=1
	ld.bu	$a0, $sp, 1307
	beqz	$a0, .LBB4_73
# %bb.64:                               # %if.end.i.i
                                        #   in Loop: Header=BB4_62 Depth=1
	pcalau12i	$a0, %got_pc_hi20(numhits)
	ld.d	$a0, $a0, %got_pc_lo12(numhits)
	ld.w	$fp, $a0, 0
	ori	$a0, $zero, 2628
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB4_73
# %bb.65:                               # %for.body.preheader.i.i
                                        #   in Loop: Header=BB4_62 Depth=1
	pcalau12i	$a0, %got_pc_hi20(hits)
	ld.d	$a0, $a0, %got_pc_lo12(hits)
	slli.d	$a1, $fp, 4
	alsl.d	$a1, $fp, $a1, 3
	add.d	$a0, $a0, $a1
	addi.d	$s0, $a0, -8
	ori	$a0, $zero, 2628
	add.d	$s2, $sp, $a0
	.p2align	4, , 16
.LBB4_66:                               # %for.body.i.i
                                        #   Parent Loop BB4_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $s0, -8
	beqz	$a7, .LBB4_69
# %bb.67:                               # %if.then6.i.i
                                        #   in Loop: Header=BB4_66 Depth=2
	ld.h	$a2, $a7, 18
	ld.h	$a3, $a7, 20
	ld.d	$a1, $s0, 0
	beqz	$a1, .LBB4_70
.LBB4_68:                               # %if.then19.i.i
                                        #   in Loop: Header=BB4_66 Depth=2
	ld.h	$a4, $a1, 18
	ld.h	$a5, $a1, 20
	b	.LBB4_71
	.p2align	4, , 16
.LBB4_69:                               #   in Loop: Header=BB4_66 Depth=2
	move	$a3, $zero
	move	$a2, $zero
	ld.d	$a1, $s0, 0
	bnez	$a1, .LBB4_68
.LBB4_70:                               #   in Loop: Header=BB4_66 Depth=2
	move	$a5, $zero
	move	$a4, $zero
.LBB4_71:                               # %if.end31.i.i
                                        #   in Loop: Header=BB4_66 Depth=2
	ld.d	$a6, $s0, -16
	st.d	$s2, $sp, 16
	st.d	$s4, $sp, 8
	addi.d	$a0, $sp, 1307
	st.d	$a1, $sp, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(save_root_cap)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2628
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	bstrpick.d	$s8, $a0, 31, 0
	ori	$a1, $zero, 2
	bltu	$fp, $a1, .LBB4_74
# %bb.72:                               # %if.end31.i.i
                                        #   in Loop: Header=BB4_66 Depth=2
	addi.d	$s0, $s0, -24
	addi.d	$fp, $fp, -1
	ori	$a1, $zero, 10
	blt	$a0, $a1, .LBB4_66
	b	.LBB4_74
.LBB4_73:                               #   in Loop: Header=BB4_62 Depth=1
	move	$s8, $zero
.LBB4_74:                               # %save_cap.exit.i
                                        #   in Loop: Header=BB4_62 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s7
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_61
# %bb.75:                               # %if.then20.i
                                        #   in Loop: Header=BB4_62 Depth=1
	ld.bu	$a0, $s7, 0
	beqz	$a0, .LBB4_85
# %bb.76:                               # %if.end.i23.i
                                        #   in Loop: Header=BB4_62 Depth=1
	pcalau12i	$a0, %got_pc_hi20(numhits)
	ld.d	$a0, $a0, %got_pc_lo12(numhits)
	ld.w	$fp, $a0, 0
	ori	$a0, $zero, 2628
	add.d	$a0, $sp, $a0
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB4_85
# %bb.77:                               # %for.body.preheader.i26.i
                                        #   in Loop: Header=BB4_62 Depth=1
	pcalau12i	$a0, %got_pc_hi20(hits)
	ld.d	$a0, $a0, %got_pc_lo12(hits)
	slli.d	$a1, $fp, 4
	alsl.d	$a1, $fp, $a1, 3
	add.d	$a0, $a0, $a1
	addi.d	$s0, $a0, -8
	.p2align	4, , 16
.LBB4_78:                               # %for.body.i27.i
                                        #   Parent Loop BB4_62 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a7, $s0, -8
	beqz	$a7, .LBB4_81
# %bb.79:                               # %if.then6.i33.i
                                        #   in Loop: Header=BB4_78 Depth=2
	ld.h	$a2, $a7, 18
	ld.h	$a3, $a7, 20
	ori	$a0, $zero, 2628
	add.d	$a1, $sp, $a0
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB4_82
.LBB4_80:                               # %if.then19.i43.i
                                        #   in Loop: Header=BB4_78 Depth=2
	ld.h	$a4, $a0, 18
	ld.h	$a5, $a0, 20
	b	.LBB4_83
	.p2align	4, , 16
.LBB4_81:                               #   in Loop: Header=BB4_78 Depth=2
	move	$a3, $zero
	move	$a2, $zero
	ori	$a0, $zero, 2628
	add.d	$a1, $sp, $a0
	ld.d	$a0, $s0, 0
	bnez	$a0, .LBB4_80
.LBB4_82:                               #   in Loop: Header=BB4_78 Depth=2
	move	$a5, $zero
	move	$a4, $zero
.LBB4_83:                               # %if.end31.i48.i
                                        #   in Loop: Header=BB4_78 Depth=2
	ld.d	$a6, $s0, -16
	st.d	$a1, $sp, 16
	addi.d	$a1, $sp, 107
	st.d	$a1, $sp, 8
	st.d	$a0, $sp, 0
	move	$a0, $s7
	move	$a1, $s7
	pcaddu18i	$ra, %call36(save_root_cap)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2628
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	bstrpick.d	$s2, $a0, 31, 0
	ori	$a1, $zero, 2
	bltu	$fp, $a1, .LBB4_86
# %bb.84:                               # %if.end31.i48.i
                                        #   in Loop: Header=BB4_78 Depth=2
	addi.d	$s0, $s0, -24
	addi.d	$fp, $fp, -1
	ori	$a1, $zero, 10
	blt	$a0, $a1, .LBB4_78
	b	.LBB4_86
.LBB4_85:                               #   in Loop: Header=BB4_62 Depth=1
	move	$s2, $zero
.LBB4_86:                               # %save_cap.exit53.i
                                        #   in Loop: Header=BB4_62 Depth=1
	addi.w	$a0, $s8, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_61
# %bb.87:                               # %for.body28.lr.ph.i
                                        #   in Loop: Header=BB4_62 Depth=1
	addi.w	$a0, $s2, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_61
# %bb.88:                               # %for.body28.us.preheader.i
                                        #   in Loop: Header=BB4_62 Depth=1
	move	$a1, $zero
	addi.d	$a0, $sp, 1307
	sub.d	$a2, $s1, $a0
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
.LBB4_89:                               # %for.body28.us.i
                                        #   Parent Loop BB4_62 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_92 Depth 3
                                        #         Child Loop BB4_94 Depth 4
                                        #         Child Loop BB4_101 Depth 4
	move	$s7, $zero
	ori	$a0, $zero, 120
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	mul.d	$a0, $a1, $a0
	add.d	$s1, $s4, $a0
	add.d	$a0, $s1, $a2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB4_92
	.p2align	4, , 16
.LBB4_90:                               # %insert.exit86.us.i
                                        #   in Loop: Header=BB4_92 Depth=3
	ori	$a0, $zero, 98
	blt	$a0, $fp, .LBB4_106
.LBB4_91:                               # %for.inc.us.i59
                                        #   in Loop: Header=BB4_92 Depth=3
	addi.d	$s7, $s7, 1
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	beq	$s7, $s2, .LBB4_105
.LBB4_92:                               # %for.body35.us.i
                                        #   Parent Loop BB4_62 Depth=1
                                        #     Parent Loop BB4_89 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_94 Depth 4
                                        #         Child Loop BB4_101 Depth 4
	ori	$a0, $zero, 32
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.b	$a0, $a1, 0
	ori	$a0, $zero, 120
	mul.d	$a0, $s7, $a0
	addi.d	$a1, $sp, 107
	add.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s3, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB4_96
# %bb.93:                               # %for.body.preheader.i55.us.i
                                        #   in Loop: Header=BB4_92 Depth=3
	move	$s4, $s5
	move	$fp, $s0
	.p2align	4, , 16
.LBB4_94:                               # %for.body.i56.us.i
                                        #   Parent Loop BB4_62 Depth=1
                                        #     Parent Loop BB4_89 Depth=2
                                        #       Parent Loop BB4_92 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_99
# %bb.95:                               # %for.cond.i.us.i
                                        #   in Loop: Header=BB4_94 Depth=4
	addi.d	$fp, $fp, -1
	addi.d	$s4, $s4, 120
	bnez	$fp, .LBB4_94
.LBB4_96:                               # %for.end.i.us.i
                                        #   in Loop: Header=BB4_92 Depth=3
	addi.w	$s4, $s0, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$s4, $a0, 0
	ori	$a0, $zero, 120
	mul.d	$a0, $s0, $a0
	add.d	$a0, $s5, $a0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB4_98
# %bb.97:                               # %if.then11.i.us.i
                                        #   in Loop: Header=BB4_92 Depth=3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB4_98:                               # %insert.exit.us.i
                                        #   in Loop: Header=BB4_92 Depth=3
	ori	$a0, $zero, 98
	blt	$a0, $s0, .LBB4_106
.LBB4_99:                               # %if.end48.us.i
                                        #   in Loop: Header=BB4_92 Depth=3
	ori	$a0, $zero, 45
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.b	$a0, $a1, 0
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$fp, $a1, 0
	move	$s3, $a0
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB4_103
# %bb.100:                              # %for.body.preheader.i76.us.i
                                        #   in Loop: Header=BB4_92 Depth=3
	move	$s4, $s5
	move	$s0, $fp
	.p2align	4, , 16
.LBB4_101:                              # %for.body.i78.us.i
                                        #   Parent Loop BB4_62 Depth=1
                                        #     Parent Loop BB4_89 Depth=2
                                        #       Parent Loop BB4_92 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_91
# %bb.102:                              # %for.cond.i83.us.i
                                        #   in Loop: Header=BB4_101 Depth=4
	addi.d	$s0, $s0, -1
	addi.d	$s4, $s4, 120
	bnez	$s0, .LBB4_101
.LBB4_103:                              # %for.end.i63.us.i
                                        #   in Loop: Header=BB4_92 Depth=3
	addi.w	$s4, $fp, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$s4, $a0, 0
	ori	$a0, $zero, 120
	mul.d	$a0, $fp, $a0
	add.d	$a0, $s5, $a0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB4_90
# %bb.104:                              # %if.then11.i75.us.i
                                        #   in Loop: Header=BB4_92 Depth=3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	b	.LBB4_90
.LBB4_105:                              # %for.cond32.for.inc57_crit_edge.us.i
                                        #   in Loop: Header=BB4_89 Depth=2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	addi.d	$s4, $sp, 1428
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	bne	$a1, $s8, .LBB4_89
	b	.LBB4_61
.LBB4_106:
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
.LBB4_107:                              # %missingspace.exit
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
.LBB4_108:                              # %if.end15
	st.w	$s4, $s2, 0
	beqz	$s4, .LBB4_110
# %bb.109:                              # %if.end15
	pcalau12i	$a0, %got_pc_hi20(tryhardflag)
	ld.d	$a0, $a0, %got_pc_lo12(tryhardflag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB4_111
.LBB4_110:                              # %if.then17
	ori	$a1, $zero, 1
	move	$a0, $s6
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(good)
	jirl	$ra, $ra, 0
.LBB4_111:                              # %if.end18
	pcalau12i	$a0, %got_pc_hi20(sortit)
	ld.d	$a0, $a0, %got_pc_lo12(sortit)
	ld.w	$a0, $a0, 0
	ld.w	$a2, $s3, 0
	beqz	$a0, .LBB4_115
# %bb.112:                              # %land.lhs.true22
	beqz	$a2, .LBB4_119
# %bb.113:                              # %if.then24
	ld.w	$a1, $s2, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB4_117
# %bb.114:                              # %if.then28
	pcalau12i	$a0, %got_pc_hi20(possibilities)
	ld.d	$a0, $a0, %got_pc_lo12(possibilities)
	pcalau12i	$a2, %pc_hi20(posscmp)
	addi.d	$a3, $a2, %pc_lo12(posscmp)
	ori	$a2, $zero, 120
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s3, 0
	ld.w	$a1, $s2, 0
	b	.LBB4_117
.LBB4_115:                              # %lor.lhs.false20
	beqz	$a2, .LBB4_119
# %bb.116:                              # %lor.lhs.false20
	ld.w	$a1, $s2, 0
	bge	$a1, $a2, .LBB4_119
.LBB4_117:                              # %if.end29
	bge	$a1, $a2, .LBB4_119
# %bb.118:                              # %if.then32
	ori	$a0, $zero, 120
	mul.d	$a0, $a1, $a0
	add.d	$a0, $s5, $a0
	sub.w	$a1, $a2, $a1
	pcalau12i	$a2, %pc_hi20(posscmp)
	addi.d	$a3, $a2, %pc_lo12(posscmp)
	ori	$a2, $zero, 120
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
.LBB4_119:                              # %if.end38
	addi.d	$sp, $sp, 688
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB4_120:                              # %missingspace.exit.loopexit89
	ld.w	$s4, $s3, 0
	b	.LBB4_107
.Lfunc_end4:
	.size	makepossibilities, .Lfunc_end4-makepossibilities
                                        # -- End function
	.p2align	5                               # -- Begin function show_line
	.type	show_line,@function
show_line:                              # @show_line
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(sg)
	ld.d	$a3, $a3, %got_pc_lo12(sg)
	pcalau12i	$a4, %got_pc_hi20(co)
	ld.d	$s3, $a4, %got_pc_lo12(co)
	move	$s1, $a2
	move	$s2, $a1
	move	$s0, $a0
	ld.w	$a0, $a3, 0
	st.d	$s0, $sp, 8
	ld.w	$a1, $s3, 0
	sltui	$a2, $a2, 1
	slli.w	$a0, $a0, 1
	masknez	$fp, $a0, $a2
	bgeu	$s0, $s2, .LBB5_3
	.p2align	4, , 16
.LBB5_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a1, -1
	bge	$fp, $a0, .LBB5_3
# %bb.2:                                # %while.body
                                        #   in Loop: Header=BB5_1 Depth=1
	sub.w	$a3, $s2, $s0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(show_char)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8
	ld.w	$a1, $s3, 0
	add.w	$fp, $a0, $fp
	bltu	$s0, $s2, .LBB5_1
.LBB5_3:                                # %while.end
	beqz	$s1, .LBB5_8
# %bb.4:                                # %if.then
	pcaddu18i	$ra, %call36(inverse)
	jirl	$ra, $ra, 0
	add.d	$s1, $s2, $s1
	bgeu	$s0, $s1, .LBB5_7
	.p2align	4, , 16
.LBB5_5:                                # %if.then
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s3, 0
	addi.w	$a0, $a0, -1
	bge	$fp, $a0, .LBB5_7
# %bb.6:                                # %while.body11
                                        #   in Loop: Header=BB5_5 Depth=1
	sub.w	$a3, $s1, $s0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(show_char)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8
	add.w	$fp, $a0, $fp
	bltu	$s0, $s1, .LBB5_5
.LBB5_7:                                # %while.end18
	pcaddu18i	$ra, %call36(normal)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
.LBB5_8:                                # %if.end
	ld.bu	$a0, $s0, 0
	beqz	$a0, .LBB5_12
	.p2align	4, , 16
# %bb.9:                                # %if.end
	addi.w	$a0, $a1, -1
	bge	$fp, $a0, .LBB5_12
.LBB5_10:                               # %while.body27
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	move	$a1, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(show_char)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB5_12
# %bb.11:                               # %while.body27
                                        #   in Loop: Header=BB5_10 Depth=1
	ld.w	$a1, $s3, 0
	add.w	$fp, $a0, $fp
	addi.w	$a0, $a1, -1
	blt	$fp, $a0, .LBB5_10
.LBB5_12:                               # %while.end30
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.Lfunc_end5:
	.size	show_line, .Lfunc_end5-show_line
                                        # -- End function
	.p2align	5                               # -- Begin function getline_ispell
	.type	getline_ispell,@function
getline_ispell:                         # @getline_ispell
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
	move	$s7, $a0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$s2, $a0, %got_pc_lo12(stdin)
	ori	$s3, $zero, 91
	pcalau12i	$a0, %got_pc_hi20(uerasechar)
	ld.d	$s5, $a0, %got_pc_lo12(uerasechar)
	pcalau12i	$a0, %got_pc_hi20(ukillchar)
	ld.d	$s6, $a0, %got_pc_lo12(ukillchar)
	ori	$s8, $zero, 92
.LBB6_1:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
                                        #     Child Loop BB6_14 Depth 2
	move	$fp, $s7
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %if.then
                                        #   in Loop: Header=BB6_3 Depth=2
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 92
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$s0, $a0, 127
	pcaddu18i	$ra, %call36(backup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$fp, $s4, 1
	st.b	$s0, $s4, 0
.LBB6_3:                                # %for.cond
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s1, 0
	move	$s4, $fp
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a0, $a0, 127
	bge	$s3, $a0, .LBB6_5
# %bb.4:                                # %for.cond
                                        #   in Loop: Header=BB6_3 Depth=2
	beq	$a0, $s8, .LBB6_2
	b	.LBB6_8
	.p2align	4, , 16
.LBB6_5:                                # %for.cond
                                        #   in Loop: Header=BB6_3 Depth=2
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB6_16
# %bb.6:                                # %for.cond
                                        #   in Loop: Header=BB6_3 Depth=2
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB6_15
# %bb.7:                                # %for.cond
                                        #   in Loop: Header=BB6_3 Depth=2
	ori	$a1, $zero, 13
	beq	$a0, $a1, .LBB6_15
.LBB6_8:                                # %if.else16
                                        #   in Loop: Header=BB6_3 Depth=2
	ld.w	$a1, $s5, 0
	bne	$a0, $a1, .LBB6_11
# %bb.9:                                # %if.then19
                                        #   in Loop: Header=BB6_3 Depth=2
	move	$fp, $s7
	beq	$s4, $s7, .LBB6_3
# %bb.10:                               # %if.then22
                                        #   in Loop: Header=BB6_3 Depth=2
	addi.d	$fp, $s4, -1
	pcaddu18i	$ra, %call36(backup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(backup)
	jirl	$ra, $ra, 0
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_11:                               # %if.else25
                                        #   in Loop: Header=BB6_3 Depth=2
	ld.w	$a1, $s6, 0
	bne	$a0, $a1, .LBB6_13
# %bb.12:                               # %while.cond.preheader
                                        #   in Loop: Header=BB6_3 Depth=2
	move	$fp, $s7
	bne	$s4, $s7, .LBB6_14
	b	.LBB6_3
.LBB6_13:                               # %if.else33
                                        #   in Loop: Header=BB6_3 Depth=2
	st.b	$a0, $s4, 0
	ld.d	$a1, $s1, 0
	addi.d	$fp, $s4, 1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_14:                               # %while.body
                                        #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$s4, $s4, -1
	pcaddu18i	$ra, %call36(backup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(backup)
	jirl	$ra, $ra, 0
	bne	$s4, $s7, .LBB6_14
	b	.LBB6_1
.LBB6_15:                               # %if.then15
	st.b	$zero, $s4, 0
	b	.LBB6_17
.LBB6_16:                               # %cleanup.loopexit
	move	$s7, $zero
.LBB6_17:                               # %cleanup
	move	$a0, $s7
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
.Lfunc_end6:
	.size	getline_ispell, .Lfunc_end6-getline_ispell
                                        # -- End function
	.globl	casecmp                         # -- Begin function casecmp
	.p2align	5
	.type	casecmp,@function
casecmp:                                # @casecmp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$a1, $a0
	addi.d	$a0, $sp, 200
	ori	$a2, $zero, 184
	move	$a3, $fp
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 16
	ori	$a2, $zero, 184
	addi.d	$s1, $sp, 16
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(strtoichar)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 200
	beqz	$a1, .LBB7_12
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$a0, $a0, %got_pc_lo12(hashheader)
	addi.d	$a2, $sp, 201
	move	$a3, $a1
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.bu	$a3, $a2, 0
	addi.d	$s1, $s1, 1
	addi.d	$a2, $a2, 1
	beqz	$a3, .LBB7_13
.LBB7_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $s1, 0
	beq	$a3, $a4, .LBB7_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB7_3 Depth=1
	beqz	$a4, .LBB7_15
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB7_3 Depth=1
	add.d	$a5, $a0, $a3
	ld.bu	$a7, $a5, 1438
	add.d	$a6, $a0, $a4
	beqz	$a7, .LBB7_8
# %bb.6:                                # %if.then17
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.bu	$a6, $a6, 1438
	bnez	$a6, .LBB7_10
# %bb.7:                                # %lor.lhs.false
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.bu	$a5, $a5, 754
	beq	$a5, $a4, .LBB7_2
	b	.LBB7_10
.LBB7_8:                                # %if.else35
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.bu	$a6, $a6, 1210
	bnez	$a6, .LBB7_10
# %bb.9:                                # %lor.lhs.false40
                                        #   in Loop: Header=BB7_3 Depth=1
	ld.bu	$a5, $a5, 526
	beq	$a5, $a4, .LBB7_2
.LBB7_10:                               # %if.then28
	slli.d	$a1, $a3, 1
.LBB7_11:                               # %cleanup
	addi.d	$a0, $a0, 70
	ldx.hu	$a1, $a0, $a1
	slli.d	$a2, $a4, 1
	ldx.hu	$a0, $a0, $a2
	sub.d	$a0, $a1, $a0
	b	.LBB7_20
.LBB7_12:                               # %for.end.thread
	ld.bu	$a2, $sp, 16
	bnez	$a2, .LBB7_14
	b	.LBB7_19
.LBB7_13:                               # %for.end
	ld.bu	$a2, $s1, 0
	beqz	$a2, .LBB7_16
.LBB7_14:                               # %if.then63
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$a0, $a0, %got_pc_lo12(hashheader)
	alsl.d	$a0, $a2, $a0, 1
	ld.hu	$a0, $a0, 70
	sub.d	$a0, $zero, $a0
	b	.LBB7_20
.LBB7_15:                               # %if.then13
	alsl.d	$a0, $a3, $a0, 1
	ld.hu	$a0, $a0, 70
	b	.LBB7_20
.LBB7_16:                               # %for.body73.preheader
	addi.d	$a2, $sp, 16
	addi.d	$a3, $sp, 201
	.p2align	4, , 16
.LBB7_17:                               # %for.body73
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	bne	$a1, $a4, .LBB7_21
# %bb.18:                               # %for.inc87
                                        #   in Loop: Header=BB7_17 Depth=1
	ld.bu	$a1, $a3, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB7_17
.LBB7_19:
	move	$a0, $zero
.LBB7_20:                               # %cleanup
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB7_21:                               # %if.then78
	slli.d	$a1, $a1, 1
	b	.LBB7_11
.Lfunc_end7:
	.size	casecmp, .Lfunc_end7-casecmp
                                        # -- End function
	.p2align	5                               # -- Begin function posscmp
	.type	posscmp,@function
posscmp:                                # @posscmp
# %bb.0:                                # %entry
	move	$a2, $zero
	pcaddu18i	$t8, %call36(casecmp)
	jr	$t8
.Lfunc_end8:
	.size	posscmp, .Lfunc_end8-posscmp
                                        # -- End function
	.globl	ins_root_cap                    # -- Begin function ins_root_cap
	.p2align	5
	.type	ins_root_cap,@function
ins_root_cap:                           # @ins_root_cap
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1344
	st.d	$ra, $sp, 1336                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1320                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1312                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1304                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1296                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1288                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1256                  # 8-byte Folded Spill
	ld.d	$t0, $sp, 1344
	st.w	$zero, $sp, 52
	addi.d	$t1, $sp, 52
	st.d	$t1, $sp, 16
	addi.d	$t1, $sp, 56
	st.d	$t1, $sp, 8
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(save_root_cap)
	jirl	$ra, $ra, 0
	ld.w	$s3, $sp, 52
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB9_10
# %bb.1:                                # %for.body.preheader
	move	$s5, $zero
	pcalau12i	$a0, %got_pc_hi20(pcount)
	ld.d	$s6, $a0, %got_pc_lo12(pcount)
	pcalau12i	$a0, %got_pc_hi20(possibilities)
	ld.d	$s7, $a0, %got_pc_lo12(possibilities)
	pcalau12i	$a0, %got_pc_hi20(maxposslen)
	ld.d	$s8, $a0, %got_pc_lo12(maxposslen)
	ori	$fp, $zero, 120
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_2:                                # %insert.exit
                                        #   in Loop: Header=BB9_4 Depth=1
	ori	$a0, $zero, 98
	blt	$a0, $s4, .LBB9_11
.LBB9_3:                                # %for.inc
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$s5, $s5, 1
	beq	$s5, $s3, .LBB9_10
.LBB9_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	mul.d	$a0, $s5, $fp
	addi.d	$a1, $sp, 56
	add.d	$a0, $a1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s6, 0
	move	$s0, $a0
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB9_8
# %bb.5:                                # %for.body.preheader.i
                                        #   in Loop: Header=BB9_4 Depth=1
	move	$s1, $s7
	move	$s2, $s4
	.p2align	4, , 16
.LBB9_6:                                # %for.body.i
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_3
# %bb.7:                                # %for.cond.i
                                        #   in Loop: Header=BB9_6 Depth=2
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 120
	bnez	$s2, .LBB9_6
.LBB9_8:                                # %for.end.i
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$a0, $s4, 1
	st.w	$a0, $s6, 0
	mul.d	$a0, $s4, $fp
	add.d	$a0, $s7, $a0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 0
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB9_2
# %bb.9:                                # %if.then11.i
                                        #   in Loop: Header=BB9_4 Depth=1
	st.w	$a0, $s8, 0
	b	.LBB9_2
.LBB9_10:
	move	$a0, $zero
	b	.LBB9_12
.LBB9_11:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
.LBB9_12:                               # %cleanup
	ld.d	$s8, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1288                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1296                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1304                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1336                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1344
	ret
.Lfunc_end9:
	.size	ins_root_cap, .Lfunc_end9-ins_root_cap
                                        # -- End function
	.p2align	5                               # -- Begin function save_root_cap
	.type	save_root_cap,@function
save_root_cap:                          # @save_root_cap
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -672
	st.d	$ra, $sp, 664                   # 8-byte Folded Spill
	st.d	$fp, $sp, 656                   # 8-byte Folded Spill
	st.d	$s0, $sp, 648                   # 8-byte Folded Spill
	st.d	$s1, $sp, 640                   # 8-byte Folded Spill
	st.d	$s2, $sp, 632                   # 8-byte Folded Spill
	st.d	$s3, $sp, 624                   # 8-byte Folded Spill
	st.d	$s4, $sp, 616                   # 8-byte Folded Spill
	st.d	$s5, $sp, 608                   # 8-byte Folded Spill
	st.d	$s6, $sp, 600                   # 8-byte Folded Spill
	st.d	$s7, $sp, 592                   # 8-byte Folded Spill
	st.d	$s8, $sp, 584                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 576                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 568                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 560                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 552                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 544                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 536                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 528                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 520                  # 8-byte Folded Spill
	ld.d	$s1, $sp, 688
	ld.w	$t0, $s1, 0
	ori	$t1, $zero, 9
	blt	$t1, $t0, .LBB10_8
# %bb.1:                                # %if.end
	move	$s3, $a7
	move	$s6, $a6
	move	$s7, $a3
	move	$s8, $a2
	move	$a2, $a0
	move	$fp, $a1
	move	$s4, $a4
	move	$s5, $a5
	ld.d	$s2, $sp, 680
	addi.d	$a0, $sp, 336
	move	$a1, $a2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s6, 16
	lu12i.w	$a0, 458752
	and	$a0, $a2, $a0
	lu12i.w	$a1, 65536
	beq	$a0, $a1, .LBB10_6
# %bb.2:                                # %for.cond.preheader
	ld.bu	$a1, $fp, 0
	beqz	$a1, .LBB10_6
# %bb.3:                                # %for.body.preheader
	move	$a0, $fp
	pcalau12i	$a3, %got_pc_hi20(hashheader)
	ld.d	$a7, $a3, %got_pc_lo12(hashheader)
	ld.d	$fp, $sp, 672
	add.d	$a3, $a7, $a1
	ld.bu	$s0, $a3, 1210
	addi.d	$a3, $a0, 1
	.p2align	4, , 16
.LBB10_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $a7, $a1
	ld.bu	$a1, $a1, 1438
	bnez	$a1, .LBB10_9
# %bb.5:                                # %for.cond
                                        #   in Loop: Header=BB10_4 Depth=1
	ld.bu	$a1, $a3, 0
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB10_4
.LBB10_6:                               # %if.then5
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(upcase)
	jirl	$ra, $ra, 0
.LBB10_7:                               # %cleanup.sink.split
	ld.w	$a0, $s1, 0
	ori	$a1, $zero, 120
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s2, $a0
	addi.d	$a1, $sp, 336
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
.LBB10_8:                               # %cleanup
	fld.d	$fs7, $sp, 520                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 528                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 536                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 544                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 552                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 560                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 568                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 576                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 584                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 600                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 608                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 648                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 656                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 664                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 672
	ret
.LBB10_9:                               # %for.cond30.preheader
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB10_10:                              # %for.cond30
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB10_83
# %bb.11:                               # %for.body32
                                        #   in Loop: Header=BB10_10 Depth=1
	add.d	$a1, $a7, $a1
	ld.bu	$a1, $a1, 1210
	addi.d	$a0, $a0, 1
	beqz	$a1, .LBB10_10
.LBB10_12:                              # %if.end152
	st.d	$a7, $sp, 328                   # 8-byte Folded Spill
	ld.d	$a0, $s6, 8
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s6, 19
	andi	$a1, $a1, 64
	beqz	$a1, .LBB10_14
# %bb.13:                               # %if.then161
	ld.d	$s6, $s6, 0
.LBB10_14:                              # %if.end163
	addi.d	$a4, $sp, 336
	add.d	$a1, $a4, $s7
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	add.d	$a1, $s4, $s8
	sub.w	$a2, $a0, $a1
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	add.d	$a2, $s7, $a0
	sub.d	$a3, $s5, $a1
	add.w	$a3, $a3, $a2
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	sub.w	$a5, $a2, $a1
	nor	$a3, $s4, $zero
	add.w	$a0, $a0, $a3
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	add.d	$a3, $a4, $a5
	bstrpick.d	$a0, $s7, 31, 0
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	addi.w	$a0, $s5, -1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$a4, $a0, 1
	bstrpick.d	$a0, $s7, 30, 5
	slli.d	$a0, $a0, 5
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	andi	$a0, $s7, 16
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s7, 30, 4
	slli.d	$a6, $a0, 4
	bstrpick.d	$a0, $a4, 32, 5
	slli.d	$a0, $a0, 5
	add.d	$a7, $a5, $a0
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	add.d	$a0, $a3, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	andi	$a0, $a4, 16
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a4, 32, 4
	slli.d	$a4, $a0, 4
	st.d	$a5, $sp, 256                   # 8-byte Folded Spill
	alsl.w	$a5, $a0, $a5, 4
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a3, 4
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $a6
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $a4
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	add.d	$a0, $a2, $s5
	sub.d	$a0, $a0, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	lu12i.w	$s4, 196608
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	st.d	$s2, $sp, 128                   # 8-byte Folded Spill
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	beqz	$s3, .LBB10_16
	.p2align	4, , 16
.LBB10_15:                              # %lor.lhs.false167
	ld.d	$a0, $s6, 16
	ld.h	$a1, $s3, 16
	srl.d	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_81
.LBB10_16:                              # %land.lhs.true176
	ld.d	$a0, $s6, 16
	beqz	$fp, .LBB10_18
# %bb.17:                               # %lor.lhs.false179
	ld.h	$a1, $fp, 16
	srl.d	$a1, $a0, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB10_81
.LBB10_18:                              # %if.then188
	and	$a0, $a0, $s4
	bne	$a0, $s4, .LBB10_23
# %bb.19:                               # %if.else219
	ld.d	$a0, $s6, 8
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	add.d	$a1, $a0, $s8
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	move	$ra, $s4
	ldx.bu	$a0, $s4, $s8
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	add.d	$a0, $s4, $a0
	ld.bu	$a0, $a0, 1210
	beqz	$a0, .LBB10_27
# %bb.20:                               # %for.cond234.preheader
	blt	$s7, $s5, .LBB10_52
# %bb.21:                               # %iter.check254
	ori	$a0, $zero, 15
	bltu	$a0, $s7, .LBB10_30
# %bb.22:
	move	$a1, $zero
	b	.LBB10_44
	.p2align	4, , 16
.LBB10_23:                              # %if.then194
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(lowcase)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB10_25
# %bb.24:                               # %lor.lhs.false197
	ld.d	$a0, $s6, 16
	and	$a0, $a0, $s4
	lu12i.w	$a1, 131072
	bne	$a0, $a1, .LBB10_26
.LBB10_25:                              # %if.then203
	ld.bu	$a0, $sp, 336
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.b	$a0, $a0, 754
	st.b	$a0, $sp, 336
.LBB10_26:                              # %if.end208
	ld.w	$a0, $s1, 0
	ori	$a1, $zero, 120
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s2, $a0
	addi.d	$a1, $sp, 336
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.d	$a1, $a0, 1
	st.w	$a1, $s1, 0
	b	.LBB10_80
.LBB10_27:                              # %for.cond248.preheader
	blt	$s7, $s5, .LBB10_52
# %bb.28:                               # %iter.check225
	ori	$a0, $zero, 15
	bltu	$a0, $s7, .LBB10_35
# %bb.29:
	move	$a1, $zero
	b	.LBB10_50
.LBB10_30:                              # %vector.main.loop.iter.check256
	ori	$a0, $zero, 32
	bgeu	$s7, $a0, .LBB10_40
# %bb.31:
	move	$a2, $zero
.LBB10_32:                              # %vec.epilog.ph268
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a1, $sp, 336
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB10_33:                              # %vec.epilog.vector.body274
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vpickve2gr.b	$a2, $vr0, 15
	andi	$a2, $a2, 255
	bstrpick.d	$a2, $a2, 15, 0
	vpickve2gr.b	$a3, $vr0, 14
	andi	$a3, $a3, 255
	bstrpick.d	$a3, $a3, 15, 0
	vpickve2gr.b	$a4, $vr0, 13
	andi	$a4, $a4, 255
	bstrpick.d	$a4, $a4, 15, 0
	vpickve2gr.b	$a5, $vr0, 12
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.b	$a6, $vr0, 11
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 10
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.b	$t0, $vr0, 9
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.b	$t1, $vr0, 8
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr0, 7
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr0, 6
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr0, 5
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.b	$t5, $vr0, 4
	andi	$t5, $t5, 255
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.b	$t6, $vr0, 3
	andi	$t6, $t6, 255
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.b	$t7, $vr0, 2
	andi	$t7, $t7, 255
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.b	$t8, $vr0, 1
	andi	$t8, $t8, 255
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.b	$fp, $vr0, 0
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	addi.d	$s0, $s4, 754
	ldx.b	$fp, $s0, $fp
	ldx.b	$t8, $s0, $t8
	ldx.b	$t7, $s0, $t7
	ldx.b	$t6, $s0, $t6
	ldx.b	$t5, $s0, $t5
	ldx.b	$t4, $s0, $t4
	ldx.b	$t3, $s0, $t3
	ldx.b	$t2, $s0, $t2
	ldx.b	$t1, $s0, $t1
	ldx.b	$t0, $s0, $t0
	ldx.b	$a7, $s0, $a7
	ldx.b	$a6, $s0, $a6
	ldx.b	$a5, $s0, $a5
	ldx.b	$a4, $s0, $a4
	ldx.b	$a3, $s0, $a3
	ldx.b	$a2, $s0, $a2
	vinsgr2vr.b	$vr0, $fp, 0
	vinsgr2vr.b	$vr0, $t8, 1
	vinsgr2vr.b	$vr0, $t7, 2
	vinsgr2vr.b	$vr0, $t6, 3
	vinsgr2vr.b	$vr0, $t5, 4
	vinsgr2vr.b	$vr0, $t4, 5
	vinsgr2vr.b	$vr0, $t3, 6
	vinsgr2vr.b	$vr0, $t2, 7
	vinsgr2vr.b	$vr0, $t1, 8
	vinsgr2vr.b	$vr0, $t0, 9
	vinsgr2vr.b	$vr0, $a7, 10
	vinsgr2vr.b	$vr0, $a6, 11
	vinsgr2vr.b	$vr0, $a5, 12
	vinsgr2vr.b	$vr0, $a4, 13
	vinsgr2vr.b	$vr0, $a3, 14
	vinsgr2vr.b	$vr0, $a2, 15
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB10_33
# %bb.34:                               # %vec.epilog.middle.block278
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $a2
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB10_44
	b	.LBB10_52
.LBB10_35:                              # %vector.main.loop.iter.check227
	ori	$a0, $zero, 32
	bgeu	$s7, $a0, .LBB10_46
# %bb.36:
	move	$a2, $zero
.LBB10_37:                              # %vec.epilog.ph239
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a1, $sp, 336
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB10_38:                              # %vec.epilog.vector.body245
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vpickve2gr.b	$a2, $vr0, 15
	andi	$a2, $a2, 255
	bstrpick.d	$a2, $a2, 15, 0
	vpickve2gr.b	$a3, $vr0, 14
	andi	$a3, $a3, 255
	bstrpick.d	$a3, $a3, 15, 0
	vpickve2gr.b	$a4, $vr0, 13
	andi	$a4, $a4, 255
	bstrpick.d	$a4, $a4, 15, 0
	vpickve2gr.b	$a5, $vr0, 12
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.b	$a6, $vr0, 11
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 10
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.b	$t0, $vr0, 9
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.b	$t1, $vr0, 8
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr0, 7
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr0, 6
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr0, 5
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.b	$t5, $vr0, 4
	andi	$t5, $t5, 255
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.b	$t6, $vr0, 3
	andi	$t6, $t6, 255
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.b	$t7, $vr0, 2
	andi	$t7, $t7, 255
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.b	$t8, $vr0, 1
	andi	$t8, $t8, 255
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.b	$fp, $vr0, 0
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	addi.d	$s0, $s4, 526
	ldx.b	$fp, $s0, $fp
	ldx.b	$t8, $s0, $t8
	ldx.b	$t7, $s0, $t7
	ldx.b	$t6, $s0, $t6
	ldx.b	$t5, $s0, $t5
	ldx.b	$t4, $s0, $t4
	ldx.b	$t3, $s0, $t3
	ldx.b	$t2, $s0, $t2
	ldx.b	$t1, $s0, $t1
	ldx.b	$t0, $s0, $t0
	ldx.b	$a7, $s0, $a7
	ldx.b	$a6, $s0, $a6
	ldx.b	$a5, $s0, $a5
	ldx.b	$a4, $s0, $a4
	ldx.b	$a3, $s0, $a3
	ldx.b	$a2, $s0, $a2
	vinsgr2vr.b	$vr0, $fp, 0
	vinsgr2vr.b	$vr0, $t8, 1
	vinsgr2vr.b	$vr0, $t7, 2
	vinsgr2vr.b	$vr0, $t6, 3
	vinsgr2vr.b	$vr0, $t5, 4
	vinsgr2vr.b	$vr0, $t4, 5
	vinsgr2vr.b	$vr0, $t3, 6
	vinsgr2vr.b	$vr0, $t2, 7
	vinsgr2vr.b	$vr0, $t1, 8
	vinsgr2vr.b	$vr0, $t0, 9
	vinsgr2vr.b	$vr0, $a7, 10
	vinsgr2vr.b	$vr0, $a6, 11
	vinsgr2vr.b	$vr0, $a5, 12
	vinsgr2vr.b	$vr0, $a4, 13
	vinsgr2vr.b	$vr0, $a3, 14
	vinsgr2vr.b	$vr0, $a2, 15
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB10_38
# %bb.39:                               # %vec.epilog.middle.block249
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	move	$a1, $a2
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB10_50
	b	.LBB10_52
.LBB10_40:                              # %vector.body260.preheader
	st.d	$ra, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 336
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_41:                              # %vector.body260
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	xvld	$xr0, $a0, 0
	xvpermi.q	$xr1, $xr0, 1
	vpickve2gr.b	$a2, $vr1, 15
	andi	$a2, $a2, 255
	bstrpick.d	$a1, $a2, 15, 0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	vpickve2gr.b	$a3, $vr1, 14
	andi	$a3, $a3, 255
	bstrpick.d	$a1, $a3, 15, 0
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	vpickve2gr.b	$a4, $vr1, 13
	andi	$a4, $a4, 255
	bstrpick.d	$a1, $a4, 15, 0
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	vpickve2gr.b	$a5, $vr1, 12
	andi	$a5, $a5, 255
	bstrpick.d	$a1, $a5, 15, 0
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	vpickve2gr.b	$a6, $vr1, 11
	andi	$a6, $a6, 255
	bstrpick.d	$a1, $a6, 15, 0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	vpickve2gr.b	$a7, $vr1, 10
	andi	$a7, $a7, 255
	bstrpick.d	$a1, $a7, 15, 0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	vpickve2gr.b	$t0, $vr1, 9
	andi	$t0, $t0, 255
	bstrpick.d	$a1, $t0, 15, 0
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	vpickve2gr.b	$t1, $vr1, 8
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr1, 7
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr1, 6
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr1, 5
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.b	$t5, $vr1, 4
	andi	$t5, $t5, 255
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.b	$t6, $vr1, 3
	andi	$t6, $t6, 255
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.b	$t7, $vr1, 2
	andi	$t7, $t7, 255
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.b	$t8, $vr1, 1
	andi	$t8, $t8, 255
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.b	$fp, $vr1, 0
	andi	$fp, $fp, 255
	bstrpick.d	$ra, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 15
	andi	$fp, $fp, 255
	bstrpick.d	$s4, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 14
	andi	$fp, $fp, 255
	bstrpick.d	$s7, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 13
	andi	$fp, $fp, 255
	bstrpick.d	$s3, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 12
	andi	$fp, $fp, 255
	bstrpick.d	$s2, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 11
	andi	$fp, $fp, 255
	bstrpick.d	$s1, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 10
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.b	$s0, $vr0, 9
	andi	$s0, $s0, 255
	bstrpick.d	$s5, $s0, 15, 0
	vpickve2gr.b	$s0, $vr0, 8
	andi	$s0, $s0, 255
	bstrpick.d	$s6, $s0, 15, 0
	vpickve2gr.b	$s0, $vr0, 7
	andi	$s0, $s0, 255
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.b	$s8, $vr0, 6
	andi	$s8, $s8, 255
	bstrpick.d	$s8, $s8, 15, 0
	vpickve2gr.b	$a2, $vr0, 5
	andi	$a2, $a2, 255
	bstrpick.d	$a2, $a2, 15, 0
	vpickve2gr.b	$a3, $vr0, 4
	andi	$a3, $a3, 255
	bstrpick.d	$a3, $a3, 15, 0
	vpickve2gr.b	$a4, $vr0, 3
	andi	$a4, $a4, 255
	bstrpick.d	$a4, $a4, 15, 0
	vpickve2gr.b	$a5, $vr0, 2
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.b	$a6, $vr0, 1
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 0
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 754
	ldx.b	$a7, $a1, $a7
	move	$t0, $a0
	ldx.b	$a0, $a1, $a6
	ldx.b	$a5, $a1, $a5
	ldx.b	$a4, $a1, $a4
	ldx.b	$a3, $a1, $a3
	ldx.b	$a2, $a1, $a2
	ldx.b	$a6, $a1, $s8
	ldx.b	$s0, $a1, $s0
	ldx.b	$s6, $a1, $s6
	ldx.b	$s5, $a1, $s5
	ldx.b	$fp, $a1, $fp
	ldx.b	$s1, $a1, $s1
	ldx.b	$s2, $a1, $s2
	ldx.b	$s3, $a1, $s3
	ldx.b	$s7, $a1, $s7
	ldx.b	$s4, $a1, $s4
	ldx.b	$ra, $a1, $ra
	ldx.b	$t8, $a1, $t8
	ldx.b	$t7, $a1, $t7
	ldx.b	$t6, $a1, $t6
	ldx.b	$t5, $a1, $t5
	ldx.b	$t4, $a1, $t4
	ldx.b	$t3, $a1, $t3
	ldx.b	$t2, $a1, $t2
	ldx.b	$t1, $a1, $t1
	ld.d	$s8, $sp, 272                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 272                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 288                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 304                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ldx.b	$a1, $a1, $s8
	vinsgr2vr.b	$vr0, $a7, 0
	xvreplgr2vr.b	$xr1, $a0
	xvreplgr2vr.b	$xr2, $a5
	xvreplgr2vr.b	$xr3, $a4
	xvreplgr2vr.b	$xr4, $a3
	xvreplgr2vr.b	$xr5, $a2
	xvreplgr2vr.b	$xr6, $a6
	xvreplgr2vr.b	$xr7, $s0
	xvreplgr2vr.b	$xr8, $s6
	xvreplgr2vr.b	$xr9, $s5
	xvreplgr2vr.b	$xr10, $fp
	xvreplgr2vr.b	$xr11, $s1
	xvreplgr2vr.b	$xr12, $s2
	xvreplgr2vr.b	$xr13, $s3
	xvreplgr2vr.b	$xr14, $s7
	xvreplgr2vr.b	$xr15, $s4
	xvreplgr2vr.b	$xr16, $ra
	xvreplgr2vr.b	$xr17, $t8
	xvreplgr2vr.b	$xr18, $t7
	xvreplgr2vr.b	$xr19, $t6
	xvreplgr2vr.b	$xr20, $t5
	xvreplgr2vr.b	$xr21, $t4
	xvreplgr2vr.b	$xr22, $t3
	xvreplgr2vr.b	$xr23, $t2
	xvreplgr2vr.b	$xr24, $t1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr25, $a2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr26, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr27, $a2
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr28, $a2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr29, $a2
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr30, $a2
	xvreplgr2vr.b	$xr31, $a1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	xvpermi.q	$xr1, $xr0, 18
	xvextrins.b	$xr0, $xr1, 17
	xvpermi.q	$xr2, $xr0, 18
	xvextrins.b	$xr0, $xr2, 34
	xvpermi.q	$xr3, $xr0, 18
	xvextrins.b	$xr0, $xr3, 51
	xvpermi.q	$xr4, $xr0, 18
	xvextrins.b	$xr0, $xr4, 68
	xvpermi.q	$xr5, $xr0, 18
	xvextrins.b	$xr0, $xr5, 85
	xvpermi.q	$xr6, $xr0, 18
	xvextrins.b	$xr0, $xr6, 102
	xvpermi.q	$xr7, $xr0, 18
	xvextrins.b	$xr0, $xr7, 119
	xvpermi.q	$xr8, $xr0, 18
	xvextrins.b	$xr0, $xr8, 136
	xvpermi.q	$xr9, $xr0, 18
	xvextrins.b	$xr0, $xr9, 153
	xvpermi.q	$xr10, $xr0, 18
	xvextrins.b	$xr0, $xr10, 170
	xvpermi.q	$xr11, $xr0, 18
	xvextrins.b	$xr0, $xr11, 187
	xvpermi.q	$xr12, $xr0, 18
	xvextrins.b	$xr0, $xr12, 204
	xvpermi.q	$xr13, $xr0, 18
	xvextrins.b	$xr0, $xr13, 221
	xvpermi.q	$xr14, $xr0, 18
	xvextrins.b	$xr0, $xr14, 238
	xvpermi.q	$xr15, $xr0, 18
	xvextrins.b	$xr0, $xr15, 255
	xvpermi.q	$xr16, $xr0, 48
	xvextrins.b	$xr0, $xr16, 0
	xvpermi.q	$xr17, $xr0, 48
	xvextrins.b	$xr0, $xr17, 17
	xvpermi.q	$xr18, $xr0, 48
	xvextrins.b	$xr0, $xr18, 34
	xvpermi.q	$xr19, $xr0, 48
	xvextrins.b	$xr0, $xr19, 51
	xvpermi.q	$xr20, $xr0, 48
	xvextrins.b	$xr0, $xr20, 68
	xvpermi.q	$xr21, $xr0, 48
	xvextrins.b	$xr0, $xr21, 85
	xvpermi.q	$xr22, $xr0, 48
	xvextrins.b	$xr0, $xr22, 102
	xvpermi.q	$xr23, $xr0, 48
	xvextrins.b	$xr0, $xr23, 119
	xvpermi.q	$xr24, $xr0, 48
	xvextrins.b	$xr0, $xr24, 136
	xvpermi.q	$xr25, $xr0, 48
	xvextrins.b	$xr0, $xr25, 153
	xvpermi.q	$xr26, $xr0, 48
	xvextrins.b	$xr0, $xr26, 170
	xvpermi.q	$xr27, $xr0, 48
	xvextrins.b	$xr0, $xr27, 187
	xvpermi.q	$xr28, $xr0, 48
	xvextrins.b	$xr0, $xr28, 204
	xvpermi.q	$xr29, $xr0, 48
	xvextrins.b	$xr0, $xr29, 221
	xvpermi.q	$xr30, $xr0, 48
	xvextrins.b	$xr0, $xr30, 238
	xvpermi.q	$xr31, $xr0, 48
	xvextrins.b	$xr0, $xr31, 255
	xvst	$xr0, $t0, 0
	addi.d	$a1, $a1, -32
	addi.d	$a0, $t0, 32
	bnez	$a1, .LBB10_41
# %bb.42:                               # %middle.block264
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ori	$s5, $zero, 1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 48                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB10_52
# %bb.43:                               # %vec.epilog.iter.check269
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $a2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB10_32
.LBB10_44:                              # %for.body237.preheader
	addi.d	$a0, $sp, 336
	add.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB10_45:                              # %for.body237
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	add.d	$a2, $s4, $a2
	ld.b	$a2, $a2, 754
	st.b	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB10_45
	b	.LBB10_52
.LBB10_46:                              # %vector.body231.preheader
	st.d	$ra, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $sp, 336
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_47:                              # %vector.body231
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	xvld	$xr0, $a0, 0
	xvpermi.q	$xr1, $xr0, 1
	vpickve2gr.b	$a2, $vr1, 15
	andi	$a2, $a2, 255
	bstrpick.d	$a1, $a2, 15, 0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	vpickve2gr.b	$a3, $vr1, 14
	andi	$a3, $a3, 255
	bstrpick.d	$a1, $a3, 15, 0
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	vpickve2gr.b	$a4, $vr1, 13
	andi	$a4, $a4, 255
	bstrpick.d	$a1, $a4, 15, 0
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	vpickve2gr.b	$a5, $vr1, 12
	andi	$a5, $a5, 255
	bstrpick.d	$a1, $a5, 15, 0
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	vpickve2gr.b	$a6, $vr1, 11
	andi	$a6, $a6, 255
	bstrpick.d	$a1, $a6, 15, 0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	vpickve2gr.b	$a7, $vr1, 10
	andi	$a7, $a7, 255
	bstrpick.d	$a1, $a7, 15, 0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	vpickve2gr.b	$t0, $vr1, 9
	andi	$t0, $t0, 255
	bstrpick.d	$a1, $t0, 15, 0
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	vpickve2gr.b	$t1, $vr1, 8
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr1, 7
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr1, 6
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr1, 5
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.b	$t5, $vr1, 4
	andi	$t5, $t5, 255
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.b	$t6, $vr1, 3
	andi	$t6, $t6, 255
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.b	$t7, $vr1, 2
	andi	$t7, $t7, 255
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.b	$t8, $vr1, 1
	andi	$t8, $t8, 255
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.b	$fp, $vr1, 0
	andi	$fp, $fp, 255
	bstrpick.d	$ra, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 15
	andi	$fp, $fp, 255
	bstrpick.d	$s4, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 14
	andi	$fp, $fp, 255
	bstrpick.d	$s7, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 13
	andi	$fp, $fp, 255
	bstrpick.d	$s3, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 12
	andi	$fp, $fp, 255
	bstrpick.d	$s2, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 11
	andi	$fp, $fp, 255
	bstrpick.d	$s1, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 10
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.b	$s0, $vr0, 9
	andi	$s0, $s0, 255
	bstrpick.d	$s5, $s0, 15, 0
	vpickve2gr.b	$s0, $vr0, 8
	andi	$s0, $s0, 255
	bstrpick.d	$s6, $s0, 15, 0
	vpickve2gr.b	$s0, $vr0, 7
	andi	$s0, $s0, 255
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.b	$s8, $vr0, 6
	andi	$s8, $s8, 255
	bstrpick.d	$s8, $s8, 15, 0
	vpickve2gr.b	$a2, $vr0, 5
	andi	$a2, $a2, 255
	bstrpick.d	$a2, $a2, 15, 0
	vpickve2gr.b	$a3, $vr0, 4
	andi	$a3, $a3, 255
	bstrpick.d	$a3, $a3, 15, 0
	vpickve2gr.b	$a4, $vr0, 3
	andi	$a4, $a4, 255
	bstrpick.d	$a4, $a4, 15, 0
	vpickve2gr.b	$a5, $vr0, 2
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.b	$a6, $vr0, 1
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 0
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ld.d	$a1, $sp, 328                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 526
	ldx.b	$a7, $a1, $a7
	move	$t0, $a0
	ldx.b	$a0, $a1, $a6
	ldx.b	$a5, $a1, $a5
	ldx.b	$a4, $a1, $a4
	ldx.b	$a3, $a1, $a3
	ldx.b	$a2, $a1, $a2
	ldx.b	$a6, $a1, $s8
	ldx.b	$s0, $a1, $s0
	ldx.b	$s6, $a1, $s6
	ldx.b	$s5, $a1, $s5
	ldx.b	$fp, $a1, $fp
	ldx.b	$s1, $a1, $s1
	ldx.b	$s2, $a1, $s2
	ldx.b	$s3, $a1, $s3
	ldx.b	$s7, $a1, $s7
	ldx.b	$s4, $a1, $s4
	ldx.b	$ra, $a1, $ra
	ldx.b	$t8, $a1, $t8
	ldx.b	$t7, $a1, $t7
	ldx.b	$t6, $a1, $t6
	ldx.b	$t5, $a1, $t5
	ldx.b	$t4, $a1, $t4
	ldx.b	$t3, $a1, $t3
	ldx.b	$t2, $a1, $t2
	ldx.b	$t1, $a1, $t1
	ld.d	$s8, $sp, 272                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 272                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 288                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 304                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ldx.b	$a1, $a1, $s8
	vinsgr2vr.b	$vr0, $a7, 0
	xvreplgr2vr.b	$xr1, $a0
	xvreplgr2vr.b	$xr2, $a5
	xvreplgr2vr.b	$xr3, $a4
	xvreplgr2vr.b	$xr4, $a3
	xvreplgr2vr.b	$xr5, $a2
	xvreplgr2vr.b	$xr6, $a6
	xvreplgr2vr.b	$xr7, $s0
	xvreplgr2vr.b	$xr8, $s6
	xvreplgr2vr.b	$xr9, $s5
	xvreplgr2vr.b	$xr10, $fp
	xvreplgr2vr.b	$xr11, $s1
	xvreplgr2vr.b	$xr12, $s2
	xvreplgr2vr.b	$xr13, $s3
	xvreplgr2vr.b	$xr14, $s7
	xvreplgr2vr.b	$xr15, $s4
	xvreplgr2vr.b	$xr16, $ra
	xvreplgr2vr.b	$xr17, $t8
	xvreplgr2vr.b	$xr18, $t7
	xvreplgr2vr.b	$xr19, $t6
	xvreplgr2vr.b	$xr20, $t5
	xvreplgr2vr.b	$xr21, $t4
	xvreplgr2vr.b	$xr22, $t3
	xvreplgr2vr.b	$xr23, $t2
	xvreplgr2vr.b	$xr24, $t1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr25, $a2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr26, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr27, $a2
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr28, $a2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr29, $a2
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr30, $a2
	xvreplgr2vr.b	$xr31, $a1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	xvpermi.q	$xr1, $xr0, 18
	xvextrins.b	$xr0, $xr1, 17
	xvpermi.q	$xr2, $xr0, 18
	xvextrins.b	$xr0, $xr2, 34
	xvpermi.q	$xr3, $xr0, 18
	xvextrins.b	$xr0, $xr3, 51
	xvpermi.q	$xr4, $xr0, 18
	xvextrins.b	$xr0, $xr4, 68
	xvpermi.q	$xr5, $xr0, 18
	xvextrins.b	$xr0, $xr5, 85
	xvpermi.q	$xr6, $xr0, 18
	xvextrins.b	$xr0, $xr6, 102
	xvpermi.q	$xr7, $xr0, 18
	xvextrins.b	$xr0, $xr7, 119
	xvpermi.q	$xr8, $xr0, 18
	xvextrins.b	$xr0, $xr8, 136
	xvpermi.q	$xr9, $xr0, 18
	xvextrins.b	$xr0, $xr9, 153
	xvpermi.q	$xr10, $xr0, 18
	xvextrins.b	$xr0, $xr10, 170
	xvpermi.q	$xr11, $xr0, 18
	xvextrins.b	$xr0, $xr11, 187
	xvpermi.q	$xr12, $xr0, 18
	xvextrins.b	$xr0, $xr12, 204
	xvpermi.q	$xr13, $xr0, 18
	xvextrins.b	$xr0, $xr13, 221
	xvpermi.q	$xr14, $xr0, 18
	xvextrins.b	$xr0, $xr14, 238
	xvpermi.q	$xr15, $xr0, 18
	xvextrins.b	$xr0, $xr15, 255
	xvpermi.q	$xr16, $xr0, 48
	xvextrins.b	$xr0, $xr16, 0
	xvpermi.q	$xr17, $xr0, 48
	xvextrins.b	$xr0, $xr17, 17
	xvpermi.q	$xr18, $xr0, 48
	xvextrins.b	$xr0, $xr18, 34
	xvpermi.q	$xr19, $xr0, 48
	xvextrins.b	$xr0, $xr19, 51
	xvpermi.q	$xr20, $xr0, 48
	xvextrins.b	$xr0, $xr20, 68
	xvpermi.q	$xr21, $xr0, 48
	xvextrins.b	$xr0, $xr21, 85
	xvpermi.q	$xr22, $xr0, 48
	xvextrins.b	$xr0, $xr22, 102
	xvpermi.q	$xr23, $xr0, 48
	xvextrins.b	$xr0, $xr23, 119
	xvpermi.q	$xr24, $xr0, 48
	xvextrins.b	$xr0, $xr24, 136
	xvpermi.q	$xr25, $xr0, 48
	xvextrins.b	$xr0, $xr25, 153
	xvpermi.q	$xr26, $xr0, 48
	xvextrins.b	$xr0, $xr26, 170
	xvpermi.q	$xr27, $xr0, 48
	xvextrins.b	$xr0, $xr27, 187
	xvpermi.q	$xr28, $xr0, 48
	xvextrins.b	$xr0, $xr28, 204
	xvpermi.q	$xr29, $xr0, 48
	xvextrins.b	$xr0, $xr29, 221
	xvpermi.q	$xr30, $xr0, 48
	xvextrins.b	$xr0, $xr30, 238
	xvpermi.q	$xr31, $xr0, 48
	xvextrins.b	$xr0, $xr31, 255
	xvst	$xr0, $t0, 0
	addi.d	$a1, $a1, -32
	addi.d	$a0, $t0, 32
	bnez	$a1, .LBB10_47
# %bb.48:                               # %middle.block235
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ori	$s5, $zero, 1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 48                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB10_52
# %bb.49:                               # %vec.epilog.iter.check240
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $a2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB10_37
.LBB10_50:                              # %for.body251.preheader
	addi.d	$a0, $sp, 336
	add.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB10_51:                              # %for.body251
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	add.d	$a2, $s4, $a2
	ld.b	$a2, $a2, 526
	st.b	$a2, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB10_51
	.p2align	4, , 16
.LBB10_52:                              # %if.end261
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ldx.bu	$a0, $ra, $a0
	add.d	$a0, $s4, $a0
	ld.bu	$a0, $a0, 1210
	beqz	$a0, .LBB10_60
# %bb.53:                               # %if.then275
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB10_79
# %bb.54:                               # %iter.check189
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ori	$a3, $zero, 15
	bltu	$a2, $a3, .LBB10_71
# %bb.55:                               # %vector.main.loop.iter.check191
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ori	$a1, $zero, 31
	bgeu	$a0, $a1, .LBB10_67
# %bb.56:
	move	$a2, $zero
.LBB10_57:                              # %vec.epilog.ph204
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB10_58:                              # %vec.epilog.vector.body211
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vpickve2gr.b	$a2, $vr0, 15
	andi	$a2, $a2, 255
	bstrpick.d	$a2, $a2, 15, 0
	vpickve2gr.b	$a3, $vr0, 14
	andi	$a3, $a3, 255
	bstrpick.d	$a3, $a3, 15, 0
	vpickve2gr.b	$a4, $vr0, 13
	andi	$a4, $a4, 255
	bstrpick.d	$a4, $a4, 15, 0
	vpickve2gr.b	$a5, $vr0, 12
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.b	$a6, $vr0, 11
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 10
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.b	$t0, $vr0, 9
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.b	$t1, $vr0, 8
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr0, 7
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr0, 6
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr0, 5
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.b	$t5, $vr0, 4
	andi	$t5, $t5, 255
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.b	$t6, $vr0, 3
	andi	$t6, $t6, 255
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.b	$t7, $vr0, 2
	andi	$t7, $t7, 255
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.b	$t8, $vr0, 1
	andi	$t8, $t8, 255
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.b	$fp, $vr0, 0
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	addi.d	$s0, $s4, 754
	ldx.b	$fp, $s0, $fp
	ldx.b	$t8, $s0, $t8
	ldx.b	$t7, $s0, $t7
	ldx.b	$t6, $s0, $t6
	ldx.b	$t5, $s0, $t5
	ldx.b	$t4, $s0, $t4
	ldx.b	$t3, $s0, $t3
	ldx.b	$t2, $s0, $t2
	ldx.b	$t1, $s0, $t1
	ldx.b	$t0, $s0, $t0
	ldx.b	$a7, $s0, $a7
	ldx.b	$a6, $s0, $a6
	ldx.b	$a5, $s0, $a5
	ldx.b	$a4, $s0, $a4
	ldx.b	$a3, $s0, $a3
	ldx.b	$a2, $s0, $a2
	vinsgr2vr.b	$vr0, $fp, 0
	vinsgr2vr.b	$vr0, $t8, 1
	vinsgr2vr.b	$vr0, $t7, 2
	vinsgr2vr.b	$vr0, $t6, 3
	vinsgr2vr.b	$vr0, $t5, 4
	vinsgr2vr.b	$vr0, $t4, 5
	vinsgr2vr.b	$vr0, $t3, 6
	vinsgr2vr.b	$vr0, $t2, 7
	vinsgr2vr.b	$vr0, $t1, 8
	vinsgr2vr.b	$vr0, $t0, 9
	vinsgr2vr.b	$vr0, $a7, 10
	vinsgr2vr.b	$vr0, $a6, 11
	vinsgr2vr.b	$vr0, $a5, 12
	vinsgr2vr.b	$vr0, $a4, 13
	vinsgr2vr.b	$vr0, $a3, 14
	vinsgr2vr.b	$vr0, $a2, 15
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB10_58
# %bb.59:                               # %vec.epilog.middle.block216
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	bne	$a2, $a3, .LBB10_71
	b	.LBB10_79
.LBB10_60:                              # %if.else289
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB10_79
# %bb.61:                               # %iter.check
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	ori	$a3, $zero, 15
	bltu	$a2, $a3, .LBB10_77
# %bb.62:                               # %vector.main.loop.iter.check
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ori	$a1, $zero, 31
	bgeu	$a0, $a1, .LBB10_73
# %bb.63:
	move	$a2, $zero
.LBB10_64:                              # %vec.epilog.ph
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB10_65:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vpickve2gr.b	$a2, $vr0, 15
	andi	$a2, $a2, 255
	bstrpick.d	$a2, $a2, 15, 0
	vpickve2gr.b	$a3, $vr0, 14
	andi	$a3, $a3, 255
	bstrpick.d	$a3, $a3, 15, 0
	vpickve2gr.b	$a4, $vr0, 13
	andi	$a4, $a4, 255
	bstrpick.d	$a4, $a4, 15, 0
	vpickve2gr.b	$a5, $vr0, 12
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.b	$a6, $vr0, 11
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 10
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.b	$t0, $vr0, 9
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.b	$t1, $vr0, 8
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr0, 7
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr0, 6
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr0, 5
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.b	$t5, $vr0, 4
	andi	$t5, $t5, 255
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.b	$t6, $vr0, 3
	andi	$t6, $t6, 255
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.b	$t7, $vr0, 2
	andi	$t7, $t7, 255
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.b	$t8, $vr0, 1
	andi	$t8, $t8, 255
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.b	$fp, $vr0, 0
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	addi.d	$s0, $s4, 526
	ldx.b	$fp, $s0, $fp
	ldx.b	$t8, $s0, $t8
	ldx.b	$t7, $s0, $t7
	ldx.b	$t6, $s0, $t6
	ldx.b	$t5, $s0, $t5
	ldx.b	$t4, $s0, $t4
	ldx.b	$t3, $s0, $t3
	ldx.b	$t2, $s0, $t2
	ldx.b	$t1, $s0, $t1
	ldx.b	$t0, $s0, $t0
	ldx.b	$a7, $s0, $a7
	ldx.b	$a6, $s0, $a6
	ldx.b	$a5, $s0, $a5
	ldx.b	$a4, $s0, $a4
	ldx.b	$a3, $s0, $a3
	ldx.b	$a2, $s0, $a2
	vinsgr2vr.b	$vr0, $fp, 0
	vinsgr2vr.b	$vr0, $t8, 1
	vinsgr2vr.b	$vr0, $t7, 2
	vinsgr2vr.b	$vr0, $t6, 3
	vinsgr2vr.b	$vr0, $t5, 4
	vinsgr2vr.b	$vr0, $t4, 5
	vinsgr2vr.b	$vr0, $t3, 6
	vinsgr2vr.b	$vr0, $t2, 7
	vinsgr2vr.b	$vr0, $t1, 8
	vinsgr2vr.b	$vr0, $t0, 9
	vinsgr2vr.b	$vr0, $a7, 10
	vinsgr2vr.b	$vr0, $a6, 11
	vinsgr2vr.b	$vr0, $a5, 12
	vinsgr2vr.b	$vr0, $a4, 13
	vinsgr2vr.b	$vr0, $a3, 14
	vinsgr2vr.b	$vr0, $a2, 15
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB10_65
# %bb.66:                               # %vec.epilog.middle.block
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	bne	$a2, $a3, .LBB10_77
	b	.LBB10_79
.LBB10_67:                              # %vector.body195.preheader
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_68:                              # %vector.body195
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	xvld	$xr0, $a0, 0
	xvpermi.q	$xr1, $xr0, 1
	vpickve2gr.b	$a2, $vr1, 15
	andi	$a2, $a2, 255
	bstrpick.d	$a1, $a2, 15, 0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	vpickve2gr.b	$a3, $vr1, 14
	andi	$a3, $a3, 255
	bstrpick.d	$a1, $a3, 15, 0
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	vpickve2gr.b	$a4, $vr1, 13
	andi	$a4, $a4, 255
	bstrpick.d	$a1, $a4, 15, 0
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	vpickve2gr.b	$a5, $vr1, 12
	andi	$a5, $a5, 255
	bstrpick.d	$a1, $a5, 15, 0
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	vpickve2gr.b	$a6, $vr1, 11
	andi	$a6, $a6, 255
	bstrpick.d	$a1, $a6, 15, 0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	vpickve2gr.b	$a7, $vr1, 10
	andi	$a7, $a7, 255
	bstrpick.d	$a1, $a7, 15, 0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	vpickve2gr.b	$t0, $vr1, 9
	andi	$t0, $t0, 255
	bstrpick.d	$a1, $t0, 15, 0
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	vpickve2gr.b	$t1, $vr1, 8
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr1, 7
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr1, 6
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr1, 5
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.b	$t5, $vr1, 4
	andi	$t5, $t5, 255
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.b	$t6, $vr1, 3
	andi	$t6, $t6, 255
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.b	$t7, $vr1, 2
	andi	$t7, $t7, 255
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.b	$t8, $vr1, 1
	andi	$t8, $t8, 255
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.b	$fp, $vr1, 0
	andi	$fp, $fp, 255
	bstrpick.d	$s5, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 15
	andi	$fp, $fp, 255
	bstrpick.d	$s4, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 14
	andi	$fp, $fp, 255
	bstrpick.d	$s7, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 13
	andi	$fp, $fp, 255
	bstrpick.d	$s3, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 12
	andi	$fp, $fp, 255
	bstrpick.d	$s2, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 11
	andi	$fp, $fp, 255
	bstrpick.d	$s1, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 10
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.b	$s0, $vr0, 9
	andi	$s0, $s0, 255
	bstrpick.d	$s8, $s0, 15, 0
	vpickve2gr.b	$s0, $vr0, 8
	andi	$s0, $s0, 255
	bstrpick.d	$s6, $s0, 15, 0
	vpickve2gr.b	$s0, $vr0, 7
	andi	$s0, $s0, 255
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.b	$ra, $vr0, 6
	andi	$ra, $ra, 255
	bstrpick.d	$ra, $ra, 15, 0
	vpickve2gr.b	$a2, $vr0, 5
	andi	$a2, $a2, 255
	bstrpick.d	$a2, $a2, 15, 0
	vpickve2gr.b	$a3, $vr0, 4
	andi	$a3, $a3, 255
	bstrpick.d	$a3, $a3, 15, 0
	vpickve2gr.b	$a4, $vr0, 3
	andi	$a4, $a4, 255
	bstrpick.d	$a4, $a4, 15, 0
	vpickve2gr.b	$a5, $vr0, 2
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.b	$a6, $vr0, 1
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 0
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	move	$t0, $a0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	addi.d	$a1, $a0, 754
	ldx.b	$a7, $a1, $a7
	ldx.b	$a0, $a1, $a6
	ldx.b	$a5, $a1, $a5
	ldx.b	$a4, $a1, $a4
	ldx.b	$a3, $a1, $a3
	ldx.b	$a2, $a1, $a2
	ldx.b	$a6, $a1, $ra
	ldx.b	$s0, $a1, $s0
	ldx.b	$s6, $a1, $s6
	ldx.b	$ra, $a1, $s8
	ldx.b	$fp, $a1, $fp
	ldx.b	$s1, $a1, $s1
	ldx.b	$s2, $a1, $s2
	ldx.b	$s3, $a1, $s3
	ldx.b	$s7, $a1, $s7
	ldx.b	$s4, $a1, $s4
	ldx.b	$s5, $a1, $s5
	ldx.b	$t8, $a1, $t8
	ldx.b	$t7, $a1, $t7
	ldx.b	$t6, $a1, $t6
	ldx.b	$t5, $a1, $t5
	ldx.b	$t4, $a1, $t4
	ldx.b	$t3, $a1, $t3
	ldx.b	$t2, $a1, $t2
	ldx.b	$t1, $a1, $t1
	ld.d	$s8, $sp, 272                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 272                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 288                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 304                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ldx.b	$a1, $a1, $s8
	vinsgr2vr.b	$vr0, $a7, 0
	xvreplgr2vr.b	$xr1, $a0
	xvreplgr2vr.b	$xr2, $a5
	xvreplgr2vr.b	$xr3, $a4
	xvreplgr2vr.b	$xr4, $a3
	xvreplgr2vr.b	$xr5, $a2
	xvreplgr2vr.b	$xr6, $a6
	xvreplgr2vr.b	$xr7, $s0
	xvreplgr2vr.b	$xr8, $s6
	xvreplgr2vr.b	$xr9, $ra
	xvreplgr2vr.b	$xr10, $fp
	xvreplgr2vr.b	$xr11, $s1
	xvreplgr2vr.b	$xr12, $s2
	xvreplgr2vr.b	$xr13, $s3
	xvreplgr2vr.b	$xr14, $s7
	xvreplgr2vr.b	$xr15, $s4
	xvreplgr2vr.b	$xr16, $s5
	xvreplgr2vr.b	$xr17, $t8
	xvreplgr2vr.b	$xr18, $t7
	xvreplgr2vr.b	$xr19, $t6
	xvreplgr2vr.b	$xr20, $t5
	xvreplgr2vr.b	$xr21, $t4
	xvreplgr2vr.b	$xr22, $t3
	xvreplgr2vr.b	$xr23, $t2
	xvreplgr2vr.b	$xr24, $t1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr25, $a2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr26, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr27, $a2
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr28, $a2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr29, $a2
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr30, $a2
	xvreplgr2vr.b	$xr31, $a1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	xvpermi.q	$xr1, $xr0, 18
	xvextrins.b	$xr0, $xr1, 17
	xvpermi.q	$xr2, $xr0, 18
	xvextrins.b	$xr0, $xr2, 34
	xvpermi.q	$xr3, $xr0, 18
	xvextrins.b	$xr0, $xr3, 51
	xvpermi.q	$xr4, $xr0, 18
	xvextrins.b	$xr0, $xr4, 68
	xvpermi.q	$xr5, $xr0, 18
	xvextrins.b	$xr0, $xr5, 85
	xvpermi.q	$xr6, $xr0, 18
	xvextrins.b	$xr0, $xr6, 102
	xvpermi.q	$xr7, $xr0, 18
	xvextrins.b	$xr0, $xr7, 119
	xvpermi.q	$xr8, $xr0, 18
	xvextrins.b	$xr0, $xr8, 136
	xvpermi.q	$xr9, $xr0, 18
	xvextrins.b	$xr0, $xr9, 153
	xvpermi.q	$xr10, $xr0, 18
	xvextrins.b	$xr0, $xr10, 170
	xvpermi.q	$xr11, $xr0, 18
	xvextrins.b	$xr0, $xr11, 187
	xvpermi.q	$xr12, $xr0, 18
	xvextrins.b	$xr0, $xr12, 204
	xvpermi.q	$xr13, $xr0, 18
	xvextrins.b	$xr0, $xr13, 221
	xvpermi.q	$xr14, $xr0, 18
	xvextrins.b	$xr0, $xr14, 238
	xvpermi.q	$xr15, $xr0, 18
	xvextrins.b	$xr0, $xr15, 255
	xvpermi.q	$xr16, $xr0, 48
	xvextrins.b	$xr0, $xr16, 0
	xvpermi.q	$xr17, $xr0, 48
	xvextrins.b	$xr0, $xr17, 17
	xvpermi.q	$xr18, $xr0, 48
	xvextrins.b	$xr0, $xr18, 34
	xvpermi.q	$xr19, $xr0, 48
	xvextrins.b	$xr0, $xr19, 51
	xvpermi.q	$xr20, $xr0, 48
	xvextrins.b	$xr0, $xr20, 68
	xvpermi.q	$xr21, $xr0, 48
	xvextrins.b	$xr0, $xr21, 85
	xvpermi.q	$xr22, $xr0, 48
	xvextrins.b	$xr0, $xr22, 102
	xvpermi.q	$xr23, $xr0, 48
	xvextrins.b	$xr0, $xr23, 119
	xvpermi.q	$xr24, $xr0, 48
	xvextrins.b	$xr0, $xr24, 136
	xvpermi.q	$xr25, $xr0, 48
	xvextrins.b	$xr0, $xr25, 153
	xvpermi.q	$xr26, $xr0, 48
	xvextrins.b	$xr0, $xr26, 170
	xvpermi.q	$xr27, $xr0, 48
	xvextrins.b	$xr0, $xr27, 187
	xvpermi.q	$xr28, $xr0, 48
	xvextrins.b	$xr0, $xr28, 204
	xvpermi.q	$xr29, $xr0, 48
	xvextrins.b	$xr0, $xr29, 221
	xvpermi.q	$xr30, $xr0, 48
	xvextrins.b	$xr0, $xr30, 238
	xvpermi.q	$xr31, $xr0, 48
	xvextrins.b	$xr0, $xr31, 255
	xvst	$xr0, $t0, 0
	addi.d	$a1, $a1, -32
	addi.d	$a0, $t0, 32
	bnez	$a1, .LBB10_68
# %bb.69:                               # %middle.block200
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ori	$s5, $zero, 1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB10_79
# %bb.70:                               # %vec.epilog.iter.check205
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	bnez	$a3, .LBB10_57
.LBB10_71:                              # %for.body282.preheader
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB10_72:                              # %for.body282
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	add.d	$a2, $s4, $a2
	ld.b	$a2, $a2, 754
	st.b	$a2, $a0, 0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB10_72
	b	.LBB10_79
.LBB10_73:                              # %vector.body.preheader
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_74:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $sp, 320                   # 8-byte Folded Spill
	xvld	$xr0, $a0, 0
	xvpermi.q	$xr1, $xr0, 1
	vpickve2gr.b	$a2, $vr1, 15
	andi	$a2, $a2, 255
	bstrpick.d	$a1, $a2, 15, 0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	vpickve2gr.b	$a3, $vr1, 14
	andi	$a3, $a3, 255
	bstrpick.d	$a1, $a3, 15, 0
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	vpickve2gr.b	$a4, $vr1, 13
	andi	$a4, $a4, 255
	bstrpick.d	$a1, $a4, 15, 0
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	vpickve2gr.b	$a5, $vr1, 12
	andi	$a5, $a5, 255
	bstrpick.d	$a1, $a5, 15, 0
	st.d	$a1, $sp, 296                   # 8-byte Folded Spill
	vpickve2gr.b	$a6, $vr1, 11
	andi	$a6, $a6, 255
	bstrpick.d	$a1, $a6, 15, 0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	vpickve2gr.b	$a7, $vr1, 10
	andi	$a7, $a7, 255
	bstrpick.d	$a1, $a7, 15, 0
	st.d	$a1, $sp, 280                   # 8-byte Folded Spill
	vpickve2gr.b	$t0, $vr1, 9
	andi	$t0, $t0, 255
	bstrpick.d	$a1, $t0, 15, 0
	st.d	$a1, $sp, 272                   # 8-byte Folded Spill
	vpickve2gr.b	$t1, $vr1, 8
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr1, 7
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr1, 6
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr1, 5
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.b	$t5, $vr1, 4
	andi	$t5, $t5, 255
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.b	$t6, $vr1, 3
	andi	$t6, $t6, 255
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.b	$t7, $vr1, 2
	andi	$t7, $t7, 255
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.b	$t8, $vr1, 1
	andi	$t8, $t8, 255
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.b	$fp, $vr1, 0
	andi	$fp, $fp, 255
	bstrpick.d	$s5, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 15
	andi	$fp, $fp, 255
	bstrpick.d	$s4, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 14
	andi	$fp, $fp, 255
	bstrpick.d	$s7, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 13
	andi	$fp, $fp, 255
	bstrpick.d	$s3, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 12
	andi	$fp, $fp, 255
	bstrpick.d	$s2, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 11
	andi	$fp, $fp, 255
	bstrpick.d	$s1, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 10
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.b	$s0, $vr0, 9
	andi	$s0, $s0, 255
	bstrpick.d	$s8, $s0, 15, 0
	vpickve2gr.b	$s0, $vr0, 8
	andi	$s0, $s0, 255
	bstrpick.d	$s6, $s0, 15, 0
	vpickve2gr.b	$s0, $vr0, 7
	andi	$s0, $s0, 255
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.b	$ra, $vr0, 6
	andi	$ra, $ra, 255
	bstrpick.d	$ra, $ra, 15, 0
	vpickve2gr.b	$a2, $vr0, 5
	andi	$a2, $a2, 255
	bstrpick.d	$a2, $a2, 15, 0
	vpickve2gr.b	$a3, $vr0, 4
	andi	$a3, $a3, 255
	bstrpick.d	$a3, $a3, 15, 0
	vpickve2gr.b	$a4, $vr0, 3
	andi	$a4, $a4, 255
	bstrpick.d	$a4, $a4, 15, 0
	vpickve2gr.b	$a5, $vr0, 2
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.b	$a6, $vr0, 1
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 0
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	move	$t0, $a0
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	addi.d	$a1, $a0, 526
	ldx.b	$a7, $a1, $a7
	ldx.b	$a0, $a1, $a6
	ldx.b	$a5, $a1, $a5
	ldx.b	$a4, $a1, $a4
	ldx.b	$a3, $a1, $a3
	ldx.b	$a2, $a1, $a2
	ldx.b	$a6, $a1, $ra
	ldx.b	$s0, $a1, $s0
	ldx.b	$s6, $a1, $s6
	ldx.b	$ra, $a1, $s8
	ldx.b	$fp, $a1, $fp
	ldx.b	$s1, $a1, $s1
	ldx.b	$s2, $a1, $s2
	ldx.b	$s3, $a1, $s3
	ldx.b	$s7, $a1, $s7
	ldx.b	$s4, $a1, $s4
	ldx.b	$s5, $a1, $s5
	ldx.b	$t8, $a1, $t8
	ldx.b	$t7, $a1, $t7
	ldx.b	$t6, $a1, $t6
	ldx.b	$t5, $a1, $t5
	ldx.b	$t4, $a1, $t4
	ldx.b	$t3, $a1, $t3
	ldx.b	$t2, $a1, $t2
	ldx.b	$t1, $a1, $t1
	ld.d	$s8, $sp, 272                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 272                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 288                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 288                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 296                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 296                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 304                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 304                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 312                   # 8-byte Folded Reload
	ldx.b	$s8, $a1, $s8
	st.d	$s8, $sp, 312                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ldx.b	$a1, $a1, $s8
	vinsgr2vr.b	$vr0, $a7, 0
	xvreplgr2vr.b	$xr1, $a0
	xvreplgr2vr.b	$xr2, $a5
	xvreplgr2vr.b	$xr3, $a4
	xvreplgr2vr.b	$xr4, $a3
	xvreplgr2vr.b	$xr5, $a2
	xvreplgr2vr.b	$xr6, $a6
	xvreplgr2vr.b	$xr7, $s0
	xvreplgr2vr.b	$xr8, $s6
	xvreplgr2vr.b	$xr9, $ra
	xvreplgr2vr.b	$xr10, $fp
	xvreplgr2vr.b	$xr11, $s1
	xvreplgr2vr.b	$xr12, $s2
	xvreplgr2vr.b	$xr13, $s3
	xvreplgr2vr.b	$xr14, $s7
	xvreplgr2vr.b	$xr15, $s4
	xvreplgr2vr.b	$xr16, $s5
	xvreplgr2vr.b	$xr17, $t8
	xvreplgr2vr.b	$xr18, $t7
	xvreplgr2vr.b	$xr19, $t6
	xvreplgr2vr.b	$xr20, $t5
	xvreplgr2vr.b	$xr21, $t4
	xvreplgr2vr.b	$xr22, $t3
	xvreplgr2vr.b	$xr23, $t2
	xvreplgr2vr.b	$xr24, $t1
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr25, $a2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr26, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr27, $a2
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr28, $a2
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr29, $a2
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	xvreplgr2vr.b	$xr30, $a2
	xvreplgr2vr.b	$xr31, $a1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	xvpermi.q	$xr1, $xr0, 18
	xvextrins.b	$xr0, $xr1, 17
	xvpermi.q	$xr2, $xr0, 18
	xvextrins.b	$xr0, $xr2, 34
	xvpermi.q	$xr3, $xr0, 18
	xvextrins.b	$xr0, $xr3, 51
	xvpermi.q	$xr4, $xr0, 18
	xvextrins.b	$xr0, $xr4, 68
	xvpermi.q	$xr5, $xr0, 18
	xvextrins.b	$xr0, $xr5, 85
	xvpermi.q	$xr6, $xr0, 18
	xvextrins.b	$xr0, $xr6, 102
	xvpermi.q	$xr7, $xr0, 18
	xvextrins.b	$xr0, $xr7, 119
	xvpermi.q	$xr8, $xr0, 18
	xvextrins.b	$xr0, $xr8, 136
	xvpermi.q	$xr9, $xr0, 18
	xvextrins.b	$xr0, $xr9, 153
	xvpermi.q	$xr10, $xr0, 18
	xvextrins.b	$xr0, $xr10, 170
	xvpermi.q	$xr11, $xr0, 18
	xvextrins.b	$xr0, $xr11, 187
	xvpermi.q	$xr12, $xr0, 18
	xvextrins.b	$xr0, $xr12, 204
	xvpermi.q	$xr13, $xr0, 18
	xvextrins.b	$xr0, $xr13, 221
	xvpermi.q	$xr14, $xr0, 18
	xvextrins.b	$xr0, $xr14, 238
	xvpermi.q	$xr15, $xr0, 18
	xvextrins.b	$xr0, $xr15, 255
	xvpermi.q	$xr16, $xr0, 48
	xvextrins.b	$xr0, $xr16, 0
	xvpermi.q	$xr17, $xr0, 48
	xvextrins.b	$xr0, $xr17, 17
	xvpermi.q	$xr18, $xr0, 48
	xvextrins.b	$xr0, $xr18, 34
	xvpermi.q	$xr19, $xr0, 48
	xvextrins.b	$xr0, $xr19, 51
	xvpermi.q	$xr20, $xr0, 48
	xvextrins.b	$xr0, $xr20, 68
	xvpermi.q	$xr21, $xr0, 48
	xvextrins.b	$xr0, $xr21, 85
	xvpermi.q	$xr22, $xr0, 48
	xvextrins.b	$xr0, $xr22, 102
	xvpermi.q	$xr23, $xr0, 48
	xvextrins.b	$xr0, $xr23, 119
	xvpermi.q	$xr24, $xr0, 48
	xvextrins.b	$xr0, $xr24, 136
	xvpermi.q	$xr25, $xr0, 48
	xvextrins.b	$xr0, $xr25, 153
	xvpermi.q	$xr26, $xr0, 48
	xvextrins.b	$xr0, $xr26, 170
	xvpermi.q	$xr27, $xr0, 48
	xvextrins.b	$xr0, $xr27, 187
	xvpermi.q	$xr28, $xr0, 48
	xvextrins.b	$xr0, $xr28, 204
	xvpermi.q	$xr29, $xr0, 48
	xvextrins.b	$xr0, $xr29, 221
	xvpermi.q	$xr30, $xr0, 48
	xvextrins.b	$xr0, $xr30, 238
	xvpermi.q	$xr31, $xr0, 48
	xvextrins.b	$xr0, $xr31, 255
	xvst	$xr0, $t0, 0
	addi.d	$a1, $a1, -32
	addi.d	$a0, $t0, 32
	bnez	$a1, .LBB10_74
# %bb.75:                               # %middle.block
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ori	$s5, $zero, 1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB10_79
# %bb.76:                               # %vec.epilog.iter.check
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	bnez	$a3, .LBB10_64
.LBB10_77:                              # %for.body296.preheader
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	.p2align	4, , 16
.LBB10_78:                              # %for.body296
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	add.d	$a2, $s4, $a2
	ld.b	$a2, $a2, 526
	st.b	$a2, $a0, 0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB10_78
	.p2align	4, , 16
.LBB10_79:                              # %if.end303
	ld.w	$a0, $s1, 0
	ori	$a1, $zero, 120
	mul.d	$a0, $a0, $a1
	add.d	$a0, $s2, $a0
	addi.d	$a1, $sp, 336
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.d	$a1, $a0, 1
	st.w	$a1, $s1, 0
	lu12i.w	$s4, 196608
.LBB10_80:                              # %if.end303
	ori	$a1, $zero, 8
	blt	$a1, $a0, .LBB10_8
.LBB10_81:                              # %if.end315
	ld.bu	$a0, $s6, 19
	andi	$a0, $a0, 64
	beqz	$a0, .LBB10_8
# %bb.82:                               # %if.end322
	ld.d	$s6, $s6, 0
	bnez	$s3, .LBB10_15
	b	.LBB10_16
.LBB10_83:                              # %if.then44
	lu12i.w	$a0, 196608
	and	$a1, $a2, $a0
	beqz	$s0, .LBB10_86
# %bb.84:                               # %if.then46
	bstrpick.d	$a1, $a1, 28, 0
	bnez	$a1, .LBB10_87
.LBB10_85:                              # %if.then57
	addi.d	$a0, $sp, 336
	move	$fp, $a7
	pcaddu18i	$ra, %call36(lowcase)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 336
	add.d	$a0, $fp, $a0
	ld.b	$a0, $a0, 754
	st.b	$a0, $sp, 336
	b	.LBB10_7
.LBB10_86:                              # %if.else
	beqz	$a1, .LBB10_110
.LBB10_87:                              # %if.end84
	lu12i.w	$a1, 262144
	and	$a2, $a2, $a1
	beqz	$a2, .LBB10_12
# %bb.88:                               # %while.body.lr.ph
	lu12i.w	$a2, 131072
	move	$a3, $s6
	beqz	$s3, .LBB10_92
# %bb.89:                               # %while.body.lr.ph.split
	bnez	$fp, .LBB10_99
	b	.LBB10_106
.LBB10_90:                              # %if.else136.us
                                        #   in Loop: Header=BB10_92 Depth=1
	beqz	$a5, .LBB10_110
.LBB10_91:                              # %while.cond.backedge.us
                                        #   in Loop: Header=BB10_92 Depth=1
	and	$a4, $a4, $a1
	beqz	$a4, .LBB10_12
.LBB10_92:                              # %while.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a3, 0
	ld.d	$a4, $a3, 16
	and	$a5, $a4, $a0
	beq	$a5, $a0, .LBB10_91
# %bb.93:                               # %lor.lhs.false94.us
                                        #   in Loop: Header=BB10_92 Depth=1
	beqz	$fp, .LBB10_95
# %bb.94:                               # %lor.lhs.false105.us
                                        #   in Loop: Header=BB10_92 Depth=1
	ld.h	$a6, $fp, 16
	srl.d	$a6, $a4, $a6
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_91
.LBB10_95:                              # %if.end115.us
                                        #   in Loop: Header=BB10_92 Depth=1
	beqz	$s0, .LBB10_90
# %bb.96:                               # %if.then117.us
                                        #   in Loop: Header=BB10_92 Depth=1
	bne	$a5, $a2, .LBB10_91
	b	.LBB10_85
.LBB10_97:                              # %if.else136
                                        #   in Loop: Header=BB10_99 Depth=1
	beqz	$a5, .LBB10_110
.LBB10_98:                              # %while.cond.backedge
                                        #   in Loop: Header=BB10_99 Depth=1
	and	$a4, $a4, $a1
	beqz	$a4, .LBB10_12
.LBB10_99:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a3, 0
	ld.d	$a4, $a3, 16
	and	$a5, $a4, $a0
	beq	$a5, $a0, .LBB10_98
# %bb.100:                              # %lor.lhs.false94
                                        #   in Loop: Header=BB10_99 Depth=1
	ld.h	$a6, $s3, 16
	srl.d	$a6, $a4, $a6
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_98
# %bb.101:                              # %land.lhs.true
                                        #   in Loop: Header=BB10_99 Depth=1
	ld.h	$a6, $fp, 16
	srl.d	$a6, $a4, $a6
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_98
# %bb.102:                              # %if.end115
                                        #   in Loop: Header=BB10_99 Depth=1
	beqz	$s0, .LBB10_97
# %bb.103:                              # %if.then117
                                        #   in Loop: Header=BB10_99 Depth=1
	bne	$a5, $a2, .LBB10_98
	b	.LBB10_85
.LBB10_104:                             # %if.else136.us123
                                        #   in Loop: Header=BB10_106 Depth=1
	beqz	$a5, .LBB10_110
.LBB10_105:                             # %while.cond.backedge.us127
                                        #   in Loop: Header=BB10_106 Depth=1
	and	$a4, $a4, $a1
	beqz	$a4, .LBB10_12
.LBB10_106:                             # %while.body.us113
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a3, 0
	ld.d	$a4, $a3, 16
	and	$a5, $a4, $a0
	beq	$a5, $a0, .LBB10_105
# %bb.107:                              # %lor.lhs.false94.us118
                                        #   in Loop: Header=BB10_106 Depth=1
	ld.h	$a6, $s3, 16
	srl.d	$a6, $a4, $a6
	andi	$a6, $a6, 1
	beqz	$a6, .LBB10_105
# %bb.108:                              # %land.lhs.true.us119
                                        #   in Loop: Header=BB10_106 Depth=1
	beqz	$s0, .LBB10_104
# %bb.109:                              # %if.then117.us121
                                        #   in Loop: Header=BB10_106 Depth=1
	bne	$a5, $a2, .LBB10_105
	b	.LBB10_85
.LBB10_110:                             # %if.then75
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(lowcase)
	jirl	$ra, $ra, 0
	b	.LBB10_7
.Lfunc_end10:
	.size	save_root_cap, .Lfunc_end10-save_root_cap
                                        # -- End function
	.globl	askmode                         # -- Begin function askmode
	.p2align	5
	.type	askmode,@function
askmode:                                # @askmode
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fflag)
	ld.d	$a0, $a0, %got_pc_lo12(fflag)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB11_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(askfilename)
	ld.d	$fp, $a0, %got_pc_lo12(askfilename)
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a1, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(freopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_39
.LBB11_2:                               # %if.end3
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(contextoffset)
	ld.d	$s6, $a0, %got_pc_lo12(contextoffset)
	st.w	$zero, $s6, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s7, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$s8, $a0, %got_pc_lo12(stdin)
	pcalau12i	$a0, %got_pc_hi20(contextbufs)
	ld.d	$s4, $a0, %got_pc_lo12(contextbufs)
	lu12i.w	$s2, 1
	ori	$s0, $zero, 0
	lu32i.d	$s0, -1
	ori	$fp, $zero, 10
	add.d	$a0, $s4, $s2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s1, $a0, %got_pc_lo12(hashheader)
	addi.w	$s5, $zero, -1
	ori	$a0, $s2, 4095
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI11_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI11_0)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(terse)
	ld.d	$a0, $a0, %got_pc_lo12(terse)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(math_mode)
	ld.d	$a0, $a0, %got_pc_lo12(math_mode)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(LaTeX_Mode)
	ld.d	$a0, $a0, %got_pc_lo12(LaTeX_Mode)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s4, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB11_3:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_11 Depth 2
                                        #     Child Loop BB11_34 Depth 2
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	ld.d	$a2, $s8, 0
	beqz	$a0, .LBB11_5
# %bb.4:                                # %if.else
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_6
	b	.LBB11_38
	.p2align	4, , 16
.LBB11_5:                               # %if.then7
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(xgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_38
.LBB11_6:                               # %if.end16
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	slli.d	$a0, $a0, 32
	add.d	$a0, $a0, $s0
	srai.d	$a0, $a0, 32
	ldx.bu	$a0, $s4, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	beq	$a0, $fp, .LBB11_9
# %bb.7:                                # %if.end25
                                        #   in Loop: Header=BB11_3 Depth=1
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 4095
	beq	$a0, $a1, .LBB11_10
.LBB11_8:                               # %if.end64
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.w	$a0, $s6, 0
	bnez	$a0, .LBB11_18
	b	.LBB11_22
	.p2align	4, , 16
.LBB11_9:                               # %if.then21
                                        #   in Loop: Header=BB11_3 Depth=1
	addi.w	$s3, $s3, -1
	stx.b	$zero, $s4, $s3
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 4095
	bne	$a0, $a1, .LBB11_8
.LBB11_10:                              # %if.then29
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$fp, $s6
	move	$s6, $s0
	move	$s0, $s7
	ori	$a0, $zero, 4094
	ldx.bu	$a0, $s4, $a0
	ori	$s3, $zero, 4095
	move	$s7, $s2
	move	$s4, $s2
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_11:                              # %land.rhs
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$a0, $a0, 255
	add.d	$a0, $s1, $a0
	ld.bu	$a1, $a0, 982
	bnez	$a1, .LBB11_14
# %bb.12:                               # %lor.lhs.false
                                        #   in Loop: Header=BB11_11 Depth=2
	ld.bu	$a1, $a0, 1666
	bnez	$a1, .LBB11_14
# %bb.13:                               # %lor.rhs
                                        #   in Loop: Header=BB11_11 Depth=2
	ld.bu	$a0, $a0, 1894
	beqz	$a0, .LBB11_17
	.p2align	4, , 16
.LBB11_14:                              # %while.body53
                                        #   in Loop: Header=BB11_11 Depth=2
	ld.d	$a0, $s8, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB11_17
# %bb.15:                               # %if.end58
                                        #   in Loop: Header=BB11_11 Depth=2
	st.b	$a0, $s2, -1
	st.b	$zero, $s2, 0
	addi.d	$s3, $s3, 1
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 1
	bnez	$s4, .LBB11_11
# %bb.16:                               #   in Loop: Header=BB11_3 Depth=1
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
.LBB11_17:                              # %if.end64
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$s2, $s7
	move	$s7, $s0
	move	$s0, $s6
	move	$s6, $fp
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ori	$fp, $zero, 10
	ld.w	$a0, $s6, 0
	beqz	$a0, .LBB11_22
.LBB11_18:                              # %if.end143
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(checkline)
	jirl	$ra, $ra, 0
.LBB11_19:                              # %if.end152
                                        #   in Loop: Header=BB11_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(sflag)
	ld.d	$a0, $a0, %got_pc_lo12(sflag)
	ld.w	$a1, $s6, 0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a2, $a2, -10
	ld.w	$a0, $a0, 0
	sltui	$a2, $a2, 1
	add.d	$a1, $a1, $s3
	masknez	$a1, $a1, $a2
	st.w	$a1, $s6, 0
	beqz	$a0, .LBB11_3
# %bb.20:                               # %if.then158
                                        #   in Loop: Header=BB11_3 Depth=1
	pcaddu18i	$ra, %call36(stop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB11_3
# %bb.21:                               # %if.then160
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(askfilename)
	ld.d	$a0, $a0, %got_pc_lo12(askfilename)
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 438
	pcaddu18i	$ra, %call36(creat)
	jirl	$ra, $ra, 0
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_22:                              # %if.else68
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.bu	$a0, $s4, 0
	addi.d	$a0, $a0, -33
	ori	$a1, $zero, 93
	bltu	$a1, $a0, .LBB11_18
# %bb.23:                               # %if.else68
                                        #   in Loop: Header=BB11_3 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB11_24:                              # %if.then76
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s4, 0
	addi.d	$a1, $a1, -42
	sltui	$a2, $a1, 1
	ori	$a1, $zero, 184
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	b	.LBB11_19
.LBB11_25:                              # %if.then103
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	b	.LBB11_19
.LBB11_26:                              # %if.then98
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	b	.LBB11_19
.LBB11_27:                              # %if.then93
                                        #   in Loop: Header=BB11_3 Depth=1
	pcaddu18i	$ra, %call36(treeoutput)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ori	$a1, $zero, 80
	st.b	$a1, $a0, 0
	b	.LBB11_19
.LBB11_28:                              # %if.then113
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ori	$a1, $zero, 80
	st.b	$a1, $a0, 0
	ori	$a2, $zero, 6
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_36
# %bb.29:                               # %land.rhs117
                                        #   in Loop: Header=BB11_3 Depth=1
	addi.d	$a0, $s4, 1
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	b	.LBB11_37
.LBB11_30:                              # %if.then108
                                        #   in Loop: Header=BB11_3 Depth=1
	pcalau12i	$a0, %got_pc_hi20(tflag)
	ld.d	$a0, $a0, %got_pc_lo12(tflag)
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$zero, $a1, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ori	$a2, $zero, 80
	st.b	$a2, $a1, 0
	st.w	$zero, $a0, 0
	b	.LBB11_19
.LBB11_31:                              # %if.then86
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtosichar)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcaddu18i	$ra, %call36(lowcase)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s4
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 184
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(treeinsert)
	jirl	$ra, $ra, 0
	b	.LBB11_19
.LBB11_32:                              # %if.then126
                                        #   in Loop: Header=BB11_3 Depth=1
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $zero
	pcaddu18i	$ra, %call36(findfiletype)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(defdupchar)
	ld.d	$a1, $a1, %got_pc_lo12(defdupchar)
	srai.d	$a2, $a0, 63
	andn	$a0, $a0, $a2
	st.w	$a0, $a1, 0
	b	.LBB11_19
.LBB11_33:                              # %for.cond.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_34:                              # %for.cond
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	addi.d	$a2, $a0, 1
	st.b	$a1, $a0, -1
	move	$a0, $a2
	bnez	$a1, .LBB11_34
# %bb.35:                               # %for.end
                                        #   in Loop: Header=BB11_3 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $s6, 0
	addi.d	$s3, $s3, -1
	b	.LBB11_18
.LBB11_36:                              #   in Loop: Header=BB11_3 Depth=1
	move	$a0, $zero
.LBB11_37:                              # %land.end121
                                        #   in Loop: Header=BB11_3 Depth=1
	pcalau12i	$a1, %got_pc_hi20(tflag)
	ld.d	$a1, $a1, %got_pc_lo12(tflag)
	st.w	$a0, $a1, 0
	b	.LBB11_19
.LBB11_38:                              # %while.end164
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB11_39:                              # %if.then1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a1, $a1, %pc_lo12(.L.str.39)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	askmode, .Lfunc_end11-askmode
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI11_0:
	.word	.LBB11_26-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_27-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_25-.LJTI11_0
	.word	.LBB11_31-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_24-.LJTI11_0
	.word	.LBB11_28-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_30-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_24-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_33-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_18-.LJTI11_0
	.word	.LBB11_32-.LJTI11_0
                                        # -- End function
	.text
	.globl	copyout                         # -- Begin function copyout
	.p2align	5
	.type	copyout,@function
copyout:                                # @copyout
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ori	$s0, $zero, 1
	blt	$a1, $s0, .LBB12_6
# %bb.1:                                # %while.body.preheader
	move	$fp, $a0
	ld.d	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(aflag)
	ld.d	$s1, $a0, %got_pc_lo12(aflag)
	pcalau12i	$a0, %got_pc_hi20(lflag)
	ld.d	$s2, $a0, %got_pc_lo12(lflag)
	pcalau12i	$a0, %got_pc_hi20(outfile)
	ld.d	$s3, $a0, %got_pc_lo12(outfile)
	addi.d	$s4, $a1, 1
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %if.end6
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.d	$a2, $a2, 1
	addi.w	$s4, $s4, -1
	st.d	$a2, $fp, 0
	bgeu	$s0, $s4, .LBB12_6
.LBB12_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $a2, 0
	beqz	$a0, .LBB12_6
# %bb.4:                                # %if.end
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a1, $s1, 0
	ld.w	$a3, $s2, 0
	or	$a1, $a1, $a3
	bnez	$a1, .LBB12_2
# %bb.5:                                # %if.then4
                                        #   in Loop: Header=BB12_3 Depth=1
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 0
	b	.LBB12_2
.LBB12_6:                               # %while.end
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end12:
	.size	copyout, .Lfunc_end12-copyout
                                        # -- End function
	.p2align	5                               # -- Begin function show_char
	.type	show_char,@function
show_char:                              # @show_char
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
	ld.d	$a0, $a0, 0
	ld.bu	$s2, $a0, 0
	pcalau12i	$a4, %got_pc_hi20(hashheader)
	ld.d	$s4, $a4, %got_pc_lo12(hashheader)
	add.d	$a4, $s4, $s2
	ld.bu	$a4, $a4, 1894
	move	$s3, $a3
	move	$s1, $a2
	move	$s0, $a1
	beqz	$a4, .LBB13_4
# %bb.1:                                # %land.rhs
	move	$a1, $zero
	pcaddu18i	$ra, %call36(stringcharlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a2, $s2
	blt	$a0, $a1, .LBB13_3
# %bb.2:                                # %if.then
	pcalau12i	$a1, %got_pc_hi20(laststringch)
	ld.d	$a1, $a1, %got_pc_lo12(laststringch)
	ld.bu	$a1, $a1, 0
	xori	$a2, $a1, 128
	move	$a1, $a0
.LBB13_3:                               # %if.end
	pcalau12i	$a0, %got_pc_hi20(vflag)
	ld.d	$a0, $a0, %got_pc_lo12(vflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB13_10
	b	.LBB13_5
.LBB13_4:
	ori	$a1, $zero, 1
	move	$a2, $s2
	pcalau12i	$a0, %got_pc_hi20(vflag)
	ld.d	$a0, $a0, %got_pc_lo12(vflag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB13_10
.LBB13_5:                               # %land.lhs.true
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB13_10
# %bb.6:                                # %land.lhs.true
	add.d	$a0, $s4, $a2
	ld.bu	$a0, $a0, 982
	beqz	$a0, .LBB13_10
# %bb.7:                                # %if.then14
	beqz	$s1, .LBB13_9
# %bb.8:                                # %if.then16
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB13_9:                               # %if.end18
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 0
	ori	$s0, $zero, 1
	b	.LBB13_26
.LBB13_10:                              # %if.end19
	ori	$a0, $zero, 9
	bne	$s2, $a0, .LBB13_14
# %bb.11:                               # %if.then22
	beqz	$s1, .LBB13_13
# %bb.12:                               # %if.then24
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 9
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB13_13:                              # %if.end26
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 0
	andi	$a0, $s0, 7
	ori	$a1, $zero, 8
	sub.d	$s0, $a1, $a0
	b	.LBB13_26
.LBB13_14:                              # %if.end28
	sltui	$a0, $s3, 1
	slt	$a2, $a1, $s3
	masknez	$a3, $s3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$s2, $a0, $a2
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB13_23
# %bb.15:                               # %for.body.lr.ph
	beqz	$s1, .LBB13_24
# %bb.16:                               # %for.body.preheader
	move	$s0, $zero
	addi.w	$s3, $zero, -1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s4, $a0, %got_pc_lo12(stdout)
	ori	$s5, $zero, 32
	ori	$s6, $zero, 63
	ori	$s7, $zero, 127
	b	.LBB13_18
	.p2align	4, , 16
.LBB13_17:                              # %if.then55
                                        #   in Loop: Header=BB13_18 Depth=1
	addi.d	$a0, $s1, -127
	sltui	$s8, $a0, 1
	ori	$a0, $zero, 94
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s1, 64
	ld.d	$a1, $s4, 0
	masknez	$a0, $a0, $s8
	maskeqz	$a2, $s6, $s8
	or	$a0, $a2, $a0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	addi.w	$s2, $s2, -1
	add.w	$s0, $s0, $a0
	beqz	$s2, .LBB13_26
.LBB13_18:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	addi.d	$a1, $a0, 1
	st.d	$a1, $fp, 0
	ld.b	$a0, $a0, 0
	andi	$s1, $a0, 255
	blt	$s3, $a0, .LBB13_20
# %bb.19:                               # %if.then42
                                        #   in Loop: Header=BB13_18 Depth=1
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 77
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ori	$a0, $zero, 45
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 2
	andi	$s1, $s1, 127
.LBB13_20:                              # %if.end50
                                        #   in Loop: Header=BB13_18 Depth=1
	ld.d	$a1, $s4, 0
	bltu	$s1, $s5, .LBB13_17
# %bb.21:                               # %if.end50
                                        #   in Loop: Header=BB13_18 Depth=1
	beq	$s1, $s7, .LBB13_17
# %bb.22:                               # %if.else70
                                        #   in Loop: Header=BB13_18 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	addi.w	$s2, $s2, -1
	add.w	$s0, $s0, $a0
	bnez	$s2, .LBB13_18
	b	.LBB13_26
.LBB13_23:
	move	$s0, $zero
	b	.LBB13_26
.LBB13_24:                              # %for.body.us.preheader
	ld.d	$a0, $fp, 0
	move	$s0, $zero
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB13_25:                              # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a0, $fp, 0
	ld.b	$a1, $a0, -1
	andi	$a2, $a1, 255
	slti	$a3, $a1, 0
	addi.d	$a4, $s0, 2
	andi	$a1, $a1, 127
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	masknez	$a2, $s0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	sltui	$a3, $a1, 32
	addi.d	$a1, $a1, -127
	sltui	$a1, $a1, 1
	or	$a1, $a3, $a1
	add.d	$a1, $a1, $a2
	addi.w	$s0, $a1, 1
	addi.w	$s2, $s2, -1
	addi.d	$a0, $a0, 1
	bnez	$s2, .LBB13_25
.LBB13_26:                              # %cleanup
	move	$a0, $s0
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
.Lfunc_end13:
	.size	show_char, .Lfunc_end13-show_char
                                        # -- End function
	.p2align	5                               # -- Begin function ins_cap
	.type	ins_cap,@function
ins_cap:                                # @ins_cap
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1344
	st.d	$ra, $sp, 1336                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1320                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1312                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1304                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1296                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1288                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1280                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1272                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1264                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1256                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB14_20
# %bb.1:                                # %if.end.i
	pcalau12i	$a0, %got_pc_hi20(numhits)
	ld.d	$a0, $a0, %got_pc_lo12(numhits)
	ld.w	$s2, $a0, 0
	ori	$a0, $zero, 1
	st.w	$zero, $sp, 1252
	blt	$s2, $a0, .LBB14_20
# %bb.2:                                # %for.body.preheader.i
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(hits)
	ld.d	$a0, $a0, %got_pc_lo12(hits)
	slli.d	$a1, $s2, 4
	alsl.d	$a1, $s2, $a1, 3
	add.d	$a0, $a1, $a0
	addi.d	$s3, $a0, -8
	addi.d	$s4, $sp, 1252
	addi.d	$s5, $sp, 52
	ori	$s6, $zero, 2
	ori	$s7, $zero, 10
	.p2align	4, , 16
.LBB14_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $s3, -8
	beqz	$a7, .LBB14_6
# %bb.4:                                # %if.then6.i
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.h	$a2, $a7, 18
	ld.h	$a3, $a7, 20
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB14_7
.LBB14_5:                               # %if.then19.i
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.h	$a4, $a0, 18
	ld.h	$a5, $a0, 20
	b	.LBB14_8
	.p2align	4, , 16
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=1
	move	$a3, $zero
	move	$a2, $zero
	ld.d	$a0, $s3, 0
	bnez	$a0, .LBB14_5
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	move	$a5, $zero
	move	$a4, $zero
.LBB14_8:                               # %if.end31.i
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a6, $s3, -16
	st.d	$s4, $sp, 16
	st.d	$s5, $sp, 8
	st.d	$a0, $sp, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(save_root_cap)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 1252
	bltu	$s2, $s6, .LBB14_10
# %bb.9:                                # %if.end31.i
                                        #   in Loop: Header=BB14_3 Depth=1
	addi.d	$s3, $s3, -24
	addi.d	$s2, $s2, -1
	blt	$s1, $s7, .LBB14_3
.LBB14_10:                              # %save_cap.exit
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB14_20
# %bb.11:                               # %for.body.preheader
	move	$s3, $zero
	ori	$s4, $zero, 120
	pcalau12i	$a0, %got_pc_hi20(pcount)
	ld.d	$s5, $a0, %got_pc_lo12(pcount)
	pcalau12i	$a0, %got_pc_hi20(possibilities)
	ld.d	$s6, $a0, %got_pc_lo12(possibilities)
	pcalau12i	$a0, %got_pc_hi20(maxposslen)
	ld.d	$s7, $a0, %got_pc_lo12(maxposslen)
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB14_14
	.p2align	4, , 16
.LBB14_12:                              # %insert.exit
                                        #   in Loop: Header=BB14_14 Depth=1
	ori	$a0, $zero, 98
	blt	$a0, $s8, .LBB14_22
.LBB14_13:                              # %for.inc
                                        #   in Loop: Header=BB14_14 Depth=1
	addi.d	$s3, $s3, 1
	beq	$s3, $s1, .LBB14_20
.LBB14_14:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_16 Depth 2
	mul.d	$a0, $s3, $s4
	addi.d	$a1, $sp, 52
	add.d	$a0, $a1, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	ld.w	$s8, $s5, 0
	move	$fp, $a0
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB14_18
# %bb.15:                               # %for.body.preheader.i4
                                        #   in Loop: Header=BB14_14 Depth=1
	move	$s0, $s6
	move	$s2, $s8
	.p2align	4, , 16
.LBB14_16:                              # %for.body.i5
                                        #   Parent Loop BB14_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_13
# %bb.17:                               # %for.cond.i
                                        #   in Loop: Header=BB14_16 Depth=2
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 120
	bnez	$s2, .LBB14_16
.LBB14_18:                              # %for.end.i
                                        #   in Loop: Header=BB14_14 Depth=1
	addi.d	$a0, $s8, 1
	st.w	$a0, $s5, 0
	mul.d	$a0, $s8, $s4
	add.d	$a0, $s6, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	addi.w	$a2, $a0, 0
	bge	$a1, $a2, .LBB14_12
# %bb.19:                               # %if.then11.i
                                        #   in Loop: Header=BB14_14 Depth=1
	st.w	$a0, $s7, 0
	b	.LBB14_12
.LBB14_20:
	move	$a0, $zero
.LBB14_21:                              # %cleanup
	ld.d	$s8, $sp, 1256                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1264                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1272                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1280                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1288                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1296                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1304                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1336                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1344
	ret
.LBB14_22:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB14_21
.Lfunc_end14:
	.size	ins_cap, .Lfunc_end14-ins_cap
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Whenever a word is found that is not in the dictionary,\r\n"
	.size	.L.str, 58

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"it is printed on the first line of the screen.  If the dictionary\r\n"
	.size	.L.str.1, 68

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"contains any similar words, they are listed with a number\r\n"
	.size	.L.str.2, 60

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"next to each one.  You have the option of replacing the word\r\n"
	.size	.L.str.3, 63

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"completely, or choosing one of the suggested words.\r\n"
	.size	.L.str.4, 54

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\r\nCommands are:\r\n\r\n"
	.size	.L.str.6, 20

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"R       Replace the misspelled word completely.\r\n"
	.size	.L.str.7, 50

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Space   Accept the word this time only.\r\n"
	.size	.L.str.8, 42

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"A       Accept the word for the rest of this session.\r\n"
	.size	.L.str.9, 56

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"I       Accept the word, and put it in your private dictionary.\r\n"
	.size	.L.str.10, 66

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"U       Accept and add lowercase version to private dictionary.\r\n"
	.size	.L.str.11, 66

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"0-n     Replace with one of the suggested words.\r\n"
	.size	.L.str.12, 51

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"L       Look up words in system dictionary.\r\n"
	.size	.L.str.13, 46

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"X       Write the rest of this file, ignoring misspellings,\r\n        and start next file.\r\n"
	.size	.L.str.14, 92

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Q       Quit immediately.  Asks for confirmation.\r\n        Leaves file unchanged.\r\n"
	.size	.L.str.15, 84

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"!       Shell escape.\r\n"
	.size	.L.str.16, 24

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"^L      Redraw screen.\r\n"
	.size	.L.str.17, 25

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"^Z      Suspend program.\r\n"
	.size	.L.str.18, 27

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"?       Show this help screen.\r\n"
	.size	.L.str.19, 33

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\r\n\r\n"
	.size	.L.str.20, 5

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"-- Type space to continue --"
	.size	.L.str.21, 29

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"    %s"
	.size	.L.str.22, 7

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"              File: %s"
	.size	.L.str.23, 23

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	" %s"
	.size	.L.str.24, 4

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"[READONLY]"
	.size	.L.str.25, 11

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"??: %s"
	.size	.L.str.26, 7

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"0%d: %s"
	.size	.L.str.27, 8

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"%2d: %s"
	.size	.L.str.28, 8

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Are you sure you want to throw away your changes? "
	.size	.L.str.30, 51

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"%s "
	.size	.L.str.32, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Replace with: "
	.size	.L.str.33, 15

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.34, 51

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"/home/zhaoqi/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/correct.c"
	.size	.L.str.35, 84

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"%s"
	.size	.L.str.36, 3

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Lookup string ('*' is wildcard): "
	.size	.L.str.37, 34

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"w"
	.size	.L.str.38, 2

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Can't create %s\r\n"
	.size	.L.str.39, 18

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"nroff"
	.size	.L.str.41, 6

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"troff"
	.size	.L.str.42, 6

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"@(#) International Ispell Version 3.1.20 10/10/95"
	.size	.L.str.43, 50

	.type	lookharder.look,@object         # @lookharder.look
	.local	lookharder.look
	.comm	lookharder.look,1,4
	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"%s %s %s"
	.size	.L.str.80, 9

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"look -df"
	.size	.L.str.81, 9

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"/usr/dict/words"
	.size	.L.str.82, 16

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	".*"
	.size	.L.str.83, 3

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"%s ^%s$ %s"
	.size	.L.str.84, 11

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"/usr/bin/egrep -i"
	.size	.L.str.85, 18

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"\r\n\r"
	.size	.Lstr, 4

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"[SP] <number> R)epl A)ccept I)nsert L)ookup U)ncap Q)uit e(X)it or ? for help\r"
	.size	.Lstr.1, 79

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"\r"
	.size	.Lstr.4, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym posscmp
	.addrsig_sym contextbufs
	.addrsig_sym possibilities
