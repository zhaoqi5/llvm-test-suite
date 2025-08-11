	.file	"zchar.c"
	.text
	.globl	zshow                           # -- Begin function zshow
	.p2align	5
	.type	zshow,@function
zshow:                                  # @zshow
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$a1, $a0, 8
	andi	$a2, $a1, 252
	ori	$a3, $zero, 52
	bne	$a2, $a3, .LBB0_3
# %bb.1:                                # %if.end.i
	andi	$a1, $a1, 512
	bnez	$a1, .LBB0_5
# %bb.2:
	addi.w	$a0, $zero, -7
	b	.LBB0_4
.LBB0_3:
	addi.w	$a0, $zero, -20
.LBB0_4:                                # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_5:                                # %if.end6.i
	pcalau12i	$a1, %got_pc_hi20(esp)
	ld.d	$fp, $a1, %got_pc_lo12(esp)
	pcalau12i	$a1, %got_pc_hi20(estop)
	ld.d	$a1, $a1, %got_pc_lo12(estop)
	ld.d	$a2, $fp, 0
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a2, 96
	bgeu	$a1, $a2, .LBB0_7
# %bb.6:
	addi.w	$a0, $zero, -5
	b	.LBB0_4
.LBB0_7:                                # %if.end10.i
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(gs_show_enum_sizeof)
	ld.d	$s1, $a0, %got_pc_lo12(gs_show_enum_sizeof)
	ld.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_10
# %bb.8:                                # %if.end
	ld.d	$a1, $fp, 0
	st.h	$s2, $a1, 16
	ori	$a2, $zero, 33
	st.h	$a2, $a1, 24
	pcalau12i	$a2, %pc_hi20(finish_show)
	addi.d	$a2, $a2, %pc_lo12(finish_show)
	st.d	$a2, $a1, 32
	ori	$a2, $zero, 37
	st.w	$a2, $a1, 40
	ori	$a2, $zero, 32
	st.h	$a2, $a1, 56
	addi.d	$a2, $a1, 64
	st.d	$a2, $fp, 0
	ori	$a2, $zero, 52
	st.h	$a2, $a1, 72
	ld.h	$a2, $s1, 0
	pcalau12i	$a3, %got_pc_hi20(igs)
	ld.d	$a3, $a3, %got_pc_lo12(igs)
	st.h	$zero, $a1, 48
	st.d	$a0, $a1, 64
	st.h	$a2, $a1, 74
	ld.d	$a1, $a3, 0
	ld.d	$a2, $s0, 0
	ld.hu	$a3, $s0, 10
	pcaddu18i	$ra, %call36(gs_show_n_init)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB0_11
# %bb.9:                                # %if.end6
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a1, $a0, %got_pc_lo12(osp)
	ld.d	$a0, $a1, 0
	addi.d	$a2, $a0, -16
	addi.d	$a0, $s0, -16
	st.d	$a2, $a1, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(show_continue)
	jr	$t8
.LBB0_10:
	addi.w	$a0, $zero, -25
	b	.LBB0_4
.LBB0_11:                               # %if.then5
	ld.d	$a1, $fp, 0
	ld.d	$a4, $a1, 0
	ld.w	$a2, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a3, $a1, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 1
	move	$s0, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $fp, 0
	addi.d	$a1, $a1, -64
	st.d	$a1, $fp, 0
	b	.LBB0_4
.Lfunc_end0:
	.size	zshow, .Lfunc_end0-zshow
                                        # -- End function
	.globl	setup_show                      # -- Begin function setup_show
	.p2align	5
	.type	setup_show,@function
setup_show:                             # @setup_show
# %bb.0:                                # %entry
	ld.hu	$a0, $a0, 8
	andi	$a2, $a0, 252
	ori	$a3, $zero, 52
	bne	$a2, $a3, .LBB1_3
# %bb.1:                                # %if.end
	andi	$a0, $a0, 512
	bnez	$a0, .LBB1_4
# %bb.2:
	addi.w	$a0, $zero, -7
	ret
.LBB1_3:
	addi.w	$a0, $zero, -20
	ret
.LBB1_4:                                # %if.end6
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(esp)
	ld.d	$fp, $a0, %got_pc_lo12(esp)
	pcalau12i	$a0, %got_pc_hi20(estop)
	ld.d	$a0, $a0, %got_pc_lo12(estop)
	ld.d	$a2, $fp, 0
	ld.d	$a0, $a0, 0
	addi.d	$a2, $a2, 96
	bgeu	$a0, $a2, .LBB1_6
# %bb.5:
	addi.w	$a0, $zero, -5
	b	.LBB1_9
.LBB1_6:                                # %if.end10
	move	$s1, $a1
	pcalau12i	$a0, %got_pc_hi20(gs_show_enum_sizeof)
	ld.d	$s0, $a0, %got_pc_lo12(gs_show_enum_sizeof)
	ld.w	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_8
# %bb.7:                                # %if.end14
	move	$a1, $a0
	ld.d	$a2, $fp, 0
	ori	$a0, $zero, 1
	st.h	$a0, $a2, 16
	ori	$a3, $zero, 33
	st.h	$a3, $a2, 24
	st.d	$s1, $a2, 32
	ori	$a3, $zero, 37
	st.w	$a3, $a2, 40
	st.h	$zero, $a2, 48
	ori	$a3, $zero, 32
	st.h	$a3, $a2, 56
	addi.d	$a3, $a2, 64
	st.d	$a3, $fp, 0
	ld.h	$a3, $s0, 0
	st.d	$a1, $a2, 64
	ori	$a1, $zero, 52
	st.h	$a1, $a2, 72
	st.h	$a3, $a2, 74
	b	.LBB1_9
.LBB1_8:
	addi.w	$a0, $zero, -25
.LBB1_9:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	setup_show, .Lfunc_end1-setup_show
                                        # -- End function
	.globl	finish_show                     # -- Begin function finish_show
	.p2align	5
	.type	finish_show,@function
finish_show:                            # @finish_show
# %bb.0:                                # %entry
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	finish_show, .Lfunc_end2-finish_show
                                        # -- End function
	.globl	show_continue                   # -- Begin function show_continue
	.p2align	5
	.type	show_continue,@function
show_continue:                          # @show_continue
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(esp)
	ld.d	$s1, $a1, %got_pc_lo12(esp)
	ld.d	$a1, $s1, 0
	ld.d	$s0, $a1, 0
	move	$fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_show_next)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB3_6
# %bb.1:                                # %entry
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_4
# %bb.2:                                # %entry
	bnez	$a0, .LBB3_8
# %bb.3:                                # %sw.bb
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, -32
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a1, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(gs_show_enum_sizeof)
	ld.d	$a2, $a2, %got_pc_lo12(gs_show_enum_sizeof)
	ld.d	$a4, $a1, 0
	ld.w	$a2, $a2, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a3, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 1
	ori	$s0, $zero, 1
	move	$a0, $a4
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	addi.d	$a0, $a0, -64
	st.d	$a0, $s1, 0
	addi.w	$a0, $zero, -1
	slt	$a0, $a0, $fp
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	b	.LBB3_12
.LBB3_4:                                # %sw.bb18
	pcalau12i	$a0, %got_pc_hi20(igs)
	ld.d	$a0, $a0, %got_pc_lo12(igs)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(gs_currentfont)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(ostop)
	ld.d	$a2, $a1, %got_pc_lo12(ostop)
	pcalau12i	$a1, %got_pc_hi20(osp)
	ld.d	$a1, $a1, %got_pc_lo12(osp)
	ld.d	$a2, $a2, 0
	ld.d	$s2, $a0, 32
	addi.d	$a0, $fp, 32
	st.d	$a0, $a1, 0
	bgeu	$a2, $a0, .LBB3_9
