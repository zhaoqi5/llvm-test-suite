	.file	"getpic.c"
	.text
	.globl	Decode_Picture                  # -- Begin function Decode_Picture
	.p2align	5
	.type	Decode_Picture,@function
Decode_Picture:                         # @Decode_Picture
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(picture_structure)
	ld.d	$a3, $a2, %got_pc_lo12(picture_structure)
	pcalau12i	$a2, %got_pc_hi20(Second_Field)
	ld.d	$fp, $a2, %got_pc_lo12(Second_Field)
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	ld.w	$a4, $a3, 0
	ld.w	$a2, $fp, 0
	ori	$a3, $zero, 3
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$s0, $a0
	bne	$a4, $a3, .LBB0_4
# %bb.1:                                # %entry
	beqz	$a2, .LBB0_4
# %bb.2:                                # %if.end.thread
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(picture_coding_type)
	ld.d	$a0, $a0, %got_pc_lo12(picture_coding_type)
	pcalau12i	$a1, %got_pc_hi20(Coded_Picture_Width)
	ld.d	$a1, $a1, %got_pc_lo12(Coded_Picture_Width)
	pcalau12i	$a2, %got_pc_hi20(Chroma_Width)
	ld.d	$a2, $a2, %got_pc_lo12(Chroma_Width)
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a4, $a3, 0
	ld.w	$a3, $a0, 0
	ld.w	$a1, $a1, 0
	ld.w	$a0, $a2, 0
	ori	$a2, $zero, 3
	st.w	$zero, $fp, 0
	bne	$a3, $a2, .LBB0_10
# %bb.3:
	move	$a2, $zero
	b	.LBB0_5
.LBB0_4:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(picture_coding_type)
	ld.d	$a0, $a0, %got_pc_lo12(picture_coding_type)
	pcalau12i	$a1, %got_pc_hi20(Coded_Picture_Width)
	ld.d	$a1, $a1, %got_pc_lo12(Coded_Picture_Width)
	pcalau12i	$a5, %got_pc_hi20(Chroma_Width)
	ld.d	$a5, $a5, %got_pc_lo12(Chroma_Width)
	ld.w	$a6, $a0, 0
	ld.w	$a1, $a1, 0
	ld.w	$a0, $a5, 0
	bne	$a6, $a3, .LBB0_7
.LBB0_5:
	addi.d	$a3, $a4, -2
	sltui	$a4, $a3, 1
	pcalau12i	$a3, %got_pc_hi20(auxframe)
	ld.d	$a5, $a3, %got_pc_lo12(auxframe)
	ld.d	$a3, $a5, 0
	beqz	$a4, .LBB0_12
# %bb.6:                                # %if.then19.us.2.i
	ld.d	$a4, $a5, 8
	ld.d	$a5, $a5, 16
	add.d	$a3, $a3, $a1
	add.d	$a1, $a4, $a0
	add.d	$a0, $a5, $a0
	b	.LBB0_13
.LBB0_7:                                # %entry.split.i
	beqz	$a2, .LBB0_10
# %bb.8:                                # %entry.split.split.i
	ori	$a3, $zero, 2
	bne	$a4, $a3, .LBB0_204
