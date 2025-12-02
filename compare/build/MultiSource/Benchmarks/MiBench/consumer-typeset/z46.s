	.file	"z46.c"
	.text
	.globl	FindOptimize                    # -- Begin function FindOptimize
	.p2align	5
	.type	FindOptimize,@function
FindOptimize:                           # @FindOptimize
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	move	$s1, $a0
	ld.bu	$a0, $a0, 32
	ori	$a2, $zero, 2
	move	$s0, $a1
	bne	$a0, $a2, .LBB0_3
# %bb.1:                                # %if.end
	ld.d	$a0, $s1, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 64
	beqz	$a0, .LBB0_4
.LBB0_2:                                # %if.end4
	ld.d	$a0, $s1, 8
	addi.d	$fp, $s1, 32
	bne	$a0, $s1, .LBB0_5
	b	.LBB0_15
.LBB0_3:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 80
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 64
	bnez	$a0, .LBB0_2
.LBB0_4:                                # %if.then2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a5, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	addi.d	$fp, $s1, 32
	beq	$a0, $s1, .LBB0_15
.LBB0_5:                                # %for.cond9.preheader.preheader
	ori	$a1, $zero, 10
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                # %for.inc59
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a0, $a0, 8
	beq	$a0, $s1, .LBB0_15
.LBB0_7:                                # %for.cond9.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	move	$s2, $a0
	.p2align	4, , 16
.LBB0_8:                                # %for.cond9
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a2, $s2, 32
	beqz	$a2, .LBB0_8
# %bb.9:                                # %for.cond9
                                        #   in Loop: Header=BB0_7 Depth=1
	bne	$a2, $a1, .LBB0_6
# %bb.10:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a2, $s2, 80
	ld.bu	$a2, $a2, 126
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_6
# %bb.11:                               # %if.then29
	ld.d	$a0, $s2, 8
	bne	$a0, $s2, .LBB0_13
# %bb.12:                               # %if.then35
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	.p2align	4, , 16
.LBB0_13:                               # %for.cond44
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB0_13
# %bb.14:                               # %for.end63
	move	$a1, $fp
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_22
.LBB0_15:                               # %if.then66
	ld.d	$a0, $s1, 80
	move	$a1, $a0
	.p2align	4, , 16
.LBB0_16:                               # %for.cond71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
	ld.d	$a1, $a1, 8
	beq	$a1, $a0, .LBB0_21
# %bb.17:                               # %for.cond79.preheader
                                        #   in Loop: Header=BB0_16 Depth=1
	move	$a2, $a1
	.p2align	4, , 16
.LBB0_18:                               # %for.cond79
                                        #   Parent Loop BB0_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a2, 16
	ld.bu	$a3, $a2, 32
	beqz	$a3, .LBB0_18
# %bb.19:                               # %for.end90
                                        #   in Loop: Header=BB0_16 Depth=1
	ld.bu	$a3, $a2, 126
	andi	$a3, $a3, 1
	beqz	$a3, .LBB0_16
# %bb.20:                               # %if.end105
	ld.d	$a0, $a2, 56
	move	$a1, $fp
	pcaddu18i	$ra, %call36(CopyObject)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_22
.LBB0_21:                               # %if.then108
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB0_22:                               # %if.end110
	st.d	$zero, $sp, 40
	st.d	$zero, $sp, 48
	st.d	$zero, $sp, 56
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64
	vst	$vr0, $sp, 80
	addi.d	$a2, $s1, 64
	st.d	$zero, $sp, 16
	addi.d	$a1, $sp, 48
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 0
	addi.d	$a3, $sp, 80
	addi.d	$a4, $sp, 64
	addi.d	$a5, $sp, 56
	addi.d	$a6, $sp, 40
	ori	$a7, $zero, 1
	ori	$s1, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Manifest)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB0_28
# %bb.23:                               # %if.else
	addi.d	$s2, $s0, 64
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_31
# %bb.24:                               # %sub_0
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 78
	bne	$a0, $a1, .LBB0_27
# %bb.25:                               # %sub_1
	ld.bu	$a0, $s0, 65
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB0_27
# %bb.26:                               # %if.else136.tail
	ld.bu	$a0, $s0, 66
	beqz	$a0, .LBB0_30
.LBB0_27:                               # %if.else143
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a2, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a5, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 46
	ori	$a1, $zero, 2
	b	.LBB0_29
.LBB0_28:                               # %if.then128
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a5, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 46
	ori	$a1, $zero, 1
.LBB0_29:                               # %cleanup
	ori	$a3, $zero, 2
	move	$a4, $fp
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_30:                               # %cleanup
	move	$s1, $zero
.LBB0_31:                               # %cleanup
	move	$a0, $s1
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end0:
	.size	FindOptimize, .Lfunc_end0-FindOptimize
                                        # -- End function
	.globl	SetOptimize                     # -- Begin function SetOptimize
	.p2align	5
	.type	SetOptimize,@function
SetOptimize:                            # @SetOptimize
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1216
	st.d	$ra, $sp, 1208                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1160                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1152                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1144                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1136                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1128                  # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 80
	move	$s0, $a1
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 616
	addi.d	$s1, $sp, 616
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 36
	ori	$a2, $zero, 46
	stx.h	$a2, $a0, $s1
	bstrpick.d	$a0, $a1, 19, 0
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(OldCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(OldCrossDb)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(OptGallSym)
	ld.d	$s1, $a1, %got_pc_lo12(OptGallSym)
	ld.d	$a2, $s1, 0
	addi.d	$a1, $sp, 80
	addi.d	$a3, $sp, 616
	addi.d	$a4, $sp, 104
	addi.d	$a5, $sp, 102
	addi.d	$a6, $sp, 88
	addi.d	$a7, $sp, 76
	st.d	$a1, $sp, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(DbRetrieve)
	jirl	$ra, $ra, 0
	lu12i.w	$s6, 15
	beqz	$a0, .LBB1_45
# %bb.1:                                # %if.then
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SwitchScope)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 102
	ld.d	$a1, $sp, 88
	ld.w	$a2, $sp, 76
	pcaddu18i	$ra, %call36(ReadFromFile)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(UnSwitchScope)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB1_47
# %bb.2:                                # %if.end
	ld.bu	$a0, $s2, 32
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_48
.LBB1_3:                                # %if.end18
	ld.d	$a0, $s2, 80
	ld.d	$a1, $s1, 0
	beq	$a0, $a1, .LBB1_5
.LBB1_4:                                # %if.then22
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a5, $a0, %pc_lo12(.L.str.13)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_5:                                # %if.end24
	ld.d	$s1, $s2, 8
	bne	$s1, $s2, .LBB1_7
# %bb.6:                                # %if.then27
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a5, $a0, %pc_lo12(.L.str.14)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s2, 8
	.p2align	4, , 16
.LBB1_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB1_7
# %bb.8:                                # %for.cond
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB1_10
# %bb.9:                                # %if.then48
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a5, $a0, %pc_lo12(.L.str.15)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %if.end50
	ld.d	$s2, $s1, 8
	.p2align	4, , 16
