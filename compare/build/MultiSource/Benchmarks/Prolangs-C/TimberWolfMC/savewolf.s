	.file	"savewolf.c"
	.text
	.globl	savewolf                        # -- Begin function savewolf
	.p2align	5
	.type	savewolf,@function
savewolf:                               # @savewolf
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1120
	st.d	$ra, $sp, 1112                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1032                  # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cktName)
	ld.d	$a0, $a0, %got_pc_lo12(cktName)
	ld.d	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(numcells)
	ld.d	$s4, $a1, %got_pc_lo12(numcells)
	ld.w	$a1, $s4, 0
	ori	$a2, $zero, 1
	move	$fp, $a0
	blt	$a1, $a2, .LBB0_8
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$s6, $a0, %got_pc_lo12(cellarray)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s0, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s1, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s2, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.inc13
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a1, $s4, 0
	addi.d	$a0, $s3, 1
	bge	$s3, $a1, .LBB0_8
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	ld.d	$a1, $s6, 0
	move	$s3, $a0
	slli.d	$a0, $a0, 3
	ldx.d	$s7, $a1, $a0
	ld.w	$a3, $s7, 56
	ld.w	$a4, $s7, 12
	ld.w	$a5, $s7, 16
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 132
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_2
# %bb.4:                                # %for.body6.lr.ph
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$s8, $zero
	ori	$s5, $zero, 48
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_6 Depth=2
	addi.w	$a0, $a0, 0
	addi.d	$s5, $s5, 44
	bge	$s8, $a0, .LBB0_2
.LBB0_6:                                # %for.body6
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 144
	ldx.w	$a2, $a0, $s5
	addi.d	$s8, $s8, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s7, 132
	bne	$s8, $a0, .LBB0_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $s7, 96
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 132
	b	.LBB0_5
.LBB0_8:                                # %for.end15
	move	$a0, $fp
	ld.d	$s8, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1112                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1120
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.Lfunc_end0:
	.size	savewolf, .Lfunc_end0-savewolf
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function TW_oldinput
.LCPI1_0:
	.dword	0x3f847ae147ae147b              # double 0.01
	.text
	.globl	TW_oldinput
	.p2align	5
	.type	TW_oldinput,@function
TW_oldinput:                            # @TW_oldinput
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	move	$s2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 92
	addi.d	$a3, $sp, 88
	addi.d	$a4, $sp, 80
	addi.d	$a5, $sp, 76
	move	$a0, $s2
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 4
	bne	$a0, $s6, .LBB1_199
# %bb.1:                                # %while.body.preheader
	pcalau12i	$a0, %got_pc_hi20(cellarray)
	ld.d	$s3, $a0, %got_pc_lo12(cellarray)
	ori	$s8, $zero, 1
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI1_0)
	vldi	$vr3, -928
	ori	$s4, $zero, 44
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %for.end1051
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(loadbins)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a2, $sp, 92
	addi.d	$a3, $sp, 88
	addi.d	$a4, $sp, 80
	addi.d	$a5, $sp, 76
	move	$a0, $s2
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	bne	$a0, $s6, .LBB1_199
.LBB1_3:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_10 Depth 3
                                        #       Child Loop BB1_13 Depth 3
                                        #     Child Loop BB1_23 Depth 2
                                        #     Child Loop BB1_25 Depth 2
                                        #     Child Loop BB1_28 Depth 2
                                        #     Child Loop BB1_56 Depth 2
                                        #     Child Loop BB1_188 Depth 2
                                        #     Child Loop BB1_84 Depth 2
                                        #     Child Loop BB1_96 Depth 2
                                        #       Child Loop BB1_112 Depth 3
                                        #     Child Loop BB1_125 Depth 2
                                        #       Child Loop BB1_150 Depth 3
                                        #       Child Loop BB1_142 Depth 3
                                        #     Child Loop BB1_163 Depth 2
                                        #       Child Loop BB1_168 Depth 3
                                        #     Child Loop BB1_181 Depth 2
                                        #     Child Loop BB1_184 Depth 2
	ld.w	$a0, $sp, 92
	ld.d	$a1, $s3, 0
	slli.d	$a0, $a0, 3
	ldx.d	$s5, $a1, $a0
	ld.w	$a3, $sp, 88
	ld.w	$a0, $sp, 80
	ld.w	$a1, $sp, 76
	ld.w	$a2, $s5, 132
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	st.w	$a3, $s5, 56
	st.w	$a0, $s5, 12
	st.w	$a1, $s5, 16
	blt	$a2, $s8, .LBB1_16
# %bb.4:                                # %for.body.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_5:                                # %for.inc26
                                        #   in Loop: Header=BB1_6 Depth=2
	addi.w	$a1, $a0, 0
	addi.d	$a0, $fp, 1
	vldi	$vr3, -928
	bge	$fp, $a1, .LBB1_16
.LBB1_6:                                # %for.body
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_10 Depth 3
                                        #       Child Loop BB1_13 Depth 3
	move	$fp, $a0
	bne	$a0, $s8, .LBB1_14
# %bb.7:                                # %for.cond6.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	ld.w	$a0, $s5, 128
	blt	$a0, $s8, .LBB1_14
