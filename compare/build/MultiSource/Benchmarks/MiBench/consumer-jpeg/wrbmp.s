	.file	"wrbmp.c"
	.text
	.globl	jinit_write_bmp                 # -- Begin function jinit_write_bmp
	.p2align	5
	.type	jinit_write_bmp,@function
jinit_write_bmp:                        # @jinit_write_bmp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	move	$s1, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 80
	ori	$s2, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a3, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(start_output_bmp)
	addi.d	$a0, $a0, %pc_lo12(start_output_bmp)
	st.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(finish_output_bmp)
	ld.w	$a0, $fp, 56
	addi.d	$a1, $a1, %pc_lo12(finish_output_bmp)
	st.d	$a1, $s0, 16
	ori	$a1, $zero, 2
	st.w	$s1, $s0, 48
	beq	$a0, $a1, .LBB0_3
# %bb.1:                                # %entry
	beq	$a0, $s2, .LBB0_4
# %bb.2:                                # %if.else13
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 1005
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_6
.LBB0_3:                                # %if.then6
	ld.w	$a0, $fp, 100
	beqz	$a0, .LBB0_9
.LBB0_4:                                # %if.then
	pcalau12i	$a0, %pc_hi20(put_gray_rows)
	addi.d	$a0, $a0, %pc_lo12(put_gray_rows)
.LBB0_5:                                # %if.end16
	st.d	$a0, $s0, 8
.LBB0_6:                                # %if.end16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_calc_output_dimensions)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 128
	ld.w	$a1, $fp, 140
	mul.d	$a0, $a1, $a0
	ld.d	$a1, $fp, 8
	st.w	$a0, $s0, 64
	sub.d	$a2, $zero, $a0
	andi	$a2, $a2, 3
	ld.d	$a6, $a1, 32
	ld.w	$a4, $fp, 132
	add.w	$s1, $a0, $a2
	st.w	$s1, $s0, 68
	st.w	$a2, $s0, 72
	ori	$a1, $zero, 1
	ori	$a5, $zero, 1
	ori	$s2, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	move	$a3, $s1
	jirl	$ra, $a6, 0
	ld.d	$a1, $fp, 16
	st.d	$a0, $s0, 56
	st.w	$zero, $s0, 76
	beqz	$a1, .LBB0_8
# %bb.7:                                # %if.then23
	ld.w	$a0, $a1, 36
	addi.d	$a0, $a0, 1
	st.w	$a0, $a1, 36
.LBB0_8:                                # %if.end27
	ld.d	$a0, $fp, 8
	ld.d	$a4, $a0, 16
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a2, $s1
	jirl	$ra, $a4, 0
	st.d	$a0, $s0, 32
	st.w	$s2, $s0, 40
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_9:                                # %if.else10
	pcalau12i	$a0, %pc_hi20(put_pixel_rows)
	addi.d	$a0, $a0, %pc_lo12(put_pixel_rows)
	b	.LBB0_5
.Lfunc_end0:
	.size	jinit_write_bmp, .Lfunc_end0-jinit_write_bmp
                                        # -- End function
	.p2align	5                               # -- Begin function start_output_bmp
	.type	start_output_bmp,@function
start_output_bmp:                       # @start_output_bmp
# %bb.0:                                # %entry
	ret
.Lfunc_end1:
	.size	start_output_bmp, .Lfunc_end1-start_output_bmp
                                        # -- End function
	.p2align	5                               # -- Begin function finish_output_bmp
	.type	finish_output_bmp,@function
finish_output_bmp:                      # @finish_output_bmp
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$fp, $a0
	ld.d	$s0, $a1, 24
	ld.w	$a0, $a1, 48
	ld.d	$s3, $fp, 16
	beqz	$a0, .LBB2_3
# %bb.1:                                # %if.then
	ld.w	$a1, $fp, 56
	ori	$a2, $zero, 2
	ori	$a0, $zero, 1
	bne	$a1, $a2, .LBB2_5
# %bb.2:                                # %if.then.i
	ld.w	$a1, $fp, 100
	sltu	$s4, $zero, $a1
	ori	$a1, $zero, 24
	masknez	$a1, $a1, $s4
	ori	$a2, $zero, 8
	maskeqz	$a2, $a2, $s4
	or	$a1, $a2, $a1
	slli.d	$s2, $s4, 8
	b	.LBB2_6