.LBB1_11:                               # %for.cond57
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB1_11
# %bb.12:                               # %for.cond57
	ori	$s1, $zero, 17
	beq	$a0, $s1, .LBB1_14
# %bb.13:                               # %if.then74
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a5, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %if.end76
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 42
	move	$s7, $a0
	ori	$a0, $s6, 3583
	and	$a0, $a1, $a0
	st.h	$a0, $fp, 42
	ld.bu	$a0, $s7, 32
	beq	$a0, $s1, .LBB1_16
# %bb.15:                               # %if.then85
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a5, $a0, %pc_lo12(.L.str.17)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_16:                               # %if.end87
	ld.d	$a0, $s7, 8
	beq	$a0, $s7, .LBB1_37
# %bb.17:                               # %for.cond101.preheader.preheader
	addi.d	$a1, $s7, 8
	pcalau12i	$a2, %got_pc_hi20(xx_link)
	ld.d	$a2, $a2, %got_pc_lo12(xx_link)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(xx_tmp)
	ld.d	$s1, $a2, %got_pc_lo12(xx_tmp)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s4, $a2, %got_pc_lo12(zz_hold)
	pcalau12i	$a2, %got_pc_hi20(zz_lengths)
	ld.d	$a2, $a2, %got_pc_lo12(zz_lengths)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$s8, $a2, %got_pc_lo12(zz_size)
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s5, $a2, %got_pc_lo12(zz_free)
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$s3, $a2, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$a2, $a2, %pc_lo12(.L.str.19)
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(no_fpos)
	ld.d	$a2, $a2, %got_pc_lo12(no_fpos)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str)
	addi.d	$a2, $a2, %pc_lo12(.L.str)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L.str.20)
	addi.d	$a2, $a2, %pc_lo12(.L.str.20)
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	move	$s2, $s7
	b	.LBB1_21
	.p2align	4, , 16
.LBB1_18:                               # %if.else342
                                        #   in Loop: Header=BB1_21 Depth=1
	addi.d	$a0, $s6, 64
	st.w	$zero, $sp, 72
	addi.d	$a2, $sp, 72
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_sscanf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 72
	blez	$a0, .LBB1_36
.LBB1_19:                               # %if.end350
                                        #   in Loop: Header=BB1_21 Depth=1
	st.w	$a0, $s6, 48
.LBB1_20:                               # %for.inc357
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.d	$s2, $s2, 8
	ld.d	$a0, $s2, 8
	addi.d	$a1, $s2, 8
	beq	$a0, $s7, .LBB1_37
.LBB1_21:                               # %for.cond101.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
	move	$s6, $a0
	.p2align	4, , 16
.LBB1_22:                               # %for.cond101
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 16
	ld.bu	$a2, $s6, 32
	beqz	$a2, .LBB1_22
# %bb.23:                               # %for.cond101
                                        #   in Loop: Header=BB1_21 Depth=1
	addi.d	$a3, $a2, -11
	ori	$a4, $zero, 2
	bgeu	$a3, $a4, .LBB1_28
# %bb.24:                               # %if.then227
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.bu	$a0, $s6, 64
	ori	$a2, $zero, 104
	bne	$a0, $a2, .LBB1_18
# %bb.25:                               # %if.then227.tail
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.bu	$a0, $s6, 65
	bnez	$a0, .LBB1_18
# %bb.26:                               # %if.then232
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.h	$a0, $fp, 42
	ori	$a0, $a0, 512
	st.h	$a0, $fp, 42
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a0, 24
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	bne	$a1, $a0, .LBB1_30
.LBB1_27:                               #   in Loop: Header=BB1_21 Depth=1
	move	$a1, $zero
	ld.d	$a2, $a0, 8
	st.d	$a1, $s1, 0
	st.d	$a0, $s4, 0
	bne	$a2, $a0, .LBB1_31
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_28:                               # %for.cond101
                                        #   in Loop: Header=BB1_21 Depth=1
	ori	$a1, $zero, 1
	bne	$a2, $a1, .LBB1_35
# %bb.29:                               # %if.then118
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.d	$a1, $a0, 24
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $a2, 0
	beq	$a1, $a0, .LBB1_27
.LBB1_30:                               # %cond.false
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.d	$a2, $a0, 16
	st.d	$a1, $s3, 0
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	st.d	$a1, $s1, 0
	st.d	$a0, $s4, 0
	beq	$a2, $a0, .LBB1_32
.LBB1_31:                               # %cond.false154
                                        #   in Loop: Header=BB1_21 Depth=1
	st.d	$a2, $s3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a1, $s4, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a1, $a1, 8
.LBB1_32:                               # %cond.end176
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.bu	$a1, $a0, 32
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s5, $a2
	st.d	$a0, $s4, 0
	st.w	$a1, $s8, 0
	st.d	$a2, $a0, 0
	ld.w	$a1, $s8, 0
	ld.d	$a2, $s4, 0
	ld.d	$a0, $s1, 0
	slli.d	$a1, $a1, 3
	stx.d	$a2, $s5, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_34
# %bb.33:                               # %if.then210
                                        #   in Loop: Header=BB1_21 Depth=1
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_34:                               # %if.end212
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.d	$s2, $s2, 0
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_35:                               # %if.else353
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a5, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB1_20
.LBB1_36:                               # %if.then348
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 72
	b	.LBB1_19
.LBB1_37:                               # %for.end361
	ld.d	$a0, $s7, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s2, $a1, %got_pc_lo12(xx_link)
	ld.d	$a1, $a0, 24
	st.d	$a0, $s2, 0
	beq	$a1, $a0, .LBB1_39
# %bb.38:                               # %cond.false371
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
.LBB1_39:                               # %cond.end393
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s1, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $a0, 8
	st.d	$a0, $s1, 0
	beq	$a1, $a0, .LBB1_41
# %bb.40:                               # %cond.false401
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a1, $s1, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $a1, 0
	ld.d	$a0, $s2, 0
	st.d	$a1, $a1, 8
.LBB1_41:                               # %land.lhs.true
	lu12i.w	$s6, 15
	ld.bu	$a1, $a0, 32
	st.d	$a0, $s1, 0
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$s5, $a4, %got_pc_lo12(zz_lengths)
	add.d	$a1, $s5, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$s4, $a2, %got_pc_lo12(zz_size)
	st.w	$a1, $s4, 0
	slli.d	$a1, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_free)
	ld.d	$s3, $a2, %got_pc_lo12(zz_free)
	ldx.d	$a1, $s3, $a1
	st.d	$a1, $a0, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $s1, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s3, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$s7, $fp, 120
	ld.d	$a0, $s7, 8
	beq	$a0, $s7, .LBB1_46
	.p2align	4, , 16