# %bb.8:                                # %for.body8.lr.ph
                                        #   in Loop: Header=BB1_6 Depth=2
	ld.d	$a1, $s5, 136
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB1_12
# %bb.9:                                # %vector.ph
                                        #   in Loop: Header=BB1_6 Depth=2
	bstrpick.d	$a2, $a0, 30, 1
	slli.d	$a3, $a2, 1
	ori	$a2, $a0, 1
	addi.d	$a4, $a1, 40
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_10:                               # %vector.body
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$zero, $a4, -20
	st.w	$zero, $a4, 0
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 40
	bnez	$a5, .LBB1_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB1_6 Depth=2
	beq	$a3, $a0, .LBB1_14
.LBB1_12:                               # %for.body8.preheader
                                        #   in Loop: Header=BB1_6 Depth=2
	addi.d	$a0, $a0, 1
	bstrpick.d	$a3, $a0, 31, 0
	slli.d	$a0, $a2, 4
	alsl.d	$a0, $a2, $a0, 2
	add.d	$a0, $a1, $a0
	sub.d	$a1, $a3, $a2
	.p2align	4, , 16
.LBB1_13:                               # %for.body8
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.w	$zero, $a0, 0
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 20
	bnez	$a1, .LBB1_13
.LBB1_14:                               # %if.end
                                        #   in Loop: Header=BB1_6 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a2, $sp, 84
	move	$a0, $s2
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 84
	ld.d	$a2, $s5, 144
	ld.d	$a3, $s5, 136
	mul.d	$a4, $fp, $s4
	slli.d	$a0, $a1, 4
	alsl.d	$a5, $a1, $a0, 2
	ldx.w	$a6, $a3, $a5
	ld.wu	$a0, $s5, 132
	add.d	$a2, $a2, $a4
	st.w	$a1, $a2, 4
	addi.d	$a1, $a6, 1
	stx.w	$a1, $a3, $a5
	bne	$fp, $a0, .LBB1_5
# %bb.15:                               # %if.then22
                                        #   in Loop: Header=BB1_6 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	addi.d	$a2, $sp, 64
	move	$a0, $s2
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $sp, 64
	ld.w	$a0, $s5, 132
	fst.d	$fa0, $s5, 96
	b	.LBB1_5
	.p2align	4, , 16
.LBB1_16:                               # %for.end28
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 76
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	bne	$a0, $s8, .LBB1_179
# %bb.17:                               # %land.lhs.true
                                        #   in Loop: Header=BB1_3 Depth=1
	fld.d	$fa0, $s5, 120
	fld.d	$fa1, $s5, 112
	fadd.d	$fa0, $fa0, $fs0
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_179
# %bb.18:                               # %if.then31
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 3
	blt	$a0, $a4, .LBB1_20
# %bb.19:                               # %if.then40
                                        #   in Loop: Header=BB1_3 Depth=1
	fld.d	$fa0, $sp, 64
	fld.d	$fa1, $s5, 104
	b	.LBB1_21
.LBB1_20:                               # %if.else
                                        #   in Loop: Header=BB1_3 Depth=1
	fld.d	$fa0, $s5, 104
	fld.d	$fa1, $sp, 64
.LBB1_21:                               # %for.body74.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	fdiv.d	$fa1, $fa0, $fa1
	addi.d	$a1, $s5, 152
	slli.d	$a0, $a4, 3
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ldx.d	$s7, $a1, $a0
	ld.d	$s4, $s7, 88
	ld.w	$s0, $s7, 72
	ld.w	$s2, $s7, 76
	ld.w	$s1, $s7, 80
	ld.w	$s3, $s7, 84
	ld.d	$fp, $s7, 96
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB1_198
.LBB1_22:                               # %for.body74.preheader.split
                                        #   in Loop: Header=BB1_3 Depth=1
	sub.d	$a0, $s3, $s1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a0, $fa2
	movgr2fr.w	$fa2, $a0
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	movcf2gr	$a1, $fcc0
	add.d	$a0, $a1, $a0
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	sub.d	$a1, $s2, $s0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a1, $fa2
	movgr2fr.w	$fa2, $a1
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	sub.d	$a0, $zero, $a0
	movcf2gr	$a2, $fcc0
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	srai.d	$a1, $a1, 1
	sub.d	$a1, $zero, $a1
	move	$a2, $s7
	.p2align	4, , 16
.LBB1_23:                               # %for.body74
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 72
	sub.d	$a3, $a3, $s0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	ld.w	$a4, $a2, 76
	add.d	$a3, $a1, $a3
	movcf2gr	$a5, $fcc0
	add.d	$a3, $a3, $a5
	st.w	$a3, $a2, 56
	sub.d	$a3, $a4, $s0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	ld.w	$a4, $a2, 80
	add.d	$a3, $a1, $a3
	movcf2gr	$a5, $fcc0
	add.d	$a3, $a3, $a5
	st.w	$a3, $a2, 60
	sub.d	$a3, $a4, $s1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	ld.w	$a4, $a2, 84
	add.d	$a3, $a0, $a3
	movcf2gr	$a5, $fcc0
	add.d	$a3, $a3, $a5
	st.w	$a3, $a2, 64
	sub.d	$a3, $a4, $s1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	add.d	$a3, $a0, $a3
	movcf2gr	$a4, $fcc0
	add.d	$a3, $a3, $a4
	st.w	$a3, $a2, 68
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB1_23
# %bb.24:                               # %for.cond145.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a2, $s4
	beqz	$s4, .LBB1_26
	.p2align	4, , 16