# %bb.9:                                # %for.body.us25.preheader.i
	pcalau12i	$a3, %got_pc_hi20(backward_reference_frame)
	ld.d	$a3, $a3, %got_pc_lo12(backward_reference_frame)
	ld.d	$a4, $a3, 0
	pcalau12i	$a5, %got_pc_hi20(current_frame)
	ld.d	$a5, $a5, %got_pc_lo12(current_frame)
	ld.d	$a6, $a3, 8
	add.d	$a1, $a4, $a1
	ld.d	$a3, $a3, 16
	st.d	$a1, $a5, 0
	add.d	$a1, $a6, $a0
	st.d	$a1, $a5, 8
	add.d	$a0, $a3, $a0
	st.d	$a0, $a5, 16
	pcalau12i	$a0, %got_pc_hi20(Ersatz_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Ersatz_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_14
	b	.LBB0_15
.LBB0_10:                               # %for.body.us13.preheader.i
	pcalau12i	$a2, %got_pc_hi20(backward_reference_frame)
	ld.d	$a2, $a2, %got_pc_lo12(backward_reference_frame)
	pcalau12i	$a3, %got_pc_hi20(forward_reference_frame)
	ld.d	$a5, $a3, %got_pc_lo12(forward_reference_frame)
	ld.d	$a6, $a2, 0
	ld.d	$a3, $a5, 0
	st.d	$a6, $a5, 0
	ori	$a5, $zero, 2
	st.d	$a3, $a2, 0
	bne	$a4, $a5, .LBB0_198
# %bb.11:                               # %if.then19.us15.2.i
	pcalau12i	$a2, %got_pc_hi20(forward_reference_frame)
	ld.d	$a2, $a2, %got_pc_lo12(forward_reference_frame)
	ld.d	$a4, $a2, 8
	ld.d	$a5, $a2, 16
	add.d	$a3, $a3, $a1
	add.d	$a1, $a4, $a0
	add.d	$a0, $a5, $a0
	b	.LBB0_199
.LBB0_12:                               # %for.inc.us.1.i
	ld.d	$a1, $a5, 8
	ld.d	$a0, $a5, 16
.LBB0_13:                               # %for.inc.us.2.i
	pcalau12i	$a4, %got_pc_hi20(current_frame)
	ld.d	$a4, $a4, %got_pc_lo12(current_frame)
	st.d	$a3, $a4, 0
	st.d	$a1, $a4, 8
	st.d	$a0, $a4, 16
	pcalau12i	$a0, %got_pc_hi20(Ersatz_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Ersatz_Flag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_15
.LBB0_14:                               # %if.then2
	move	$a0, $s0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Substitute_Frame_Buffer)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 0
.LBB0_15:                               # %if.end3
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(base)
	ld.d	$s6, $a0, %got_pc_lo12(base)
	ldptr.w	$a0, $s6, 3160
	beqz	$a0, .LBB0_18
# %bb.16:                               # %if.end3
	bnez	$a2, .LBB0_18
# %bb.17:                               # %if.then7
	pcaddu18i	$ra, %call36(Spatial_Prediction)
	jirl	$ra, $ra, 0
.LBB0_18:                               # %if.end8
	pcalau12i	$a0, %got_pc_hi20(mb_width)
	ld.d	$a1, $a0, %got_pc_lo12(mb_width)
	pcalau12i	$a0, %got_pc_hi20(mb_height)
	ld.d	$a0, $a0, %got_pc_lo12(mb_height)
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.w	$s0, $a1, 0
	ld.w	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(ld)
	ld.d	$fp, $a0, %got_pc_lo12(ld)
	pcalau12i	$a0, %got_pc_hi20(Fault_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Fault_Flag)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.w	$s3, $a1, 0
	st.d	$s6, $fp, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	pcaddu18i	$ra, %call36(next_start_code)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.w	$a0, $a0, -432
	addi.w	$a1, $zero, -175
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB0_27
.LBB0_19:                               # %if.then.i.i.i
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_22
# %bb.20:
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
.LBB0_21:                               # %picture_data.exit
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_22:                               # %picture_data.exit
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_197
# %bb.23:                               # %if.then.i
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 3
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_25
# %bb.24:                               # %if.then.i
	ld.w	$a2, $fp, 0
	ori	$a1, $zero, 1
	beqz	$a2, .LBB0_202
.LBB0_25:                               # %if.then2.i
	pcalau12i	$a1, %got_pc_hi20(picture_coding_type)
	ld.d	$a1, $a1, %got_pc_lo12(picture_coding_type)
	ld.w	$a1, $a1, 0
	bne	$a1, $a0, .LBB0_200
# %bb.26:                               # %if.then4.i
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a1, $a0, -1
	pcalau12i	$a0, %got_pc_hi20(auxframe)
	ld.d	$a0, $a0, %got_pc_lo12(auxframe)
	pcaddu18i	$ra, %call36(Write_Frame)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB0_201
	b	.LBB0_203
.LBB0_27:                               # %if.end4.i.i.lr.ph.i
	mul.d	$a0, $s1, $s0
	addi.d	$a1, $s3, -3
	sltu	$a1, $zero, $a1
	sra.w	$a0, $a0, $a1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$s8, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(enhan)
	ld.d	$a0, $a0, %got_pc_lo12(enhan)
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -176
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(concealment_motion_vectors)
	ld.d	$a0, $a0, %got_pc_lo12(concealment_motion_vectors)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 2048
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 208                  # 16-byte Folded Spill
	ori	$a0, $zero, 2047
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $sp, 192                  # 16-byte Folded Spill
	st.d	$s6, $sp, 224                   # 8-byte Folded Spill
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_28:                               #   in Loop: Header=BB0_31 Depth=1
	move	$s3, $a0
	pcaddu18i	$ra, %call36(Get_macroblock_address_increment)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB0_36
.LBB0_29:                               # %if.then25.i.i.i
                                        #   in Loop: Header=BB0_31 Depth=1
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_30:                               # %slice.exit.i
                                        #   in Loop: Header=BB0_31 Depth=1
	st.d	$s6, $fp, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	pcaddu18i	$ra, %call36(next_start_code)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.w	$a0, $a0, -432
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_19
.LBB0_31:                               # %if.end4.i.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
                                        #       Child Loop BB0_101 Depth 3
                                        #       Child Loop BB0_159 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	pcaddu18i	$ra, %call36(Flush_Buffer32)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(slice_header)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $s6, 3148
	bne	$a1, $s8, .LBB0_28
# %bb.32:                               # %if.then7.i.i.i
                                        #   in Loop: Header=BB0_31 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(next_start_code)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	addi.w	$a0, $a0, -432
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_205
# %bb.33:                               # %if.end17.i.i.i
                                        #   in Loop: Header=BB0_31 Depth=1
	pcaddu18i	$ra, %call36(Flush_Buffer32)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(slice_header)
	jirl	$ra, $ra, 0
	ldptr.w	$a1, $s6, 3164
	move	$s3, $a0
	beq	$a1, $s8, .LBB0_35
# %bb.34:                               # %if.then20.i.i.i
                                        #   in Loop: Header=BB0_31 Depth=1
	st.d	$s6, $fp, 0
.LBB0_35:                               # %if.end22.i.i.i
                                        #   in Loop: Header=BB0_31 Depth=1
	pcaddu18i	$ra, %call36(Get_macroblock_address_increment)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB0_29
.LBB0_36:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_31 Depth=1
	slli.d	$a1, $s3, 7
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	andi	$a3, $s2, 255
	add.d	$a1, $a3, $a1
	addi.d	$a1, $a1, -1
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	addi.w	$s0, $a0, -1
	st.w	$zero, $sp, 328
	st.d	$zero, $sp, 320
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	bge	$s0, $a0, .LBB0_22
# %bb.37:                               # %if.end7.i.i.preheader
                                        #   in Loop: Header=BB0_31 Depth=1
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	move	$s5, $zero
	ori	$s3, $zero, 1
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_38:                               # %motion_compensation.exit.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 3148
	ldx.w	$a1, $a3, $a1
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$s0, $s0, 1
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	addi.w	$s3, $s3, -1
	sltu	$a0, $zero, $a0
	addi.d	$a1, $a1, -3
	sltui	$a1, $a1, 1
	and	$a0, $a0, $a1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	sub.w	$s5, $s5, $a0
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ori	$s8, $zero, 1
	bge	$s0, $a0, .LBB0_22
.LBB0_39:                               # %if.end7.i.i
                                        #   Parent Loop BB0_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_101 Depth 3
                                        #       Child Loop BB0_159 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	st.d	$s6, $fp, 0
	beqz	$s3, .LBB0_48
# %bb.40:                               # %if.end36.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 168                   # 8-byte Folded Spill
	bne	$s3, $s8, .LBB0_58
.LBB0_41:                               # %if.then38.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ldptr.w	$a0, $s6, 3148
	ori	$s1, $zero, 1
	bne	$a0, $s8, .LBB0_43
# %bb.42:                               # %if.then.i25.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ldptr.w	$a0, $s6, 3164
	slti	$a0, $a0, 3
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $fp, 0
.LBB0_43:                               # %if.end3.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	addi.d	$a0, $sp, 340
	addi.d	$a1, $sp, 260
	addi.d	$a2, $sp, 256
	addi.d	$a3, $sp, 336
	addi.d	$a4, $sp, 356
	addi.d	$a5, $sp, 352
	addi.d	$a6, $sp, 348
	addi.d	$a7, $sp, 344
	addi.d	$t0, $sp, 332
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(macroblock_modes)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_196
# %bb.44:                               # %if.end5.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.wu	$s2, $sp, 340
	andi	$a0, $s2, 16
	ld.d	$s0, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_70
# %bb.45:                               # %if.then7.i16.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.w	$a2, $a1, 3144
	beqz	$a2, .LBB0_68
# %bb.46:                               # %if.then9.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ldptr.w	$a2, $a1, 3152
	beqz	$a2, .LBB0_67
# %bb.47:                               # %cond.true.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a2, %got_pc_hi20(Non_Linear_quantizer_scale)
	ld.d	$a2, $a2, %got_pc_lo12(Non_Linear_quantizer_scale)
	ldx.bu	$a0, $a2, $a0
	b	.LBB0_68
	.p2align	4, , 16
.LBB0_48:                               # %if.then9.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ldptr.w	$a0, $s6, 3148
	bne	$a0, $s8, .LBB0_51
# %bb.49:                               # %if.then9.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a0, $zero, 3164
	ldx.w	$a0, $s6, $a0
	bne	$a0, $s8, .LBB0_51
# %bb.50:                               # %if.then13.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.d	$a3, $fp, 0
.LBB0_51:                               # %if.end14.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a0, $zero, 23
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_30
# %bb.52:                               # %if.end14.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_30
# %bb.53:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ldptr.w	$a0, $s6, 3148
	bne	$a0, $s8, .LBB0_56
# %bb.54:                               # %if.else.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a0, $zero, 3164
	ldx.w	$a0, $s6, $a0
	bne	$a0, $s8, .LBB0_56
# %bb.55:                               # %if.then22.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $fp, 0
.LBB0_56:                               # %if.end23.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcaddu18i	$ra, %call36(Get_macroblock_address_increment)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB0_30
# %bb.57:                               #   in Loop: Header=BB0_39 Depth=2
	move	$s3, $a0
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 168                   # 8-byte Folded Spill
	beq	$s3, $s8, .LBB0_41
.LBB0_58:                               # %if.else50.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ldptr.w	$a0, $s6, 3148
	bne	$a0, $s8, .LBB0_60
# %bb.59:                               # %if.then.i33.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.d	$s6, $fp, 0
.LBB0_60:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$a0, $a0, %got_pc_lo12(block_count)
	ld.w	$a1, $a0, 0
	blt	$a1, $s8, .LBB0_62
# %bb.61:                               # %for.body.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1129
	slli.d	$a2, $a1, 7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
.LBB0_62:                               # %for.end.i27.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(picture_coding_type)
	ld.d	$a0, $a0, %got_pc_lo12(picture_coding_type)
	ld.w	$a0, $a0, 0
	st.w	$zero, $sp, 328
	st.d	$zero, $sp, 320
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_64
# %bb.63:                               # %if.then5.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.d	$zero, $sp, 304
	st.d	$zero, $sp, 288
.LBB0_64:                               # %if.end18.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 0
	ori	$a1, $zero, 2
	ori	$a4, $zero, 3
	beq	$a2, $a4, .LBB0_66
# %bb.65:                               # %if.else.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	addi.d	$a1, $a2, -2
	sltui	$a1, $a1, 1
	st.w	$a1, $sp, 276
	st.w	$a1, $sp, 272
	ori	$a1, $zero, 1
.LBB0_66:                               # %skipped_macroblock.exit.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.w	$a1, $sp, 336
	addi.d	$a0, $a0, -1
	ld.w	$s2, $sp, 340
	sltui	$a0, $a0, 1
	slli.d	$a0, $a0, 3
	st.w	$a0, $sp, 260
	bstrins.d	$s2, $zero, 0, 0
	st.w	$s2, $sp, 340
	b	.LBB0_122
.LBB0_67:                               # %cond.false.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	slli.d	$a0, $a0, 1
.LBB0_68:                               # %if.end13.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a3, $zero, 1
	ldptr.w	$a2, $s0, 3148
	stptr.w	$a0, $a1, 3168
	ori	$s1, $zero, 1
	bne	$a2, $a3, .LBB0_70
# %bb.69:                               # %if.then16.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	stptr.w	$a0, $s0, 3168
.LBB0_70:                               # %if.end19.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	andi	$a0, $s2, 8
	andi	$a1, $s2, 1
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	bnez	$a0, .LBB0_73
# %bb.71:                               # %lor.lhs.false.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_75
# %bb.72:                               # %lor.lhs.false.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_75
.LBB0_73:                               # %if.then25.i19.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $fp, 0
	ldptr.w	$a0, $a0, 3144
	beqz	$a0, .LBB0_76
# %bb.74:                               # %if.then28.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(f_code)
	ld.d	$a0, $a0, %got_pc_lo12(f_code)
	ld.w	$a4, $sp, 356
	ld.w	$a5, $sp, 352
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a0, 4
	ld.w	$a3, $sp, 348
	ld.w	$a2, $sp, 344
	addi.w	$a6, $a1, -1
	addi.w	$a7, $a0, -1
	st.d	$a2, $sp, 8
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 264
	addi.d	$a2, $sp, 272
	st.d	$a3, $sp, 0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(motion_vectors)
	jirl	$ra, $ra, 0
.LBB0_75:                               # %if.end36.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_77
	b	.LBB0_196
.LBB0_76:                               # %if.else30.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(forward_f_code)
	ld.d	$a0, $a0, %got_pc_lo12(forward_f_code)
	pcalau12i	$a1, %got_pc_hi20(full_pel_forward_vector)
	ld.d	$a1, $a1, %got_pc_lo12(full_pel_forward_vector)
	ld.w	$a0, $a0, 0
	ld.w	$a6, $a1, 0
	addi.w	$a2, $a0, -1
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 264
	move	$a3, $a2
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(motion_vector)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_196
.LBB0_77:                               # %if.end39.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	andi	$a0, $a0, 4
	beqz	$a0, .LBB0_81
# %bb.78:                               # %if.then42.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $fp, 0
	ldptr.w	$a0, $a0, 3144
	beqz	$a0, .LBB0_80
# %bb.79:                               # %if.then45.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(f_code)
	ld.d	$a0, $a0, %got_pc_lo12(f_code)
	ld.w	$a4, $sp, 356
	ld.w	$a5, $sp, 352
	ld.w	$a1, $a0, 8
	ld.w	$a0, $a0, 12
	ld.w	$a2, $sp, 344
	addi.w	$a6, $a1, -1
	addi.w	$a7, $a0, -1
	st.d	$a2, $sp, 8
	addi.d	$a0, $sp, 288
	addi.d	$a1, $sp, 264
	addi.d	$a2, $sp, 272
	ori	$a3, $zero, 1
	st.d	$zero, $sp, 0
	pcaddu18i	$ra, %call36(motion_vectors)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_81
	b	.LBB0_196
.LBB0_80:                               # %if.else48.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(backward_f_code)
	ld.d	$a0, $a0, %got_pc_lo12(backward_f_code)
	pcalau12i	$a1, %got_pc_hi20(full_pel_backward_vector)
	ld.d	$a1, $a1, %got_pc_lo12(full_pel_backward_vector)
	ld.w	$a0, $a0, 0
	ld.w	$a6, $a1, 0
	addi.w	$a2, $a0, -1
	addi.d	$a1, $sp, 264
	addi.d	$a0, $sp, 296
	move	$a3, $a2
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(motion_vector)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_196
	.p2align	4, , 16
.LBB0_81:                               # %if.end58.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_84
# %bb.82:                               # %if.end58.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_84
# %bb.83:                               # %if.then63.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(Flush_Buffer)
	jirl	$ra, $ra, 0
.LBB0_84:                               # %if.end64.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ldptr.w	$a0, $a1, 3148
	ori	$s0, $zero, 3
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	bne	$a0, $s1, .LBB0_87
# %bb.85:                               # %if.end64.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a0, $zero, 3164
	ldx.w	$a0, $a1, $a0
	bne	$a0, $s0, .LBB0_87
# %bb.86:                               # %if.then70.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $fp, 0
.LBB0_87:                               # %if.end71.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	andi	$a0, $a2, 2
	bnez	$a0, .LBB0_89
# %bb.88:                               # %if.else90.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$a0, $a0, %got_pc_lo12(block_count)
	ld.wu	$a0, $a0, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	sltui	$a1, $a1, 1
	addi.d	$a2, $zero, -1
	sll.w	$a0, $a2, $a0
	nor	$a0, $a0, $zero
	masknez	$s4, $a0, $a1
	b	.LBB0_94
	.p2align	4, , 16
.LBB0_89:                               # %if.then74.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcaddu18i	$ra, %call36(Get_coded_block_pattern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(chroma_format)
	ld.d	$a1, $a1, %got_pc_lo12(chroma_format)
	ld.w	$a1, $a1, 0
	move	$s4, $a0
	beq	$a1, $s0, .LBB0_92
# %bb.90:                               # %if.then74.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_94
# %bb.91:                               # %if.then78.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	slli.d	$s0, $s4, 2
	ori	$a0, $zero, 2
	b	.LBB0_93
.LBB0_92:                               # %if.then84.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	slli.d	$s0, $s4, 6
	ori	$a0, $zero, 6
.LBB0_93:                               # %if.end99.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	or	$s4, $a0, $s0
.LBB0_94:                               # %if.end99.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_196
# %bb.95:                               # %for.cond.preheader.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$s2, $a0, %got_pc_lo12(block_count)
	ld.w	$s0, $s2, 0
	blt	$s0, $s1, .LBB0_110
# %bb.96:                               # %for.body.i.preheader.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	move	$s5, $zero
	move	$s3, $zero
	addi.d	$s6, $zero, -1
	ori	$s7, $zero, 3176
	b	.LBB0_101
	.p2align	4, , 16
.LBB0_97:                               # %if.then117.i.i.i
                                        #   in Loop: Header=BB0_101 Depth=3
	addi.d	$a1, $sp, 320
	beqz	$a0, .LBB0_108
# %bb.98:                               # %if.then120.i.i.i
                                        #   in Loop: Header=BB0_101 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Decode_MPEG2_Intra_Block)
	jirl	$ra, $ra, 0
.LBB0_99:                               # %if.end129.i.i.i
                                        #   in Loop: Header=BB0_101 Depth=3
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_196
.LBB0_100:                              # %for.inc.i.i.i
                                        #   in Loop: Header=BB0_101 Depth=3
	ld.w	$s0, $s2, 0
	addi.d	$s3, $s3, 1
	addi.w	$s5, $s5, 1
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, 128
	bge	$s3, $s0, .LBB0_110
.LBB0_101:                              # %for.body.i.i.i
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	ldptr.w	$a0, $s8, 3148
	bne	$a0, $s1, .LBB0_103
# %bb.102:                              # %if.then107.i.i.i
                                        #   in Loop: Header=BB0_101 Depth=3
	st.d	$s8, $fp, 0
	b	.LBB0_104
	.p2align	4, , 16
.LBB0_103:                              # %for.body.if.end108_crit_edge.i.i.i
                                        #   in Loop: Header=BB0_101 Depth=3
	ld.d	$s8, $fp, 0
.LBB0_104:                              # %if.end108.i.i.i
                                        #   in Loop: Header=BB0_101 Depth=3
	add.d	$a0, $s8, $s7
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $s6
	srl.w	$a0, $s4, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_100
# %bb.105:                              # %if.then114.i.i.i
                                        #   in Loop: Header=BB0_101 Depth=3
	ori	$a0, $zero, 3144
	ldx.w	$a0, $s8, $a0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_97
# %bb.106:                              # %if.else123.i.i.i
                                        #   in Loop: Header=BB0_101 Depth=3
	beqz	$a0, .LBB0_109
# %bb.107:                              # %if.then126.i.i.i
                                        #   in Loop: Header=BB0_101 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Decode_MPEG2_Non_Intra_Block)
	jirl	$ra, $ra, 0
	b	.LBB0_99
.LBB0_108:                              # %if.else121.i.i.i
                                        #   in Loop: Header=BB0_101 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Decode_MPEG1_Intra_Block)
	jirl	$ra, $ra, 0
	b	.LBB0_99
.LBB0_109:                              # %if.else127.i.i.i
                                        #   in Loop: Header=BB0_101 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Decode_MPEG1_Non_Intra_Block)
	jirl	$ra, $ra, 0
	b	.LBB0_99
	.p2align	4, , 16
.LBB0_110:                              # %for.end.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(picture_coding_type)
	ld.d	$s0, $a0, %got_pc_lo12(picture_coding_type)
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_112
# %bb.111:                              # %if.then136.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(marker_bit)
	jirl	$ra, $ra, 0
.LBB0_112:                              # %if.end137.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_114
# %bb.113:                              # %if.end144.i.thread.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.w	$zero, $sp, 328
	st.d	$zero, $sp, 320
	andi	$a0, $s2, 9
	ori	$s8, $zero, 1
	beqz	$a0, .LBB0_116
	b	.LBB0_119
.LBB0_114:                              # %if.end144.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_137
# %bb.115:                              # %if.end174.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	andi	$a0, $s2, 9
	ori	$s8, $zero, 1
	bnez	$a0, .LBB0_119
.LBB0_116:                              # %if.end174.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.w	$a0, $s0, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_119
# %bb.117:                              # %if.then180.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$zero, $sp, 304
	st.d	$zero, $sp, 288
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB0_134
# %bb.118:                              # %if.then195.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a0, $zero, 2
	st.w	$a0, $sp, 336
.LBB0_119:                              # %if.end202.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.w	$a0, $sp, 256
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_121
.LBB0_120:                              # %if.then205.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
.LBB0_121:                              # %decode_macroblock.exit.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
.LBB0_122:                              # %if.end54.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(Two_Streams)
	ld.d	$a0, $a0, %got_pc_lo12(Two_Streams)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_166
# %bb.123:                              # %if.end54.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a0, $zero, 3148
	ldx.w	$a0, $a3, $a0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB0_166
# %bb.124:                              # %if.then58.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.d	$a3, $fp, 0
	beqz	$s5, .LBB0_131
# %bb.125:                              # %if.end23.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bne	$a0, $s0, .LBB0_149
.LBB0_126:                              # %if.end30.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	bne	$s5, $s8, .LBB0_135
.LBB0_127:                              # %if.then32.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	addi.d	$a0, $sp, 356
	addi.d	$a1, $sp, 348
	addi.d	$a2, $sp, 348
	addi.d	$a3, $sp, 348
	addi.d	$a4, $sp, 348
	addi.d	$a5, $sp, 348
	addi.d	$a6, $sp, 348
	addi.d	$a7, $sp, 348
	addi.d	$t0, $sp, 352
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(macroblock_modes)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $sp, 356
	andi	$s0, $a0, 2
	bnez	$s0, .LBB0_145
# %bb.128:                              # %if.end36.i36.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	andi	$a0, $a0, 16
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ori	$s1, $zero, 3
	bnez	$a0, .LBB0_146
.LBB0_129:                              # %if.end43.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	bnez	$s0, .LBB0_152
.LBB0_130:                              #   in Loop: Header=BB0_39 Depth=2
	move	$s4, $zero
	b	.LBB0_156
.LBB0_131:                              # %if.then.i53.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a0, $zero, 23
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_138
# %bb.132:                              # %if.else.i56.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB0_141
# %bb.133:                              # %if.end20.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcaddu18i	$ra, %call36(Get_macroblock_address_increment)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$a0, $s0, .LBB0_126
	b	.LBB0_149
.LBB0_134:                              # %if.else196.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.w	$s8, $sp, 336
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	st.w	$a0, $sp, 272
	ld.w	$a0, $sp, 256
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_120
	b	.LBB0_121
.LBB0_135:                              # %for.cond74.preheader.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$a0, $a0, %got_pc_lo12(block_count)
	ld.w	$a1, $a0, 0
	blt	$a1, $s8, .LBB0_164
# %bb.136:                              # %for.body77.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $fp, 0
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 1129
	slli.d	$a2, $a1, 7
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	b	.LBB0_164
.LBB0_137:                              # %if.then149.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	xvld	$xr0, $sp, 64                   # 32-byte Folded Reload
	xvst	$xr0, $sp, 288
	andi	$a0, $s2, 9
	ori	$s8, $zero, 1
	beqz	$a0, .LBB0_116
	b	.LBB0_119
.LBB0_138:                              # %if.then1.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcaddu18i	$ra, %call36(next_start_code)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(Show_Bits)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	addi.w	$a0, $a0, -432
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_148
# %bb.139:                              # %if.then5.i63.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_144
# %bb.140:                              # %if.then7.i65.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	b	.LBB0_143
.LBB0_141:                              # %if.then15.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_144
# %bb.142:                              # %if.then17.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %pc_hi20(.Lstr.8)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.8)
.LBB0_143:                              #   in Loop: Header=BB0_39 Depth=2
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_144:                              #   in Loop: Header=BB0_39 Depth=2
	move	$s5, $zero
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	b	.LBB0_165
.LBB0_145:                              # %if.then35.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.w	$a1, $sp, 352
	st.w	$a1, $sp, 332
	andi	$a0, $a0, 16
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ori	$s1, $zero, 3
	beqz	$a0, .LBB0_129
.LBB0_146:                              # %if.then39.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ldptr.w	$a2, $a1, 3152
	beqz	$a2, .LBB0_151
# %bb.147:                              # %cond.true.i39.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a2, %got_pc_hi20(Non_Linear_quantizer_scale)
	ld.d	$a2, $a2, %got_pc_lo12(Non_Linear_quantizer_scale)
	ldx.bu	$a0, $a2, $a0
	stptr.w	$a0, $a1, 3168
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	beqz	$s0, .LBB0_130
	b	.LBB0_152
.LBB0_148:                              # %if.end23.thread.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcaddu18i	$ra, %call36(Flush_Buffer32)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(slice_header)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcaddu18i	$ra, %call36(Get_macroblock_address_increment)
	jirl	$ra, $ra, 0
	slli.d	$a1, $s4, 7
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a2, $a2, 0
	andi	$a3, $s5, 255
	add.d	$a1, $a3, $a1
	addi.d	$a1, $a1, -1
	mul.d	$a1, $a2, $a1
	add.d	$a0, $a0, $a1
	addi.w	$a0, $a0, -1
	ori	$s5, $zero, 1
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	beq	$a0, $s0, .LBB0_127
.LBB0_149:                              # %if.then25.i35.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_165
# %bb.150:                              # %if.then27.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	b	.LBB0_165
.LBB0_151:                              # %cond.false.i52.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	slli.d	$a0, $a0, 1
	stptr.w	$a0, $a1, 3168
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	beqz	$s0, .LBB0_130
.LBB0_152:                              # %if.then46.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcaddu18i	$ra, %call36(Get_coded_block_pattern)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(chroma_format)
	ld.d	$a1, $a1, %got_pc_lo12(chroma_format)
	ld.w	$a1, $a1, 0
	move	$s4, $a0
	ori	$a0, $zero, 2
	beq	$a1, $a0, .LBB0_155
# %bb.153:                              # %if.then46.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	bne	$a1, $s1, .LBB0_156
# %bb.154:                              # %if.then56.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ori	$a1, $zero, 6
.LBB0_155:                              # %if.end63.sink.split.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	sll.w	$s0, $s4, $a1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	or	$s4, $a0, $s0
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
.LBB0_156:                              # %if.end63.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$s1, $a0, %got_pc_lo12(block_count)
	ld.w	$s2, $s1, 0
	ori	$s5, $zero, 1
	blt	$s2, $s5, .LBB0_162
# %bb.157:                              # %for.body.preheader.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$s0, $fp, 0
	move	$s5, $zero
	move	$s3, $zero
	addi.d	$s6, $zero, -1
	ori	$s7, $zero, 3176
	b	.LBB0_159
	.p2align	4, , 16
.LBB0_158:                              # %for.inc.i50.i.i
                                        #   in Loop: Header=BB0_159 Depth=3
	addi.d	$s3, $s3, 1
	addi.w	$s5, $s5, 1
	addi.d	$s6, $s6, -1
	addi.d	$s7, $s7, 128
	bge	$s3, $s2, .LBB0_161
.LBB0_159:                              # %for.body.i45.i.i
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a0, $s0, $s7
	ori	$a2, $zero, 128
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$a0, $s2, $s6
	srl.w	$a0, $s4, $a0
	andi	$a0, $a0, 1
	beqz	$a0, .LBB0_158
# %bb.160:                              # %if.then71.i.i.i
                                        #   in Loop: Header=BB0_159 Depth=3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(Decode_MPEG2_Non_Intra_Block)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	ld.w	$s2, $s1, 0
	b	.LBB0_158
.LBB0_161:                              #   in Loop: Header=BB0_39 Depth=2
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ori	$s8, $zero, 1
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ori	$s5, $zero, 1
	b	.LBB0_163
.LBB0_162:                              #   in Loop: Header=BB0_39 Depth=2
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ori	$s8, $zero, 1
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
.LBB0_163:                              # %if.end81.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
.LBB0_164:                              # %if.end81.i.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.d	$s6, $fp, 0
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
.LBB0_165:                              # %Decode_SNR_Macroblock.exit.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.d	$s5, $sp, 168                   # 8-byte Folded Spill
.LBB0_166:                              # %if.end59.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $sp, 332
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	div.w	$a1, $s0, $a0
	mul.d	$a0, $a1, $a0
	sub.d	$a0, $s0, $a0
	slli.w	$s4, $a0, 4
	andi	$s3, $s2, 1
	slli.w	$s5, $a1, 4
	bnez	$s3, .LBB0_169
# %bb.167:                              # %if.then.i92.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ld.w	$a7, $sp, 260
	ld.w	$a3, $sp, 336
	addi.w	$a2, $s2, 0
	addi.d	$a4, $sp, 288
	addi.d	$a5, $sp, 272
	addi.d	$a6, $sp, 264
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(form_predictions)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	ldptr.w	$a0, $s6, 3148
	beq	$a0, $s8, .LBB0_170
.LBB0_168:                              # %if.end3.i72.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$s7, $a0, %got_pc_lo12(block_count)
	ld.w	$a0, $s7, 0
	bge	$a0, $s8, .LBB0_171
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_169:                              # %if.end.i70.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	ldptr.w	$a0, $s6, 3148
	bne	$a0, $s8, .LBB0_168
.LBB0_170:                              # %if.then2.i91.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	st.d	$s6, $fp, 0
	pcalau12i	$a0, %got_pc_hi20(block_count)
	ld.d	$s7, $a0, %got_pc_lo12(block_count)
	ld.w	$a0, $s7, 0
	blt	$a0, $s8, .LBB0_38
.LBB0_171:                              # %for.body.lr.ph.i74.i.i
                                        #   in Loop: Header=BB0_39 Depth=2
	move	$s2, $zero
	move	$s1, $zero
	move	$s0, $zero
	ori	$s6, $zero, 3302
	b	.LBB0_174
	.p2align	4, , 16
.LBB0_172:                              # %for.cond124.preheader.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 0
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -124
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 1
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -122
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 2
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -120
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 3
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -118
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 4
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -116
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 5
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -114
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 6
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -112
	add.d	$a6, $a6, $a7
	ld.b	$a6, $a6, 128
	st.b	$a6, $a5, 7
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -110
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -108
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -106
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -104
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -102
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -100
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -98
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -96
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 15
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -94
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	addi.d	$a4, $a4, 8
	add.d	$a4, $a4, $a3
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -92
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -90
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -88
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -86
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -84
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -82
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -80
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 15
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -78
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	addi.d	$a4, $a4, 8
	add.d	$a4, $a4, $a3
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -76
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -74
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -72
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -70
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -68
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -66
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -64
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 15
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -62
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	addi.d	$a4, $a4, 8
	add.d	$a4, $a4, $a3
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -60
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -58
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -56
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -54
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -52
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -50
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -48
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 15
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -46
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	addi.d	$a4, $a4, 8
	add.d	$a4, $a4, $a3
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -44
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -42
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -40
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -38
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -36
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -34
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -32
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 15
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -30
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	addi.d	$a4, $a4, 8
	add.d	$a4, $a4, $a3
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -28
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -26
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -24
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -22
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -20
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -18
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -16
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	st.b	$a5, $a4, 15
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -14
	add.d	$a5, $a5, $a6
	ld.b	$a5, $a5, 128
	addi.d	$a4, $a4, 8
	add.d	$a3, $a4, $a3
	st.b	$a5, $a3, 8
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -12
	add.d	$a4, $a4, $a5
	ld.b	$a4, $a4, 128
	st.b	$a4, $a3, 9
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -10
	add.d	$a4, $a4, $a5
	ld.b	$a4, $a4, 128
	st.b	$a4, $a3, 10
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -8
	add.d	$a4, $a4, $a5
	ld.b	$a4, $a4, 128
	st.b	$a4, $a3, 11
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -6
	add.d	$a4, $a4, $a5
	ld.b	$a4, $a4, 128
	st.b	$a4, $a3, 12
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -4
	add.d	$a4, $a4, $a5
	ld.b	$a4, $a4, 128
	st.b	$a4, $a3, 13
	ld.d	$a4, $a1, 0
	ld.h	$a2, $a2, -2
	add.d	$a2, $a4, $a2
	ld.b	$a2, $a2, 128
	st.b	$a2, $a3, 14
	ld.d	$a1, $a1, 0
	ldx.h	$a0, $a0, $s6
	add.d	$a0, $a1, $a0
	ld.b	$a0, $a0, 128
.LBB0_173:                              # %Add_Block.exit.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	st.b	$a0, $a3, 15
	ld.w	$a0, $s7, 0
	addi.d	$s0, $s0, 1
	addi.d	$s6, $s6, 128
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 4
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	bge	$s0, $a0, .LBB0_38
.LBB0_174:                              # %for.body.i75.i.i
                                        #   Parent Loop BB0_31 Depth=1
                                        #     Parent Loop BB0_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$s8, $zero, 3
	beqz	$a0, .LBB0_177
# %bb.175:                              # %for.body.i75.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	ori	$a0, $zero, 3148
	ldx.w	$a0, $a3, $a0
	bne	$a0, $s8, .LBB0_177
# %bb.176:                              # %vector.body36
                                        #   in Loop: Header=BB0_174 Depth=3
	add.d	$a0, $a3, $s6
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s6
	xvld	$xr0, $a0, -126
	xvld	$xr1, $a0, -94
	xvld	$xr2, $a1, -126
	xvld	$xr3, $a1, -94
	xvadd.h	$xr0, $xr2, $xr0
	xvadd.h	$xr1, $xr3, $xr1
	xvst	$xr0, $a1, -126
	xvld	$xr0, $a0, -62
	xvld	$xr2, $a1, -62
	xvld	$xr3, $a0, -30
	xvld	$xr4, $a1, -30
	xvst	$xr1, $a1, -94
	xvadd.h	$xr0, $xr2, $xr0
	ld.d	$a0, $fp, 0
	xvadd.h	$xr1, $xr4, $xr3
	xvst	$xr0, $a1, -62
	xvst	$xr1, $a1, -30
	b	.LBB0_178
	.p2align	4, , 16
.LBB0_177:                              # %lor.lhs.false.i79.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	ld.d	$a0, $fp, 0
	ldptr.w	$a1, $a0, 3144
	beqz	$a1, .LBB0_180
.LBB0_178:                              # %if.then13.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	add.d	$a1, $a0, $s6
	vld	$vr0, $a1, -126
	vld	$vr1, $a1, -110
	vld	$vr6, $sp, 208                  # 16-byte Folded Reload
	vmax.h	$vr0, $vr0, $vr6
	vmax.h	$vr1, $vr1, $vr6
	vld	$vr7, $sp, 192                  # 16-byte Folded Reload
	vmin.h	$vr2, $vr0, $vr7
	vmin.h	$vr3, $vr1, $vr7
	vpickve2gr.h	$a2, $vr2, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 0
	vpickve2gr.h	$a2, $vr2, 1
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 1
	vpickve2gr.h	$a2, $vr2, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 2
	vpickve2gr.h	$a2, $vr2, 3
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 3
	vpickve2gr.h	$a2, $vr2, 4
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 4
	vpickve2gr.h	$a2, $vr2, 5
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 5
	vpickve2gr.h	$a2, $vr2, 6
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 6
	vpickve2gr.h	$a2, $vr2, 7
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr0, $a2, 7
	vpickve2gr.h	$a2, $vr3, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr1, $a2, 0
	vpickve2gr.h	$a2, $vr3, 1
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr1, $a2, 1
	vpickve2gr.h	$a2, $vr3, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr1, $a2, 2
	vpickve2gr.h	$a2, $vr3, 3
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr1, $a2, 3
	vpickve2gr.h	$a2, $vr3, 4
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr1, $a2, 4
	vpickve2gr.h	$a2, $vr3, 5
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr1, $a2, 5
	vpickve2gr.h	$a2, $vr3, 6
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr1, $a2, 6
	vpickve2gr.h	$a2, $vr3, 7
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr1, $a2, 7
	vld	$vr4, $a1, -94
	vld	$vr5, $a1, -78
	vst	$vr2, $a1, -126
	vst	$vr3, $a1, -110
	vmax.h	$vr2, $vr4, $vr6
	vmax.h	$vr3, $vr5, $vr6
	vmin.h	$vr4, $vr2, $vr7
	vmin.h	$vr3, $vr3, $vr7
	vpickve2gr.h	$a2, $vr4, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 0
	vpickve2gr.h	$a2, $vr4, 1
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 1
	vpickve2gr.h	$a2, $vr4, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 2
	vpickve2gr.h	$a2, $vr4, 3
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 3
	vpickve2gr.h	$a2, $vr4, 4
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 4
	vpickve2gr.h	$a2, $vr4, 5
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 5
	vpickve2gr.h	$a2, $vr4, 6
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 6
	vpickve2gr.h	$a2, $vr4, 7
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 7
	vpickve2gr.h	$a2, $vr3, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 0
	vpickve2gr.h	$a2, $vr3, 1
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 1
	vpickve2gr.h	$a2, $vr3, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 2
	vpickve2gr.h	$a2, $vr3, 3
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 3
	vpickve2gr.h	$a2, $vr3, 4
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 4
	vpickve2gr.h	$a2, $vr3, 5
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 5
	vpickve2gr.h	$a2, $vr3, 6
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 6
	vpickve2gr.h	$a2, $vr3, 7
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 7
	vst	$vr4, $a1, -94
	vst	$vr3, $a1, -78
	vld	$vr3, $a1, -62
	vld	$vr4, $a1, -46
	xvadd.w	$xr0, $xr0, $xr2
	xvadd.w	$xr1, $xr1, $xr5
	vmax.h	$vr2, $vr3, $vr6
	vmax.h	$vr3, $vr4, $vr6
	vmin.h	$vr4, $vr2, $vr7
	vmin.h	$vr3, $vr3, $vr7
	vpickve2gr.h	$a2, $vr4, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 0
	vpickve2gr.h	$a2, $vr4, 1
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 1
	vpickve2gr.h	$a2, $vr4, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 2
	vpickve2gr.h	$a2, $vr4, 3
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 3
	vpickve2gr.h	$a2, $vr4, 4
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 4
	vpickve2gr.h	$a2, $vr4, 5
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 5
	vpickve2gr.h	$a2, $vr4, 6
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 6
	vpickve2gr.h	$a2, $vr4, 7
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr2, $a2, 7
	vpickve2gr.h	$a2, $vr3, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 0
	vpickve2gr.h	$a2, $vr3, 1
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 1
	vpickve2gr.h	$a2, $vr3, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 2
	vpickve2gr.h	$a2, $vr3, 3
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 3
	vpickve2gr.h	$a2, $vr3, 4
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 4
	vpickve2gr.h	$a2, $vr3, 5
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 5
	vpickve2gr.h	$a2, $vr3, 6
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 6
	vpickve2gr.h	$a2, $vr3, 7
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 7
	vst	$vr4, $a1, -62
	vst	$vr3, $a1, -46
	vld	$vr3, $a1, -30
	vld	$vr4, $a1, -14
	xvadd.w	$xr2, $xr0, $xr2
	xvadd.w	$xr1, $xr1, $xr5
	vmax.h	$vr0, $vr3, $vr6
	vmax.h	$vr3, $vr4, $vr6
	vmin.h	$vr4, $vr0, $vr7
	vmin.h	$vr0, $vr3, $vr7
	vpickve2gr.h	$a2, $vr4, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr3, $a2, 0
	vpickve2gr.h	$a2, $vr4, 1
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr3, $a2, 1
	vpickve2gr.h	$a2, $vr4, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr3, $a2, 2
	vpickve2gr.h	$a2, $vr4, 3
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr3, $a2, 3
	vpickve2gr.h	$a2, $vr4, 4
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr3, $a2, 4
	vpickve2gr.h	$a2, $vr4, 5
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr3, $a2, 5
	vpickve2gr.h	$a2, $vr4, 6
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr3, $a2, 6
	vpickve2gr.h	$a2, $vr4, 7
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr3, $a2, 7
	vpickve2gr.h	$a2, $vr0, 0
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 0
	vpickve2gr.h	$a2, $vr0, 1
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 1
	vpickve2gr.h	$a2, $vr0, 2
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 2
	vpickve2gr.h	$a2, $vr0, 3
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 3
	vpickve2gr.h	$a2, $vr0, 4
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 4
	vpickve2gr.h	$a2, $vr0, 5
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 5
	vpickve2gr.h	$a2, $vr0, 6
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 6
	vpickve2gr.h	$a2, $vr0, 7
	bstrpick.d	$a2, $a2, 15, 0
	xvinsgr2vr.w	$xr5, $a2, 7
	vst	$vr4, $a1, -30
	xvadd.w	$xr2, $xr2, $xr3
	xvadd.w	$xr1, $xr1, $xr5
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 78
	xvshuf4i.w	$xr2, $xr2, 228
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvshuf4i.w	$xr2, $xr2, 14
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvrepl128vei.w	$xr2, $xr2, 1
	xvadd.w	$xr1, $xr1, $xr2
	xvpickve2gr.w	$a2, $xr1, 0
	andi	$a2, $a2, 1
	vst	$vr0, $a1, -14
	bnez	$a2, .LBB0_180
# %bb.179:                              # %if.then12.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	ldx.h	$a1, $a0, $s6
	xori	$a1, $a1, 1
	stx.h	$a1, $a0, $s6
.LBB0_180:                              # %if.end14.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	pcalau12i	$a1, %got_pc_hi20(Reference_IDCT_Flag)
	ld.d	$a1, $a1, %got_pc_lo12(Reference_IDCT_Flag)
	ld.w	$a1, $a1, 0
	add.d	$a0, $a0, $s6
	addi.d	$a0, $a0, -126
	beqz	$a1, .LBB0_185
# %bb.181:                              # %if.then16.i83.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	pcaddu18i	$ra, %call36(Reference_IDCT)
	jirl	$ra, $ra, 0
	andi	$a0, $s1, 1
	bltu	$s8, $s0, .LBB0_186
.LBB0_182:                              # %if.then.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	pcalau12i	$a1, %got_pc_hi20(current_frame)
	ld.d	$a1, $a1, %got_pc_lo12(current_frame)
	pcalau12i	$a2, %got_pc_hi20(Coded_Picture_Width)
	ld.d	$a2, $a2, %got_pc_lo12(Coded_Picture_Width)
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a4, $a3, 0
	ld.d	$a1, $a1, 0
	ld.w	$a3, $a2, 0
	bne	$a4, $s8, .LBB0_190
# %bb.183:                              # %if.then3.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	slli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	beqz	$a2, .LBB0_195
# %bb.184:                              # %if.then4.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	bstrpick.d	$a2, $s1, 31, 1
	or	$a2, $a2, $s5
	mul.w	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $s4
	add.d	$a5, $a1, $a0
	slli.w	$a3, $a3, 1
	b	.LBB0_193
	.p2align	4, , 16
.LBB0_185:                              # %if.else.i87.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	pcaddu18i	$ra, %call36(Fast_IDCT)
	jirl	$ra, $ra, 0
	andi	$a0, $s1, 1
	bgeu	$s8, $s0, .LBB0_182
.LBB0_186:                              # %if.else43.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	pcalau12i	$a1, %got_pc_hi20(chroma_format)
	ld.d	$a1, $a1, %got_pc_lo12(chroma_format)
	ld.w	$a4, $a1, 0
	addi.d	$a1, $a0, 1
	addi.d	$a0, $a4, -3
	sltu	$a0, $zero, $a0
	sra.w	$a0, $s4, $a0
	addi.d	$a2, $a4, -1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a5, $a3, 0
	sltui	$a2, $a2, 1
	sra.w	$a2, $s5, $a2
	slli.d	$a3, $a1, 3
	andi	$a1, $s0, 8
	bne	$a5, $s8, .LBB0_191
# %bb.187:                              # %if.then53.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	pcalau12i	$a5, %got_pc_hi20(current_frame)
	ld.d	$a5, $a5, %got_pc_lo12(current_frame)
	pcalau12i	$a6, %got_pc_hi20(Chroma_Width)
	ld.d	$a6, $a6, %got_pc_lo12(Chroma_Width)
	ldx.d	$a5, $a5, $a3
	ld.w	$a3, $a6, 0
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	beqz	$a6, .LBB0_192
# %bb.188:                              # %if.then53.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	ori	$a6, $zero, 1
	beq	$a4, $a6, .LBB0_192
# %bb.189:                              # %if.then56.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	bstrpick.d	$a2, $s1, 1, 1
	or	$a2, $a2, $s5
	mul.w	$a2, $a3, $a2
	add.d	$a2, $a5, $a2
	add.d	$a0, $a2, $a0
	add.d	$a5, $a0, $a1
	slli.w	$a3, $a3, 1
	b	.LBB0_193
	.p2align	4, , 16
.LBB0_190:                              # %if.else26.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	slli.w	$a3, $a3, 1
	andi	$a2, $s2, 8
	or	$a2, $a2, $s5
	mul.w	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $s4
	alsl.d	$a5, $a0, $a1, 3
	b	.LBB0_193
	.p2align	4, , 16
.LBB0_191:                              # %if.else86.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	pcalau12i	$a4, %got_pc_hi20(Chroma_Width)
	ld.d	$a4, $a4, %got_pc_lo12(Chroma_Width)
	pcalau12i	$a5, %got_pc_hi20(current_frame)
	ld.d	$a5, $a5, %got_pc_lo12(current_frame)
	ld.w	$a4, $a4, 0
	ldx.d	$a5, $a5, $a3
	slli.w	$a3, $a4, 1
.LBB0_192:                              # %if.end104.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	andi	$a4, $s2, 8
	add.d	$a2, $a2, $a4
	mul.w	$a2, $a3, $a2
	add.d	$a2, $a5, $a2
	add.d	$a0, $a2, $a0
	add.d	$a5, $a0, $a1
.LBB0_193:                              # %if.end104.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %got_pc_hi20(Clip)
	ld.d	$a1, $a1, %got_pc_lo12(Clip)
	add.d	$a2, $a0, $s6
	ld.d	$a4, $a1, 0
	ld.h	$a6, $a2, -126
	addi.d	$a3, $a3, -8
	add.d	$a6, $a4, $a6
	add.d	$a4, $a5, $a3
	bnez	$s3, .LBB0_172
# %bb.194:                              # %for.cond110.preheader.i.preheader.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	ld.bu	$a7, $a5, 0
	ldx.b	$a6, $a6, $a7
	st.b	$a6, $a5, 0
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -124
	ld.bu	$t0, $a5, 1
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 1
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -122
	ld.bu	$t0, $a5, 2
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 2
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -120
	ld.bu	$t0, $a5, 3
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 3
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -118
	ld.bu	$t0, $a5, 4
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 4
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -116
	ld.bu	$t0, $a5, 5
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 5
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -114
	ld.bu	$t0, $a5, 6
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 6
	ld.d	$a6, $a1, 0
	ld.h	$a7, $a2, -112
	ld.bu	$t0, $a5, 7
	add.d	$a6, $a6, $a7
	ldx.b	$a6, $a6, $t0
	st.b	$a6, $a5, 7
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -110
	ld.bu	$a7, $a4, 8
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -108
	ld.bu	$a7, $a4, 9
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -106
	ld.bu	$a7, $a4, 10
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -104
	ld.bu	$a7, $a4, 11
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -102
	ld.bu	$a7, $a4, 12
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -100
	ld.bu	$a7, $a4, 13
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -98
	ld.bu	$a7, $a4, 14
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -96
	ld.bu	$a7, $a4, 15
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	addi.d	$a6, $a4, 8
	st.b	$a5, $a4, 15
	add.d	$a4, $a6, $a3
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -94
	ld.bu	$a7, $a4, 8
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -92
	ld.bu	$a7, $a4, 9
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -90
	ld.bu	$a7, $a4, 10
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -88
	ld.bu	$a7, $a4, 11
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -86
	ld.bu	$a7, $a4, 12
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -84
	ld.bu	$a7, $a4, 13
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -82
	ld.bu	$a7, $a4, 14
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -80
	ld.bu	$a7, $a4, 15
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	addi.d	$a6, $a4, 8
	st.b	$a5, $a4, 15
	add.d	$a4, $a6, $a3
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -78
	ld.bu	$a7, $a4, 8
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -76
	ld.bu	$a7, $a4, 9
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -74
	ld.bu	$a7, $a4, 10
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -72
	ld.bu	$a7, $a4, 11
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -70
	ld.bu	$a7, $a4, 12
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -68
	ld.bu	$a7, $a4, 13
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -66
	ld.bu	$a7, $a4, 14
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -64
	ld.bu	$a7, $a4, 15
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	addi.d	$a6, $a4, 8
	st.b	$a5, $a4, 15
	add.d	$a4, $a6, $a3
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -62
	ld.bu	$a7, $a4, 8
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -60
	ld.bu	$a7, $a4, 9
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -58
	ld.bu	$a7, $a4, 10
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -56
	ld.bu	$a7, $a4, 11
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -54
	ld.bu	$a7, $a4, 12
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -52
	ld.bu	$a7, $a4, 13
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -50
	ld.bu	$a7, $a4, 14
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -48
	ld.bu	$a7, $a4, 15
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	addi.d	$a6, $a4, 8
	st.b	$a5, $a4, 15
	add.d	$a4, $a6, $a3
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -46
	ld.bu	$a7, $a4, 8
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -44
	ld.bu	$a7, $a4, 9
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -42
	ld.bu	$a7, $a4, 10
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -40
	ld.bu	$a7, $a4, 11
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -38
	ld.bu	$a7, $a4, 12
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -36
	ld.bu	$a7, $a4, 13
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -34
	ld.bu	$a7, $a4, 14
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -32
	ld.bu	$a7, $a4, 15
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	addi.d	$a6, $a4, 8
	st.b	$a5, $a4, 15
	add.d	$a4, $a6, $a3
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -30
	ld.bu	$a7, $a4, 8
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 8
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -28
	ld.bu	$a7, $a4, 9
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 9
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -26
	ld.bu	$a7, $a4, 10
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 10
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -24
	ld.bu	$a7, $a4, 11
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 11
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -22
	ld.bu	$a7, $a4, 12
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 12
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -20
	ld.bu	$a7, $a4, 13
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 13
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -18
	ld.bu	$a7, $a4, 14
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	st.b	$a5, $a4, 14
	ld.d	$a5, $a1, 0
	ld.h	$a6, $a2, -16
	ld.bu	$a7, $a4, 15
	add.d	$a5, $a5, $a6
	ldx.b	$a5, $a5, $a7
	addi.d	$a6, $a4, 8
	st.b	$a5, $a4, 15
	add.d	$a3, $a6, $a3
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -14
	ld.bu	$a6, $a3, 8
	add.d	$a4, $a4, $a5
	ldx.b	$a4, $a4, $a6
	st.b	$a4, $a3, 8
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -12
	ld.bu	$a6, $a3, 9
	add.d	$a4, $a4, $a5
	ldx.b	$a4, $a4, $a6
	st.b	$a4, $a3, 9
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -10
	ld.bu	$a6, $a3, 10
	add.d	$a4, $a4, $a5
	ldx.b	$a4, $a4, $a6
	st.b	$a4, $a3, 10
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -8
	ld.bu	$a6, $a3, 11
	add.d	$a4, $a4, $a5
	ldx.b	$a4, $a4, $a6
	st.b	$a4, $a3, 11
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -6
	ld.bu	$a6, $a3, 12
	add.d	$a4, $a4, $a5
	ldx.b	$a4, $a4, $a6
	st.b	$a4, $a3, 12
	ld.d	$a4, $a1, 0
	ld.h	$a5, $a2, -4
	ld.bu	$a6, $a3, 13
	add.d	$a4, $a4, $a5
	ldx.b	$a4, $a4, $a6
	st.b	$a4, $a3, 13
	ld.d	$a4, $a1, 0
	ld.h	$a2, $a2, -2
	ld.bu	$a5, $a3, 14
	add.d	$a2, $a4, $a2
	ldx.b	$a2, $a2, $a5
	st.b	$a2, $a3, 14
	ld.d	$a1, $a1, 0
	ldx.h	$a0, $a0, $s6
	ld.bu	$a2, $a3, 15
	add.d	$a0, $a1, $a0
	ldx.b	$a0, $a0, $a2
	b	.LBB0_173
.LBB0_195:                              # %if.else.i.i.i.i
                                        #   in Loop: Header=BB0_174 Depth=3
	andi	$a2, $s2, 8
	or	$a2, $a2, $s5
	mul.w	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $s4
	add.d	$a5, $a1, $a0
	b	.LBB0_193
	.p2align	4, , 16
.LBB0_196:                              # %decode_macroblock.exit.thread.i.i
                                        #   in Loop: Header=BB0_31 Depth=1
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	ori	$s8, $zero, 1
	b	.LBB0_30
.LBB0_197:                              # %if.else7.i
	pcalau12i	$a0, %got_pc_hi20(progressive_frame)
	ld.d	$a0, $a0, %got_pc_lo12(progressive_frame)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(frame_reorder.Oldref_progressive_frame)
	st.w	$a0, $a1, %pc_lo12(frame_reorder.Oldref_progressive_frame)
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB0_201
	b	.LBB0_203
.LBB0_198:                              # %for.inc.us22.1.i
	pcalau12i	$a0, %got_pc_hi20(forward_reference_frame)
	ld.d	$a0, $a0, %got_pc_lo12(forward_reference_frame)
	ld.d	$a4, $a0, 8
	ld.d	$a5, $a0, 16
	move	$a1, $a4
	move	$a0, $a5
.LBB0_199:                              # %for.inc.us22.2.i
	pcalau12i	$a2, %got_pc_hi20(backward_reference_frame)
	ld.d	$a6, $a2, %got_pc_lo12(backward_reference_frame)
	move	$a2, $zero
	pcalau12i	$a7, %got_pc_hi20(current_frame)
	ld.d	$a7, $a7, %got_pc_lo12(current_frame)
	vld	$vr0, $a6, 8
	pcalau12i	$t0, %got_pc_hi20(forward_reference_frame)
	ld.d	$t0, $t0, %got_pc_lo12(forward_reference_frame)
	st.d	$a3, $a7, 0
	st.d	$a1, $a7, 8
	st.d	$a4, $a6, 8
	vst	$vr0, $t0, 8
	st.d	$a5, $a6, 16
	st.d	$a0, $a7, 16
	pcalau12i	$a0, %got_pc_hi20(Ersatz_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Ersatz_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_14
	b	.LBB0_15
.LBB0_200:                              # %if.else.i
	pcalau12i	$a0, %got_pc_hi20(progressive_frame)
	ld.d	$fp, $a0, %got_pc_lo12(progressive_frame)
	ld.w	$a0, $fp, 0
	pcalau12i	$s0, %pc_hi20(frame_reorder.Oldref_progressive_frame)
	ld.w	$a1, $s0, %pc_lo12(frame_reorder.Oldref_progressive_frame)
	pcalau12i	$s1, %pc_hi20(frame_reorder.Newref_progressive_frame)
	st.w	$a0, $s1, %pc_lo12(frame_reorder.Newref_progressive_frame)
	st.w	$a1, $fp, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a1, $a0, -1
	pcalau12i	$a0, %got_pc_hi20(forward_reference_frame)
	ld.d	$a0, $a0, %got_pc_lo12(forward_reference_frame)
	pcaddu18i	$ra, %call36(Write_Frame)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(frame_reorder.Newref_progressive_frame)
	st.w	$a0, $fp, 0
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $s0, %pc_lo12(frame_reorder.Oldref_progressive_frame)
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_203
.LBB0_201:                              # %frame_reorder.exit.if.then10_crit_edge
	ld.w	$a0, $fp, 0
	sltui	$a1, $a0, 1
.LBB0_202:                              # %if.then10
	st.w	$a1, $fp, 0
.LBB0_203:                              # %if.end12
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.LBB0_204:                              # %for.body.preheader.i
	pcalau12i	$a0, %got_pc_hi20(backward_reference_frame)
	ld.d	$a0, $a0, %got_pc_lo12(backward_reference_frame)
	ld.d	$a1, $a0, 16
	pcalau12i	$a3, %got_pc_hi20(current_frame)
	ld.d	$a3, $a3, %got_pc_lo12(current_frame)
	vld	$vr0, $a0, 0
	st.d	$a1, $a3, 16
	vst	$vr0, $a3, 0
	pcalau12i	$a0, %got_pc_hi20(Ersatz_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Ersatz_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_14
	b	.LBB0_15
.LBB0_205:                              # %if.then12.i.i.i
	pcalau12i	$a0, %got_pc_hi20(Quiet_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Quiet_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_22
# %bb.206:
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	b	.LBB0_21
.Lfunc_end0:
	.size	Decode_Picture, .Lfunc_end0-Decode_Picture
                                        # -- End function
	.globl	Output_Last_Frame_of_Sequence   # -- Begin function Output_Last_Frame_of_Sequence
	.p2align	5
	.type	Output_Last_Frame_of_Sequence,@function
Output_Last_Frame_of_Sequence:          # @Output_Last_Frame_of_Sequence
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(Second_Field)
	ld.d	$a1, $a1, %got_pc_lo12(Second_Field)
	ld.w	$a1, $a1, 0
	beqz	$a1, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$t8, %call36(puts)
	jr	$t8
.LBB1_2:                                # %if.else
	pcalau12i	$a1, %got_pc_hi20(backward_reference_frame)
	ld.d	$a2, $a1, %got_pc_lo12(backward_reference_frame)
	addi.w	$a1, $a0, -1
	move	$a0, $a2
	pcaddu18i	$t8, %call36(Write_Frame)
	jr	$t8
.Lfunc_end1:
	.size	Output_Last_Frame_of_Sequence, .Lfunc_end1-Output_Last_Frame_of_Sequence
                                        # -- End function
	.p2align	5                               # -- Begin function macroblock_modes
	.type	macroblock_modes,@function
macroblock_modes:                       # @macroblock_modes
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	move	$fp, $a7
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s4, $a2
	move	$s5, $a1
	move	$s6, $a0
	pcaddu18i	$ra, %call36(Get_macroblock_type)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(Fault_Flag)
	ld.d	$a1, $a1, %got_pc_lo12(Fault_Flag)
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB2_21
# %bb.1:                                # %if.end
	move	$s7, $a0
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	andi	$a0, $a0, 32
	bnez	$a0, .LBB2_3
# %bb.2:                                # %if.else8
	srli.d	$a0, $s7, 3
	andi	$fp, $a0, 8
	b	.LBB2_6
.LBB2_3:                                # %if.then2
	pcalau12i	$a0, %got_pc_hi20(spatial_temporal_weight_code_table_index)
	ld.d	$fp, $a0, %got_pc_lo12(spatial_temporal_weight_code_table_index)
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB2_5
# %bb.4:                                # %if.else
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	pcalau12i	$a2, %pc_hi20(macroblock_modes.stwc_table)
	addi.d	$a2, $a2, %pc_lo12(macroblock_modes.stwc_table)
	alsl.d	$a1, $a1, $a2, 2
	add.d	$a0, $a1, $a0
	ld.bu	$fp, $a0, -4
	b	.LBB2_6
.LBB2_5:
	ori	$fp, $zero, 4
.LBB2_6:                                # %if.end11
	pcalau12i	$a0, %pc_hi20(macroblock_modes.stwclass_table)
	addi.d	$a0, $a0, %pc_lo12(macroblock_modes.stwclass_table)
	ldx.bu	$a4, $a0, $fp
	andi	$a0, $s7, 12
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	beqz	$a0, .LBB2_10
# %bb.7:                                # %if.then17
	pcalau12i	$a0, %got_pc_hi20(picture_structure)
	ld.d	$a0, $a0, %got_pc_lo12(picture_structure)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB2_9
# %bb.8:                                # %if.then17
	pcalau12i	$a0, %got_pc_hi20(frame_pred_frame_dct)
	ld.d	$a0, $a0, %got_pc_lo12(frame_pred_frame_dct)
	ld.w	$a0, $a0, 0
	ori	$s8, $zero, 2
	bnez	$a0, .LBB2_15
.LBB2_9:                                # %if.end36thread-pre-split.sink.split
	ori	$a0, $zero, 2
	move	$s8, $a4
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$a4, $s8
	move	$s8, $a0
	b	.LBB2_14
.LBB2_10:                               # %if.else27
	andi	$a0, $s7, 1
	move	$s8, $zero
	beqz	$a0, .LBB2_14
# %bb.11:                               # %if.else27
	pcalau12i	$a0, %got_pc_hi20(concealment_motion_vectors)
	ld.d	$a0, $a0, %got_pc_lo12(concealment_motion_vectors)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB2_14
# %bb.12:                               # %if.then31
	pcalau12i	$a0, %got_pc_hi20(picture_structure)
	ld.d	$a0, $a0, %got_pc_lo12(picture_structure)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $a0, -3
	sltui	$a1, $a1, 1
	addi.d	$s8, $a1, 1
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB2_15
.LBB2_13:                               # %if.else48
	move	$a1, $zero
	move	$s0, $zero
	addi.d	$a0, $s8, -2
	sltui	$a0, $a0, 1
	addi.d	$s5, $a0, 1
	ori	$a2, $zero, 1
	b	.LBB2_16
.LBB2_14:                               # %if.end36thread-pre-split
	pcalau12i	$a0, %got_pc_hi20(picture_structure)
	ld.d	$a0, $a0, %got_pc_lo12(picture_structure)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB2_13
.LBB2_15:                               # %if.then39
	move	$a2, $zero
	addi.d	$a0, $s8, -1
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 1
	sll.d	$a3, $a1, $fp
	andi	$a3, $a3, 27
	sltu	$a3, $zero, $a3
	and	$a0, $a0, $a3
	addi.d	$s5, $a0, 1
	addi.d	$a0, $s8, -2
	sltui	$s0, $a0, 1
.LBB2_16:                               # %if.end52
	move	$a0, $zero
	ld.d	$s2, $sp, 160
	addi.d	$a3, $s8, -3
	sltui	$s3, $a3, 1
	sltui	$a3, $s0, 1
	and	$s4, $a1, $a3
	bnez	$a2, .LBB2_20
# %bb.17:                               # %if.end52
	pcalau12i	$a1, %got_pc_hi20(frame_pred_frame_dct)
	ld.d	$a1, $a1, %got_pc_lo12(frame_pred_frame_dct)
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB2_20
# %bb.18:                               # %if.end52
	andi	$a1, $s7, 3
	beqz	$a1, .LBB2_20
# %bb.19:                               # %cond.true68
	ori	$a0, $zero, 1
	move	$s1, $fp
	move	$fp, $a4
	pcaddu18i	$ra, %call36(Get_Bits)
	jirl	$ra, $ra, 0
	move	$a4, $fp
	move	$fp, $s1
.LBB2_20:                               # %cond.end71
	st.w	$s7, $s6, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$fp, $a1, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a4, $a1, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$s8, $a1, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$s5, $a1, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$s0, $a1, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$s3, $a1, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.w	$s4, $a1, 0
	st.w	$a0, $s2, 0
.LBB2_21:                               # %cleanup
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end2:
	.size	macroblock_modes, .Lfunc_end2-macroblock_modes
                                        # -- End function
	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"D picture end_of_macroblock bit"
	.size	.L.str.6, 32

	.type	macroblock_modes.stwc_table,@object # @macroblock_modes.stwc_table
	.section	.rodata,"a",@progbits
macroblock_modes.stwc_table:
	.ascii	"\006\003\007\004"
	.ascii	"\002\001\005\004"
	.ascii	"\002\005\007\004"
	.size	macroblock_modes.stwc_table, 12

	.type	macroblock_modes.stwclass_table,@object # @macroblock_modes.stwclass_table
macroblock_modes.stwclass_table:
	.ascii	"\000\001\002\001\001\002\003\003\004"
	.size	macroblock_modes.stwclass_table, 9

	.type	frame_reorder.Oldref_progressive_frame,@object # @frame_reorder.Oldref_progressive_frame
	.local	frame_reorder.Oldref_progressive_frame
	.comm	frame_reorder.Oldref_progressive_frame,4,4
	.type	frame_reorder.Newref_progressive_frame,@object # @frame_reorder.Newref_progressive_frame
	.local	frame_reorder.Newref_progressive_frame
	.comm	frame_reorder.Newref_progressive_frame,4,4
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"odd number of field pictures"
	.size	.Lstr, 29

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"last frame incomplete, not stored"
	.size	.Lstr.1, 34

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"start_of_slice(): MBAinc unsuccessful"
	.size	.Lstr.3, 38

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"DP: Premature end of picture"
	.size	.Lstr.4, 29

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"start_of_slice(): Premature end of picture"
	.size	.Lstr.5, 43

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"SNR: Premature end of picture"
	.size	.Lstr.6, 30

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"Cant't synchronize streams"
	.size	.Lstr.7, 27

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"Too many macroblocks in picture"
	.size	.Lstr.8, 32

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym base
	.addrsig_sym backward_reference_frame
	.addrsig_sym enhan
	.addrsig_sym auxframe
	.addrsig_sym forward_reference_frame