.LBB2_3:                                # %if.else
	ld.w	$a2, $fp, 56
	ori	$a0, $zero, 2
	ori	$a1, $zero, 1
	bne	$a2, $a0, .LBB2_12
# %bb.4:                                # %if.then.i75
	ld.w	$a2, $fp, 100
	sltu	$s4, $zero, $a2
	ori	$a2, $zero, 24
	masknez	$a2, $a2, $s4
	ori	$a3, $zero, 8
	maskeqz	$a3, $a3, $s4
	or	$a2, $a3, $a2
	slli.d	$s2, $s4, 8
	b	.LBB2_13
.LBB2_5:
	ori	$s2, $zero, 256
	ori	$a1, $zero, 8
	ori	$s4, $zero, 1
.LBB2_6:                                # %if.end3.i
	ld.wu	$a2, $s1, 68
	ld.wu	$a3, $fp, 132
	alsl.d	$a4, $s2, $s2, 1
	ori	$a5, $a4, 26
	mul.d	$a2, $a3, $a2
	add.d	$a2, $a2, $a5
	st.w	$zero, $sp, 24
	lu12i.w	$a5, 4
	ori	$a5, $a5, 3394
	st.h	$a5, $sp, 18
	st.b	$a2, $sp, 20
	srli.d	$a5, $a2, 8
	st.b	$a5, $sp, 21
	srli.d	$a5, $a2, 16
	st.b	$a5, $sp, 22
	srli.d	$a2, $a2, 24
	st.b	$a2, $sp, 23
	ori	$a2, $zero, 26
	st.b	$a2, $sp, 28
	srli.d	$a2, $a4, 8
	st.b	$a2, $sp, 29
	ld.w	$a2, $fp, 128
	st.h	$zero, $sp, 30
	ori	$s5, $zero, 12
	st.w	$s5, $sp, 58
	st.b	$a2, $sp, 62
	srli.d	$a2, $a2, 8
	st.b	$a2, $sp, 63
	st.b	$a3, $sp, 64
	srli.d	$a2, $a3, 8
	st.b	$a2, $sp, 65
	st.h	$a0, $sp, 66
	st.b	$a1, $sp, 68
	st.b	$zero, $sp, 69
	addi.d	$a0, $sp, 18
	ori	$a1, $zero, 1
	ori	$a2, $zero, 14
	ori	$s6, $zero, 14
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB2_8
# %bb.7:                                # %if.then69.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 36
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_8:                                # %if.end71.i
	ld.d	$a3, $s1, 24
	addi.d	$a0, $sp, 58
	ori	$a1, $zero, 1
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB2_10
# %bb.9:                                # %if.then78.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 36
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_10:                               # %if.end83.i
	beqz	$s4, .LBB2_22
# %bb.11:                               # %if.then86.i
	ld.d	$a1, $s1, 24
	ori	$a3, $zero, 3
	b	.LBB2_21
.LBB2_12:
	ori	$s2, $zero, 256
	ori	$a2, $zero, 8
	ori	$s4, $zero, 1
.LBB2_13:                               # %if.end3.i32
	ld.wu	$a3, $s1, 68
	ld.wu	$a4, $fp, 132
	slli.d	$a5, $s2, 2
	ori	$a5, $a5, 54
	mul.d	$a3, $a4, $a3
	add.d	$a3, $a3, $a5
	st.w	$zero, $sp, 64
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 20
	st.d	$zero, $sp, 50
	lu12i.w	$a5, 4
	ori	$a5, $a5, 3394
	st.h	$a5, $sp, 58
	st.b	$a3, $sp, 60
	srli.d	$a5, $a3, 8
	st.b	$a5, $sp, 61
	srli.d	$a5, $a3, 16
	st.b	$a5, $sp, 62
	srli.d	$a3, $a3, 24
	st.b	$a3, $sp, 63
	ori	$a3, $zero, 54
	st.b	$a3, $sp, 68
	srli.d	$a3, $s2, 6
	st.b	$a3, $sp, 69
	ld.w	$a3, $fp, 128
	st.h	$zero, $sp, 70
	ori	$a5, $zero, 40
	st.h	$a5, $sp, 18
	st.b	$a3, $sp, 22
	srli.d	$a5, $a3, 8
	st.b	$a5, $sp, 23
	srli.d	$a5, $a3, 16
	st.b	$a5, $sp, 24
	srli.d	$a3, $a3, 24
	st.b	$a3, $sp, 25
	st.b	$a4, $sp, 26
	srli.d	$a3, $a4, 8
	st.b	$a3, $sp, 27
	srli.d	$a3, $a4, 16
	st.b	$a3, $sp, 28
	ld.bu	$a3, $fp, 368
	srli.d	$a4, $a4, 24
	st.b	$a4, $sp, 29
	st.b	$a1, $sp, 30
	st.b	$a2, $sp, 32
	bne	$a3, $a0, .LBB2_15
