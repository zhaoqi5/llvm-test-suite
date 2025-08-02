	.file	"alabel.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function alabel
.LCPI0_0:
	.dword	0x3ff199999999999a              # double 1.1000000000000001
.LCPI0_1:
	.dword	0x4052000000000000              # double 72
.LCPI0_2:
	.dword	0x4054000000000000              # double 80
	.text
	.globl	alabel
	.p2align	5
	.type	alabel,@function
alabel:                                 # @alabel
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(draw_line)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	addi.d	$a0, $s1, -1
	lu12i.w	$a2, 2
	.p2align	4, , 16
.LBB0_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a0, 1
	slli.d	$a4, $a3, 1
	ldx.hu	$a4, $a1, $a4
	and	$a4, $a4, $a2
	addi.d	$a0, $a0, 1
	bnez	$a4, .LBB0_1
# %bb.2:                                # %while.end
	andi	$a1, $a3, 255
	beqz	$a1, .LBB0_4
# %bb.3:                                # %if.then
	addi.d	$a1, $s0, -116
	sltui	$a1, $a1, 1
	addi.d	$a2, $s0, -99
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(.LCPI0_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI0_0)
	vldi	$vr1, -928
	movgr2fr.d	$fa2, $zero
	movgr2cf	$fcc0, $a2
	fsel	$fa1, $fa2, $fa1, $fcc0
	movgr2cf	$fcc0, $a1
	fsel	$fa0, $fa1, $fa0, $fcc0
	addi.d	$a1, $fp, -114
	sltui	$a2, $a1, 1
	addi.d	$a1, $fp, -99
	pcalau12i	$a3, %got_pc_hi20(last_x)
	ld.d	$a3, $a3, %got_pc_lo12(last_x)
	sltui	$a1, $a1, 1
	masknez	$a1, $a1, $a2
	ori	$a4, $zero, 2
	ld.w	$a5, $a3, 0
	maskeqz	$a2, $a4, $a2
	pcalau12i	$a3, %got_pc_hi20(font_id)
	ld.d	$a3, $a3, %got_pc_lo12(font_id)
	movgr2fr.w	$fa1, $a5
	pcalau12i	$a4, %got_pc_hi20(x_input_min)
	ld.d	$a4, $a4, %got_pc_lo12(x_input_min)
	pcalau12i	$a5, %got_pc_hi20(x_scale)
	ld.d	$a5, $a5, %got_pc_lo12(x_scale)
	pcalau12i	$a6, %got_pc_hi20(font_size)
	ld.d	$a6, $a6, %got_pc_lo12(font_size)
	fld.d	$fa2, $a4, 0
	fld.d	$fa3, $a5, 0
	pcalau12i	$a4, %got_pc_hi20(x_output_min)
	ld.d	$a4, $a4, %got_pc_lo12(x_output_min)
	pcalau12i	$a5, %got_pc_hi20(last_y)
	ld.d	$a5, $a5, %got_pc_lo12(last_y)
	ffint.d.w	$fa1, $fa1
	fsub.d	$fa1, $fa1, $fa2
	fld.d	$fa2, $a4, 0
	ld.w	$a5, $a5, 0
	ld.w	$a4, $a6, 0
	fdiv.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa2
	movgr2fr.w	$fa2, $a5
	pcalau12i	$a5, %got_pc_hi20(y_input_min)
	ld.d	$a5, $a5, %got_pc_lo12(y_input_min)
	pcalau12i	$a6, %got_pc_hi20(y_scale)
	ld.d	$a6, $a6, %got_pc_lo12(y_scale)
	ftintrz.w.d	$fa1, $fa1
	fld.d	$fa3, $a5, 0
	movfr2gr.s	$a5, $fa1
	fld.d	$fa1, $a6, 0
	pcalau12i	$a6, %got_pc_hi20(y_output_min)
	ld.d	$a6, $a6, %got_pc_lo12(y_output_min)
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa2, $fa2, $fa3
	fdiv.d	$fa1, $fa2, $fa1
	fld.d	$fa2, $a6, 0
	pcalau12i	$a6, %pc_hi20(.LCPI0_1)
	fld.d	$fa3, $a6, %pc_lo12(.LCPI0_1)
	pcalau12i	$a6, %got_pc_hi20(text_rotation)
	ld.d	$a6, $a6, %got_pc_lo12(text_rotation)
	fadd.d	$fa1, $fa1, $fa2
	movgr2fr.w	$fa2, $a4
	ffint.d.w	$fa2, $fa2
	fmul.d	$fa0, $fa0, $fa2
	fld.s	$fa2, $a6, 0
	fmul.d	$fa0, $fa0, $fa3
	pcalau12i	$a6, %pc_hi20(.LCPI0_2)
	fld.d	$fa3, $a6, %pc_lo12(.LCPI0_2)
	or	$a2, $a2, $a1
	ld.w	$a3, $a3, 0
	fcvt.d.s	$fa2, $fa2
	fdiv.d	$fa0, $fa0, $fa3
	fadd.d	$fa0, $fa0, $fa1
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a6, $fa0
	st.d	$a0, $sp, 48
	ori	$a0, $zero, 8
	st.d	$a0, $sp, 24
	st.d	$a0, $sp, 16
	st.d	$zero, $sp, 8
	fst.d	$fa2, $sp, 0
	st.d	$a5, $sp, 32
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 4
	st.d	$a6, $sp, 40
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_4:                                # %if.end
	move	$a0, $zero
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end0:
	.size	alabel, .Lfunc_end0-alabel
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %d %d %d %d %d %d %.3f %d %d %d %d %d %s\001\n"
	.size	.L.str, 46

	.section	".note.GNU-stack","",@progbits
	.addrsig