# %bb.5:                                # %if.then23
	st.d	$fp, $a1, 0
	addi.w	$a0, $zero, -16
	b	.LBB3_12
.LBB3_6:                                # %sw.bb3
	pcalau12i	$a0, %got_pc_hi20(ostop)
	ld.d	$a1, $a0, %got_pc_lo12(ostop)
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a1, $a1, 0
	ld.d	$s2, $s1, 0
	addi.d	$a2, $fp, 32
	st.d	$a2, $a0, 0
	bgeu	$a1, $a2, .LBB3_10
# %bb.7:                                # %if.then
	st.d	$fp, $a0, 0
	addi.w	$a0, $zero, -16
	b	.LBB3_12
.LBB3_8:                                # %sw.default
	ld.d	$a1, $s1, 0
	pcalau12i	$a2, %got_pc_hi20(gs_show_enum_sizeof)
	ld.d	$a2, $a2, %got_pc_lo12(gs_show_enum_sizeof)
	ld.d	$a4, $a1, 0
	ld.w	$a2, $a2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a3, $a1, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 1
	move	$fp, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, -64
	st.d	$a1, $s1, 0
	b	.LBB3_12
.LBB3_9:                                # %if.end25
	vld	$vr0, $s2, 0
	vst	$vr0, $fp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_show_current_char)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	ori	$a0, $zero, 20
	ld.d	$a1, $s1, 0
	st.h	$a0, $fp, 40
	pcalau12i	$a0, %pc_hi20(show_continue)
	addi.d	$a0, $a0, %pc_lo12(show_continue)
	st.d	$a0, $a1, 16
	ori	$a0, $zero, 37
	st.h	$a0, $a1, 24
	st.h	$zero, $a1, 26
	vld	$vr0, $s2, 16
	addi.d	$a0, $a1, 32
	st.d	$a0, $s1, 0
	vst	$vr0, $a1, 32
	b	.LBB3_11
.LBB3_10:                               # %if.end
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_kshow_previous_char)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	ori	$s3, $zero, 20
	st.h	$s3, $fp, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(gs_kshow_next_char)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 32
	ld.d	$a0, $s1, 0
	st.h	$s3, $fp, 40
	pcalau12i	$a1, %pc_hi20(show_continue)
	addi.d	$a1, $a1, %pc_lo12(show_continue)
	st.d	$a1, $a0, 16
	ori	$a1, $zero, 37
	st.h	$a1, $a0, 24
	st.h	$zero, $a0, 26
	addi.d	$a1, $a0, 32
	st.d	$a1, $s1, 0
	vld	$vr0, $s2, -16
	vst	$vr0, $a0, 32
.LBB3_11:                               # %cleanup39
	ori	$a0, $zero, 1
.LBB3_12:                               # %cleanup39
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	show_continue, .Lfunc_end3-show_continue
                                        # -- End function
	.globl	zashow                          # -- Begin function zashow
	.p2align	5
	.type	zashow,@function
zashow:                                 # @zashow
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	addi.d	$a0, $a0, -16
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 0
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_5
# %bb.1:                                # %lor.lhs.false
	ld.hu	$a0, $fp, 8
	andi	$a1, $a0, 252
	ori	$a2, $zero, 52
	bne	$a1, $a2, .LBB4_4
# %bb.2:                                # %if.end.i
	andi	$a0, $a0, 512
	bnez	$a0, .LBB4_6
# %bb.3:
	addi.w	$a0, $zero, -7
	b	.LBB4_5
.LBB4_4:
	addi.w	$a0, $zero, -20
.LBB4_5:                                # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_6:                                # %if.end6.i
	pcalau12i	$a0, %got_pc_hi20(esp)
	ld.d	$s0, $a0, %got_pc_lo12(esp)
	pcalau12i	$a0, %got_pc_hi20(estop)
	ld.d	$a0, $a0, %got_pc_lo12(estop)
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a1, 96
	bgeu	$a0, $a1, .LBB4_8
# %bb.7:
	addi.w	$a0, $zero, -5
	b	.LBB4_5
.LBB4_8:                                # %if.end10.i
	pcalau12i	$a0, %got_pc_hi20(gs_show_enum_sizeof)
	ld.d	$s1, $a0, %got_pc_lo12(gs_show_enum_sizeof)
	ld.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_11
# %bb.9:                                # %if.end
	ld.d	$a1, $s0, 0
	st.h	$s2, $a1, 16
	ori	$a2, $zero, 33
	st.h	$a2, $a1, 24
	pcalau12i	$a2, %pc_hi20(finish_show)
	addi.d	$a2, $a2, %pc_lo12(finish_show)
	st.d	$a2, $a1, 32
	ori	$a2, $zero, 37
	st.w	$a2, $a1, 40
	ori	$a2, $zero, 32
	st.h	$a2, $a1, 56
	addi.d	$a2, $a1, 64
	st.d	$a2, $s0, 0
	ori	$a2, $zero, 52
	st.h	$a2, $a1, 72
	ld.h	$a2, $s1, 0
	pcalau12i	$a3, %got_pc_hi20(igs)
	ld.d	$a3, $a3, %got_pc_lo12(igs)
	st.h	$zero, $a1, 48
	st.d	$a0, $a1, 64
	st.h	$a2, $a1, 74
	ld.d	$a1, $a3, 0
	fld.s	$fa0, $sp, 0
	fld.s	$fa1, $sp, 4
	ld.d	$a2, $fp, 0
	ld.hu	$a3, $fp, 10
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	pcaddu18i	$ra, %call36(gs_ashow_n_init)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB4_12
# %bb.10:                               # %if.end11
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a1, $a0, 0
	addi.d	$a1, $a1, -48
	st.d	$a1, $a0, 0
	addi.d	$a0, $fp, -48
	pcaddu18i	$ra, %call36(show_continue)
	jirl	$ra, $ra, 0
	b	.LBB4_5
.LBB4_11:
	addi.w	$a0, $zero, -25
	b	.LBB4_5
.LBB4_12:                               # %if.then10
	ld.d	$a1, $s0, 0
	ld.d	$a4, $a1, 0
	ld.w	$a2, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a3, $a1, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 1
	move	$fp, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, -64
	st.d	$a1, $s0, 0
	b	.LBB4_5
.Lfunc_end4:
	.size	zashow, .Lfunc_end4-zashow
                                        # -- End function
	.globl	zwidthshow                      # -- Begin function zwidthshow
	.p2align	5
	.type	zwidthshow,@function
zwidthshow:                             # @zwidthshow
# %bb.0:                                # %entry
	move	$a1, $a0
	ld.hu	$a0, $a0, -8
	andi	$a2, $a0, 252
	ori	$a3, $zero, 20
	addi.w	$a0, $zero, -20
	bne	$a2, $a3, .LBB5_3