.LBB1_25:                               # %for.body148
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a2, 16
	sub.d	$a3, $a3, $s0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	ld.w	$a4, $a2, 20
	add.d	$a3, $a1, $a3
	movcf2gr	$a5, $fcc0
	add.d	$a3, $a3, $a5
	st.w	$a3, $a2, 8
	sub.d	$a3, $a4, $s1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a3, $fa2
	movgr2fr.w	$fa2, $a3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	add.d	$a3, $a0, $a3
	movcf2gr	$a4, $fcc0
	add.d	$a3, $a3, $a4
	st.w	$a3, $a2, 12
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB1_25
.LBB1_26:                               # %for.cond185.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a2, $s5, 128
	st.w	$s8, $sp, 84
	blt	$a2, $s8, .LBB1_29
# %bb.27:                               # %for.body189.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB1_28:                               # %for.body189
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a4, $a3, $fp, 4
	ld.w	$a4, $a4, 8
	slli.d	$a3, $a3, 4
	sub.d	$a4, $a4, $s0
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fa1, $fa0
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a4, $fa2
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	add.d	$a4, $a1, $a4
	movcf2gr	$a5, $fcc0
	add.d	$a4, $a4, $a5
	stx.w	$a4, $fp, $a3
	ld.w	$a3, $sp, 84
	alsl.d	$a3, $a3, $fp, 4
	ld.w	$a4, $a3, 12
	sub.d	$a4, $a4, $s1
	movgr2fr.w	$fa1, $a4
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa1, $fa0, $fa1
	ftintrz.w.d	$fa2, $fa1
	movfr2gr.s	$a4, $fa2
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa1, $fa2
	fcmp.cle.d	$fcc0, $fa3, $fa1
	add.d	$a4, $a0, $a4
	movcf2gr	$a5, $fcc0
	add.d	$a4, $a4, $a5
	st.w	$a4, $a3, 4
	ld.w	$a4, $sp, 84
	addi.w	$a3, $a4, 1
	st.w	$a3, $sp, 84
	blt	$a4, $a2, .LBB1_28
.LBB1_29:                               # %for.end236
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_94
# %bb.30:                               # %if.then239
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 6
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB1_36
# %bb.31:                               # %if.then239
                                        #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI1_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI1_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB1_32:                               # %sw.bb
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	b	.LBB1_40
.LBB1_33:                               # %sw.bb249
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 5
	b	.LBB1_40
.LBB1_34:                               # %sw.bb247
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 3
	b	.LBB1_40
.LBB1_35:                               # %sw.bb248
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 4
	b	.LBB1_40
.LBB1_36:                               # %if.then239.sw.epilog_crit_edge
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $sp, 88
	b	.LBB1_41
.LBB1_37:                               # %sw.bb246
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 2
	b	.LBB1_40
.LBB1_38:                               # %sw.bb250
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 7
	b	.LBB1_40
.LBB1_39:                               # %sw.bb251
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 6
.LBB1_40:                               # %sw.epilog
                                        #   in Loop: Header=BB1_3 Depth=1
	st.w	$a0, $sp, 88
.LBB1_41:                               # %sw.epilog
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s6, $s7
	vld	$vr0, $s7, 56
	vpickve2gr.w	$a1, $vr0, 2
	vpickve2gr.w	$a2, $vr0, 3
	sub.d	$s4, $a2, $a1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s8, $a1, 0
	vpickve2gr.w	$a1, $vr0, 0
	vpickve2gr.w	$a2, $vr0, 1
	sub.d	$s0, $a2, $a1
	addi.d	$s3, $s8, 56
	addi.d	$s2, $s8, 60
	addi.d	$s1, $s8, 64
	addi.d	$fp, $s8, 68
	vst	$vr0, $s8, 56
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	move	$a3, $fp
	pcaddu18i	$ra, %call36(rect)
	jirl	$ra, $ra, 0
	andi	$s7, $s4, 1
	andi	$fp, $s0, 1
	beqz	$s7, .LBB1_43
# %bb.42:                               # %land.lhs.true268
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_45
.LBB1_43:                               # %lor.lhs.false273
                                        #   in Loop: Header=BB1_3 Depth=1
	beqz	$fp, .LBB1_46
# %bb.44:                               # %land.lhs.true277
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_46
.LBB1_45:                               # %if.then283
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, 0
.LBB1_46:                               # %if.end288
                                        #   in Loop: Header=BB1_3 Depth=1
	beqz	$s7, .LBB1_48
# %bb.47:                               # %land.lhs.true292
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_51
.LBB1_48:                               # %lor.lhs.false298
                                        #   in Loop: Header=BB1_3 Depth=1
	beqz	$fp, .LBB1_52
# %bb.49:                               # %land.lhs.true302
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_51
# %bb.50:                               # %land.lhs.true302
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB1_52
.LBB1_51:                               # %if.then308
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s1, 0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $a2, 0
.LBB1_52:                               # %if.end313
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 60
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_66
# %bb.53:                               # %for.body317.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$s4, $zero
	b	.LBB1_56
	.p2align	4, , 16
.LBB1_54:                               # %if.then376
                                        #   in Loop: Header=BB1_56 Depth=2
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 0
.LBB1_55:                               # %for.inc382
                                        #   in Loop: Header=BB1_56 Depth=2
	ld.w	$a0, $s5, 60
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB1_66
.LBB1_56:                               # %for.body317
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s8, $s8, 0
	ld.d	$a0, $s6, 0
	addi.d	$s3, $s8, 56
	addi.d	$s2, $s8, 60
	move	$s6, $a0
	vld	$vr0, $a0, 56
	ld.w	$a0, $sp, 88
	addi.d	$s1, $s8, 64
	addi.d	$s0, $s8, 68
	vst	$vr0, $s8, 56
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(rect)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB1_58
# %bb.57:                               # %land.lhs.true335
                                        #   in Loop: Header=BB1_56 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_60