.LBB1_42:                               # %for.cond477
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB1_42
# %bb.43:                               # %for.end488
	ld.w	$a1, $a0, 48
	addi.d	$a1, $a1, -1
	st.w	$a1, $fp, 160
	ld.d	$a0, $a0, 24
	ld.d	$a2, $a0, 24
	st.d	$a0, $s2, 0
	beq	$a2, $a0, .LBB1_49
# %bb.44:                               # %cond.false501
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB1_50
.LBB1_45:                               # %if.end458.thread
	st.d	$zero, $fp, 120
.LBB1_46:                               # %if.else593
	ori	$a0, $s6, 4095
	st.w	$a0, $fp, 160
	b	.LBB1_54
.LBB1_47:                               # %if.then11
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a5, $a0, %pc_lo12(.L.str.11)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_3
.LBB1_48:                               # %if.then16
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a5, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 80
	ld.d	$a1, $s1, 0
	bne	$a0, $a1, .LBB1_4
	b	.LBB1_5
.LBB1_49:
	move	$a2, $zero
.LBB1_50:                               # %cond.end523
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $s1, 0
	beq	$a3, $a0, .LBB1_52
# %bb.51:                               # %cond.false531
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	st.d	$a3, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a3, $s1, 0
	ld.d	$a0, $a2, 0
	ld.d	$a2, $a3, 0
	st.d	$a0, $a2, 8
	st.d	$a3, $a3, 0
	ld.d	$a0, $s2, 0
	st.d	$a3, $a3, 8
.LBB1_52:                               # %cond.end553
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	add.d	$a2, $s5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s3, $a3
	st.d	$a0, $s1, 0
	st.w	$a2, $s4, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $s4, 0
	ld.d	$a3, $s1, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $s3, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB1_54
# %bb.53:                               # %if.then590
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB1_54:                               # %if.end595
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s3, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $s3, 17
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s2, $a0, %got_pc_lo12(zz_size)
	st.w	$a2, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$s1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	beqz	$a0, .LBB1_56
# %bb.55:                               # %if.else609
	alsl.d	$a1, $a2, $s1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB1_57
.LBB1_56:                               # %if.then607
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_57:                               # %if.end618
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.hu	$a1, $fp, 42
	st.d	$a0, $fp, 104
	ld.bu	$a2, $s3, 17
	ori	$a0, $s6, 3071
	and	$a0, $a1, $a0
	st.h	$a0, $fp, 42
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s1, $a0
	st.w	$a2, $s2, 0
	beqz	$a0, .LBB1_59
# %bb.58:                               # %if.else650
	alsl.d	$a1, $a2, $s1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB1_60
.LBB1_59:                               # %if.then648
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB1_60:                               # %if.end659
	ori	$a1, $zero, 17
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $fp, 104
	st.d	$a0, $fp, 112
	ld.hu	$a2, $a1, 64
	ld.hu	$a3, $s0, 0
	ori	$a0, $s6, 3967
	and	$a2, $a2, $a0
	srli.d	$a3, $a3, 7
	bstrins.d	$a2, $a3, 7, 7
	st.h	$a2, $a1, 64
	ld.d	$a2, $fp, 104
	ld.hu	$a3, $a2, 64
	ld.bu	$a4, $s0, 1
	ori	$a1, $s6, 3839
	and	$a3, $a3, $a1
	bstrins.d	$a3, $a4, 8, 8
	st.h	$a3, $a2, 64
	ld.d	$a3, $fp, 104
	ld.hu	$a4, $a3, 64
	ld.hu	$a5, $s0, 0
	ori	$a2, $s6, 3583
	and	$a4, $a4, $a2
	srli.d	$a5, $a5, 9
	bstrins.d	$a4, $a5, 9, 9
	st.h	$a4, $a3, 64
	ld.d	$a4, $fp, 104
	ld.hu	$a5, $a4, 64
	ld.hu	$a6, $s0, 0
	lu12i.w	$a3, 14
	ori	$a3, $a3, 1023
	and	$a5, $a5, $a3
	srli.d	$a6, $a6, 10
	bstrins.d	$a5, $a6, 12, 10
	st.h	$a5, $a4, 64
	ld.d	$a4, $fp, 104
	ld.hu	$a5, $s0, 0
	ld.hu	$a6, $a4, 64
	srli.d	$a5, $a5, 13
	bstrins.d	$a6, $a5, 63, 13
	st.h	$a6, $a4, 64
	ld.h	$a4, $s0, 2
	ld.d	$a5, $fp, 104
	st.h	$a4, $a5, 66
	ld.d	$a4, $fp, 104
	ld.bu	$a5, $a4, 68
	ld.bu	$a6, $s0, 4
	srli.d	$a5, $a5, 2
	bstrins.d	$a6, $a5, 63, 2
	st.b	$a6, $a4, 68
	ld.d	$a4, $fp, 104
	ld.bu	$a5, $a4, 68
	ld.bu	$a6, $s0, 4
	andi	$a5, $a5, 243
	srli.d	$a6, $a6, 2
	bstrins.d	$a5, $a6, 3, 2
	st.b	$a5, $a4, 68
	ld.d	$a4, $fp, 104
	ld.bu	$a5, $a4, 68
	ld.bu	$a6, $s0, 4
	andi	$a5, $a5, 143
	srli.d	$a6, $a6, 4
	bstrins.d	$a5, $a6, 6, 4
	st.b	$a5, $a4, 68
	ld.d	$a4, $fp, 104
	ld.bu	$a5, $a4, 64
	ld.bu	$a6, $s0, 0
	andi	$a5, $a5, 247
	srli.d	$a6, $a6, 3
	bstrins.d	$a5, $a6, 3, 3
	st.b	$a5, $a4, 64
	ld.d	$a4, $fp, 104
	ld.hu	$a5, $a4, 68
	ld.hu	$a6, $s0, 4
	and	$a0, $a5, $a0
	srli.d	$a5, $a6, 7
	bstrins.d	$a0, $a5, 7, 7
	st.h	$a0, $a4, 68
	ld.d	$a0, $fp, 104
	ld.hu	$a4, $a0, 68
	ld.bu	$a5, $s0, 5
	and	$a1, $a4, $a1
	bstrins.d	$a1, $a5, 8, 8
	st.h	$a1, $a0, 68
	ld.d	$a0, $fp, 104
	ld.hu	$a1, $a0, 68
	ld.hu	$a4, $s0, 4
	and	$a1, $a1, $a2
	srli.d	$a2, $a4, 9
	bstrins.d	$a1, $a2, 9, 9
	st.h	$a1, $a0, 68
	ld.d	$a0, $fp, 104
	ld.hu	$a1, $a0, 68
	ld.hu	$a2, $s0, 4
	and	$a1, $a1, $a3
	srli.d	$a2, $a2, 10
	bstrins.d	$a1, $a2, 12, 10
	st.h	$a1, $a0, 68
	ld.d	$a0, $fp, 104
	ld.hu	$a1, $s0, 4
	ld.hu	$a2, $a0, 68
	srli.d	$a1, $a1, 13
	bstrins.d	$a2, $a1, 63, 13
	st.h	$a2, $a0, 68
	ld.h	$a0, $s0, 6
	ld.d	$a1, $fp, 104
	st.h	$a0, $a1, 70
	ld.d	$a0, $fp, 104
	ld.wu	$a1, $a0, 76
	ld.wu	$a2, $s0, 12
	srli.d	$a1, $a1, 12
	bstrins.d	$a2, $a1, 63, 12
	st.w	$a2, $a0, 76
	ld.d	$a0, $fp, 104
	ld.wu	$a1, $s0, 12
	ld.wu	$a2, $a0, 76
	lu12i.w	$a3, -1024
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a1, $a1, 12
	bstrins.d	$a2, $a1, 21, 12
	st.w	$a2, $a0, 76
	ld.d	$a0, $fp, 104
	ld.wu	$a1, $s0, 12
	ld.wu	$a2, $a0, 76
	lu12i.w	$a3, -3073
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a1, $a1, 22
	bstrins.d	$a2, $a1, 23, 22
	st.w	$a2, $a0, 76
	ld.d	$a0, $fp, 104
	ld.bu	$a1, $s0, 15
	ld.wu	$a2, $a0, 76
	lu12i.w	$a3, -258049
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	bstrins.d	$a2, $a1, 29, 24
	st.w	$a2, $a0, 76
	ld.d	$a0, $fp, 104
	ld.wu	$a1, $s0, 12
	ld.wu	$a2, $a0, 76
	srli.d	$a1, $a1, 31
	bstrins.d	$a2, $a1, 63, 31
	st.w	$a2, $a0, 76
	ld.d	$a0, $fp, 104
	ld.wu	$a1, $s0, 12
	ld.wu	$a2, $a0, 76
	lu12i.w	$a3, -262145
	ori	$a3, $a3, 4095
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	srli.d	$a1, $a1, 30
	bstrins.d	$a2, $a1, 30, 30
	st.w	$a2, $a0, 76
	ld.d	$a0, $fp, 104
	ld.bu	$a1, $a0, 64
	ld.bu	$a2, $s0, 0
	srli.d	$a1, $a1, 1
	bstrins.d	$a2, $a1, 63, 1
	st.b	$a2, $a0, 64
	ld.d	$a0, $fp, 104
	ld.bu	$a1, $a0, 64
	ld.bu	$a2, $s0, 0
	andi	$a1, $a1, 253
	srli.d	$a2, $a2, 1
	bstrins.d	$a1, $a2, 1, 1
	st.b	$a1, $a0, 64
	ld.d	$a0, $fp, 104
	ld.bu	$a1, $a0, 64
	ld.bu	$a2, $s0, 0
	andi	$a1, $a1, 251
	srli.d	$a2, $a2, 2
	bstrins.d	$a1, $a2, 2, 2
	st.b	$a1, $a0, 64
	ld.d	$a0, $fp, 104
	ld.bu	$a1, $a0, 64
	ld.bu	$a2, $s0, 0
	andi	$a1, $a1, 143
	srli.d	$a2, $a2, 4
	bstrins.d	$a1, $a2, 6, 4
	st.b	$a1, $a0, 64
	ld.h	$a0, $s0, 8
	ld.d	$a1, $fp, 104
	st.h	$a0, $a1, 72
	ld.h	$a0, $s0, 10
	ld.d	$a1, $fp, 104
	st.h	$a0, $a1, 74
	ld.hu	$a0, $fp, 42
	andi	$a0, $a0, 256
	beqz	$a0, .LBB1_62