# %bb.1:                                # %if.end
	ld.d	$a2, $a1, -16
	ori	$a3, $zero, 255
	bgeu	$a3, $a2, .LBB5_4
# %bb.2:
	addi.w	$a0, $zero, -15
.LBB5_3:                                # %cleanup
	ret
.LBB5_4:                                # %if.end6
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a0
	move	$fp, $a1
	addi.d	$a0, $a1, -32
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 0
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB5_15
# %bb.5:                                # %lor.lhs.false
	ld.hu	$a1, $fp, 8
	andi	$a2, $a1, 252
	ori	$a3, $zero, 52
	move	$a0, $s0
	bne	$a2, $a3, .LBB5_15
# %bb.6:                                # %if.end.i
	andi	$a0, $a1, 512
	bnez	$a0, .LBB5_8
# %bb.7:
	addi.w	$a0, $zero, -7
	b	.LBB5_15
.LBB5_8:                                # %if.end6.i
	pcalau12i	$a0, %got_pc_hi20(esp)
	ld.d	$s0, $a0, %got_pc_lo12(esp)
	pcalau12i	$a0, %got_pc_hi20(estop)
	ld.d	$a0, $a0, %got_pc_lo12(estop)
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a1, 96
	bgeu	$a0, $a1, .LBB5_10
# %bb.9:
	addi.w	$a0, $zero, -5
	b	.LBB5_15
.LBB5_10:                               # %if.end10.i
	pcalau12i	$a0, %got_pc_hi20(gs_show_enum_sizeof)
	ld.d	$s1, $a0, %got_pc_lo12(gs_show_enum_sizeof)
	ld.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_13
# %bb.11:                               # %if.end13
	ld.d	$a1, $s0, 0
	st.h	$s2, $a1, 16
	ori	$a2, $zero, 33
	st.h	$a2, $a1, 24
	pcalau12i	$a2, %pc_hi20(finish_show)
	addi.d	$a2, $a2, %pc_lo12(finish_show)
	st.d	$a2, $a1, 32
	ori	$a2, $zero, 37
	st.w	$a2, $a1, 40
	st.h	$zero, $a1, 48
	ori	$a2, $zero, 32
	st.h	$a2, $a1, 56
	addi.d	$a2, $a1, 64
	st.d	$a2, $s0, 0
	st.d	$a0, $a1, 64
	ld.h	$a2, $s1, 0
	pcalau12i	$a3, %got_pc_hi20(igs)
	ld.d	$a3, $a3, %got_pc_lo12(igs)
	ori	$a4, $zero, 52
	st.h	$a4, $a1, 72
	st.h	$a2, $a1, 74
	ld.d	$a1, $a3, 0
	fld.s	$fa0, $sp, 0
	fld.s	$fa1, $sp, 4
	ld.b	$a2, $fp, -16
	ld.d	$a3, $fp, 0
	ld.hu	$a4, $fp, 10
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	pcaddu18i	$ra, %call36(gs_widthshow_n_init)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB5_14
# %bb.12:                               # %if.end28
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a1, $a0, 0
	addi.d	$a1, $a1, -64
	st.d	$a1, $a0, 0
	addi.d	$a0, $fp, -64
	pcaddu18i	$ra, %call36(show_continue)
	jirl	$ra, $ra, 0
	b	.LBB5_15
.LBB5_13:
	addi.w	$a0, $zero, -25
	b	.LBB5_15
.LBB5_14:                               # %if.then27
	ld.d	$a1, $s0, 0
	ld.d	$a4, $a1, 0
	ld.w	$a2, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a3, $a1, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 1
	move	$fp, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, -64
	st.d	$a1, $s0, 0
.LBB5_15:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	zwidthshow, .Lfunc_end5-zwidthshow
                                        # -- End function
	.globl	zawidthshow                     # -- Begin function zawidthshow
	.p2align	5
	.type	zawidthshow,@function
zawidthshow:                            # @zawidthshow
# %bb.0:                                # %entry
	move	$a1, $a0
	ld.hu	$a0, $a0, -40
	andi	$a2, $a0, 252
	ori	$a3, $zero, 20
	addi.w	$a0, $zero, -20
	bne	$a2, $a3, .LBB6_3
# %bb.1:                                # %if.end
	ld.d	$a2, $a1, -48
	ori	$a3, $zero, 255
	bgeu	$a3, $a2, .LBB6_4
# %bb.2:
	addi.w	$a0, $zero, -15
.LBB6_3:                                # %cleanup
	ret
.LBB6_4:                                # %if.end6
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	move	$fp, $a1
	addi.d	$a0, $a1, -64
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB6_16
# %bb.5:                                # %lor.lhs.false
	addi.d	$a0, $fp, -16
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB6_16
# %bb.6:                                # %lor.lhs.false14
	ld.hu	$a1, $fp, 8
	andi	$a2, $a1, 252
	ori	$a3, $zero, 52
	move	$a0, $s0
	bne	$a2, $a3, .LBB6_16
# %bb.7:                                # %if.end.i
	andi	$a0, $a1, 512
	bnez	$a0, .LBB6_9
# %bb.8:
	addi.w	$a0, $zero, -7
	b	.LBB6_16
.LBB6_9:                                # %if.end6.i
	pcalau12i	$a0, %got_pc_hi20(esp)
	ld.d	$s0, $a0, %got_pc_lo12(esp)
	pcalau12i	$a0, %got_pc_hi20(estop)
	ld.d	$a0, $a0, %got_pc_lo12(estop)
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a1, 96
	bgeu	$a0, $a1, .LBB6_11
# %bb.10:
	addi.w	$a0, $zero, -5
	b	.LBB6_16
.LBB6_11:                               # %if.end10.i
	pcalau12i	$a0, %got_pc_hi20(gs_show_enum_sizeof)
	ld.d	$s1, $a0, %got_pc_lo12(gs_show_enum_sizeof)
	ld.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_14
# %bb.12:                               # %if.end19
	ld.d	$a1, $s0, 0
	st.h	$s2, $a1, 16
	ori	$a2, $zero, 33
	st.h	$a2, $a1, 24
	pcalau12i	$a2, %pc_hi20(finish_show)
	addi.d	$a2, $a2, %pc_lo12(finish_show)
	st.d	$a2, $a1, 32
	ori	$a2, $zero, 37
	st.w	$a2, $a1, 40
	st.h	$zero, $a1, 48
	ori	$a2, $zero, 32
	st.h	$a2, $a1, 56
	addi.d	$a2, $a1, 64
	st.d	$a2, $s0, 0
	st.d	$a0, $a1, 64
	ori	$a2, $zero, 52
	ld.h	$a3, $s1, 0
	pcalau12i	$a4, %got_pc_hi20(igs)
	ld.d	$a4, $a4, %got_pc_lo12(igs)
	fld.s	$fa0, $sp, 16
	st.h	$a2, $a1, 72
	st.h	$a3, $a1, 74
	ld.d	$a1, $a4, 0
	fcvt.d.s	$fa0, $fa0
	fld.s	$fa1, $sp, 20
	ld.b	$a2, $fp, -48
	fld.s	$fa2, $sp, 8
	fld.s	$fa3, $sp, 12
	ld.d	$a3, $fp, 0
	ld.hu	$a4, $fp, 10
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fcvt.d.s	$fa3, $fa3
	pcaddu18i	$ra, %call36(gs_awidthshow_n_init)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB6_15
