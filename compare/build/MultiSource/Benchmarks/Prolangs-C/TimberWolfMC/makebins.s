	.file	"makebins.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function makebins
.LCPI0_0:
	.dword	0x4059000000000000              # double 100
	.text
	.globl	makebins
	.p2align	5
	.type	makebins,@function
makebins:                               # @makebins
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
	fst.d	$fs0, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 40                   # 8-byte Folded Spill
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fs1, $fa0
	ori	$a0, $zero, 1
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	fld.d	$fs4, $a1, %pc_lo12(.LCPI0_0)
	fsqrt.d	$fs5, $fs1
	fcmp.cor.d	$fcc1, $fs5, $fs5
	movgr2fr.d	$fs6, $zero
	ori	$fp, $zero, 100
	ori	$s0, $zero, 19
	movcf2gr	$a1, $fcc1
	st.d	$a1, $sp, 32
.LBB0_1:                                # %for.cond2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	move	$s2, $zero
	move	$s1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs7, $fa0
	.p2align	4, , 16
.LBB0_2:                                # %for.body5
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a0, $s2, 31, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fa0, $fa0, $fs4
	fadd.d	$fs0, $fa0, $fs7
	vldi	$vr1, -1008
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fs2, $fa0
	fmov.d	$fs3, $fs5
	ld.d	$a0, $sp, 32
	movgr2cf	$fcc0, $a0
	bceqz	$fcc0, .LBB0_6
.LBB0_3:                                # %for.body5.split
                                        #   in Loop: Header=BB0_2 Depth=2
	vldi	$vr1, -1016
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(pow)
	jirl	$ra, $ra, 0
	fmov.d	$fa1, $fa0
	fmov.d	$fa0, $fs5
	ld.d	$a0, $sp, 32
	movgr2cf	$fcc1, $a0
	bceqz	$fcc1, .LBB0_7
.LBB0_4:                                # %for.body5.split.split
                                        #   in Loop: Header=BB0_2 Depth=2
	vldi	$vr3, -1024
	fnmadd.d	$fa2, $fs3, $fa3, $fa3
	fmadd.d	$fa1, $fa2, $fa1, $fs2
	vldi	$vr2, -912
	fmadd.d	$fa0, $fa0, $fa3, $fa2
	fmul.d	$fa2, $fs0, $fs0
	fmadd.d	$fa0, $fa0, $fa2, $fa1
	fadd.d	$fa0, $fa0, $fs1
	fcmp.clt.d	$fcc0, $fa0, $fs6
	bcnez	$fcc0, .LBB0_9
# %bb.5:                                # %for.cond2
                                        #   in Loop: Header=BB0_2 Depth=2
	addi.w	$s2, $s2, 1
	bne	$s2, $fp, .LBB0_2
	b	.LBB0_8
.LBB0_6:                                # %call.sqrt
                                        #   in Loop: Header=BB0_2 Depth=2
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	b	.LBB0_3
.LBB0_7:                                # %call.sqrt247
                                        #   in Loop: Header=BB0_2 Depth=2
	fst.d	$fa1, $sp, 24                   # 8-byte Folded Spill
	fmov.d	$fa0, $fs1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $sp, 24                   # 8-byte Folded Reload
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_8:                                # %for.inc15
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.w	$a0, $s1, 1
	bltu	$s1, $s0, .LBB0_1
.LBB0_9:                                # %for.end17
	ftintrz.w.d	$fa0, $fs0
	movfr2gr.s	$a1, $fa0
	bltz	$a1, .LBB0_30
# %bb.10:                               # %for.body27.lr.ph
	slli.d	$a3, $a1, 1
	vldi	$vr0, -800
	fmadd.d	$fa1, $fs0, $fs0, $fa0
	fneg.d	$fa0, $fs0
	addi.w	$a4, $a3, 1
	ori	$a0, $zero, 100
	addi.w	$a6, $zero, -1
	lu12i.w	$a5, 7
	ori	$a7, $a5, 3328
                                        # implicit-def: $r6
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %for.inc49
                                        #   in Loop: Header=BB0_12 Depth=1
	addi.w	$a6, $a6, 1
	addi.w	$a4, $a4, -1
	beq	$a1, $a6, .LBB0_15