.LBB1_58:                               # %lor.lhs.false341
                                        #   in Loop: Header=BB1_56 Depth=2
	beqz	$fp, .LBB1_61
# %bb.59:                               # %land.lhs.true345
                                        #   in Loop: Header=BB1_56 Depth=2
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_61
.LBB1_60:                               # %if.then351
                                        #   in Loop: Header=BB1_56 Depth=2
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, 0
.LBB1_61:                               # %if.end356
                                        #   in Loop: Header=BB1_56 Depth=2
	beqz	$s7, .LBB1_63
# %bb.62:                               # %land.lhs.true360
                                        #   in Loop: Header=BB1_56 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_54
.LBB1_63:                               # %lor.lhs.false366
                                        #   in Loop: Header=BB1_56 Depth=2
	beqz	$fp, .LBB1_55
# %bb.64:                               # %land.lhs.true370
                                        #   in Loop: Header=BB1_56 Depth=2
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_54
# %bb.65:                               # %land.lhs.true370
                                        #   in Loop: Header=BB1_56 Depth=2
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_54
	b	.LBB1_55
.LBB1_66:                               # %for.end384
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 68
	ori	$s4, $zero, 1
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	move	$s8, $fp
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_79
# %bb.67:                               # %if.then387
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$s2, $a0, 88
	ld.d	$a1, $s6, 8
	ld.w	$a0, $sp, 88
	addi.d	$s1, $s2, 8
	st.d	$a1, $s2, 8
	addi.d	$s0, $s2, 12
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB1_69
# %bb.68:                               # %land.lhs.true400
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_71
.LBB1_69:                               # %lor.lhs.false406
                                        #   in Loop: Header=BB1_3 Depth=1
	beqz	$s8, .LBB1_72
# %bb.70:                               # %land.lhs.true410
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_72
.LBB1_71:                               # %if.then416
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
.LBB1_72:                               # %if.end419
                                        #   in Loop: Header=BB1_3 Depth=1
	beqz	$s7, .LBB1_74
# %bb.73:                               # %land.lhs.true423
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB1_77
.LBB1_74:                               # %lor.lhs.false429
                                        #   in Loop: Header=BB1_3 Depth=1
	beqz	$s8, .LBB1_78
# %bb.75:                               # %land.lhs.true433
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_77
# %bb.76:                               # %land.lhs.true433
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB1_78
.LBB1_77:                               # %if.then439
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 0
.LBB1_78:                               # %if.end442
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 68
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB1_185
.LBB1_79:                               # %if.end505
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 128
	beqz	$a0, .LBB1_94
# %bb.80:                               # %if.then509
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$s0, $a1, 96
	st.w	$s4, $sp, 84
	blt	$a0, $s4, .LBB1_94
# %bb.81:                               # %for.body517.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	b	.LBB1_84
	.p2align	4, , 16
.LBB1_82:                               # %if.then580
                                        #   in Loop: Header=BB1_84 Depth=2
	ld.w	$a0, $sp, 84
	alsl.d	$a0, $a0, $s0, 4
	ld.w	$a1, $a0, 4
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 4
.LBB1_83:                               # %for.inc586
                                        #   in Loop: Header=BB1_84 Depth=2
	ld.w	$a1, $sp, 84
	ld.w	$a2, $s5, 128
	addi.w	$a0, $a1, 1
	st.w	$a0, $sp, 84
	bge	$a1, $a2, .LBB1_94
.LBB1_84:                               # %for.body517
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a0, $a0, 4
	ldx.w	$a1, $fp, $a0
	stx.w	$a1, $s0, $a0
	ld.w	$a0, $sp, 84
	alsl.d	$a1, $a0, $fp, 4
	ld.w	$a1, $a1, 4
	alsl.d	$a0, $a0, $s0, 4
	st.w	$a1, $a0, 4
	ld.w	$a0, $sp, 88
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	alsl.d	$a0, $a0, $s0, 4
	addi.d	$a1, $a0, 4
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB1_86
# %bb.85:                               # %land.lhs.true539
                                        #   in Loop: Header=BB1_84 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_88
.LBB1_86:                               # %lor.lhs.false545
                                        #   in Loop: Header=BB1_84 Depth=2
	beqz	$s8, .LBB1_89
# %bb.87:                               # %land.lhs.true549
                                        #   in Loop: Header=BB1_84 Depth=2
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_89
.LBB1_88:                               # %if.then555
                                        #   in Loop: Header=BB1_84 Depth=2
	ld.w	$a0, $sp, 84
	slli.d	$a0, $a0, 4
	ldx.w	$a1, $s0, $a0
	addi.d	$a1, $a1, 1
	stx.w	$a1, $s0, $a0
.LBB1_89:                               # %if.end560
                                        #   in Loop: Header=BB1_84 Depth=2
	beqz	$s7, .LBB1_91
# %bb.90:                               # %land.lhs.true564
                                        #   in Loop: Header=BB1_84 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB1_82
.LBB1_91:                               # %lor.lhs.false570
                                        #   in Loop: Header=BB1_84 Depth=2
	beqz	$s8, .LBB1_83