# %bb.61:                               # %if.then999
	ld.d	$a0, $fp, 104
	ld.bu	$a1, $a0, 68
	srli.d	$a1, $a1, 2
	ori	$a2, $zero, 1
	bstrins.d	$a2, $a1, 7, 2
	st.b	$a2, $a0, 68
.LBB1_62:                               # %if.end1006
	ld.d	$s8, $sp, 1128                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1136                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1208                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1216
	ret
.Lfunc_end1:
	.size	SetOptimize, .Lfunc_end1-SetOptimize
                                        # -- End function
	.globl	GazumpOptimize                  # -- Begin function GazumpOptimize
	.p2align	5
	.type	GazumpOptimize,@function
GazumpOptimize:                         # @GazumpOptimize
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
	move	$fp, $a0
	ld.bu	$a0, $a0, 32
	ori	$a2, $zero, 8
	move	$s1, $a1
	beq	$a0, $a2, .LBB2_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a5, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %if.end
	ld.d	$a0, $fp, 104
	bnez	$a0, .LBB2_4
# %bb.3:                                # %if.then4
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a5, $a0, %pc_lo12(.L.str.24)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_4:                                # %if.end6
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s4, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s4, 26
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s3, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s2, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s2, $a1
	beqz	$s0, .LBB2_6
# %bb.5:                                # %if.else17
	alsl.d	$a0, $a0, $s2, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 0
	b	.LBB2_7
.LBB2_6:                                # %if.then15
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s0, $a0, 0
.LBB2_7:                                # %if.end24
	ori	$a0, $zero, 26
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.hu	$a2, $fp, 42
	andi	$a0, $a2, 256
	bnez	$a0, .LBB2_9
# %bb.8:                                # %land.lhs.true
	ld.hu	$a0, $s1, 42
	andi	$a0, $a0, 8
	bnez	$a0, .LBB2_12
.LBB2_9:                                # %if.else64
	ld.d	$a0, $s1, 24
	.p2align	4, , 16
.LBB2_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB2_10
# %bb.11:                               # %for.end
	addi.d	$a1, $s0, 64
	bstrpick.d	$a2, $a2, 8, 8
	addi.d	$a3, $sp, 16
	pcaddu18i	$ra, %call36(Constrained)
	jirl	$ra, $ra, 0
	b	.LBB2_13
.LBB2_12:                               # %if.then61
	lu12i.w	$a0, 2047
	ori	$a0, $a0, 4095
	st.w	$a0, $s0, 72
	bstrins.d	$a0, $a0, 54, 32
	st.d	$a0, $s0, 64
.LBB2_13:                               # %if.end86
	ld.bu	$a2, $s4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s3, 0
	beqz	$a0, .LBB2_15
# %bb.14:                               # %if.else100
	alsl.d	$a1, $a2, $s2, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB2_16
.LBB2_15:                               # %if.then98
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_16:                               # %if.end109
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s6, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s7, $a1, %got_pc_lo12(zz_res)
	ld.d	$a1, $fp, 112
	st.d	$a0, $s7, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s5, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $s5, 0
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	beqz	$a1, .LBB2_20
# %bb.17:                               # %cond.end151
	ld.d	$a2, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s0, $s5, 0
	bnez	$a0, .LBB2_21
# %bb.18:                               # %cond.end184
	ld.d	$a0, $fp, 104
	ld.d	$s4, $a0, 0
	bne	$s4, $a0, .LBB2_22