# %bb.13:                               # %if.end38
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a1, $a0, 0
	addi.d	$a1, $a1, -96
	st.d	$a1, $a0, 0
	addi.d	$a0, $fp, -96
	pcaddu18i	$ra, %call36(show_continue)
	jirl	$ra, $ra, 0
	b	.LBB6_16
.LBB6_14:
	addi.w	$a0, $zero, -25
	b	.LBB6_16
.LBB6_15:                               # %if.then37
	ld.d	$a1, $s0, 0
	ld.d	$a4, $a1, 0
	ld.w	$a2, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a3, $a1, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 1
	move	$fp, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, -64
	st.d	$a1, $s0, 0
.LBB6_16:
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end6:
	.size	zawidthshow, .Lfunc_end6-zawidthshow
                                        # -- End function
	.globl	zkshow                          # -- Begin function zkshow
	.p2align	5
	.type	zkshow,@function
zkshow:                                 # @zkshow
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $a0
	ld.hu	$a2, $a0, -8
	bstrpick.d	$a3, $a2, 7, 2
	ori	$a4, $zero, 10
	addi.w	$a0, $zero, -20
	beq	$a3, $a4, .LBB7_2
# %bb.1:                                # %entry
	bnez	$a3, .LBB7_8
.LBB7_2:                                # %sw.epilog
	andi	$a3, $a2, 3
	ori	$a4, $zero, 3
	addi.w	$a2, $zero, -7
	bne	$a3, $a4, .LBB7_7
# %bb.3:                                # %if.end
	ld.hu	$a3, $a1, 8
	andi	$a4, $a3, 252
	ori	$a5, $zero, 52
	bne	$a4, $a5, .LBB7_8
# %bb.4:                                # %if.end.i
	andi	$a3, $a3, 512
	move	$a0, $a2
	beqz	$a3, .LBB7_8
# %bb.5:                                # %if.end6.i
	pcalau12i	$a0, %got_pc_hi20(esp)
	ld.d	$fp, $a0, %got_pc_lo12(esp)
	pcalau12i	$a0, %got_pc_hi20(estop)
	ld.d	$a0, $a0, %got_pc_lo12(estop)
	ld.d	$a2, $fp, 0
	ld.d	$a0, $a0, 0
	addi.d	$a2, $a2, 96
	bgeu	$a0, $a2, .LBB7_9
# %bb.6:
	addi.w	$a0, $zero, -5
	b	.LBB7_8
.LBB7_7:
	move	$a0, $a2
.LBB7_8:                                # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB7_9:                                # %if.end10.i
	move	$s1, $a1
	pcalau12i	$a0, %got_pc_hi20(gs_show_enum_sizeof)
	ld.d	$s0, $a0, %got_pc_lo12(gs_show_enum_sizeof)
	ld.w	$a1, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_12
# %bb.10:                               # %if.end7
	ld.d	$a1, $fp, 0
	st.h	$s2, $a1, 16
	ori	$a2, $zero, 33
	st.h	$a2, $a1, 24
	pcalau12i	$a2, %pc_hi20(finish_show)
	addi.d	$a2, $a2, %pc_lo12(finish_show)
	st.d	$a2, $a1, 32
	ori	$a2, $zero, 37
	st.w	$a2, $a1, 40
	ori	$a2, $zero, 32
	st.h	$a2, $a1, 56
	addi.d	$a2, $a1, 64
	st.d	$a2, $fp, 0
	ori	$a2, $zero, 52
	st.h	$a2, $a1, 72
	ld.h	$a2, $s0, 0
	pcalau12i	$a3, %got_pc_hi20(igs)
	ld.d	$a3, $a3, %got_pc_lo12(igs)
	st.h	$zero, $a1, 48
	st.d	$a0, $a1, 64
	st.h	$a2, $a1, 74
	ld.d	$a1, $a3, 0
	ld.d	$a2, $s1, 0
	ld.hu	$a3, $s1, 10
	pcaddu18i	$ra, %call36(gs_kshow_n_init)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	addi.w	$a2, $zero, -1
	bge	$a2, $a0, .LBB7_13
# %bb.11:                               # %if.end14
	addi.d	$a0, $s1, -16
	vld	$vr0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a2, $a0, %got_pc_lo12(osp)
	vst	$vr0, $a1, -16
	ld.d	$a0, $a2, 0
	addi.d	$a1, $a0, -32
	addi.d	$a0, $s1, -32
	st.d	$a1, $a2, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(show_continue)
	jr	$t8
.LBB7_12:
	addi.w	$a0, $zero, -25
	b	.LBB7_8
.LBB7_13:                               # %if.then13
	ld.d	$a4, $a1, 0
	ld.w	$a2, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a3, $a1, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 1
	move	$s0, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $fp, 0
	addi.d	$a1, $a1, -64
	st.d	$a1, $fp, 0
	b	.LBB7_8
.Lfunc_end7:
	.size	zkshow, .Lfunc_end7-zkshow
                                        # -- End function
	.globl	zstringwidth                    # -- Begin function zstringwidth
	.p2align	5
	.type	zstringwidth,@function
zstringwidth:                           # @zstringwidth
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	ld.hu	$a1, $a0, 8
	andi	$a2, $a1, 252
	ori	$a3, $zero, 52
	bne	$a2, $a3, .LBB8_3
# %bb.1:                                # %if.end.i
	andi	$a1, $a1, 512
	bnez	$a1, .LBB8_5
# %bb.2:
	addi.w	$a0, $zero, -7
	b	.LBB8_4
.LBB8_3:
	addi.w	$a0, $zero, -20
.LBB8_4:                                # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB8_5:                                # %if.end6.i
	pcalau12i	$a1, %got_pc_hi20(esp)
	ld.d	$fp, $a1, %got_pc_lo12(esp)
	pcalau12i	$a1, %got_pc_hi20(estop)
	ld.d	$a1, $a1, %got_pc_lo12(estop)
	ld.d	$a2, $fp, 0
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a2, 96
	bgeu	$a1, $a2, .LBB8_7
# %bb.6:
	addi.w	$a0, $zero, -5
	b	.LBB8_4
.LBB8_7:                                # %if.end10.i
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(gs_show_enum_sizeof)
	ld.d	$s1, $a0, %got_pc_lo12(gs_show_enum_sizeof)
	ld.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_10
# %bb.8:                                # %if.end
	ld.d	$a1, $fp, 0
	st.h	$s2, $a1, 16
	ori	$a2, $zero, 33
	st.h	$a2, $a1, 24
	pcalau12i	$a2, %pc_hi20(finish_stringwidth)
	addi.d	$a2, $a2, %pc_lo12(finish_stringwidth)
	st.d	$a2, $a1, 32
	ori	$a2, $zero, 37
	st.w	$a2, $a1, 40
	ori	$a2, $zero, 32
	st.h	$a2, $a1, 56
	addi.d	$a2, $a1, 64
	st.d	$a2, $fp, 0
	ori	$a2, $zero, 52
	st.h	$a2, $a1, 72
	ld.h	$a2, $s1, 0
	pcalau12i	$a3, %got_pc_hi20(igs)
	ld.d	$a3, $a3, %got_pc_lo12(igs)
	st.h	$zero, $a1, 48
	st.d	$a0, $a1, 64
	st.h	$a2, $a1, 74
	ld.d	$a1, $a3, 0
	ld.d	$a2, $s0, 0
	ld.hu	$a3, $s0, 10
	pcaddu18i	$ra, %call36(gs_stringwidth_n_init)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB8_11
