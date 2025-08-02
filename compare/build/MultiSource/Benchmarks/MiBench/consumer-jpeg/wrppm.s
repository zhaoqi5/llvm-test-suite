	.file	"wrppm.c"
	.text
	.globl	jinit_write_ppm                 # -- Begin function jinit_write_ppm
	.p2align	5
	.type	jinit_write_ppm,@function
jinit_write_ppm:                        # @jinit_write_ppm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 80
	ori	$s1, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a3, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(start_output_ppm)
	addi.d	$a0, $a0, %pc_lo12(start_output_ppm)
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(finish_output_ppm)
	addi.d	$a0, $a0, %pc_lo12(finish_output_ppm)
	st.d	$a0, $fp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(jpeg_calc_output_dimensions)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 128
	ld.w	$a1, $s0, 136
	ld.d	$a2, $s0, 8
	mul.d	$a0, $a1, $a0
	ld.d	$a3, $a2, 0
	st.w	$a0, $fp, 72
	bstrpick.d	$a2, $a0, 31, 0
	st.d	$a2, $fp, 64
	ori	$a1, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a3, 0
	ld.w	$a1, $s0, 100
	st.d	$a0, $fp, 48
	beqz	$a1, .LBB0_4
# %bb.1:                                # %if.then
	ld.d	$a0, $s0, 8
	ld.w	$a1, $s0, 128
	ld.w	$a2, $s0, 140
	ld.d	$a4, $a0, 16
	mul.w	$a2, $a2, $a1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a4, 0
	ld.w	$a1, $s0, 100
	st.d	$a0, $fp, 32
	st.w	$s1, $fp, 40
	beqz	$a1, .LBB0_5
# %bb.2:                                # %if.else
	ld.w	$a0, $s0, 56
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_6
# %bb.3:                                # %if.then19
	pcalau12i	$a0, %pc_hi20(put_demapped_gray)
	addi.d	$a0, $a0, %pc_lo12(put_demapped_gray)
	b	.LBB0_7
.LBB0_4:                                # %if.else26
	addi.d	$a1, $fp, 56
	st.d	$a0, $fp, 56
	st.d	$a1, $fp, 32
	st.w	$s1, $fp, 40
	pcalau12i	$a0, %pc_hi20(put_pixel_rows)
	addi.d	$a0, $a0, %pc_lo12(put_pixel_rows)
	b	.LBB0_7
.LBB0_5:                                # %if.then16
	pcalau12i	$a0, %pc_hi20(copy_pixel_rows)
	addi.d	$a0, $a0, %pc_lo12(copy_pixel_rows)
	b	.LBB0_7
.LBB0_6:                                # %if.else22
	pcalau12i	$a0, %pc_hi20(put_demapped_rgb)
	addi.d	$a0, $a0, %pc_lo12(put_demapped_rgb)
.LBB0_7:                                # %if.end35
	st.d	$a0, $fp, 8
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	jinit_write_ppm, .Lfunc_end0-jinit_write_ppm
                                        # -- End function
	.p2align	5                               # -- Begin function start_output_ppm
	.type	start_output_ppm,@function
start_output_ppm:                       # @start_output_ppm
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 56
	ori	$a3, $zero, 2
	beq	$a2, $a3, .LBB1_3
# %bb.1:                                # %entry
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB1_4
# %bb.2:                                # %sw.bb
	ld.d	$a5, $a1, 24
	ld.wu	$a2, $a0, 128
	ld.wu	$a3, $a0, 132
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	ori	$a4, $zero, 255
	move	$a0, $a5
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB1_3:                                # %sw.bb2
	ld.d	$a5, $a1, 24
	ld.wu	$a2, $a0, 128
	ld.wu	$a3, $a0, 132
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a4, $zero, 255
	move	$a0, $a5
	pcaddu18i	$t8, %call36(fprintf)
	jr	$t8
.LBB1_4:                                # %sw.default
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 0
	ori	$a3, $zero, 1025
	st.w	$a3, $a1, 40
	jr	$a2
.Lfunc_end1:
	.size	start_output_ppm, .Lfunc_end1-start_output_ppm
                                        # -- End function
	.p2align	5                               # -- Begin function finish_output_ppm
	.type	finish_output_ppm,@function
finish_output_ppm:                      # @finish_output_ppm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.d	$a1, $a1, 24
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 24
	pcaddu18i	$ra, %call36(ferror)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_2
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 36
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a1
.LBB2_2:                                # %if.end
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	finish_output_ppm, .Lfunc_end2-finish_output_ppm
                                        # -- End function
	.p2align	5                               # -- Begin function copy_pixel_rows
	.type	copy_pixel_rows,@function
copy_pixel_rows:                        # @copy_pixel_rows
# %bb.0:                                # %entry
	ld.w	$a2, $a1, 72
	ld.d	$a0, $a1, 48
	beqz	$a2, .LBB3_16
# %bb.1:                                # %iter.check
	ld.d	$a3, $a1, 32
	ld.d	$a4, $a3, 0
	ori	$a3, $zero, 16
	bltu	$a2, $a3, .LBB3_5
# %bb.2:                                # %iter.check
	sub.d	$a3, $a0, $a4
	ori	$a5, $zero, 64
	bltu	$a3, $a5, .LBB3_5
# %bb.3:                                # %vector.main.loop.iter.check
	bstrpick.d	$a3, $a2, 31, 0
	bgeu	$a2, $a5, .LBB3_6
# %bb.4:
	move	$a7, $zero
	b	.LBB3_10
.LBB3_5:
	move	$a5, $a4
	move	$a6, $a0
	b	.LBB3_14