.LBB2_19:                               # %if.end881
	ld.d	$a1, $fp, 120
	bnez	$a1, .LBB2_64
	b	.LBB2_68
.LBB2_20:                               # %cond.end151.thread
	st.d	$s0, $s5, 0
.LBB2_21:                               # %cond.false160
	ld.d	$a1, $s0, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $s0, 16
	st.d	$s0, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	ld.d	$a0, $fp, 104
	ld.d	$s4, $a0, 0
	beq	$s4, $a0, .LBB2_19
	.p2align	4, , 16
.LBB2_22:                               # %for.cond201
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB2_22
# %bb.23:                               # %for.cond201
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB2_25
# %bb.24:                               # %if.then218
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_25:                               # %if.end220
	ld.hu	$a1, $s4, 44
	addi.d	$s0, $s4, 32
	ori	$a2, $zero, 412
	ld.d	$a0, $s4, 8
	bstrins.d	$a1, $a2, 63, 7
	st.h	$a1, $s4, 44
	lu12i.w	$a1, 1
	st.h	$a1, $s4, 46
	beq	$a0, $s4, .LBB2_33
# %bb.26:                               # %if.then245
	ld.d	$a2, $a0, 24
	st.d	$a0, $s6, 0
	beq	$a2, $a0, .LBB2_28
# %bb.27:                               # %cond.false255
	ld.d	$a1, $a0, 16
	st.d	$a2, $s7, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB2_29
.LBB2_28:
	move	$a2, $zero
.LBB2_29:                               # %cond.end277
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $s5, 0
	beq	$a3, $a0, .LBB2_31
# %bb.30:                               # %cond.false285
	st.d	$a3, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $s5, 0
	ld.d	$a0, $s7, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s6, 0
	st.d	$a2, $a2, 8
.LBB2_31:                               # %cond.end307
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a0, $s5, 0
	st.w	$a2, $s3, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $s3, 0
	ld.d	$a3, $s5, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $s2, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB2_33
# %bb.32:                               # %if.then343
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB2_33:                               # %if.end346
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 11
	move	$a2, $s0
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s2, $a1
	move	$s1, $a0
	st.w	$a2, $s3, 0
	beqz	$a1, .LBB2_35
# %bb.34:                               # %if.else362
	st.d	$a1, $s5, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a0, $a2, 0
	b	.LBB2_36
.LBB2_35:                               # %if.then360
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB2_36:                               # %cond.end417
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s6, 0
	st.d	$a1, $s7, 0
	st.d	$s4, $s5, 0
	ld.d	$a0, $s4, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s8, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s8, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s1, $s5, 0
	beqz	$s1, .LBB2_39
# %bb.37:                               # %cond.end417
	beqz	$a0, .LBB2_39
# %bb.38:                               # %cond.false426
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB2_39:                               # %cond.end450
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 11
	move	$a2, $s0
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	vrepli.b	$vr0, 0
	ld.wu	$a0, $a0, 40
	vst	$vr0, $s1, 48
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.bu	$a2, $s4, 0
	lu12i.w	$a1, 393216
	and	$a0, $a0, $a1
	st.w	$a0, $s1, 40
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s3, 0
	beqz	$a0, .LBB2_41
# %bb.40:                               # %if.else496
	st.d	$a0, $s5, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB2_42
.LBB2_41:                               # %if.then494
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_42:                               # %if.end505
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $fp, 104
	st.d	$a0, $s6, 0
	st.d	$a0, $s7, 0
	st.d	$a1, $s5, 0
	beqz	$a1, .LBB2_44
# %bb.43:                               # %cond.end552
	ld.d	$a2, $a1, 0
	st.d	$a2, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s1, $s5, 0
	bnez	$a0, .LBB2_45
	b	.LBB2_46
.LBB2_44:                               # %cond.end552.thread
	st.d	$s1, $s5, 0
.LBB2_45:                               # %cond.false561
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB2_46:                               # %cond.end585
	ld.bu	$a0, $s4, 1
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s2, $a1
	st.w	$a0, $s3, 0
	beqz	$s0, .LBB2_48
# %bb.47:                               # %if.else600
	st.d	$s0, $s5, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a1, $a0, 0
	b	.LBB2_49
.LBB2_48:                               # %if.then598
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$a0, $s5, 0
.LBB2_49:                               # %if.end609
	ori	$a0, $zero, 1
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	st.h	$a0, $s0, 41
	ld.h	$a0, $s1, 34
	st.h	$a0, $s0, 34
	ld.wu	$a0, $s1, 36
	ld.wu	$a1, $s0, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s0, 36
	ld.wu	$a1, $s1, 36
	addi.d	$a2, $s0, 32
	srli.d	$a1, $a1, 20
	ld.hu	$a3, $s0, 44
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s0, 36
	ori	$a0, $zero, 76
	bstrins.d	$a3, $a0, 63, 7
	st.h	$a3, $s0, 44
	ori	$a0, $zero, 567
	st.h	$a0, $s0, 46
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s4, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s2, $a1
	move	$s1, $a0
	st.w	$a2, $s3, 0
	beqz	$a1, .LBB2_51
# %bb.50:                               # %if.else683
	st.d	$a1, $s5, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a0, $a2, 0
	b	.LBB2_52
.LBB2_51:                               # %if.then681
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB2_52:                               # %cond.end738
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	st.d	$a1, $s6, 0
	st.d	$a1, $s7, 0
	st.d	$s0, $s5, 0
	ld.d	$a0, $s0, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s1, $s5, 0
	beqz	$s1, .LBB2_55
# %bb.53:                               # %cond.end738
	beqz	$a0, .LBB2_55
# %bb.54:                               # %cond.false747
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB2_55:                               # %cond.end771
	ld.bu	$a2, $s4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $s3, 0
	beqz	$a0, .LBB2_57
# %bb.56:                               # %if.else786
	st.d	$a0, $s5, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB2_58
.LBB2_57:                               # %if.then784
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB2_58:                               # %if.end795
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $fp, 104
	st.d	$a0, $s6, 0
	st.d	$a0, $s7, 0
	st.d	$a1, $s5, 0
	beqz	$a1, .LBB2_61
# %bb.59:                               # %cond.end842
	ld.d	$a2, $a1, 0
	st.d	$a2, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s5, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s7, 0
	st.d	$s0, $s5, 0
	beqz	$a1, .LBB2_63
# %bb.60:                               # %cond.end842.cond.false851_crit_edge
	ld.d	$a0, $a1, 16
	b	.LBB2_62
.LBB2_61:                               # %cond.end842.thread
	st.d	$s0, $s5, 0
	move	$a1, $a0
.LBB2_62:                               # %cond.false851
	ld.d	$a2, $s0, 16
	st.d	$a0, $s0, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $s8, 0
	st.d	$s0, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB2_63:                               # %cond.end875
	ld.h	$a0, $fp, 42
	ori	$a0, $a0, 1024
	st.h	$a0, $fp, 42
	ld.d	$a1, $fp, 120
	beqz	$a1, .LBB2_68
