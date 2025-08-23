	.file	"subspic.c"
	.text
	.globl	Substitute_Frame_Buffer         # -- Begin function Substitute_Frame_Buffer
	.p2align	5
	.type	Substitute_Frame_Buffer,@function
Substitute_Frame_Buffer:                # @Substitute_Frame_Buffer
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(Second_Field)
	ld.d	$s1, $a2, %got_pc_lo12(Second_Field)
	ld.w	$a3, $s1, 0
	move	$a2, $a0
	or	$a0, $a1, $a3
	pcalau12i	$s0, %pc_hi20(Substitute_Frame_Buffer.bgate)
	pcalau12i	$fp, %pc_hi20(Substitute_Frame_Buffer.previous_picture_coding_type)
	beqz	$a0, .LBB0_13
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(picture_structure)
	ld.d	$a0, $a0, %got_pc_lo12(picture_structure)
	pcalau12i	$a1, %got_pc_hi20(picture_coding_type)
	ld.d	$a4, $a1, %got_pc_lo12(picture_coding_type)
	ld.w	$a1, $a0, 0
	ld.w	$a0, $a4, 0
	ori	$a4, $zero, 3
	beq	$a1, $a4, .LBB0_7
# %bb.2:                                # %if.then
	beqz	$a3, .LBB0_7
# %bb.3:                                # %if.else13
	ori	$a4, $zero, 2
	ori	$a3, $zero, 1
	bne	$a0, $a4, .LBB0_14
# %bb.4:                                # %if.then17
	ld.w	$a0, $fp, %pc_lo12(Substitute_Frame_Buffer.previous_picture_coding_type)
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB0_6
# %bb.5:                                # %if.else22
	pcalau12i	$a0, %got_pc_hi20(temporal_reference)
	ld.d	$a0, $a0, %got_pc_lo12(temporal_reference)
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(Substitute_Frame_Buffer.previous_anchor_temporal_reference)
	ld.w	$a1, $a1, %pc_lo12(Substitute_Frame_Buffer.previous_anchor_temporal_reference)
	add.d	$a0, $a2, $a0
	nor	$a1, $a1, $zero
	add.w	$a2, $a1, $a0
.LBB0_6:                                # %if.end26
	pcalau12i	$a0, %got_pc_hi20(Substitute_Picture_Filename)
	ld.d	$a0, $a0, %got_pc_lo12(Substitute_Picture_Filename)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(current_frame)
	ld.d	$a1, $a1, %got_pc_lo12(current_frame)
	b	.LBB0_12
.LBB0_7:                                # %if.then4
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_9
# %bb.8:                                # %if.then6
	pcalau12i	$a0, %got_pc_hi20(Substitute_Picture_Filename)
	ld.d	$a0, $a0, %got_pc_lo12(Substitute_Picture_Filename)
	ld.d	$a0, $a0, 0
	addi.w	$a2, $a2, -1
	pcalau12i	$a1, %got_pc_hi20(forward_reference_frame)
	ld.d	$a1, $a1, %got_pc_lo12(forward_reference_frame)
	b	.LBB0_12
.LBB0_9:                                # %if.else
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB0_13
# %bb.10:                               # %if.else
	ld.b	$a0, $s0, %pc_lo12(Substitute_Frame_Buffer.bgate)
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_13
# %bb.11:                               # %if.then9
	pcalau12i	$a0, %pc_hi20(Substitute_Frame_Buffer.previous_temporal_reference)
	pcalau12i	$a1, %got_pc_hi20(temporal_reference)
	ld.d	$a1, $a1, %got_pc_lo12(temporal_reference)
	pcalau12i	$a3, %got_pc_hi20(Substitute_Picture_Filename)
	ld.d	$a3, $a3, %got_pc_lo12(Substitute_Picture_Filename)
	ld.w	$a4, $a0, %pc_lo12(Substitute_Frame_Buffer.previous_temporal_reference)
	ld.w	$a1, $a1, 0
	ld.d	$a0, $a3, 0
	add.d	$a2, $a2, $a4
	nor	$a1, $a1, $zero
	add.w	$a2, $a1, $a2
	pcalau12i	$a1, %got_pc_hi20(backward_reference_frame)
	ld.d	$a1, $a1, %got_pc_lo12(backward_reference_frame)