.LBB3_6:                                # %vector.ph
	bstrpick.d	$a5, $a3, 31, 6
	slli.d	$a7, $a5, 6
	addi.d	$a5, $a0, 32
	addi.d	$a6, $a4, 32
	move	$t0, $a7
	.p2align	4, , 16
.LBB3_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$t0, $t0, -64
	addi.d	$a5, $a5, 64
	addi.d	$a6, $a6, 64
	bnez	$t0, .LBB3_7
# %bb.8:                                # %middle.block
	beq	$a7, $a3, .LBB3_15
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a5, $a3, 48
	beqz	$a5, .LBB3_13
.LBB3_10:                               # %vec.epilog.ph
	bstrpick.d	$a6, $a3, 31, 4
	slli.d	$t0, $a6, 4
	sub.d	$a2, $a2, $t0
	alsl.d	$a5, $a6, $a4, 4
	alsl.d	$a6, $a6, $a0, 4
	sub.d	$t1, $a7, $t0
	add.d	$a0, $a0, $a7
	add.d	$a4, $a4, $a7
	.p2align	4, , 16
.LBB3_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a0, 0
	addi.d	$t1, $t1, 16
	addi.d	$a0, $a0, 16
	addi.d	$a4, $a4, 16
	bnez	$t1, .LBB3_11
# %bb.12:                               # %vec.epilog.middle.block
	bne	$t0, $a3, .LBB3_14
	b	.LBB3_15
.LBB3_13:
	sub.d	$a2, $a2, $a7
	add.d	$a5, $a4, $a7
	add.d	$a6, $a0, $a7
	.p2align	4, , 16
.LBB3_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a0, $a5, 0
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a6, 1
	addi.w	$a2, $a2, -1
	st.b	$a0, $a6, 0
	move	$a6, $a3
	bnez	$a2, .LBB3_14
.LBB3_15:                               # %for.end.loopexit
	ld.d	$a0, $a1, 48
.LBB3_16:                               # %for.end
	ld.d	$a2, $a1, 64
	ld.d	$a3, $a1, 24
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end3:
	.size	copy_pixel_rows, .Lfunc_end3-copy_pixel_rows
                                        # -- End function
	.p2align	5                               # -- Begin function put_demapped_gray
	.type	put_demapped_gray,@function
put_demapped_gray:                      # @put_demapped_gray
# %bb.0:                                # %entry
	move	$a2, $a0
	ld.w	$a3, $a0, 128
	ld.d	$a0, $a1, 48
	beqz	$a3, .LBB4_4
# %bb.1:                                # %for.body.preheader
	ld.d	$a2, $a2, 152
	ld.d	$a4, $a1, 32
	ld.d	$a2, $a2, 0
	ld.d	$a4, $a4, 0
	.p2align	4, , 16
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a4, 0
	ldx.b	$a5, $a2, $a5
	addi.d	$a4, $a4, 1
	addi.d	$a6, $a0, 1
	addi.w	$a3, $a3, -1
	st.b	$a5, $a0, 0
	move	$a0, $a6
	bnez	$a3, .LBB4_2
# %bb.3:                                # %for.end.loopexit
	ld.d	$a0, $a1, 48
.LBB4_4:                                # %for.end
	ld.d	$a2, $a1, 64
	ld.d	$a3, $a1, 24
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end4:
	.size	put_demapped_gray, .Lfunc_end4-put_demapped_gray
                                        # -- End function
	.p2align	5                               # -- Begin function put_demapped_rgb
	.type	put_demapped_rgb,@function
put_demapped_rgb:                       # @put_demapped_rgb
# %bb.0:                                # %entry
	move	$a2, $a0
	ld.w	$a3, $a0, 128
	ld.d	$a0, $a1, 48
	beqz	$a3, .LBB5_4
# %bb.1:                                # %for.body.preheader
	ld.d	$a5, $a2, 152
	ld.d	$a6, $a1, 32
	ld.d	$a2, $a5, 0
	ld.d	$a4, $a5, 8
	ld.d	$a5, $a5, 16
	ld.d	$a6, $a6, 0
	.p2align	4, , 16
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a6, 0
	ldx.b	$t0, $a2, $a7
	st.b	$t0, $a0, 0
	ldx.b	$t0, $a4, $a7
	st.b	$t0, $a0, 1
	ldx.b	$a7, $a5, $a7
	addi.d	$a6, $a6, 1
	addi.d	$t0, $a0, 3
	addi.w	$a3, $a3, -1
	st.b	$a7, $a0, 2
	move	$a0, $t0
	bnez	$a3, .LBB5_2
# %bb.3:                                # %for.end.loopexit
	ld.d	$a0, $a1, 48
.LBB5_4:                                # %for.end
	ld.d	$a2, $a1, 64
	ld.d	$a3, $a1, 24
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end5:
	.size	put_demapped_rgb, .Lfunc_end5-put_demapped_rgb
                                        # -- End function
	.p2align	5                               # -- Begin function put_pixel_rows
	.type	put_pixel_rows,@function
put_pixel_rows:                         # @put_pixel_rows
# %bb.0:                                # %entry
	ld.d	$a0, $a1, 48
	ld.d	$a2, $a1, 64
	ld.d	$a3, $a1, 24
	ori	$a1, $zero, 1
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end6:
	.size	put_pixel_rows, .Lfunc_end6-put_pixel_rows
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"P5\n%ld %ld\n%d\n"
	.size	.L.str, 15

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"P6\n%ld %ld\n%d\n"
	.size	.L.str.1, 15

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_output_ppm
	.addrsig_sym finish_output_ppm
	.addrsig_sym copy_pixel_rows
	.addrsig_sym put_demapped_gray
	.addrsig_sym put_demapped_rgb
	.addrsig_sym put_pixel_rows