# %bb.9:                                # %if.end6
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a1, $a0, %got_pc_lo12(osp)
	ld.d	$a0, $a1, 0
	addi.d	$a2, $a0, -16
	addi.d	$a0, $s0, -16
	st.d	$a2, $a1, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(show_continue)
	jr	$t8
.LBB8_10:
	addi.w	$a0, $zero, -25
	b	.LBB8_4
.LBB8_11:                               # %if.then5
	ld.d	$a1, $fp, 0
	ld.d	$a4, $a1, 0
	ld.w	$a2, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a3, $a1, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 1
	move	$s0, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $fp, 0
	addi.d	$a1, $a1, -64
	st.d	$a1, $fp, 0
	b	.LBB8_4
.Lfunc_end8:
	.size	zstringwidth, .Lfunc_end8-zstringwidth
                                        # -- End function
	.globl	finish_stringwidth              # -- Begin function finish_stringwidth
	.p2align	5
	.type	finish_stringwidth,@function
finish_stringwidth:                     # @finish_stringwidth
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(esp)
	ld.d	$a1, $a1, %got_pc_lo12(esp)
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a1, 0
	move	$fp, $a0
	addi.d	$a1, $sp, 8
	move	$a0, $a2
	pcaddu18i	$ra, %call36(gs_show_width)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(ostop)
	ld.d	$a1, $a0, %got_pc_lo12(ostop)
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a0, $a0, %got_pc_lo12(osp)
	ld.d	$a1, $a1, 0
	addi.d	$a2, $fp, 32
	st.d	$a2, $a0, 0
	bgeu	$a1, $a2, .LBB9_2
# %bb.1:                                # %if.then
	st.d	$fp, $a0, 0
	addi.w	$a0, $zero, -16
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_2:                                # %if.end
	fld.s	$fa0, $sp, 8
	move	$a0, $zero
	fld.s	$fa1, $sp, 12
	fst.s	$fa0, $fp, 16
	ori	$a1, $zero, 44
	st.h	$a1, $fp, 24
	fst.s	$fa1, $fp, 32
	st.h	$a1, $fp, 40
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	finish_stringwidth, .Lfunc_end9-finish_stringwidth
                                        # -- End function
	.globl	zcharpath                       # -- Begin function zcharpath
	.p2align	5
	.type	zcharpath,@function
zcharpath:                              # @zcharpath
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $a0
	ld.hu	$a0, $a0, 8
	andi	$a2, $a0, 252
	ori	$a3, $zero, 4
	addi.w	$a0, $zero, -20
	bne	$a2, $a3, .LBB10_11
# %bb.1:                                # %if.end
	ld.hu	$a2, $a1, -8
	andi	$a3, $a2, 252
	ori	$a4, $zero, 52
	bne	$a3, $a4, .LBB10_11
# %bb.2:                                # %if.end.i
	andi	$a0, $a2, 512
	bnez	$a0, .LBB10_4
# %bb.3:
	addi.w	$a0, $zero, -7
	b	.LBB10_11
.LBB10_4:                               # %if.end6.i
	pcalau12i	$a0, %got_pc_hi20(esp)
	ld.d	$fp, $a0, %got_pc_lo12(esp)
	pcalau12i	$a0, %got_pc_hi20(estop)
	ld.d	$a0, $a0, %got_pc_lo12(estop)
	ld.d	$a2, $fp, 0
	ld.d	$a0, $a0, 0
	addi.d	$a2, $a2, 96
	bgeu	$a0, $a2, .LBB10_6
# %bb.5:
	addi.w	$a0, $zero, -5
	b	.LBB10_11
.LBB10_6:                               # %if.end10.i
	move	$s0, $a1
	pcalau12i	$a0, %got_pc_hi20(gs_show_enum_sizeof)
	ld.d	$s1, $a0, %got_pc_lo12(gs_show_enum_sizeof)
	ld.w	$a1, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	ori	$a0, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_9
# %bb.7:                                # %if.end5
	ld.d	$a1, $fp, 0
	st.h	$s2, $a1, 16
	ori	$a2, $zero, 33
	st.h	$a2, $a1, 24
	pcalau12i	$a2, %pc_hi20(finish_show)
	addi.d	$a2, $a2, %pc_lo12(finish_show)
	st.d	$a2, $a1, 32
	ori	$a2, $zero, 37
	st.w	$a2, $a1, 40
	st.h	$zero, $a1, 48
	ori	$a2, $zero, 32
	st.h	$a2, $a1, 56
	addi.d	$a2, $a1, 64
	st.d	$a2, $fp, 0
	st.d	$a0, $a1, 64
	ld.h	$a2, $s1, 0
	pcalau12i	$a3, %got_pc_hi20(igs)
	ld.d	$a3, $a3, %got_pc_lo12(igs)
	ori	$a4, $zero, 52
	st.h	$a4, $a1, 72
	st.h	$a2, $a1, 74
	ld.d	$a1, $a3, 0
	ld.d	$a2, $s0, -16
	ld.hu	$a3, $s0, -6
	ld.hu	$a4, $s0, 0
	pcaddu18i	$ra, %call36(gs_charpath_n_init)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB10_10
# %bb.8:                                # %if.end15
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a1, $a0, %got_pc_lo12(osp)
	ld.d	$a0, $a1, 0
	addi.d	$a2, $a0, -32
	addi.d	$a0, $s0, -32
	st.d	$a2, $a1, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(show_continue)
	jr	$t8
.LBB10_9:
	addi.w	$a0, $zero, -25
	b	.LBB10_11
.LBB10_10:                              # %if.then14
	ld.d	$a1, $fp, 0
	ld.d	$a4, $a1, 0
	ld.w	$a2, $s1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a3, $a1, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 1
	move	$s0, $a0
	move	$a0, $a4
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	ld.d	$a1, $fp, 0
	addi.d	$a1, $a1, -64
	st.d	$a1, $fp, 0
.LBB10_11:                              # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end10:
	.size	zcharpath, .Lfunc_end10-zcharpath
                                        # -- End function
	.globl	zsetcachedevice                 # -- Begin function zsetcachedevice
	.p2align	5
	.type	zsetcachedevice,@function
zsetcachedevice:                        # @zsetcachedevice
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(esp)
	ld.d	$a1, $a1, %got_pc_lo12(esp)
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(estack)
	ld.d	$a2, $a2, %got_pc_lo12(estack)
	ori	$a3, $zero, 32
	ori	$a4, $zero, 1
	b	.LBB11_2
	.p2align	4, , 16
.LBB11_1:                               # %while.body.i
                                        #   in Loop: Header=BB11_2 Depth=1
	addi.d	$a1, $a1, -16
	bltu	$a1, $a2, .LBB11_9
.LBB11_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a1, 8
	andi	$a5, $a5, 252
	bne	$a5, $a3, .LBB11_1