# %bb.92:                               # %land.lhs.true574
                                        #   in Loop: Header=BB1_84 Depth=2
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_82
# %bb.93:                               # %land.lhs.true574
                                        #   in Loop: Header=BB1_84 Depth=2
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_82
	b	.LBB1_83
	.p2align	4, , 16
.LBB1_94:                               # %if.end590
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s5, 152
	ld.w	$a1, $a0, 68
	ld.w	$a2, $a0, 64
	ld.w	$a3, $a0, 60
	ld.w	$a0, $a0, 56
	sub.d	$a1, $a1, $a2
	sub.d	$a2, $a3, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 88
	andi	$fp, $a1, 1
	andi	$s7, $a2, 1
	b	.LBB1_96
	.p2align	4, , 16
.LBB1_95:                               # %for.inc752
                                        #   in Loop: Header=BB1_96 Depth=2
	ld.w	$a1, $sp, 88
	addi.w	$a0, $a1, 1
	st.w	$a0, $sp, 88
	ori	$a2, $zero, 7
	bge	$a1, $a2, .LBB1_122
.LBB1_96:                               # %for.body608
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_112 Depth 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB1_95
# %bb.97:                               # %if.end612
                                        #   in Loop: Header=BB1_96 Depth=2
	slli.d	$a1, $a0, 3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$s8, $a2, $a1
	ld.d	$s6, $a2, 0
	addi.d	$s2, $s8, 56
	vld	$vr0, $s6, 56
	addi.d	$s3, $s8, 60
	addi.d	$s1, $s8, 64
	addi.d	$s0, $s8, 68
	vst	$vr0, $s8, 56
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(rect)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_99
# %bb.98:                               # %land.lhs.true633
                                        #   in Loop: Header=BB1_96 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_101
.LBB1_99:                               # %lor.lhs.false639
                                        #   in Loop: Header=BB1_96 Depth=2
	beqz	$s7, .LBB1_102
# %bb.100:                              # %land.lhs.true643
                                        #   in Loop: Header=BB1_96 Depth=2
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_102
.LBB1_101:                              # %if.then649
                                        #   in Loop: Header=BB1_96 Depth=2
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s3, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s3, 0
.LBB1_102:                              # %if.end654
                                        #   in Loop: Header=BB1_96 Depth=2
	beqz	$fp, .LBB1_104
# %bb.103:                              # %land.lhs.true658
                                        #   in Loop: Header=BB1_96 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_107
.LBB1_104:                              # %lor.lhs.false664
                                        #   in Loop: Header=BB1_96 Depth=2
	beqz	$s7, .LBB1_108
# %bb.105:                              # %land.lhs.true668
                                        #   in Loop: Header=BB1_96 Depth=2
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_107
# %bb.106:                              # %land.lhs.true668
                                        #   in Loop: Header=BB1_96 Depth=2
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB1_108
.LBB1_107:                              # %if.then674
                                        #   in Loop: Header=BB1_96 Depth=2
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 0
.LBB1_108:                              # %if.end679
                                        #   in Loop: Header=BB1_96 Depth=2
	ld.w	$a0, $s5, 60
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_95
# %bb.109:                              # %for.body684.preheader
                                        #   in Loop: Header=BB1_96 Depth=2
	move	$s4, $zero
	b	.LBB1_112
	.p2align	4, , 16
.LBB1_110:                              # %if.then743
                                        #   in Loop: Header=BB1_112 Depth=3
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s0, 0
.LBB1_111:                              # %for.inc749
                                        #   in Loop: Header=BB1_112 Depth=3
	ld.w	$a0, $s5, 60
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB1_95
.LBB1_112:                              # %for.body684
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_96 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $s8, 0
	ld.d	$s6, $s6, 0
	addi.d	$s3, $s8, 56
	addi.d	$s2, $s8, 60
	vld	$vr0, $s6, 56
	ld.w	$a0, $sp, 88
	addi.d	$s1, $s8, 64
	addi.d	$s0, $s8, 68
	vst	$vr0, $s8, 56
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $s0
	pcaddu18i	$ra, %call36(rect)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_114
# %bb.113:                              # %land.lhs.true702
                                        #   in Loop: Header=BB1_112 Depth=3
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_116
.LBB1_114:                              # %lor.lhs.false708
                                        #   in Loop: Header=BB1_112 Depth=3
	beqz	$s7, .LBB1_117
# %bb.115:                              # %land.lhs.true712
                                        #   in Loop: Header=BB1_112 Depth=3
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_117
.LBB1_116:                              # %if.then718
                                        #   in Loop: Header=BB1_112 Depth=3
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s2, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 0
	addi.d	$a0, $a1, 1
	st.w	$a0, $s2, 0
.LBB1_117:                              # %if.end723
                                        #   in Loop: Header=BB1_112 Depth=3
	beqz	$fp, .LBB1_119
# %bb.118:                              # %land.lhs.true727
                                        #   in Loop: Header=BB1_112 Depth=3
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_110
.LBB1_119:                              # %lor.lhs.false733
                                        #   in Loop: Header=BB1_112 Depth=3
	beqz	$s7, .LBB1_111
# %bb.120:                              # %land.lhs.true737
                                        #   in Loop: Header=BB1_112 Depth=3
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_110
# %bb.121:                              # %land.lhs.true737
                                        #   in Loop: Header=BB1_112 Depth=3
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_110
	b	.LBB1_111
	.p2align	4, , 16
.LBB1_122:                              # %for.end754
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 68
	ori	$s6, $zero, 4
	ori	$s8, $zero, 1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_159