.LBB2_64:                               # %land.lhs.true884
	ld.d	$a0, $a1, 8
	beq	$a0, $a1, .LBB2_68
	.p2align	4, , 16
.LBB2_65:                               # %for.cond900
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 32
	beqz	$a1, .LBB2_65
# %bb.66:                               # %for.end911
	ld.w	$a1, $a0, 48
	ld.w	$a2, $fp, 160
	add.d	$a1, $a1, $a2
	addi.d	$a1, $a1, -1
	st.w	$a1, $fp, 160
	ld.d	$a0, $a0, 24
	ld.d	$a2, $a0, 24
	st.d	$a0, $s6, 0
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	beq	$a2, $a0, .LBB2_69
# %bb.67:                               # %cond.false924
	ld.d	$a1, $a0, 16
	st.d	$a2, $s7, 0
	st.d	$a1, $a2, 16
	st.d	$a2, $a1, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB2_70
.LBB2_68:                               # %if.else1016
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.w	$a0, $fp, 160
	b	.LBB2_74
.LBB2_69:
	move	$a2, $zero
.LBB2_70:                               # %cond.end946
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	ld.d	$a3, $a0, 8
	st.d	$a2, $a1, 0
	st.d	$a0, $s5, 0
	beq	$a3, $a0, .LBB2_72
# %bb.71:                               # %cond.false954
	st.d	$a3, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a2, $s5, 0
	ld.d	$a0, $s7, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $s6, 0
	st.d	$a2, $a2, 8
.LBB2_72:                               # %cond.end976
	ld.bu	$a2, $a0, 32
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s2, $a3
	st.d	$a0, $s5, 0
	st.w	$a2, $s3, 0
	st.d	$a3, $a0, 0
	ld.w	$a2, $s3, 0
	ld.d	$a3, $s5, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $s2, $a1
	ld.d	$a1, $a0, 24
	bne	$a1, $a0, .LBB2_74
# %bb.73:                               # %if.then1013
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
.LBB2_74:                               # %if.end1018
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
.Lfunc_end2:
	.size	GazumpOptimize, .Lfunc_end2-GazumpOptimize
                                        # -- End function
	.globl	CalculateOptimize               # -- Begin function CalculateOptimize
	.p2align	5
	.type	CalculateOptimize,@function
CalculateOptimize:                      # @CalculateOptimize
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -720
	st.d	$ra, $sp, 712                   # 8-byte Folded Spill
	st.d	$fp, $sp, 704                   # 8-byte Folded Spill
	st.d	$s0, $sp, 696                   # 8-byte Folded Spill
	st.d	$s1, $sp, 688                   # 8-byte Folded Spill
	st.d	$s2, $sp, 680                   # 8-byte Folded Spill
	st.d	$s3, $sp, 672                   # 8-byte Folded Spill
	st.d	$s4, $sp, 664                   # 8-byte Folded Spill
	st.d	$s5, $sp, 656                   # 8-byte Folded Spill
	st.d	$s6, $sp, 648                   # 8-byte Folded Spill
	st.d	$s7, $sp, 640                   # 8-byte Folded Spill
	st.d	$s8, $sp, 632                   # 8-byte Folded Spill
	move	$s4, $a0
	ld.d	$a0, $a0, 104
	ld.d	$fp, $a0, 0
	bne	$fp, $a0, .LBB3_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a5, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 104
	ld.d	$fp, $a0, 0
	.p2align	4, , 16
.LBB3_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB3_2
# %bb.3:                                # %for.cond
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_5
# %bb.4:                                # %if.then19
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a5, $a0, %pc_lo12(.L.str.30)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB3_5:                                # %if.end21
	ld.d	$a0, $fp, 24
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a1, $a1, %got_pc_lo12(xx_link)
	ld.d	$a2, $a0, 24
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	beq	$a2, $a0, .LBB3_7
# %bb.6:                                # %cond.false
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $a2, 16
	st.d	$a2, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB3_8
.LBB3_7:
	move	$a2, $zero