# %bb.3:                                # %land.rhs.i
                                        #   in Loop: Header=BB11_2 Depth=1
	ld.hu	$a5, $a1, 0
	bne	$a5, $a4, .LBB11_1
# %bb.4:                                # %find_show.exit
	ld.d	$fp, $a1, 48
	ori	$a1, $zero, 6
	addi.d	$a2, $sp, 8
	move	$s0, $a0
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB11_10
# %bb.5:                                # %if.end
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB11_12
# %bb.6:
	addi.w	$s0, $zero, -6
.LBB11_7:                               # %if.end20
	fld.s	$fa0, $sp, 8
	fld.s	$fa1, $sp, 12
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	fld.s	$fa2, $sp, 16
	fld.s	$fa3, $sp, 20
	fld.s	$fa4, $sp, 24
	fld.s	$fa5, $sp, 28
	fcvt.d.s	$fa2, $fa2
	fcvt.d.s	$fa3, $fa3
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_setcachedevice)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB11_11
# %bb.8:                                # %if.end36
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a1, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a1, 0
	move	$a0, $zero
	alsl.d	$a2, $s0, $a2, 4
	st.d	$a2, $a1, 0
	b	.LBB11_11
.LBB11_9:                               # %find_show.exit.thread
	ori	$a1, $zero, 6
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
.LBB11_10:                              # %cleanup
	addi.w	$a0, $zero, -21
.LBB11_11:                              # %cleanup
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB11_12:                              # %if.then3
	move	$a1, $s0
	ld.h	$a2, $s0, 8
	bstrpick.d	$a2, $a2, 7, 2
	ori	$a3, $zero, 10
	beq	$a2, $a3, .LBB11_14
# %bb.13:                               # %if.then3
	bnez	$a2, .LBB11_18
.LBB11_14:                              # %sw.epilog
	ld.hu	$a2, $a1, 10
	ori	$a3, $zero, 4
	bne	$a2, $a3, .LBB11_11
# %bb.15:                               # %lor.lhs.false
	move	$s1, $a0
	addi.d	$a0, $a1, -16
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB11_19
# %bb.16:                               # %lor.lhs.false11
	ld.d	$a0, $s0, 0
	addi.d	$a0, $a0, 48
	addi.d	$a2, $sp, 16
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	bltz	$a1, .LBB11_11
# %bb.17:
	addi.w	$s0, $zero, -3
	b	.LBB11_7
.LBB11_18:
	addi.w	$a0, $zero, -20
	b	.LBB11_11
.LBB11_19:
	move	$a0, $s1
	b	.LBB11_11
.Lfunc_end11:
	.size	zsetcachedevice, .Lfunc_end11-zsetcachedevice
                                        # -- End function
	.globl	zsetcharwidth                   # -- Begin function zsetcharwidth
	.p2align	5
	.type	zsetcharwidth,@function
zsetcharwidth:                          # @zsetcharwidth
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(esp)
	ld.d	$a1, $a1, %got_pc_lo12(esp)
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(estack)
	ld.d	$a2, $a2, %got_pc_lo12(estack)
	ori	$a3, $zero, 32
	ori	$a4, $zero, 1
	b	.LBB12_2
	.p2align	4, , 16
.LBB12_1:                               # %while.body.i
                                        #   in Loop: Header=BB12_2 Depth=1
	addi.d	$a1, $a1, -16
	bltu	$a1, $a2, .LBB12_9
.LBB12_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a1, 8
	andi	$a5, $a5, 252
	bne	$a5, $a3, .LBB12_1
# %bb.3:                                # %land.rhs.i
                                        #   in Loop: Header=BB12_2 Depth=1
	ld.hu	$a5, $a1, 0
	bne	$a5, $a4, .LBB12_1
# %bb.4:                                # %find_show.exit
	ld.d	$fp, $a1, 48
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB12_10
# %bb.5:                                # %if.end
	bltz	$a0, .LBB12_8
# %bb.6:                                # %lor.lhs.false
	fld.s	$fa0, $sp, 8
	fld.s	$fa1, $sp, 12
	fcvt.d.s	$fa0, $fa0
	fcvt.d.s	$fa1, $fa1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_setcharwidth)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB12_8
# %bb.7:                                # %if.end9
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a1, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a1, 0
	move	$a0, $zero
	addi.d	$a2, $a2, -32
	st.d	$a2, $a1, 0
.LBB12_8:                               # %cleanup
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB12_9:                               # %find_show.exit.thread
	ori	$a1, $zero, 2
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
.LBB12_10:
	addi.w	$a0, $zero, -21
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	zsetcharwidth, .Lfunc_end12-zsetcharwidth
                                        # -- End function
	.globl	ztype1addpath                   # -- Begin function ztype1addpath
	.p2align	5
	.type	ztype1addpath,@function
ztype1addpath:                          # @ztype1addpath
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(esp)
	ld.d	$a1, $a1, %got_pc_lo12(esp)
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(estack)
	ld.d	$a2, $a2, %got_pc_lo12(estack)
	move	$s1, $a0
	ori	$a0, $zero, 32
	ori	$a3, $zero, 1
	b	.LBB13_2
	.p2align	4, , 16
.LBB13_1:                               # %while.body.i
                                        #   in Loop: Header=BB13_2 Depth=1
	addi.d	$a1, $a1, -16
	bltu	$a1, $a2, .LBB13_5
.LBB13_2:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a1, 8
	andi	$a4, $a4, 252
	bne	$a4, $a0, .LBB13_1
# %bb.3:                                # %land.rhs.i
                                        #   in Loop: Header=BB13_2 Depth=1
	ld.hu	$a4, $a1, 0
	bne	$a4, $a3, .LBB13_1
# %bb.4:                                # %while.end.i
	ld.d	$s2, $a1, 48
	b	.LBB13_6
.LBB13_5:
	move	$s2, $zero
.LBB13_6:                               # %find_show.exit
	pcalau12i	$a0, %got_pc_hi20(igs)
	ld.d	$s4, $a0, %got_pc_lo12(igs)
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(gs_currentfont)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB13_26
# %bb.7:                                # %if.end
	ld.hu	$a1, $s1, 8
	andi	$a1, $a1, 252
	ori	$a2, $zero, 52
	bne	$a1, $a2, .LBB13_27
# %bb.8:                                # %if.end5
	ld.d	$s5, $a0, 32
	ld.d	$a1, $s5, 104
	vld	$vr0, $s5, 80
	st.d	$a1, $sp, 136
	vst	$vr0, $sp, 112
	st.d	$s5, $sp, 80
	addi.d	$s0, $sp, 96
	ld.hu	$a2, $s1, 10
	st.d	$s0, $sp, 88
	addi.d	$a3, $sp, 80
	addi.w	$a1, $a1, 0
	st.d	$a3, $sp, 128
	bge	$a1, $a2, .LBB13_25
# %bb.9:                                # %if.end11
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(gs_type1_state_sizeof)
	ld.d	$s6, $a0, %got_pc_lo12(gs_type1_state_sizeof)
	ld.w	$a1, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(alloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_29
# %bb.10:                               # %if.end16
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(gs_show_in_charpath)
	jirl	$ra, $ra, 0
	ld.w	$a3, $s3, 156
	ld.d	$a4, $s1, 0
	move	$a2, $a0
	addi.d	$a5, $sp, 112
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(gs_type1_init)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB13_30
# %bb.11:                               # %more.preheader
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gs_type1_interpret)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 1
	blt	$a0, $s7, .LBB13_24