.LBB0_12:                               # %for.body27
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t0, $a6, 2
	mul.d	$t1, $a4, $t0
	movgr2fr.w	$fa2, $t1
	ffint.d.w	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_11
# %bb.13:                               # %if.end34
                                        #   in Loop: Header=BB0_12 Depth=1
	fmadd.d	$fa2, $fa0, $fs0, $fa2
	movgr2fr.w	$fa3, $a7
	ffint.d.w	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB0_11
# %bb.14:                               # %if.then42
                                        #   in Loop: Header=BB0_12 Depth=1
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a7, $fa2
	move	$a0, $t0
	move	$a2, $a4
	b	.LBB0_11
.LBB0_15:                               # %for.body55.lr.ph
	vldi	$vr1, -800
	fmadd.d	$fa1, $fs0, $fs0, $fa1
	ori	$a4, $zero, 100
	addi.w	$a7, $zero, -1
	ori	$t1, $a5, 3328
	move	$t0, $a3
                                        # implicit-def: $r10
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               # %for.inc78
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$a7, $a7, 1
	addi.w	$t0, $t0, -1
	beq	$a1, $a7, .LBB0_20
.LBB0_17:                               # %for.body55
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t2, $a7, 2
	mul.d	$t3, $t0, $t2
	movgr2fr.w	$fa2, $t3
	ffint.d.w	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_16
# %bb.18:                               # %if.end63
                                        #   in Loop: Header=BB0_17 Depth=1
	fmadd.d	$fa2, $fa0, $fs0, $fa2
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB0_16
# %bb.19:                               # %if.then71
                                        #   in Loop: Header=BB0_17 Depth=1
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t1, $fa2
	move	$a4, $t2
	move	$a6, $t0
	b	.LBB0_16
.LBB0_20:                               # %for.body84.lr.ph
	vldi	$vr1, -800
	fmadd.d	$fa1, $fs0, $fs0, $fa1
	addi.w	$a7, $a3, -1
	ori	$a3, $zero, 100
	addi.w	$t0, $zero, -1
	ori	$t1, $a5, 3328
                                        # implicit-def: $r9
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %for.inc107
                                        #   in Loop: Header=BB0_22 Depth=1
	addi.w	$t0, $t0, 1
	addi.w	$a7, $a7, -1
	beq	$a1, $t0, .LBB0_25
.LBB0_22:                               # %for.body84
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$t2, $t0, 2
	mul.d	$t3, $a7, $t2
	movgr2fr.w	$fa2, $t3
	ffint.d.w	$fa2, $fa2
	fcmp.clt.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_21
# %bb.23:                               # %if.end92
                                        #   in Loop: Header=BB0_22 Depth=1
	fmadd.d	$fa2, $fa0, $fs0, $fa2
	movgr2fr.w	$fa3, $t1
	ffint.d.w	$fa3, $fa3
	fcmp.cule.d	$fcc0, $fa3, $fa2
	bcnez	$fcc0, .LBB0_21
# %bb.24:                               # %if.then100
                                        #   in Loop: Header=BB0_22 Depth=1
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$t1, $fa2
	move	$a3, $t2
	move	$a5, $a7
	b	.LBB0_21
.LBB0_25:                               # %for.end109
	addi.w	$a7, $a4, 0
	ori	$a1, $zero, 99
	addi.w	$t0, $a0, 0
	blt	$a1, $a7, .LBB0_31
# %bb.26:                               # %for.end109
	blt	$a1, $t0, .LBB0_31
# %bb.27:                               # %if.then114
	mul.w	$a1, $a6, $a4
	mul.w	$a7, $a2, $a0
	slt	$a1, $a7, $a1
	masknez	$a4, $a4, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a4
	masknez	$a4, $a6, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a4
.LBB0_28:                               # %if.then136
	addi.w	$a2, $a3, 0
	ori	$a4, $zero, 99
	blt	$a4, $a2, .LBB0_33