.LBB3_8:                                # %cond.end
	pcalau12i	$a1, %got_pc_hi20(xx_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(xx_tmp)
	st.d	$a2, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$s6, $a2, %got_pc_lo12(zz_hold)
	ld.d	$a2, $a0, 8
	st.d	$a0, $s6, 0
	beq	$a2, $a0, .LBB3_10
# %bb.9:                                # %cond.false56
	pcalau12i	$a3, %got_pc_hi20(zz_res)
	ld.d	$a3, $a3, %got_pc_lo12(zz_res)
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a2, $s6, 0
	ld.d	$a0, $a3, 0
	ld.d	$a3, $a2, 0
	st.d	$a0, $a3, 8
	st.d	$a2, $a2, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	st.d	$a2, $a2, 8
.LBB3_10:                               # %cond.end78
	ld.bu	$a2, $a0, 32
	st.d	$a0, $s6, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a4, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a4, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$s0, $a3, %got_pc_lo12(zz_free)
	ldx.d	$a2, $s0, $a2
	st.d	$a2, $a0, 0
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	ld.w	$a2, $a4, 0
	ld.d	$a3, $s6, 0
	ld.d	$a0, $a1, 0
	slli.d	$a1, $a2, 3
	stx.d	$a3, $s0, $a1
	ld.d	$a1, $a0, 24
	beq	$a1, $a0, .LBB3_19
# %bb.11:                               # %if.end114
	ld.d	$a0, $s4, 112
	beqz	$a0, .LBB3_20
.LBB3_12:                               # %if.end119
	ld.d	$a1, $a0, 8
	beq	$a1, $a0, .LBB3_21
.LBB3_13:                               # %if.end129
	ld.d	$fp, $a0, 0
	.p2align	4, , 16
.LBB3_14:                               # %for.cond137
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 16
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB3_14
# %bb.15:                               # %for.end148
	move	$a0, $zero
	pcaddu18i	$ra, %call36(EnterErrorBlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 104
	ld.d	$a2, $s4, 112
	addi.d	$a1, $fp, 64
	ori	$a5, $zero, 1
	addi.d	$a6, $sp, 108
	move	$a3, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(FillObject)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 104
	move	$a0, $zero
	pcaddu18i	$ra, %call36(LeaveErrorBlock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 104
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 19
	bne	$a1, $a2, .LBB3_78
# %bb.16:                               # %lor.lhs.false159
	ld.d	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	beq	$a1, $a0, .LBB3_78
# %bb.17:                               # %if.end171
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 2
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s0, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$fp, .LBB3_22
# %bb.18:                               # %if.else184
	st.d	$fp, $s6, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a1, $a0, 0
	b	.LBB3_23
.LBB3_19:                               # %if.then112
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 112
	bnez	$a0, .LBB3_12
.LBB3_20:                               # %if.then117
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a5, $a0, %pc_lo12(.L.str.31)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 112
	ld.d	$a1, $a0, 8
	bne	$a1, $a0, .LBB3_13
.LBB3_21:                               # %if.then127
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a5, $a0, %pc_lo12(.L.str.32)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 112
	b	.LBB3_13
.LBB3_22:                               # %if.then182
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s6, 0
.LBB3_23:                               # %if.end193
	ori	$a0, $zero, 2
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	st.d	$fp, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(OptGallSym)
	ld.d	$s1, $a0, %got_pc_lo12(OptGallSym)
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 80
	ld.h	$a0, $s4, 34
	st.h	$a0, $fp, 34
	ld.wu	$a1, $s4, 36
	ld.wu	$a0, $fp, 36
	srli.d	$a0, $a0, 20
	move	$a2, $a1
	bstrins.d	$a2, $a0, 63, 20
	st.w	$a2, $fp, 36
	ld.wu	$a2, $s4, 36
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 10
	srli.d	$a2, $a2, 20
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $fp, 36
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $s0, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s2, .LBB3_25
# %bb.24:                               # %if.else237
	st.d	$s2, $s6, 0
	ld.d	$a1, $s2, 0
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a1, $a0, 0
	b	.LBB3_26
.LBB3_25:                               # %if.then235
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $s6, 0
.LBB3_26:                               # %if.end246
	ori	$a0, $zero, 10
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 0
	ld.d	$a0, $s1, 0
	st.d	$s2, $s2, 24
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	ori	$a1, $zero, 146
	pcaddu18i	$ra, %call36(ChildSym)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	st.d	$a0, $s2, 80
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB3_28
# %bb.27:                               # %if.else276
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB3_29
.LBB3_28:                               # %if.then274
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB3_29:                               # %cond.end331
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s7, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $s7, 0
	st.d	$fp, $s6, 0
	ld.d	$a1, $fp, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s8, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s2, $s6, 0
	beqz	$a0, .LBB3_31
# %bb.30:                               # %cond.false340
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB3_31:                               # %cond.end364
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 17
	slli.d	$a1, $a0, 3
	ldx.d	$s1, $s0, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s1, .LBB3_33
# %bb.32:                               # %if.else379
	st.d	$s1, $s6, 0
	ld.d	$a1, $s1, 0
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a1, $a0, 0
	b	.LBB3_34
.LBB3_33:                               # %if.then377
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $s6, 0
.LBB3_34:                               # %if.end388
	ori	$a0, $zero, 17
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	st.d	$s1, $s1, 24
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB3_36
# %bb.35:                               # %if.else416
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB3_37
.LBB3_36:                               # %if.then414
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB3_37:                               # %cond.end471
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $s7, 0
	st.d	$s2, $s6, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s1, $s6, 0
	beqz	$a0, .LBB3_39
# %bb.38:                               # %cond.false480
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB3_39:                               # %cond.end504
	ld.w	$a0, $sp, 108
	addi.d	$s2, $s4, 32
	beqz	$a0, .LBB3_46
# %bb.40:                               # %if.then506
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 11
	move	$a2, $s2
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s0, $a1
	move	$s3, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	beqz	$a1, .LBB3_42
# %bb.41:                               # %if.else522
	st.d	$a1, $s6, 0
	ld.d	$a0, $a1, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a0, $a2, 0
	b	.LBB3_43
.LBB3_42:                               # %if.then520
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB3_43:                               # %cond.end577
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $a4, 0
	st.d	$a1, $s7, 0
	st.d	$s1, $s6, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s3, $s6, 0
	beqz	$s3, .LBB3_46
# %bb.44:                               # %cond.end577
	beqz	$a0, .LBB3_46
# %bb.45:                               # %cond.false586
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB3_46:                               # %if.end612
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $s4, 104
	ld.d	$s2, $a0, 8
	beq	$s2, $a0, .LBB3_76
# %bb.47:                               # %for.cond625.preheader.preheader
	ori	$s5, $zero, 17
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	ori	$fp, $zero, 1
	lu12i.w	$a0, 419430
	ori	$a0, $a0, 1639
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB3_49
	.p2align	4, , 16
.LBB3_48:                               # %for.inc962
                                        #   in Loop: Header=BB3_49 Depth=1
	ld.d	$s2, $s2, 8
	ld.d	$a0, $s4, 104
	beq	$s2, $a0, .LBB3_76
.LBB3_49:                               # %for.cond625.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_50 Depth 2
                                        #     Child Loop BB3_55 Depth 2
                                        #       Child Loop BB3_56 Depth 3
	move	$a1, $s2
	.p2align	4, , 16
.LBB3_50:                               # %for.cond625
                                        #   Parent Loop BB3_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	ld.bu	$a0, $a1, 32
	beqz	$a0, .LBB3_50
# %bb.51:                               # %for.cond625
                                        #   in Loop: Header=BB3_49 Depth=1
	bne	$a0, $s5, .LBB3_48
# %bb.52:                               # %for.cond647.preheader
                                        #   in Loop: Header=BB3_49 Depth=1
	ld.d	$a2, $a1, 8
	beq	$a2, $a1, .LBB3_59
# %bb.53:                               # %for.cond654.preheader.preheader
                                        #   in Loop: Header=BB3_49 Depth=1
	move	$a0, $zero
	b	.LBB3_55
	.p2align	4, , 16
.LBB3_54:                               # %for.inc673
                                        #   in Loop: Header=BB3_55 Depth=2
	ld.d	$a2, $a2, 8
	beq	$a2, $a1, .LBB3_60
.LBB3_55:                               # %for.cond654.preheader
                                        #   Parent Loop BB3_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_56 Depth 3
	move	$a3, $a2
	.p2align	4, , 16
.LBB3_56:                               # %for.cond654
                                        #   Parent Loop BB3_49 Depth=1
                                        #     Parent Loop BB3_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a3, $a3, 16
	ld.bu	$a4, $a3, 32
	beqz	$a4, .LBB3_56
# %bb.57:                               # %for.cond654
                                        #   in Loop: Header=BB3_55 Depth=2
	beq	$a4, $fp, .LBB3_54
# %bb.58:                               # %if.then671
                                        #   in Loop: Header=BB3_55 Depth=2
	addi.w	$a0, $a0, 1
	b	.LBB3_54
.LBB3_59:                               #   in Loop: Header=BB3_49 Depth=1
	move	$a0, $zero
.LBB3_60:                               # %for.end677
                                        #   in Loop: Header=BB3_49 Depth=1
	addi.d	$s3, $a1, 32
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 11
	move	$a2, $s3
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	move	$s3, $a0
	beq	$a1, $s1, .LBB3_70
# %bb.61:                               # %if.then686
                                        #   in Loop: Header=BB3_49 Depth=1
	move	$s5, $s4
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 1
	slli.d	$a1, $a0, 3
	ldx.d	$s4, $s0, $a1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	beqz	$s4, .LBB3_63
# %bb.62:                               # %if.else700
                                        #   in Loop: Header=BB3_49 Depth=1
	st.d	$s4, $s6, 0
	ld.d	$a1, $s4, 0
	alsl.d	$a0, $a0, $s0, 3
	st.d	$a1, $a0, 0
	b	.LBB3_64
.LBB3_63:                               # %if.then698
                                        #   in Loop: Header=BB3_49 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s6, 0
.LBB3_64:                               # %if.end709
                                        #   in Loop: Header=BB3_49 Depth=1
	st.b	$fp, $s4, 32
	st.d	$s4, $s4, 24
	ld.hu	$a0, $s4, 44
	st.d	$s4, $s4, 16
	st.d	$s4, $s4, 8
	st.d	$s4, $s4, 0
	ori	$a1, $zero, 76
	bstrins.d	$a0, $a1, 63, 7
	st.h	$a0, $s4, 44
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 35
	add.d	$a0, $a0, $a1
	slli.d	$a1, $a0, 4
	alsl.d	$a0, $a0, $a1, 2
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	sub.w	$a0, $a2, $a0
	sltu	$a1, $zero, $a0
	st.b	$a1, $s4, 41
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a1, 0
	ori	$a1, $zero, 120
	st.h	$a1, $s4, 46
	sltui	$a0, $a0, 1
	st.b	$a0, $s4, 42
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB3_66
# %bb.65:                               # %if.else768
                                        #   in Loop: Header=BB3_49 Depth=1
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB3_67
.LBB3_66:                               # %if.then766
                                        #   in Loop: Header=BB3_49 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB3_67:                               # %cond.end823
                                        #   in Loop: Header=BB3_49 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $s7, 0
	st.d	$s1, $s6, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s4, $s6, 0
	beqz	$a0, .LBB3_69
# %bb.68:                               # %cond.false832
                                        #   in Loop: Header=BB3_49 Depth=1
	ld.d	$a1, $s4, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s4, 16
	st.d	$s4, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB3_69:                               # %if.end858
                                        #   in Loop: Header=BB3_49 Depth=1
	move	$s4, $s5
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ori	$s5, $zero, 17
.LBB3_70:                               # %if.end858
                                        #   in Loop: Header=BB3_49 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.bu	$a2, $a0, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s0, $a0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB3_72
# %bb.71:                               # %if.else872
                                        #   in Loop: Header=BB3_49 Depth=1
	st.d	$a0, $s6, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s0, 3
	st.d	$a1, $a2, 0
	b	.LBB3_73
.LBB3_72:                               # %if.then870
                                        #   in Loop: Header=BB3_49 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB3_73:                               # %cond.end927
                                        #   in Loop: Header=BB3_49 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$a0, $a4, 0
	st.d	$a0, $s7, 0
	st.d	$s1, $s6, 0
	ld.d	$a1, $s1, 0
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s6, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $a4, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s3, $s6, 0
	beqz	$s3, .LBB3_48
# %bb.74:                               # %cond.end927
                                        #   in Loop: Header=BB3_49 Depth=1
	beqz	$a0, .LBB3_48
# %bb.75:                               # %cond.false936
                                        #   in Loop: Header=BB3_49 Depth=1
	ld.d	$a1, $s3, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s3, 16
	st.d	$s3, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
	b	.LBB3_48
.LBB3_76:                               # %for.end966
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 112
	st.d	$zero, $s4, 104
	pcaddu18i	$ra, %call36(DisposeObject)
	jirl	$ra, $ra, 0
	st.d	$zero, $s4, 112
	pcalau12i	$a0, %got_pc_hi20(AllowCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(AllowCrossDb)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB3_78
# %bb.77:                               # %if.then974
	ld.d	$a0, $s4, 80
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 120
	addi.d	$fp, $sp, 120
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $s4, 36
	ori	$a2, $zero, 46
	stx.h	$a2, $a0, $fp
	bstrpick.d	$a0, $a1, 19, 0
	pcaddu18i	$ra, %call36(StringInt)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(DatabaseFileNum)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a2, $sp, 116
	addi.d	$a3, $sp, 112
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(AppendToFile)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(NewCrossDb)
	ld.d	$a0, $a0, %got_pc_lo12(NewCrossDb)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.w	$a7, $sp, 116
	ld.w	$a1, $sp, 112
	st.d	$zero, $sp, 8
	st.d	$a1, $sp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a5, $a1, %pc_lo12(.L.str.33)
	addi.d	$a3, $sp, 120
	move	$a1, $zero
	move	$a4, $s0
	move	$a6, $fp
	pcaddu18i	$ra, %call36(DbInsert)
	jirl	$ra, $ra, 0
.LBB3_78:                               # %cleanup
	ld.d	$s8, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 696                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 704                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 712                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 720
	ret
.Lfunc_end3:
	.size	CalculateOptimize, .Lfunc_end3-CalculateOptimize
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"FindOptimize: type(x) != CLOSURE!"
	.size	.L.str.1, 34

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"FindOptimize: x has no target!"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"FindOptimize: Down(PAR)!"
	.size	.L.str.3, 25

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"FindOptimize: res == nilobj!"
	.size	.L.str.4, 29

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"unable to evaluate %s parameter, assuming value is No"
	.size	.L.str.5, 54

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"@Optimize"
	.size	.L.str.6, 10

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Yes"
	.size	.L.str.7, 4

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"value of %s operator is neither Yes nor No, assuming No"
	.size	.L.str.9, 56

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"SetOptimize: res == nilobj!"
	.size	.L.str.11, 28

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"SetOptimize: type(res) != CLOSURE!"
	.size	.L.str.12, 35

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"SetOptimize: actual(res) != Opt!"
	.size	.L.str.13, 33

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"SetOptimize: Down(res) == res!"
	.size	.L.str.14, 31

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"SetOptimize: type(y) != PAR!"
	.size	.L.str.15, 29

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"SetOptimize: type(y) != ACAT!"
	.size	.L.str.16, 30

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"SetOptimize: type(y) != ACAT (2)!"
	.size	.L.str.17, 34

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"h"
	.size	.L.str.18, 2

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%d"
	.size	.L.str.19, 3

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"SetOptimize: num <= 0!"
	.size	.L.str.20, 23

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"SetOptimize: type(z)!"
	.size	.L.str.21, 22

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"GazumpOptimize: type(hd) != HEAD!"
	.size	.L.str.23, 34

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"GazumpOptimize: opt_c!"
	.size	.L.str.24, 23

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"FlushGalley: type(g) != GAP_OBJ!"
	.size	.L.str.25, 33

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"1rt"
	.size	.L.str.26, 4

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.space	1
	.size	.L.str.27, 1

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"1c"
	.size	.L.str.28, 3

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"CO!"
	.size	.L.str.29, 4

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"CalculateOptimize: type(last)!"
	.size	.L.str.30, 31

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"KillGalley: no opt_constraints!"
	.size	.L.str.31, 32

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"KillGalleyo!"
	.size	.L.str.32, 13

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"0"
	.size	.L.str.33, 2

	.section	".note.GNU-stack","",@progbits
	.addrsig