# %bb.12:                               # %if.then26.lr.ph.lr.ph
	addi.d	$s1, $s5, 48
	addi.d	$s8, $sp, 104
	addi.d	$s3, $sp, 112
	pcalau12i	$a1, %pc_hi20(.LJTI13_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI13_0)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a1, $zero, -15
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a1, $zero, -21
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.w	$a1, $zero, -10
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$s2, $zero, 52
                                        # implicit-def: $r5
                                        # kill: killed $r5
	.p2align	4, , 16
.LBB13_13:                              # %if.then26
                                        # =>This Inner Loop Header: Depth=1
	andi	$a1, $a0, 1
	beqz	$a1, .LBB13_18
# %bb.14:                               # %if.then28
                                        #   in Loop: Header=BB13_13 Depth=1
	ld.hu	$a1, $s5, 42
	bstrpick.d	$a0, $a0, 31, 1
	bgeu	$a0, $a1, .LBB13_31
# %bb.15:                               # %if.end34
                                        #   in Loop: Header=BB13_13 Depth=1
	ld.d	$a1, $s5, 32
	addi.w	$a0, $a0, 0
	alsl.d	$a2, $a0, $a1, 4
	addi.d	$a3, $sp, 72
	move	$a0, $s1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(dict_lookup)
	jirl	$ra, $ra, 0
	blt	$a0, $s7, .LBB13_32
# %bb.16:                               # %if.end43
                                        #   in Loop: Header=BB13_13 Depth=1
	ld.d	$a0, $sp, 72
	ld.hu	$a1, $a0, 8
	andi	$a1, $a1, 252
	bne	$a1, $s2, .LBB13_33
# %bb.17:                               # %cleanup
                                        #   in Loop: Header=BB13_13 Depth=1
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_type1_interpret)
	jirl	$ra, $ra, 0
	bgtz	$a0, .LBB13_13
	b	.LBB13_24
.LBB13_18:                              # %if.else
                                        #   in Loop: Header=BB13_13 Depth=1
	ld.d	$a1, $s4, 0
	ld.d	$a1, $a1, 256
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 176
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_type1_pop)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 1
	addi.d	$a0, $a0, -1
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB13_34
# %bb.19:                               # %if.else
                                        #   in Loop: Header=BB13_13 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB13_20:                              # %sw.bb
                                        #   in Loop: Header=BB13_13 Depth=1
	addi.d	$a1, $sp, 144
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_path_current_point)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 160
	ld.d	$a2, $sp, 168
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144
	ld.d	$a2, $sp, 152
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	st.b	$a0, $a3, 137
	move	$a0, $a3
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(gs_type1_pop)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(gs_type1_pop)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 176
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_type1_pop)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 88
	b	.LBB13_23
.LBB13_21:                              # %sw.bb70
                                        #   in Loop: Header=BB13_13 Depth=1
	addi.d	$a1, $sp, 160
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_path_current_point)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 137
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB13_23
.LBB13_22:                              # %sw.bb75
                                        #   in Loop: Header=BB13_13 Depth=1
	addi.d	$a1, $sp, 176
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_type1_pop)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 3
	st.d	$a0, $sp, 96
	st.d	$s8, $sp, 88
.LBB13_23:                              # %cleanup82
                                        #   in Loop: Header=BB13_13 Depth=1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gs_type1_interpret)
	jirl	$ra, $ra, 0
	bge	$a0, $s7, .LBB13_13
.LBB13_24:                              # %if.end85
	ld.w	$a2, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a3, $a1, %pc_lo12(.L.str)
	ori	$a1, $zero, 1
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bltz	$s0, .LBB13_28
.LBB13_25:                              # %if.then88
	pcalau12i	$a0, %got_pc_hi20(osp)
	ld.d	$a1, $a0, %got_pc_lo12(osp)
	ld.d	$a2, $a1, 0
	move	$a0, $zero
	addi.d	$a2, $a2, -16
	st.d	$a2, $a1, 0
	b	.LBB13_28
.LBB13_26:
	addi.w	$a0, $zero, -21
	b	.LBB13_28
.LBB13_27:
	addi.w	$a0, $zero, -20
.LBB13_28:                              # %cleanup91
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB13_29:
	addi.w	$a0, $zero, -25
	b	.LBB13_28
.LBB13_30:                              # %if.then21
	ld.w	$a2, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a3, $a1, %pc_lo12(.L.str)
	ori	$a1, $zero, 1
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB13_28
.LBB13_31:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	b	.LBB13_28
.LBB13_32:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB13_28
.LBB13_33:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB13_28
.LBB13_34:                              # %if.end85.thread
	ld.w	$a2, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -15
	b	.LBB13_28
.Lfunc_end13:
	.size	ztype1addpath, .Lfunc_end13-ztype1addpath
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI13_0:
	.word	.LBB13_20-.LJTI13_0
	.word	.LBB13_21-.LJTI13_0
	.word	.LBB13_23-.LJTI13_0
	.word	.LBB13_22-.LJTI13_0
                                        # -- End function
	.text
	.globl	ztype1imagepath                 # -- Begin function ztype1imagepath
	.p2align	5
	.type	ztype1imagepath,@function
ztype1imagepath:                        # @ztype1imagepath
# %bb.0:                                # %entry
	move	$a1, $a0
	ld.hu	$a0, $a0, -104
	andi	$a2, $a0, 252
	ori	$a3, $zero, 52
	addi.w	$a0, $zero, -20
	bne	$a2, $a3, .LBB14_10
# %bb.1:                                # %if.end
	ld.hu	$a2, $a1, -88
	andi	$a3, $a2, 252
	ori	$a2, $zero, 20
	bne	$a3, $a2, .LBB14_10
# %bb.2:                                # %if.end9
	ld.hu	$a3, $a1, -72
	andi	$a3, $a3, 252
	bne	$a3, $a2, .LBB14_10
# %bb.3:                                # %if.end17
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	move	$fp, $a1
	addi.d	$a0, $a1, -16
	ori	$a1, $zero, 4
	addi.d	$a2, $sp, 8
	pcaddu18i	$ra, %call36(num_params)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB14_9
# %bb.4:                                # %if.end21
	ld.hu	$a1, $fp, 8
	andi	$a2, $a1, 252
	ori	$a3, $zero, 52
	move	$a0, $s0
	bne	$a2, $a3, .LBB14_9
# %bb.5:                                # %if.end28
	andi	$a0, $a1, 256
	bnez	$a0, .LBB14_7
# %bb.6:
	addi.w	$a0, $zero, -7
	b	.LBB14_9
.LBB14_7:                               # %if.end33
	pcalau12i	$a0, %got_pc_hi20(igs)
	ld.d	$a0, $a0, %got_pc_lo12(igs)
	ld.d	$a0, $a0, 0
	fld.s	$fa0, $sp, 8
	ld.d	$a1, $fp, -112
	ld.w	$a2, $fp, -96
	ld.w	$a3, $fp, -80
	fcvt.d.s	$fa0, $fa0
	fld.s	$fa1, $sp, 12
	fld.s	$fa2, $sp, 16
	fld.s	$fa3, $sp, 20
	ld.d	$a4, $fp, 0
	ld.hu	$a5, $fp, 10
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fcvt.d.s	$fa3, $fa3
	pcaddu18i	$ra, %call36(gs_type1imagepath)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB14_9