# %bb.123:                              # %for.cond759.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 88
	b	.LBB1_125
	.p2align	4, , 16
.LBB1_124:                              # %for.inc888
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a1, $sp, 88
	addi.w	$a0, $a1, 1
	st.w	$a0, $sp, 88
	ori	$a2, $zero, 7
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	bge	$a1, $a2, .LBB1_159
.LBB1_125:                              # %for.body762
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_150 Depth 3
                                        #       Child Loop BB1_142 Depth 3
	beq	$a0, $a4, .LBB1_124
# %bb.126:                              # %if.end766
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 0
	slli.d	$a2, $a0, 3
	ldx.d	$a2, $a3, $a2
	ld.d	$s2, $a1, 88
	ld.d	$s3, $a2, 88
	ld.d	$a1, $s2, 8
	addi.d	$s1, $s3, 8
	st.d	$a1, $s3, 8
	addi.d	$s0, $s3, 12
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_128
# %bb.127:                              # %land.lhs.true783
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s6, .LBB1_130
.LBB1_128:                              # %lor.lhs.false789
                                        #   in Loop: Header=BB1_125 Depth=2
	beqz	$s7, .LBB1_131
# %bb.129:                              # %land.lhs.true793
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_131
.LBB1_130:                              # %if.then799
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
.LBB1_131:                              # %if.end802
                                        #   in Loop: Header=BB1_125 Depth=2
	beqz	$fp, .LBB1_133
# %bb.132:                              # %land.lhs.true806
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s8, .LBB1_136
.LBB1_133:                              # %lor.lhs.false812
                                        #   in Loop: Header=BB1_125 Depth=2
	beqz	$s7, .LBB1_137
# %bb.134:                              # %land.lhs.true816
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_136
# %bb.135:                              # %land.lhs.true816
                                        #   in Loop: Header=BB1_125 Depth=2
	bne	$a0, $s6, .LBB1_137
.LBB1_136:                              # %if.then822
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 0
.LBB1_137:                              # %if.end825
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a0, $s5, 68
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB1_124
# %bb.138:                              # %for.body830.lr.ph
                                        #   in Loop: Header=BB1_125 Depth=2
	bnez	$fp, .LBB1_147
# %bb.139:                              # %for.body830.us.preheader
                                        #   in Loop: Header=BB1_125 Depth=2
	ori	$s4, $zero, 1
	b	.LBB1_142
	.p2align	4, , 16
.LBB1_140:                              # %if.then881.us
                                        #   in Loop: Header=BB1_142 Depth=3
	ld.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 0
.LBB1_141:                              # %for.inc885.us
                                        #   in Loop: Header=BB1_142 Depth=3
	ld.w	$a0, $s5, 68
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB1_124
.LBB1_142:                              # %for.body830.us
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s2, 0
	ld.d	$s3, $s3, 0
	ld.d	$a1, $s2, 8
	ld.w	$a0, $sp, 88
	addi.d	$s1, $s3, 8
	st.d	$a1, $s3, 8
	addi.d	$s0, $s3, 12
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB1_141
# %bb.143:                              # %land.lhs.true852.us
                                        #   in Loop: Header=BB1_142 Depth=3
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a1, $a0, 31, 1
	slli.w	$a1, $a1, 1
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB1_145
# %bb.144:                              # %if.then858.us
                                        #   in Loop: Header=BB1_142 Depth=3
	ld.w	$a1, $s1, 0
	ld.w	$a0, $sp, 88
	addi.d	$a1, $a1, 1
	st.w	$a1, $s1, 0
.LBB1_145:                              # %land.lhs.true875.us
                                        #   in Loop: Header=BB1_142 Depth=3
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_140
# %bb.146:                              # %land.lhs.true875.us
                                        #   in Loop: Header=BB1_142 Depth=3
	beq	$a0, $s6, .LBB1_140
	b	.LBB1_141
.LBB1_147:                              # %for.body830.preheader
                                        #   in Loop: Header=BB1_125 Depth=2
	ld.w	$a0, $sp, 88
	ori	$s4, $zero, 1
	b	.LBB1_150
	.p2align	4, , 16
.LBB1_148:                              # %if.then881
                                        #   in Loop: Header=BB1_150 Depth=3
	ld.w	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s0, 0
.LBB1_149:                              # %for.inc885
                                        #   in Loop: Header=BB1_150 Depth=3
	ld.w	$a1, $s5, 68
	addi.w	$s4, $s4, 1
	bge	$s4, $a1, .LBB1_124
.LBB1_150:                              # %for.body830
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s2, $s2, 0
	ld.d	$s3, $s3, 0
	ld.d	$a1, $s2, 8
	addi.d	$s1, $s3, 8
	st.d	$a1, $s3, 8
	addi.d	$s0, $s3, 12
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 88
	move	$a1, $a0
	bstrins.d	$a1, $zero, 1, 1
	bne	$a1, $s6, .LBB1_152
# %bb.151:                              # %lor.lhs.false871
                                        #   in Loop: Header=BB1_150 Depth=3
	ld.w	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s1, 0
	beqz	$s7, .LBB1_149
	b	.LBB1_157
	.p2align	4, , 16
.LBB1_152:                              # %lor.lhs.false848
                                        #   in Loop: Header=BB1_150 Depth=3
	bnez	$s7, .LBB1_154
# %bb.153:                              # %if.end861.thread425
                                        #   in Loop: Header=BB1_150 Depth=3
	beq	$a1, $s8, .LBB1_148
	b	.LBB1_149
	.p2align	4, , 16