# %bb.14:                               # %if.then89.i
	ld.hu	$a0, $fp, 370
	ori	$a1, $zero, 100
	mul.d	$a0, $a0, $a1
	st.b	$a0, $sp, 42
	srli.d	$a2, $a0, 8
	st.b	$a2, $sp, 43
	ld.hu	$a2, $fp, 372
	srli.d	$a0, $a0, 16
	st.b	$a0, $sp, 44
	st.b	$zero, $sp, 45
	mul.d	$a0, $a2, $a1
	st.b	$a0, $sp, 46
	srli.d	$a1, $a0, 8
	st.b	$a1, $sp, 47
	srli.d	$a0, $a0, 16
	st.b	$a0, $sp, 48
	st.b	$zero, $sp, 49
.LBB2_15:                               # %if.end150.i
	st.b	$zero, $sp, 50
	srli.d	$a0, $s2, 8
	st.b	$a0, $sp, 51
	addi.d	$a0, $sp, 58
	ori	$a1, $zero, 1
	ori	$a2, $zero, 14
	ori	$s5, $zero, 14
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB2_17
# %bb.16:                               # %if.then161.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 36
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_17:                               # %if.end163.i
	ld.d	$a3, $s1, 24
	addi.d	$a0, $sp, 18
	ori	$a1, $zero, 1
	ori	$a2, $zero, 40
	ori	$s5, $zero, 40
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB2_19
# %bb.18:                               # %if.then170.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 36
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_19:                               # %if.end175.i
	beqz	$s4, .LBB2_22
# %bb.20:                               # %if.then178.i
	ld.d	$a1, $s1, 24
	ori	$a3, $zero, 4
.LBB2_21:                               # %if.end
	move	$a0, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(write_colormap)
	jirl	$ra, $ra, 0
.LBB2_22:                               # %if.end
	ld.w	$s2, $fp, 132
	beqz	$s2, .LBB2_32
# %bb.23:                               # %for.body.lr.ph
	bnez	$s3, .LBB2_25
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_24:                               # %for.cond.loopexit
                                        #   in Loop: Header=BB2_25 Depth=1
	beqz	$s2, .LBB2_33
.LBB2_25:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_27 Depth 2
	ld.wu	$a0, $fp, 132
	sub.d	$a1, $a0, $s2
	ld.d	$a2, $s3, 0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a1, $s3, 8
	st.d	$a0, $s3, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 8
	ld.d	$a5, $a0, 56
	ld.d	$a1, $s1, 56
	addi.w	$s2, $s2, -1
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a2, $s2
	move	$a4, $zero
	jirl	$ra, $a5, 0
	ld.w	$s4, $s1, 68
	beqz	$s4, .LBB2_24
# %bb.26:                               # %for.body15.preheader
                                        #   in Loop: Header=BB2_25 Depth=1
	ld.d	$s5, $a0, 0
	.p2align	4, , 16
.LBB2_27:                               # %for.body15
                                        #   Parent Loop BB2_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s5, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	addi.d	$s5, $s5, 1
	bnez	$s4, .LBB2_27
	b	.LBB2_24
	.p2align	4, , 16
.LBB2_28:                               # %for.cond.loopexit.us
                                        #   in Loop: Header=BB2_29 Depth=1
	beqz	$s2, .LBB2_32
.LBB2_29:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_31 Depth 2
	ld.d	$a0, $fp, 8
	ld.d	$a5, $a0, 56
	ld.d	$a1, $s1, 56
	addi.w	$s2, $s2, -1
	ori	$a3, $zero, 1
	move	$a0, $fp
	move	$a2, $s2
	move	$a4, $zero
	jirl	$ra, $a5, 0
	ld.w	$s4, $s1, 68
	beqz	$s4, .LBB2_28