.LBB0_12:                               # %if.end29thread-pre-split
	pcaddu18i	$ra, %call36(Read_Frame)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %if.end29thread-pre-split
	pcalau12i	$a0, %got_pc_hi20(picture_coding_type)
	ld.d	$a0, $a0, %got_pc_lo12(picture_coding_type)
	pcalau12i	$a1, %got_pc_hi20(picture_structure)
	ld.d	$a1, $a1, %got_pc_lo12(picture_structure)
	ld.w	$a0, $a0, 0
	ld.w	$a2, $s1, 0
	ld.w	$a1, $a1, 0
	sltu	$a3, $zero, $a2
.LBB0_14:                               # %if.end29
	addi.d	$a2, $a0, -3
	sltui	$a2, $a2, 1
	ori	$a4, $zero, 3
	st.b	$a2, $s0, %pc_lo12(Substitute_Frame_Buffer.bgate)
	beq	$a1, $a4, .LBB0_16
# %bb.15:                               # %if.end29
	bnez	$a3, .LBB0_17
.LBB0_16:                               # %if.then37
	pcalau12i	$a2, %got_pc_hi20(temporal_reference)
	ld.d	$a2, $a2, %got_pc_lo12(temporal_reference)
	ld.w	$a2, $a2, 0
	pcalau12i	$a4, %pc_hi20(Substitute_Frame_Buffer.previous_temporal_reference)
	st.w	$a2, $a4, %pc_lo12(Substitute_Frame_Buffer.previous_temporal_reference)
.LBB0_17:                               # %if.end38
	ori	$a2, $zero, 3
	beq	$a0, $a2, .LBB0_20
# %bb.18:                               # %if.end38
	addi.d	$a1, $a1, -3
	sltui	$a1, $a1, 1
	or	$a1, $a1, $a3
	andi	$a1, $a1, 1
	beqz	$a1, .LBB0_20
# %bb.19:                               # %if.then44
	pcalau12i	$a1, %got_pc_hi20(temporal_reference)
	ld.d	$a1, $a1, %got_pc_lo12(temporal_reference)
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(Substitute_Frame_Buffer.previous_anchor_temporal_reference)
	st.w	$a1, $a2, %pc_lo12(Substitute_Frame_Buffer.previous_anchor_temporal_reference)
.LBB0_20:                               # %if.end45
	st.w	$a0, $fp, %pc_lo12(Substitute_Frame_Buffer.previous_picture_coding_type)
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	Substitute_Frame_Buffer, .Lfunc_end0-Substitute_Frame_Buffer
                                        # -- End function
	.p2align	5                               # -- Begin function Read_Frame
	.type	Read_Frame,@function
Read_Frame:                             # @Read_Frame
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	addi.w	$a3, $zero, -1
	move	$s1, $a2
	move	$fp, $a1
	move	$s2, $a0
	bge	$a3, $a2, .LBB1_7
# %bb.1:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(Big_Picture_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Big_Picture_Flag)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_8
.LBB1_2:                                # %if.then1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_15
# %bb.3:                                # %if.end.i
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(Coded_Picture_Width)
	ld.d	$s2, $a0, %got_pc_lo12(Coded_Picture_Width)
	pcalau12i	$a0, %got_pc_hi20(Coded_Picture_Height)
	ld.d	$s3, $a0, %got_pc_lo12(Coded_Picture_Height)
	pcalau12i	$a0, %got_pc_hi20(chroma_format)
	ld.d	$a0, $a0, %got_pc_lo12(chroma_format)
	ld.w	$a2, $s2, 0
	ld.w	$a3, $s3, 0
	ld.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	mul.w	$s4, $a3, $a2
	beq	$a1, $a0, .LBB1_17