.LBB1_154:                              # %land.lhs.true852
                                        #   in Loop: Header=BB1_150 Depth=3
	move	$a2, $a0
	bstrins.d	$a2, $zero, 0, 0
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB1_156
# %bb.155:                              # %if.end861
                                        #   in Loop: Header=BB1_150 Depth=3
	ld.w	$a2, $s1, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $s1, 0
.LBB1_156:                              # %if.end861.thread
                                        #   in Loop: Header=BB1_150 Depth=3
	beq	$a1, $s8, .LBB1_148
.LBB1_157:                              # %land.lhs.true875
                                        #   in Loop: Header=BB1_150 Depth=3
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_148
# %bb.158:                              # %land.lhs.true875
                                        #   in Loop: Header=BB1_150 Depth=3
	beq	$a0, $s6, .LBB1_148
	b	.LBB1_149
	.p2align	4, , 16
.LBB1_159:                              # %if.end891
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 128
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ori	$s4, $zero, 44
	beqz	$a0, .LBB1_179
# %bb.160:                              # %if.then895
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ld.d	$s0, $a1, 96
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 88
	b	.LBB1_163
	.p2align	4, , 16
.LBB1_161:                              #   in Loop: Header=BB1_163 Depth=2
	move	$a1, $a4
.LBB1_162:                              # %for.inc987
                                        #   in Loop: Header=BB1_163 Depth=2
	move	$a2, $a1
	addi.w	$a1, $a1, 1
	st.w	$a1, $sp, 88
	ori	$a3, $zero, 7
	bge	$a2, $a3, .LBB1_179
.LBB1_163:                              # %for.body902
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_168 Depth 3
	beq	$a1, $a4, .LBB1_161
# %bb.164:                              # %if.end906
                                        #   in Loop: Header=BB1_163 Depth=2
	slli.d	$a2, $a1, 3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.d	$a2, $a3, $a2
	ld.d	$s1, $a2, 96
	st.w	$s8, $sp, 84
	blt	$a0, $s8, .LBB1_162
# %bb.165:                              # %for.body915.preheader
                                        #   in Loop: Header=BB1_163 Depth=2
	ori	$a1, $zero, 1
	b	.LBB1_168
	.p2align	4, , 16
.LBB1_166:                              # %if.then978
                                        #   in Loop: Header=BB1_168 Depth=3
	ld.w	$a0, $sp, 84
	alsl.d	$a0, $a0, $s1, 4
	ld.w	$a1, $a0, 4
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 4
.LBB1_167:                              # %for.inc984
                                        #   in Loop: Header=BB1_168 Depth=3
	ld.w	$a2, $sp, 84
	ld.w	$a0, $s5, 128
	addi.w	$a1, $a2, 1
	st.w	$a1, $sp, 84
	bge	$a2, $a0, .LBB1_178
.LBB1_168:                              # %for.body915
                                        #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a0, $a1, 4
	ldx.w	$a1, $s0, $a0
	stx.w	$a1, $s1, $a0
	ld.w	$a0, $sp, 84
	alsl.d	$a1, $a0, $s0, 4
	ld.w	$a1, $a1, 4
	alsl.d	$a0, $a0, $s1, 4
	st.w	$a1, $a0, 4
	ld.w	$a0, $sp, 88
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 84
	alsl.d	$a0, $a0, $s1, 4
	addi.d	$a1, $a0, 4
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB1_170
# %bb.169:                              # %land.lhs.true937
                                        #   in Loop: Header=BB1_168 Depth=3
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s6, .LBB1_172
.LBB1_170:                              # %lor.lhs.false943
                                        #   in Loop: Header=BB1_168 Depth=3
	beqz	$s7, .LBB1_173
# %bb.171:                              # %land.lhs.true947
                                        #   in Loop: Header=BB1_168 Depth=3
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_173
.LBB1_172:                              # %if.then953
                                        #   in Loop: Header=BB1_168 Depth=3
	ld.w	$a0, $sp, 84
	slli.d	$a0, $a0, 4
	ldx.w	$a1, $s1, $a0
	addi.d	$a1, $a1, 1
	stx.w	$a1, $s1, $a0
.LBB1_173:                              # %if.end958
                                        #   in Loop: Header=BB1_168 Depth=3
	beqz	$fp, .LBB1_175
# %bb.174:                              # %land.lhs.true962
                                        #   in Loop: Header=BB1_168 Depth=3
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s8, .LBB1_166
.LBB1_175:                              # %lor.lhs.false968
                                        #   in Loop: Header=BB1_168 Depth=3
	beqz	$s7, .LBB1_167
# %bb.176:                              # %land.lhs.true972
                                        #   in Loop: Header=BB1_168 Depth=3
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_166
# %bb.177:                              # %land.lhs.true972
                                        #   in Loop: Header=BB1_168 Depth=3
	beq	$a0, $s6, .LBB1_166
	b	.LBB1_167
	.p2align	4, , 16
.LBB1_178:                              # %for.inc987.loopexit
                                        #   in Loop: Header=BB1_163 Depth=2
	ld.w	$a1, $sp, 88
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB1_162
	.p2align	4, , 16
.LBB1_179:                              # %if.end991
                                        #   in Loop: Header=BB1_3 Depth=1
	alsl.d	$a0, $a4, $s5, 3
	ld.d	$a1, $a0, 152
	ld.d	$a0, $a1, 88
	beqz	$a0, .LBB1_182