# %bb.30:                               # %for.body15.us.preheader
                                        #   in Loop: Header=BB2_29 Depth=1
	ld.d	$s5, $a0, 0
	.p2align	4, , 16
.LBB2_31:                               # %for.body15.us
                                        #   Parent Loop BB2_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s5, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	addi.d	$s5, $s5, 1
	bnez	$s4, .LBB2_31
	b	.LBB2_28
.LBB2_32:                               # %for.end20
	beqz	$s3, .LBB2_34
.LBB2_33:                               # %if.then23
	ld.w	$a0, $s3, 32
	addi.d	$a0, $a0, 1
	st.w	$a0, $s3, 32
.LBB2_34:                               # %if.end24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ferror)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_36
# %bb.35:                               # %if.then28
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 36
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	jr	$a1
.LBB2_36:                               # %if.end30
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end2:
	.size	finish_output_bmp, .Lfunc_end2-finish_output_bmp
                                        # -- End function
	.p2align	5                               # -- Begin function put_gray_rows
	.type	put_gray_rows,@function
put_gray_rows:                          # @put_gray_rows
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 8
	move	$fp, $a1
	ld.d	$a5, $a0, 56
	ld.d	$a1, $a1, 56
	ld.w	$a2, $fp, 76
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a5, 0
	ld.w	$a1, $fp, 76
	ld.wu	$a2, $s0, 128
	ld.d	$a5, $a0, 0
	addi.d	$a0, $a1, 1
	addi.w	$a1, $a2, 0
	st.w	$a0, $fp, 76
	beqz	$a1, .LBB3_6
# %bb.1:                                # %for.body.preheader
	ld.d	$a0, $fp, 32
	ld.d	$a6, $a0, 0
	ori	$a0, $zero, 64
	bltu	$a2, $a0, .LBB3_7
# %bb.2:                                # %for.body.preheader
	sub.d	$a1, $a5, $a6
	bltu	$a1, $a0, .LBB3_7
# %bb.3:                                # %vector.ph
	bstrpick.d	$a0, $a2, 31, 6
	slli.d	$a4, $a0, 6
	sub.d	$a1, $a2, $a4
	add.d	$a0, $a5, $a4
	add.d	$a3, $a6, $a4
	addi.d	$a6, $a6, 32
	addi.d	$a5, $a5, 32
	move	$a7, $a4
	.p2align	4, , 16
.LBB3_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a6, -32
	xvld	$xr1, $a6, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a7, $a7, -64
	addi.d	$a6, $a6, 64
	addi.d	$a5, $a5, 64
	bnez	$a7, .LBB3_4
# %bb.5:                                # %middle.block
	bne	$a4, $a2, .LBB3_8
	b	.LBB3_10
.LBB3_6:
	move	$a0, $a5
	b	.LBB3_10
.LBB3_7:
	move	$a1, $a2
	move	$a0, $a5
	move	$a3, $a6
.LBB3_8:                                # %for.body.preheader22
	move	$a2, $a0
	.p2align	4, , 16
.LBB3_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a3, 0
	addi.d	$a3, $a3, 1
	addi.d	$a0, $a2, 1
	addi.w	$a1, $a1, -1
	st.b	$a4, $a2, 0
	move	$a2, $a0
	bnez	$a1, .LBB3_9
.LBB3_10:                               # %for.end
	ld.w	$a2, $fp, 72
	blt	$a2, $s1, .LBB3_12
# %bb.11:                               # %while.body.preheader
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB3_12:                               # %while.end
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	put_gray_rows, .Lfunc_end3-put_gray_rows
                                        # -- End function
	.p2align	5                               # -- Begin function put_pixel_rows
	.type	put_pixel_rows,@function
put_pixel_rows:                         # @put_pixel_rows
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a0, $a0, 8
	move	$fp, $a1
	ld.d	$a5, $a0, 56
	ld.d	$a1, $a1, 56
	ld.w	$a2, $fp, 76
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a5, 0
	ld.w	$a2, $fp, 76
	ld.w	$a1, $s0, 128
	ld.d	$a0, $a0, 0
	addi.d	$a2, $a2, 1
	st.w	$a2, $fp, 76
	beqz	$a1, .LBB4_3
# %bb.1:                                # %for.body.preheader
	ld.d	$a2, $fp, 32
	ld.d	$a2, $a2, 0
	.p2align	4, , 16