# %bb.29:                               # %if.then139
	mul.w	$a2, $a0, $a1
	mul.w	$a4, $a5, $a3
	slt	$a2, $a2, $a4
	masknez	$a3, $a3, $a2
	maskeqz	$a0, $a0, $a2
	or	$a3, $a0, $a3
	masknez	$a0, $a5, $a2
	maskeqz	$a1, $a1, $a2
	or	$a5, $a1, $a0
	b	.LBB0_34
.LBB0_30:
	ori	$a3, $zero, 100
                                        # implicit-def: $r9
	b	.LBB0_34
.LBB0_31:                               # %if.else121
	slti	$t1, $t0, 100
	masknez	$a1, $a6, $t1
	maskeqz	$a2, $a2, $t1
	or	$a1, $a2, $a1
	masknez	$a2, $a4, $t1
	maskeqz	$a0, $a0, $t1
	ori	$a4, $zero, 100
	or	$a0, $a0, $a2
	blt	$t0, $a4, .LBB0_28
# %bb.32:                               # %if.else121
	ori	$a2, $zero, 99
	blt	$a2, $a7, .LBB0_34
	b	.LBB0_28
.LBB0_33:
	move	$a3, $a0
	move	$a5, $a1
.LBB0_34:                               # %if.end148
	pcalau12i	$a0, %got_pc_hi20(numBinsX)
	pcalau12i	$a1, %got_pc_hi20(fpo)
	ld.d	$fp, $a1, %got_pc_lo12(fpo)
	ld.d	$s1, $a0, %got_pc_lo12(numBinsX)
	pcalau12i	$a0, %got_pc_hi20(numBinsY)
	ld.d	$s0, $a0, %got_pc_lo12(numBinsY)
	ld.d	$a0, $fp, 0
	st.w	$a3, $s1, 0
	st.w	$a5, $s0, 0
	addi.w	$a2, $a3, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.w	$a2, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s1, 0
	addi.w	$s1, $s2, 1
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(blockarray)
	ld.d	$a1, $a1, %got_pc_lo12(blockarray)
	move	$fp, $a0
	st.d	$a0, $a1, 0
	bltz	$s2, .LBB0_42
# %bb.35:                               # %for.body158.lr.ph
	ld.w	$a1, $s0, 0
	addi.w	$a0, $a1, 1
	slli.d	$s0, $a0, 3
	addi.w	$a2, $zero, -1
	bstrpick.d	$s3, $s1, 31, 0
	bge	$a2, $a1, .LBB0_40
# %bb.36:                               # %for.body158.preheader
	pcalau12i	$a1, %got_pc_hi20(numcells)
	ld.d	$a1, $a1, %got_pc_lo12(numcells)
	ld.w	$a1, $a1, 0
	move	$s4, $zero
	slli.d	$a1, $a1, 2
	addi.d	$s1, $a1, 20
	bstrpick.d	$s5, $a0, 31, 0
	.p2align	4, , 16
.LBB0_37:                               # %for.body158
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_38 Depth 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	slli.d	$a0, $s4, 3
	stx.d	$s2, $fp, $a0
	move	$s6, $s5
	.p2align	4, , 16
.LBB0_38:                               # %for.body166
                                        #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	addi.d	$s6, $s6, -1
	addi.d	$s2, $s2, 8
	bnez	$s6, .LBB0_38
# %bb.39:                               # %for.cond163.for.inc178_crit_edge
                                        #   in Loop: Header=BB0_37 Depth=1
	addi.d	$s4, $s4, 1
	bne	$s4, $s3, .LBB0_37
	b	.LBB0_42
.LBB0_40:
	move	$s1, $fp
	.p2align	4, , 16
.LBB0_41:                               # %for.body158.us
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 8
	bnez	$s3, .LBB0_41
.LBB0_42:                               # %for.end180
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(bucket)
	ld.d	$a1, $a1, %got_pc_lo12(bucket)
	st.d	$a0, $a1, 0
	fld.d	$fs7, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 96                   # 8-byte Folded Reload
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
.Lfunc_end0:
	.size	makebins, .Lfunc_end0-makebins
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"numBinsX automatically set to:%d\n"
	.size	.L.str, 34

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"numBinsY automatically set to:%d\n"
	.size	.L.str.1, 34

	.section	".note.GNU-stack","",@progbits
	.addrsig
