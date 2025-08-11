	.file	"arc.c"
	.text
	.globl	arc                             # -- Begin function arc
	.p2align	5
	.type	arc,@function
arc:                                    # @arc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s4, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(draw_line)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(line_style)
	ld.d	$a0, $a0, %got_pc_lo12(line_style)
	pcalau12i	$a1, %got_pc_hi20(fill_level)
	ld.d	$a1, $a1, %got_pc_lo12(fill_level)
	pcalau12i	$a2, %got_pc_hi20(dash_length)
	ld.d	$a2, $a2, %got_pc_lo12(dash_length)
	pcalau12i	$a3, %got_pc_hi20(x_input_min)
	ld.d	$a4, $a3, %got_pc_lo12(x_input_min)
	ld.w	$a3, $a0, 0
	ld.w	$a0, $a1, 0
	fld.s	$fa0, $a2, 0
	fld.d	$fa1, $a4, 0
	pcalau12i	$a1, %got_pc_hi20(x_scale)
	ld.d	$a1, $a1, %got_pc_lo12(x_scale)
	pcalau12i	$a2, %got_pc_hi20(x_output_min)
	ld.d	$a2, $a2, %got_pc_lo12(x_output_min)
	fcvt.d.s	$fa0, $fa0
	movgr2fr.w	$fa2, $s0
	fld.d	$fa3, $a1, 0
	fld.d	$fa4, $a2, 0
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa2, $fa2, $fa1
	fdiv.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	pcalau12i	$a1, %got_pc_hi20(y_input_min)
	ld.d	$a1, $a1, %got_pc_lo12(y_input_min)
	ftintrz.w.d	$fa2, $fa2
	pcalau12i	$a2, %got_pc_hi20(y_scale)
	ld.d	$a2, $a2, %got_pc_lo12(y_scale)
	fld.d	$fa5, $a1, 0
	pcalau12i	$a1, %got_pc_hi20(y_output_min)
	ld.d	$a1, $a1, %got_pc_lo12(y_output_min)
	fld.d	$fa6, $a2, 0
	movfr2gr.s	$a4, $fa2
	movgr2fr.w	$fa2, $fp
	fld.d	$fa7, $a1, 0
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa2, $fa2, $fa5
	fdiv.d	$fa2, $fa2, $fa6
	fadd.d	$fa2, $fa2, $fa7
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a1, $fa2
	movgr2fr.w	$fa2, $s4
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa2, $fa2, $fa1
	fdiv.d	$fa2, $fa2, $fa3
	fadd.d	$fa2, $fa2, $fa4
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a2, $fa2
	movgr2fr.w	$fa2, $s3
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa2, $fa2, $fa5
	fdiv.d	$fa2, $fa2, $fa6
	fadd.d	$fa2, $fa2, $fa7
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a5, $fa2
	movgr2fr.w	$fa2, $s2
	ffint.d.w	$fa2, $fa2
	fsub.d	$fa1, $fa2, $fa1
	fdiv.d	$fa1, $fa1, $fa3
	fadd.d	$fa1, $fa1, $fa4
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a6, $fa1
	movgr2fr.w	$fa1, $s1
	ffint.d.w	$fa1, $fa1
	fsub.d	$fa1, $fa1, $fa5
	fdiv.d	$fa1, $fa1, $fa6
	fadd.d	$fa1, $fa1, $fa7
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a7, $fa1
	st.d	$zero, $sp, 32
	vrepli.b	$vr1, 0
	vst	$vr1, $sp, 16
	fst.d	$fa0, $sp, 8
	st.d	$a0, $sp, 0
	st.d	$a7, $sp, 96
	st.d	$a6, $sp, 88
	st.d	$a7, $sp, 80
	st.d	$a6, $sp, 72
	st.d	$a5, $sp, 64
	st.d	$a2, $sp, 56
	st.d	$a1, $sp, 48
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	st.d	$a4, $sp, 40
	move	$a4, $zero
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $zero
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(move_nasko)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
	.size	arc, .Lfunc_end0-arc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d %d %d %d %d %d %d %d %.3f %d %d %d %.3f %.3f %d %d %d %d %d %d\n"
	.size	.L.str, 67

	.section	".note.GNU-stack","",@progbits
	.addrsig