.LBB4_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $a2, 0
	st.b	$a3, $a0, 2
	ld.b	$a3, $a2, 1
	st.b	$a3, $a0, 1
	ld.b	$a3, $a2, 2
	addi.d	$a2, $a2, 3
	st.b	$a3, $a0, 0
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 3
	bnez	$a1, .LBB4_2
.LBB4_3:                                # %for.end
	ld.w	$a2, $fp, 72
	blt	$a2, $s1, .LBB4_5
# %bb.4:                                # %while.body.preheader
	move	$a1, $zero
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB4_5:                                # %while.end
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	put_pixel_rows, .Lfunc_end4-put_pixel_rows
                                        # -- End function
	.p2align	5                               # -- Begin function write_colormap
	.type	write_colormap,@function
write_colormap:                         # @write_colormap
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$s2, $a0
	ld.d	$s3, $a0, 152
	move	$s1, $a3
	move	$s0, $a2
	move	$fp, $a1
	beqz	$s3, .LBB5_6
# %bb.1:                                # %if.then
	ld.w	$a0, $s2, 136
	ld.w	$s4, $s2, 148
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB5_9
# %bb.2:                                # %for.cond.preheader
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB5_16
# %bb.3:                                # %for.body.lr.ph
	move	$s5, $zero
	ori	$a0, $zero, 4
	bne	$s1, $a0, .LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 16
	ldx.bu	$a0, $a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 8
	ldx.bu	$a0, $a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldx.bu	$a0, $a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	bne	$s4, $s5, .LBB5_4
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 16
	ldx.bu	$a0, $a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 8
	ldx.bu	$a0, $a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldx.bu	$a0, $a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	bne	$s4, $s5, .LBB5_5
	b	.LBB5_13
.LBB5_6:                                # %for.cond49.preheader
	move	$s3, $zero
	ori	$s4, $zero, 256
	ori	$a0, $zero, 4
	bne	$s1, $a0, .LBB5_8
	.p2align	4, , 16
.LBB5_7:                                # %for.body52.us
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	bne	$s3, $s4, .LBB5_7
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_8:                                # %for.body52
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 1
	bne	$s3, $s4, .LBB5_8
	b	.LBB5_13
.LBB5_9:                                # %for.cond20.preheader
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB5_19
# %bb.10:                               # %for.body23.lr.ph
	move	$s5, $zero
	ori	$a0, $zero, 4
	bne	$s1, $a0, .LBB5_12
	.p2align	4, , 16
.LBB5_11:                               # %for.body23.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldx.bu	$a0, $a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldx.bu	$a0, $a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldx.bu	$a0, $a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	bne	$s4, $s5, .LBB5_11
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_12:                               # %for.body23
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	ldx.bu	$a0, $a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldx.bu	$a0, $a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	ldx.bu	$a0, $a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	bne	$s4, $s5, .LBB5_12
.LBB5_13:                               # %if.end64
	bgeu	$s0, $s4, .LBB5_15
# %bb.14:                               # %if.then67
	ld.d	$a0, $s2, 0
	st.w	$s4, $a0, 44
	ld.d	$a1, $s2, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 1039
	st.w	$a2, $a0, 40
	move	$a0, $s2
	jirl	$ra, $a1, 0
.LBB5_15:                               # %if.end71
	bltu	$s4, $s0, .LBB5_17
	b	.LBB5_21
.LBB5_16:
	move	$s4, $zero
.LBB5_17:                               # %for.body75.lr.ph
	sub.d	$s0, $s0, $s4
	ori	$a0, $zero, 4
	bne	$s1, $a0, .LBB5_20
	.p2align	4, , 16
.LBB5_18:                               # %for.body75.us
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB5_18
	b	.LBB5_21
.LBB5_19:
	move	$s4, $zero
	sub.d	$s0, $s0, $s4
	ori	$a0, $zero, 4
	beq	$s1, $a0, .LBB5_18
	.p2align	4, , 16
.LBB5_20:                               # %for.body75
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB5_20
.LBB5_21:                               # %for.end86
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end5:
	.size	write_colormap, .Lfunc_end5-write_colormap
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_output_bmp
	.addrsig_sym finish_output_bmp
	.addrsig_sym put_gray_rows
	.addrsig_sym put_pixel_rows