# %bb.180:                              # %for.body999.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	pcalau12i	$a2, %got_pc_hi20(termarray)
	ld.d	$a2, $a2, %got_pc_lo12(termarray)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $sp, 80
	ld.w	$a4, $sp, 76
	.p2align	4, , 16
.LBB1_181:                              # %for.body999
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a5, $a0, 24
	slli.d	$a5, $a5, 3
	ldx.d	$a5, $a2, $a5
	ld.w	$a6, $a0, 8
	ld.d	$a5, $a5, 8
	ld.w	$a7, $a0, 12
	ld.d	$a0, $a0, 0
	add.d	$a6, $a3, $a6
	st.w	$a6, $a5, 8
	add.d	$a6, $a4, $a7
	st.w	$a6, $a5, 12
	bnez	$a0, .LBB1_181
.LBB1_182:                              # %for.cond1014.preheader
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $s5, 132
	blt	$a0, $s8, .LBB1_2
# %bb.183:                              # %for.body1018.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	pcalau12i	$a2, %got_pc_hi20(termarray)
	ld.d	$a2, $a2, %got_pc_lo12(termarray)
	ld.d	$a6, $s5, 144
	ld.d	$a1, $a1, 96
	ld.d	$a2, $a2, 0
	ld.w	$a3, $sp, 80
	ld.w	$a4, $sp, 76
	move	$a5, $zero
	addi.d	$a6, $a6, 48
	.p2align	4, , 16
.LBB1_184:                              # %for.body1018
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a6, 0
	ld.w	$t0, $a6, -4
	st.w	$a7, $sp, 84
	slli.d	$t0, $t0, 3
	ldx.d	$t0, $a2, $t0
	alsl.d	$t1, $a7, $a1, 4
	slli.d	$a7, $a7, 4
	ldx.w	$a7, $a1, $a7
	ld.d	$t0, $t0, 8
	ld.w	$t1, $t1, 4
	add.d	$a7, $a3, $a7
	st.w	$a7, $t0, 8
	add.d	$a7, $a4, $t1
	st.w	$a7, $t0, 12
	addi.d	$a5, $a5, 1
	addi.d	$a6, $a6, 44
	bltu	$a5, $a0, .LBB1_184
	b	.LBB1_2
.LBB1_185:                              # %for.body447.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	ori	$s3, $zero, 1
	b	.LBB1_188
	.p2align	4, , 16
.LBB1_186:                              # %if.then498
                                        #   in Loop: Header=BB1_188 Depth=2
	ld.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 0
.LBB1_187:                              # %for.inc502
                                        #   in Loop: Header=BB1_188 Depth=2
	ld.w	$a0, $s5, 68
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB1_79
.LBB1_188:                              # %for.body447
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 0
	ld.d	$s2, $s2, 0
	ld.d	$a1, $s6, 8
	ld.w	$a0, $sp, 88
	addi.d	$s1, $s2, 8
	st.d	$a1, $s2, 8
	addi.d	$s0, $s2, 12
	pcaddu18i	$ra, %call36(move)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(point)
	jirl	$ra, $ra, 0
	beqz	$s7, .LBB1_190
# %bb.189:                              # %land.lhs.true459
                                        #   in Loop: Header=BB1_188 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_192
.LBB1_190:                              # %lor.lhs.false465
                                        #   in Loop: Header=BB1_188 Depth=2
	beqz	$s8, .LBB1_193
# %bb.191:                              # %land.lhs.true469
                                        #   in Loop: Header=BB1_188 Depth=2
	ld.wu	$a0, $sp, 88
	bstrpick.d	$a0, $a0, 31, 1
	slli.w	$a0, $a0, 1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_193
.LBB1_192:                              # %if.then475
                                        #   in Loop: Header=BB1_188 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
.LBB1_193:                              # %if.end478
                                        #   in Loop: Header=BB1_188 Depth=2
	beqz	$s7, .LBB1_195
# %bb.194:                              # %land.lhs.true482
                                        #   in Loop: Header=BB1_188 Depth=2
	ld.wu	$a0, $sp, 88
	addi.w	$a1, $zero, -3
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB1_186
.LBB1_195:                              # %lor.lhs.false488
                                        #   in Loop: Header=BB1_188 Depth=2
	beqz	$s8, .LBB1_187
# %bb.196:                              # %land.lhs.true492
                                        #   in Loop: Header=BB1_188 Depth=2
	ld.w	$a0, $sp, 88
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB1_186
# %bb.197:                              # %land.lhs.true492
                                        #   in Loop: Header=BB1_188 Depth=2
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB1_186
	b	.LBB1_187
.LBB1_198:                              # %call.sqrt
                                        #   in Loop: Header=BB1_3 Depth=1
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr3, -928
	b	.LBB1_22
.LBB1_199:                              # %while.end
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	TW_oldinput, .Lfunc_end1-TW_oldinput
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_32-.LJTI1_0
	.word	.LBB1_37-.LJTI1_0
	.word	.LBB1_34-.LJTI1_0
	.word	.LBB1_35-.LJTI1_0
	.word	.LBB1_33-.LJTI1_0
	.word	.LBB1_38-.LJTI1_0
	.word	.LBB1_39-.LJTI1_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s.sav"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d %d %d %d\n"
	.size	.L.str.2, 13

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	" %d "
	.size	.L.str.3, 5

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" %lf\n"
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" %d %d %d %d "
	.size	.L.str.5, 14

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%lf"
	.size	.L.str.6, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