# %bb.8:                                # %if.end55
	vld	$vr0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(osp)
	ld.d	$a1, $a1, %got_pc_lo12(osp)
	addi.d	$a2, $fp, -112
	vst	$vr0, $a2, 0
	ld.d	$a2, $a1, 0
	st.h	$a0, $fp, -102
	addi.d	$a0, $a2, -112
	st.d	$a0, $a1, 0
	move	$a0, $zero
.LBB14_9:
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB14_10:                              # %cleanup
	ret
.Lfunc_end14:
	.size	ztype1imagepath, .Lfunc_end14-ztype1imagepath
                                        # -- End function
	.globl	z1_subr_proc                    # -- Begin function z1_subr_proc
	.p2align	5
	.type	z1_subr_proc,@function
z1_subr_proc:                           # @z1_subr_proc
# %bb.0:                                # %entry
	move	$a3, $a0
	addi.w	$a0, $zero, -15
	bltz	$a1, .LBB15_4
# %bb.1:                                # %lor.lhs.false
	ld.d	$a3, $a3, 16
	ld.d	$a3, $a3, 0
	ld.hu	$a4, $a3, 74
	bgeu	$a1, $a4, .LBB15_4
# %bb.2:                                # %if.end
	ld.d	$a0, $a3, 64
	alsl.d	$a0, $a1, $a0, 4
	ld.hu	$a1, $a0, 8
	andi	$a1, $a1, 252
	ori	$a3, $zero, 52
	bne	$a1, $a3, .LBB15_5
# %bb.3:                                # %if.end9
	ld.d	$a1, $a0, 0
	move	$a0, $zero
	st.d	$a1, $a2, 0
.LBB15_4:                               # %cleanup
	ret
.LBB15_5:
	addi.w	$a0, $zero, -20
	ret
.Lfunc_end15:
	.size	z1_subr_proc, .Lfunc_end15-z1_subr_proc
                                        # -- End function
	.globl	z1_pop_proc                     # -- Begin function z1_pop_proc
	.p2align	5
	.type	z1_pop_proc,@function
z1_pop_proc:                            # @z1_pop_proc
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 16
	ld.d	$a2, $a0, 8
	ld.d	$a3, $a2, -8
	addi.d	$a2, $a2, -8
	st.d	$a2, $a0, 8
	st.d	$a3, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end16:
	.size	z1_pop_proc, .Lfunc_end16-z1_pop_proc
                                        # -- End function
	.globl	zchar_op_init                   # -- Begin function zchar_op_init
	.p2align	5
	.type	zchar_op_init,@function
zchar_op_init:                          # @zchar_op_init
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(zchar_op_init.my_defs)
	addi.d	$a0, $a0, %pc_lo12(zchar_op_init.my_defs)
	pcaddu18i	$t8, %call36(z_op_init)
	jr	$t8
.Lfunc_end17:
	.size	zchar_op_init, .Lfunc_end17-zchar_op_init
                                        # -- End function
	.globl	find_show                       # -- Begin function find_show
	.p2align	5
	.type	find_show,@function
find_show:                              # @find_show
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(esp)
	ld.d	$a0, $a0, %got_pc_lo12(esp)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(estack)
	ld.d	$a1, $a1, %got_pc_lo12(estack)
	ori	$a2, $zero, 32
	ori	$a3, $zero, 1
	b	.LBB18_2
	.p2align	4, , 16
.LBB18_1:                               # %while.body
                                        #   in Loop: Header=BB18_2 Depth=1
	addi.d	$a0, $a0, -16
	bltu	$a0, $a1, .LBB18_5
.LBB18_2:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a0, 8
	andi	$a4, $a4, 252
	bne	$a4, $a2, .LBB18_1
# %bb.3:                                # %land.rhs
                                        #   in Loop: Header=BB18_2 Depth=1
	ld.hu	$a4, $a0, 0
	bne	$a4, $a3, .LBB18_1
# %bb.4:                                # %while.end
	ld.d	$a0, $a0, 48
	ret
.LBB18_5:
	move	$a0, $zero
	ret
.Lfunc_end18:
	.size	find_show, .Lfunc_end18-find_show
                                        # -- End function
	.globl	free_show                       # -- Begin function free_show
	.p2align	5
	.type	free_show,@function
free_show:                              # @free_show
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(esp)
	ld.d	$fp, $a0, %got_pc_lo12(esp)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(gs_show_enum_sizeof)
	ld.d	$a1, $a1, %got_pc_lo12(gs_show_enum_sizeof)
	ld.d	$a0, $a0, 0
	ld.w	$a2, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a3, $a1, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(alloc_free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, -64
	st.d	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end19:
	.size	free_show, .Lfunc_end19-free_show
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"type1addpath"
	.size	.L.str, 13

	.type	zchar_op_init.my_defs,@object   # @zchar_op_init.my_defs
	.data
	.p2align	3, 0x0
zchar_op_init.my_defs:
	.dword	.L.str.1
	.dword	zashow
	.dword	.L.str.2
	.dword	zawidthshow
	.dword	.L.str.3
	.dword	zcharpath
	.dword	.L.str.4
	.dword	zkshow
	.dword	.L.str.5
	.dword	zsetcachedevice
	.dword	.L.str.6
	.dword	zsetcharwidth
	.dword	.L.str.7
	.dword	zshow
	.dword	.L.str.8
	.dword	zstringwidth
	.dword	.L.str.9
	.dword	ztype1addpath
	.dword	.L.str.10
	.dword	ztype1imagepath
	.dword	.L.str.11
	.dword	zwidthshow
	.space	16
	.size	zchar_op_init.my_defs, 192

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"3ashow"
	.size	.L.str.1, 7

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"6awidthshow"
	.size	.L.str.2, 12

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"2charpath"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"2kshow"
	.size	.L.str.4, 7

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"3setcachedevice"
	.size	.L.str.5, 16

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"2setcharwidth"
	.size	.L.str.6, 14

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"1show"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"1stringwidth"
	.size	.L.str.8, 13

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"1type1addpath"
	.size	.L.str.9, 14

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"8type1imagepath"
	.size	.L.str.10, 16

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"4widthshow"
	.size	.L.str.11, 11

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"setup_show"
	.size	.L.str.12, 11

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"free_show"
	.size	.L.str.13, 10

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym zshow
	.addrsig_sym finish_show
	.addrsig_sym show_continue
	.addrsig_sym zashow
	.addrsig_sym zwidthshow
	.addrsig_sym zawidthshow
	.addrsig_sym zkshow
	.addrsig_sym zstringwidth
	.addrsig_sym finish_stringwidth
	.addrsig_sym zcharpath
	.addrsig_sym zsetcachedevice
	.addrsig_sym zsetcharwidth
	.addrsig_sym ztype1addpath
	.addrsig_sym ztype1imagepath
	.addrsig_sym zchar_op_init.my_defs
	.addrsig_sym estack