# %bb.4:                                # %if.end.i
	ori	$a0, $zero, 2
	beq	$a1, $a0, .LBB1_16
# %bb.5:                                # %if.end.i
	ori	$a0, $zero, 3
	bne	$a1, $a0, .LBB1_18
# %bb.6:                                # %if.then2.i
	alsl.w	$s4, $s4, $s4, 1
	b	.LBB1_19
.LBB1_7:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(Big_Picture_Flag)
	ld.d	$a0, $a0, %got_pc_lo12(Big_Picture_Flag)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_2
.LBB1_8:                                # %if.else
	addi.d	$a0, $sp, 264
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	addi.d	$a0, $sp, 8
	addi.d	$a2, $sp, 264
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(substitute_frame)
	pcalau12i	$a1, %got_pc_hi20(Coded_Picture_Width)
	ld.d	$a1, $a1, %got_pc_lo12(Coded_Picture_Width)
	pcalau12i	$a2, %got_pc_hi20(Coded_Picture_Height)
	ld.d	$a2, $a2, %got_pc_lo12(Coded_Picture_Height)
	ld.d	$s3, $a0, %got_pc_lo12(substitute_frame)
	ld.w	$a0, $a1, 0
	ld.w	$a1, $a2, 0
	ld.d	$s2, $s3, 0
	mul.w	$s0, $a1, $a0
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	beq	$s0, $a1, .LBB1_10
# %bb.9:                                # %if.then6.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	addi.d	$a3, $sp, 8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %Read_Component.exit.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 8
	addi.d	$a2, $sp, 264
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(Chroma_Width)
	ld.d	$s4, $a0, %got_pc_lo12(Chroma_Width)
	pcalau12i	$a0, %got_pc_hi20(Chroma_Height)
	ld.d	$s5, $a0, %got_pc_lo12(Chroma_Height)
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s5, 0
	ld.d	$s2, $s3, 8
	mul.w	$s0, $a1, $a0
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	beq	$s0, $a1, .LBB1_12
# %bb.11:                               # %if.then6.i12.i
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	addi.d	$a3, $sp, 8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_12:                               # %Read_Component.exit15.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 8
	addi.d	$a2, $sp, 264
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.w	$a1, $s5, 0
	ld.d	$s2, $s3, 16
	mul.w	$s0, $a1, $a0
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	beq	$s0, $a1, .LBB1_14
# %bb.13:                               # %if.then6.i22.i
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	addi.d	$a3, $sp, 8
	move	$a2, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %Read_Components.exit
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	b	.LBB1_29
.LBB1_15:                               # %if.then6
	pcalau12i	$a0, %got_pc_hi20(Error_Text)
	ld.d	$a0, $a0, %got_pc_lo12(Error_Text)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	move	$a2, $s2
	pcaddu18i	$ra, %call36(sprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	b	.LBB1_29
.LBB1_16:                               # %if.then5.i
	slli.d	$s4, $s4, 1
	b	.LBB1_19
.LBB1_17:                               # %if.then9.i
	srli.d	$a0, $s4, 1
	add.d	$s4, $a0, $s4
	b	.LBB1_19
.LBB1_18:                               # %if.else11.i
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_19:                               # %if.end15.i
	mul.w	$a1, $s4, $s1
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	ori	$s4, $zero, 1
	blt	$a0, $s4, .LBB1_22
# %bb.20:                               # %for.body.i.preheader
	pcalau12i	$a0, %got_pc_hi20(substitute_frame)
	ld.d	$s1, $a0, %got_pc_lo12(substitute_frame)
	move	$s5, $zero
	.p2align	4, , 16
.LBB1_21:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s2, 0
	ld.d	$a0, $s1, 0
	mul.w	$a1, $a2, $s5
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 0
	addi.w	$s5, $s5, 1
	blt	$s5, $a0, .LBB1_21
.LBB1_22:                               # %for.cond23.preheader.i
	pcalau12i	$a0, %got_pc_hi20(Chroma_Height)
	ld.d	$s1, $a0, %got_pc_lo12(Chroma_Height)
	ld.w	$a0, $s1, 0
	blt	$a0, $s4, .LBB1_28
# %bb.23:                               # %for.body26.i.preheader
	pcalau12i	$a0, %got_pc_hi20(substitute_frame)
	ld.d	$s2, $a0, %got_pc_lo12(substitute_frame)
	pcalau12i	$a0, %got_pc_hi20(Chroma_Width)
	ld.d	$s3, $a0, %got_pc_lo12(Chroma_Width)
	move	$s4, $zero
	.p2align	4, , 16
.LBB1_24:                               # %for.body26.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s3, 0
	ld.d	$a0, $s2, 8
	mul.w	$a1, $a2, $s4
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.w	$s4, $s4, 1
	blt	$s4, $a0, .LBB1_24
# %bb.25:                               # %for.cond36.preheader.i
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_28
# %bb.26:                               # %for.body39.i.preheader
	move	$s4, $zero
	.p2align	4, , 16
.LBB1_27:                               # %for.body39.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s3, 0
	ld.d	$a0, $s2, 16
	mul.w	$a1, $a2, $s4
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	addi.w	$s4, $s4, 1
	blt	$s4, $a0, .LBB1_27
.LBB1_28:                               # %Extract_Components.exit.thread
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB1_29:                               # %if.end8
	pcalau12i	$a0, %got_pc_hi20(Second_Field)
	ld.d	$a0, $a0, %got_pc_lo12(Second_Field)
	ld.w	$a0, $a0, 0
	move	$a1, $zero
	ori	$a6, $zero, 1
	beqz	$a0, .LBB1_32
# %bb.30:                               # %if.end8
	pcalau12i	$a0, %got_pc_hi20(picture_coding_type)
	ld.d	$a0, $a0, %got_pc_lo12(picture_coding_type)
	ld.w	$a0, $a0, 0
	ori	$a3, $zero, 2
	ori	$a2, $zero, 1
	bne	$a0, $a3, .LBB1_33
# %bb.31:                               # %if.then11
	pcalau12i	$a0, %got_pc_hi20(picture_structure)
	ld.d	$a0, $a0, %got_pc_lo12(picture_structure)
	ld.w	$a0, $a0, 0
	addi.d	$a1, $a0, -1
	sltu	$a2, $zero, $a1
	addi.d	$a0, $a0, -3
	sltu	$a1, $zero, $a0
	b	.LBB1_33
.LBB1_32:
	ori	$a2, $zero, 1
.LBB1_33:                               # %if.end16
	pcalau12i	$a0, %got_pc_hi20(Coded_Picture_Width)
	ld.d	$a0, $a0, %got_pc_lo12(Coded_Picture_Width)
	pcalau12i	$a3, %got_pc_hi20(substitute_frame)
	ld.w	$a5, $a0, 0
	ld.d	$a4, $a3, %got_pc_lo12(substitute_frame)
	sltui	$a3, $a1, 1
	ori	$a0, $zero, 2
	sub.d	$a0, $a0, $a3
	blt	$a5, $a6, .LBB1_49
# %bb.34:                               # %if.end16
	pcalau12i	$a6, %got_pc_hi20(Coded_Picture_Height)
	ld.d	$a6, $a6, %got_pc_lo12(Coded_Picture_Height)
	ld.w	$a6, $a6, 0
	ori	$a7, $zero, 1
	blt	$a6, $a7, .LBB1_49
# %bb.35:                               # %for.cond4.preheader.us.preheader.i
	move	$a7, $zero
	ld.d	$t0, $a4, 0
	ld.d	$t1, $fp, 0
	sll.w	$t2, $a5, $a1
	maskeqz	$t3, $a5, $a2
	masknez	$t3, $t3, $a3
	bstrpick.d	$t3, $t3, 31, 0
	add.d	$t4, $t0, $t3
	sub.d	$t5, $t1, $t4
	sltui	$t6, $a5, 16
	sltui	$t5, $t5, 64
	or	$t5, $t6, $t5
	bstrpick.d	$t6, $a5, 30, 6
	slli.d	$t6, $t6, 6
	andi	$t7, $a5, 48
	bstrpick.d	$t8, $a5, 30, 4
	slli.d	$t8, $t8, 4
	addi.d	$s0, $t4, 32
	addi.d	$s1, $t1, 32
	sub.d	$s2, $zero, $t8
	ori	$s3, $zero, 64
	b	.LBB1_37
	.p2align	4, , 16
.LBB1_36:                               # %for.cond4.for.end_crit_edge.us.i
                                        #   in Loop: Header=BB1_37 Depth=1
	add.d	$t3, $t3, $t2
	add.w	$a7, $a7, $a0
	add.d	$s0, $s0, $t2
	add.d	$s1, $s1, $t2
	add.d	$t1, $t1, $t2
	add.d	$t4, $t4, $t2
	bge	$a7, $a6, .LBB1_49
.LBB1_37:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_42 Depth 2
                                        #     Child Loop BB1_46 Depth 2
                                        #     Child Loop BB1_48 Depth 2
	beqz	$t5, .LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_37 Depth=1
	move	$s4, $zero
	b	.LBB1_48
	.p2align	4, , 16
.LBB1_39:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB1_37 Depth=1
	bgeu	$a5, $s3, .LBB1_41
# %bb.40:                               #   in Loop: Header=BB1_37 Depth=1
	move	$s6, $zero
	b	.LBB1_45
	.p2align	4, , 16
.LBB1_41:                               # %vector.body.preheader
                                        #   in Loop: Header=BB1_37 Depth=1
	move	$s4, $s1
	move	$s5, $s0
	move	$s6, $t6
	.p2align	4, , 16
.LBB1_42:                               # %vector.body
                                        #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s5, -32
	xvld	$xr1, $s5, 0
	xvst	$xr0, $s4, -32
	xvst	$xr1, $s4, 0
	addi.d	$s6, $s6, -64
	addi.d	$s5, $s5, 64
	addi.d	$s4, $s4, 64
	bnez	$s6, .LBB1_42
# %bb.43:                               # %middle.block
                                        #   in Loop: Header=BB1_37 Depth=1
	beq	$t6, $a5, .LBB1_36
# %bb.44:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB1_37 Depth=1
	move	$s6, $t6
	move	$s4, $t6
	beqz	$t7, .LBB1_48
.LBB1_45:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB1_37 Depth=1
	add.d	$s4, $s2, $s6
	add.d	$s5, $t1, $s6
	add.d	$s6, $t0, $s6
	.p2align	4, , 16
.LBB1_46:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $s6, $t3
	vst	$vr0, $s5, 0
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 16
	addi.d	$s6, $s6, 16
	bnez	$s4, .LBB1_46
# %bb.47:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB1_37 Depth=1
	move	$s4, $t8
	beq	$t8, $a5, .LBB1_36
	.p2align	4, , 16
.LBB1_48:                               # %for.body6.us.i
                                        #   Parent Loop BB1_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$s5, $t4, $s4
	stx.b	$s5, $t1, $s4
	addi.d	$s4, $s4, 1
	bne	$a5, $s4, .LBB1_48
	b	.LBB1_36
.LBB1_49:                               # %Copy_Frame.exit
	pcalau12i	$a5, %got_pc_hi20(Chroma_Width)
	ld.d	$t0, $a5, %got_pc_lo12(Chroma_Width)
	pcalau12i	$a5, %got_pc_hi20(Chroma_Height)
	ld.d	$t1, $a5, %got_pc_lo12(Chroma_Height)
	ld.w	$a5, $t0, 0
	ld.w	$a6, $t1, 0
	ori	$a7, $zero, 1
	blt	$a5, $a7, .LBB1_66
# %bb.50:                               # %Copy_Frame.exit
	blt	$a6, $a7, .LBB1_66
# %bb.51:                               # %for.cond4.preheader.us.preheader.i18
	move	$t2, $zero
	ld.d	$t3, $a4, 8
	ld.d	$t4, $fp, 8
	sll.w	$t5, $a5, $a1
	maskeqz	$t6, $a5, $a2
	masknez	$t6, $t6, $a3
	bstrpick.d	$t6, $t6, 31, 0
	add.d	$t7, $t3, $t6
	sub.d	$t8, $t4, $t7
	sltui	$s0, $a5, 16
	sltui	$t8, $t8, 64
	or	$t8, $s0, $t8
	bstrpick.d	$s0, $a5, 30, 6
	slli.d	$s0, $s0, 6
	andi	$s1, $a5, 48
	bstrpick.d	$s2, $a5, 30, 4
	slli.d	$s2, $s2, 4
	addi.d	$s3, $t7, 32
	addi.d	$s4, $t4, 32
	sub.d	$s5, $zero, $s2
	ori	$s6, $zero, 64
	b	.LBB1_53
	.p2align	4, , 16
.LBB1_52:                               # %for.cond4.for.end_crit_edge.us.i36
                                        #   in Loop: Header=BB1_53 Depth=1
	add.d	$t6, $t6, $t5
	add.w	$t2, $t2, $a0
	add.d	$s3, $s3, $t5
	add.d	$s4, $s4, $t5
	add.d	$t4, $t4, $t5
	add.d	$t7, $t7, $t5
	bge	$t2, $a6, .LBB1_65
.LBB1_53:                               # %iter.check94
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_58 Depth 2
                                        #     Child Loop BB1_62 Depth 2
                                        #     Child Loop BB1_64 Depth 2
	beqz	$t8, .LBB1_55
# %bb.54:                               #   in Loop: Header=BB1_53 Depth=1
	move	$s7, $zero
	b	.LBB1_64
	.p2align	4, , 16
.LBB1_55:                               # %vector.main.loop.iter.check96
                                        #   in Loop: Header=BB1_53 Depth=1
	bgeu	$a5, $s6, .LBB1_57
# %bb.56:                               #   in Loop: Header=BB1_53 Depth=1
	move	$ra, $zero
	b	.LBB1_61
	.p2align	4, , 16
.LBB1_57:                               # %vector.body100.preheader
                                        #   in Loop: Header=BB1_53 Depth=1
	move	$s7, $s4
	move	$s8, $s3
	move	$ra, $s0
	.p2align	4, , 16
.LBB1_58:                               # %vector.body100
                                        #   Parent Loop BB1_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s8, -32
	xvld	$xr1, $s8, 0
	xvst	$xr0, $s7, -32
	xvst	$xr1, $s7, 0
	addi.d	$ra, $ra, -64
	addi.d	$s8, $s8, 64
	addi.d	$s7, $s7, 64
	bnez	$ra, .LBB1_58
# %bb.59:                               # %middle.block105
                                        #   in Loop: Header=BB1_53 Depth=1
	beq	$s0, $a5, .LBB1_52
# %bb.60:                               # %vec.epilog.iter.check110
                                        #   in Loop: Header=BB1_53 Depth=1
	move	$ra, $s0
	move	$s7, $s0
	beqz	$s1, .LBB1_64
.LBB1_61:                               # %vec.epilog.ph109
                                        #   in Loop: Header=BB1_53 Depth=1
	add.d	$s7, $s5, $ra
	add.d	$s8, $t4, $ra
	add.d	$ra, $t3, $ra
	.p2align	4, , 16
.LBB1_62:                               # %vec.epilog.vector.body115
                                        #   Parent Loop BB1_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $ra, $t6
	vst	$vr0, $s8, 0
	addi.d	$s7, $s7, 16
	addi.d	$s8, $s8, 16
	addi.d	$ra, $ra, 16
	bnez	$s7, .LBB1_62
# %bb.63:                               # %vec.epilog.middle.block119
                                        #   in Loop: Header=BB1_53 Depth=1
	move	$s7, $s2
	beq	$s2, $a5, .LBB1_52
	.p2align	4, , 16
.LBB1_64:                               # %for.body6.us.i30
                                        #   Parent Loop BB1_53 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$s8, $t7, $s7
	stx.b	$s8, $t4, $s7
	addi.d	$s7, $s7, 1
	bne	$a5, $s7, .LBB1_64
	b	.LBB1_52
.LBB1_65:                               # %Copy_Frame.exit41.loopexit
	ld.w	$a5, $t0, 0
	ld.w	$a6, $t1, 0
.LBB1_66:                               # %Copy_Frame.exit41
	blt	$a5, $a7, .LBB1_82
# %bb.67:                               # %Copy_Frame.exit41
	ori	$a7, $zero, 1
	blt	$a6, $a7, .LBB1_82
# %bb.68:                               # %for.cond4.preheader.us.preheader.i47
	move	$a7, $zero
	ld.d	$a4, $a4, 16
	ld.d	$t0, $fp, 16
	sll.w	$a1, $a5, $a1
	maskeqz	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	bstrpick.d	$a2, $a2, 31, 0
	add.d	$a3, $a4, $a2
	sub.d	$t1, $t0, $a3
	sltui	$t2, $a5, 16
	sltui	$t1, $t1, 64
	or	$t1, $t2, $t1
	bstrpick.d	$t2, $a5, 30, 6
	slli.d	$t2, $t2, 6
	andi	$t3, $a5, 48
	bstrpick.d	$t4, $a5, 30, 4
	slli.d	$t4, $t4, 4
	addi.d	$t5, $a3, 32
	addi.d	$t6, $t0, 32
	sub.d	$t7, $zero, $t4
	ori	$t8, $zero, 64
	b	.LBB1_70
	.p2align	4, , 16
.LBB1_69:                               # %for.cond4.for.end_crit_edge.us.i65
                                        #   in Loop: Header=BB1_70 Depth=1
	add.d	$a2, $a2, $a1
	add.w	$a7, $a7, $a0
	add.d	$t5, $t5, $a1
	add.d	$t6, $t6, $a1
	add.d	$t0, $t0, $a1
	add.d	$a3, $a3, $a1
	bge	$a7, $a6, .LBB1_82
.LBB1_70:                               # %iter.check126
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_75 Depth 2
                                        #     Child Loop BB1_79 Depth 2
                                        #     Child Loop BB1_81 Depth 2
	beqz	$t1, .LBB1_72
# %bb.71:                               #   in Loop: Header=BB1_70 Depth=1
	move	$fp, $zero
	b	.LBB1_81
	.p2align	4, , 16
.LBB1_72:                               # %vector.main.loop.iter.check128
                                        #   in Loop: Header=BB1_70 Depth=1
	bgeu	$a5, $t8, .LBB1_74
# %bb.73:                               #   in Loop: Header=BB1_70 Depth=1
	move	$s1, $zero
	b	.LBB1_78
	.p2align	4, , 16
.LBB1_74:                               # %vector.body132.preheader
                                        #   in Loop: Header=BB1_70 Depth=1
	move	$fp, $t6
	move	$s0, $t5
	move	$s1, $t2
	.p2align	4, , 16
.LBB1_75:                               # %vector.body132
                                        #   Parent Loop BB1_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $s0, -32
	xvld	$xr1, $s0, 0
	xvst	$xr0, $fp, -32
	xvst	$xr1, $fp, 0
	addi.d	$s1, $s1, -64
	addi.d	$s0, $s0, 64
	addi.d	$fp, $fp, 64
	bnez	$s1, .LBB1_75
# %bb.76:                               # %middle.block137
                                        #   in Loop: Header=BB1_70 Depth=1
	beq	$t2, $a5, .LBB1_69
# %bb.77:                               # %vec.epilog.iter.check142
                                        #   in Loop: Header=BB1_70 Depth=1
	move	$s1, $t2
	move	$fp, $t2
	beqz	$t3, .LBB1_81
.LBB1_78:                               # %vec.epilog.ph141
                                        #   in Loop: Header=BB1_70 Depth=1
	add.d	$fp, $t7, $s1
	add.d	$s0, $t0, $s1
	add.d	$s1, $a4, $s1
	.p2align	4, , 16
.LBB1_79:                               # %vec.epilog.vector.body147
                                        #   Parent Loop BB1_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vldx	$vr0, $s1, $a2
	vst	$vr0, $s0, 0
	addi.d	$fp, $fp, 16
	addi.d	$s0, $s0, 16
	addi.d	$s1, $s1, 16
	bnez	$fp, .LBB1_79
# %bb.80:                               # %vec.epilog.middle.block151
                                        #   in Loop: Header=BB1_70 Depth=1
	move	$fp, $t4
	beq	$t4, $a5, .LBB1_69
	.p2align	4, , 16
.LBB1_81:                               # %for.body6.us.i59
                                        #   Parent Loop BB1_70 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$s0, $a3, $fp
	stx.b	$s0, $t0, $fp
	addi.d	$fp, $fp, 1
	bne	$a5, $fp, .LBB1_81
	b	.LBB1_69
.LBB1_82:                               # %Copy_Frame.exit70
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.Lfunc_end1:
	.size	Read_Frame, .Lfunc_end1-Read_Frame
                                        # -- End function
	.type	Substitute_Frame_Buffer.previous_temporal_reference,@object # @Substitute_Frame_Buffer.previous_temporal_reference
	.local	Substitute_Frame_Buffer.previous_temporal_reference
	.comm	Substitute_Frame_Buffer.previous_temporal_reference,4,4
	.type	Substitute_Frame_Buffer.previous_anchor_temporal_reference,@object # @Substitute_Frame_Buffer.previous_anchor_temporal_reference
	.local	Substitute_Frame_Buffer.previous_anchor_temporal_reference
	.comm	Substitute_Frame_Buffer.previous_anchor_temporal_reference,4,4
	.type	Substitute_Frame_Buffer.previous_picture_coding_type,@object # @Substitute_Frame_Buffer.previous_picture_coding_type
	.local	Substitute_Frame_Buffer.previous_picture_coding_type
	.comm	Substitute_Frame_Buffer.previous_picture_coding_type,4,4
	.type	Substitute_Frame_Buffer.bgate,@object # @Substitute_Frame_Buffer.bgate
	.local	Substitute_Frame_Buffer.bgate
	.comm	Substitute_Frame_Buffer.bgate,1,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ERROR: framenum (%d) is less than zero\n"
	.size	.L.str, 40

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"rb"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Couldn't open %s\n"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"ERROR: chroma_format (%d) not recognized\n"
	.size	.L.str.4, 42

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s.Y"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%s.U"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s.V"
	.size	.L.str.7, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"was able to read only %d bytes of %d of file %s\n"
	.size	.L.str.9, 49

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"was unable to substitute frame"
	.size	.Lstr, 31

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym forward_reference_frame
	.addrsig_sym backward_reference_frame
	.addrsig_sym current_frame
	.addrsig_sym Error_Text
