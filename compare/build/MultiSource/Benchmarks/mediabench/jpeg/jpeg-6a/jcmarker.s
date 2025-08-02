	.file	"jcmarker.c"
	.text
	.globl	jinit_marker_writer             # -- Begin function jinit_marker_writer
	.p2align	5
	.type	jinit_marker_writer,@function
jinit_marker_writer:                    # @jinit_marker_writer
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 48
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 456
	pcalau12i	$a1, %pc_hi20(write_any_marker)
	addi.d	$a1, $a1, %pc_lo12(write_any_marker)
	st.d	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(write_file_header)
	addi.d	$a1, $a1, %pc_lo12(write_file_header)
	st.d	$a1, $a0, 8
	pcalau12i	$a1, %pc_hi20(write_frame_header)
	addi.d	$a1, $a1, %pc_lo12(write_frame_header)
	st.d	$a1, $a0, 16
	pcalau12i	$a1, %pc_hi20(write_scan_header)
	addi.d	$a1, $a1, %pc_lo12(write_scan_header)
	st.d	$a1, $a0, 24
	pcalau12i	$a1, %pc_hi20(write_file_trailer)
	addi.d	$a1, $a1, %pc_lo12(write_file_trailer)
	st.d	$a1, $a0, 32
	pcalau12i	$a1, %pc_hi20(write_tables_only)
	addi.d	$a1, $a1, %pc_lo12(write_tables_only)
	st.d	$a1, $a0, 40
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	jinit_marker_writer, .Lfunc_end0-jinit_marker_writer
                                        # -- End function
	.p2align	5                               # -- Begin function write_any_marker
	.type	write_any_marker,@function
write_any_marker:                       # @write_any_marker
# %bb.0:                                # %entry
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4093
	bltu	$a4, $a3, .LBB1_20
# %bb.1:                                # %if.then
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a0
	ld.d	$a0, $a0, 32
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	ori	$a3, $zero, 255
	st.b	$a3, $a2, 0
	ld.d	$a2, $a0, 8
	addi.d	$a2, $a2, -1
	st.d	$a2, $a0, 8
	bnez	$a2, .LBB1_4
# %bb.2:                                # %if.then.i.i
	ld.d	$a2, $a0, 24
	move	$a0, $s1
	move	$s2, $a1
	jirl	$ra, $a2, 0
	move	$a1, $s2
	bnez	$a0, .LBB1_4
# %bb.3:                                # %if.then3.i.i
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $s1
	jirl	$ra, $a1, 0
	move	$a1, $s2
.LBB1_4:                                # %emit_byte.exit.i
	ld.d	$a0, $s1, 32
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	st.b	$a1, $a2, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB1_7
# %bb.5:                                # %if.then.i7.i
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB1_7
# %bb.6:                                # %if.then3.i11.i
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $s1
	jirl	$ra, $a1, 0
.LBB1_7:                                # %emit_marker.exit
	ld.d	$a0, $s1, 32
	ld.d	$a1, $a0, 0
	addi.d	$s2, $fp, 2
	srli.d	$a2, $s2, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB1_10
# %bb.8:                                # %if.then.i.i13
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB1_10
# %bb.9:                                # %if.then3.i.i17
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $s1
	jirl	$ra, $a1, 0
.LBB1_10:                               # %emit_byte.exit.i12
	ld.d	$a0, $s1, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB1_13
# %bb.11:                               # %if.then.i9.i
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB1_13
# %bb.12:                               # %if.then3.i13.i
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $s1
	jirl	$ra, $a1, 0
.LBB1_13:                               # %emit_2bytes.exit
	beqz	$fp, .LBB1_19
# %bb.14:                               # %while.body.preheader
	ori	$s2, $zero, 22
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_15:                               # %emit_byte.exit
                                        #   in Loop: Header=BB1_16 Depth=1
	addi.w	$fp, $fp, -1
	addi.d	$s0, $s0, 1
	beqz	$fp, .LBB1_19
.LBB1_16:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $s0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB1_15
# %bb.17:                               # %if.then.i
                                        #   in Loop: Header=BB1_16 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB1_15
# %bb.18:                               # %if.then3.i
                                        #   in Loop: Header=BB1_16 Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	st.w	$s2, $a0, 40
	move	$a0, $s1
	jirl	$ra, $a1, 0
	b	.LBB1_15
.LBB1_19:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB1_20:                               # %if.end
	ret
.Lfunc_end1:
	.size	write_any_marker, .Lfunc_end1-write_any_marker
                                        # -- End function
	.p2align	5                               # -- Begin function write_file_header
	.type	write_file_header,@function
write_file_header:                      # @write_file_header
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_3
# %bb.1:                                # %if.then.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_3
# %bb.2:                                # %if.then3.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_3:                                # %emit_byte.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 216
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_5
# %bb.4:                                # %if.then.i7.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB2_60
.LBB2_5:                                # %emit_marker.exit
	ld.w	$a0, $fp, 280
	beqz	$a0, .LBB2_61
.LBB2_6:                                # %if.then
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_9
# %bb.7:                                # %if.then.i.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_9
# %bb.8:                                # %if.then3.i.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_9:                                # %emit_byte.exit.i.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 224
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_12
# %bb.10:                               # %if.then.i7.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_12
# %bb.11:                               # %if.then3.i11.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_12:                               # %emit_marker.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_15
# %bb.13:                               # %if.then.i.i23.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_15
# %bb.14:                               # %if.then3.i.i27.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_15:                               # %emit_byte.exit.i22.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 16
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_18
# %bb.16:                               # %if.then.i9.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_18
# %bb.17:                               # %if.then3.i13.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_18:                               # %emit_2bytes.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 74
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_21
# %bb.19:                               # %if.then.i.i10
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_21
# %bb.20:                               # %if.then3.i.i14
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_21:                               # %emit_byte.exit.i9
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 70
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_24
# %bb.22:                               # %if.then.i34.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_24
# %bb.23:                               # %if.then3.i38.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_24:                               # %emit_byte.exit40.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 73
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_27
# %bb.25:                               # %if.then.i46.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_27
# %bb.26:                               # %if.then3.i50.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_27:                               # %emit_byte.exit52.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 70
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_30
# %bb.28:                               # %if.then.i58.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_30
# %bb.29:                               # %if.then3.i62.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_30:                               # %emit_byte.exit64.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_33
# %bb.31:                               # %if.then.i70.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_33
# %bb.32:                               # %if.then3.i74.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_33:                               # %emit_byte.exit76.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$s0, $zero, 1
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_36
# %bb.34:                               # %if.then.i82.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_36
# %bb.35:                               # %if.then3.i86.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_36:                               # %emit_byte.exit88.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_39
# %bb.37:                               # %if.then.i94.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_39
# %bb.38:                               # %if.then3.i98.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_39:                               # %emit_byte.exit100.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $fp, 284
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_42
# %bb.40:                               # %if.then.i106.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_42
# %bb.41:                               # %if.then3.i110.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_42:                               # %emit_byte.exit112.i
	ld.d	$a0, $fp, 32
	ld.hu	$s0, $fp, 286
	ld.d	$a1, $a0, 0
	srli.d	$a2, $s0, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_45
# %bb.43:                               # %if.then.i.i129.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_45
# %bb.44:                               # %if.then3.i.i133.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_45:                               # %emit_byte.exit.i118.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_48
# %bb.46:                               # %if.then.i9.i123.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_48
# %bb.47:                               # %if.then3.i13.i127.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_48:                               # %emit_2bytes.exit135.i
	ld.d	$a0, $fp, 32
	ld.hu	$s0, $fp, 288
	ld.d	$a1, $a0, 0
	srli.d	$a2, $s0, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_51
# %bb.49:                               # %if.then.i.i155.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_51
# %bb.50:                               # %if.then3.i.i159.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_51:                               # %emit_byte.exit.i143.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_54
# %bb.52:                               # %if.then.i9.i149.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_54
# %bb.53:                               # %if.then3.i13.i153.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_54:                               # %emit_2bytes.exit161.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_57
# %bb.55:                               # %if.then.i167.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_57
# %bb.56:                               # %if.then3.i171.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_57:                               # %emit_byte.exit173.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_61
# %bb.58:                               # %if.then.i179.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_61
# %bb.59:                               # %if.then3.i183.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 292
	bnez	$a0, .LBB2_62
	b	.LBB2_114
.LBB2_60:                               # %if.then3.i11.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 280
	bnez	$a0, .LBB2_6
.LBB2_61:                               # %if.end
	ld.w	$a0, $fp, 292
	beqz	$a0, .LBB2_114
.LBB2_62:                               # %if.then2
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_65
# %bb.63:                               # %if.then.i.i.i55
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_65
# %bb.64:                               # %if.then3.i.i.i59
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_65:                               # %emit_byte.exit.i.i21
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 238
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_68
# %bb.66:                               # %if.then.i7.i.i49
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_68
# %bb.67:                               # %if.then3.i11.i.i53
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_68:                               # %emit_marker.exit.i26
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_71
# %bb.69:                               # %if.then.i.i20.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_71
# %bb.70:                               # %if.then3.i.i24.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_71:                               # %emit_byte.exit.i19.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 14
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_74
# %bb.72:                               # %if.then.i9.i.i43
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_74
# %bb.73:                               # %if.then3.i13.i.i47
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_74:                               # %emit_2bytes.exit.i31
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 65
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_77
# %bb.75:                               # %if.then.i.i37
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_77
# %bb.76:                               # %if.then3.i.i41
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_77:                               # %emit_byte.exit.i36
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 100
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_80
# %bb.78:                               # %if.then.i31.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_80
# %bb.79:                               # %if.then3.i35.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_80:                               # %emit_byte.exit37.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 111
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_83
# %bb.81:                               # %if.then.i43.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_83
# %bb.82:                               # %if.then3.i47.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_83:                               # %emit_byte.exit49.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 98
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_86
# %bb.84:                               # %if.then.i55.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_86
# %bb.85:                               # %if.then3.i59.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_86:                               # %emit_byte.exit61.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 101
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_89
# %bb.87:                               # %if.then.i67.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_89
# %bb.88:                               # %if.then3.i71.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_89:                               # %emit_byte.exit73.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_92
# %bb.90:                               # %if.then.i.i90.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_92
# %bb.91:                               # %if.then3.i.i94.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_92:                               # %emit_byte.exit.i79.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 100
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_95
# %bb.93:                               # %if.then.i9.i84.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_95
# %bb.94:                               # %if.then3.i13.i88.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_95:                               # %emit_2bytes.exit96.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_98
# %bb.96:                               # %if.then.i.i113.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_98
# %bb.97:                               # %if.then3.i.i117.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_98:                               # %emit_byte.exit.i102.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_101
# %bb.99:                               # %if.then.i9.i107.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_101
# %bb.100:                              # %if.then3.i13.i111.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_101:                              # %emit_2bytes.exit119.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_104
# %bb.102:                              # %if.then.i.i136.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_104
# %bb.103:                              # %if.then3.i.i140.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_104:                              # %emit_byte.exit.i125.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_107
# %bb.105:                              # %if.then.i9.i130.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB2_107
# %bb.106:                              # %if.then3.i13.i134.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB2_107:                              # %emit_2bytes.exit142.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.w	$a2, $fp, 72
	addi.d	$a3, $a1, 1
	ori	$a4, $zero, 5
	st.d	$a3, $a0, 0
	beq	$a2, $a4, .LBB2_110
# %bb.108:                              # %emit_2bytes.exit142.i
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB2_112
# %bb.109:                              # %sw.bb.i
	ori	$a2, $zero, 1
	b	.LBB2_111
.LBB2_110:                              # %sw.bb1.i
	ori	$a2, $zero, 2
.LBB2_111:                              # %sw.bb.i
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_114
	b	.LBB2_113
.LBB2_112:                              # %sw.default.i
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB2_114
.LBB2_113:                              # %if.then.i172.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB2_115
.LBB2_114:                              # %if.end3
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_115:                              # %sw.epilog.sink.split.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a1
.Lfunc_end2:
	.size	write_file_header, .Lfunc_end2-write_file_header
                                        # -- End function
	.p2align	5                               # -- Begin function write_frame_header
	.type	write_frame_header,@function
write_frame_header:                     # @write_frame_header
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a2, $a0, 68
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_4
# %bb.1:                                # %for.body.preheader
	ld.d	$a0, $fp, 80
	move	$s0, $zero
	move	$s1, $zero
	addi.d	$s2, $a0, 16
	.p2align	4, , 16
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $s2, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dqt)
	jirl	$ra, $ra, 0
	ld.w	$a2, $fp, 68
	add.w	$s0, $a0, $s0
	addi.w	$s1, $s1, 1
	addi.d	$s2, $s2, 96
	blt	$s1, $a2, .LBB3_2
# %bb.3:                                # %for.end.loopexit
	sltu	$a0, $zero, $s0
	ld.w	$a3, $fp, 252
	ori	$a1, $zero, 201
	bnez	$a3, .LBB3_21
	b	.LBB3_5
.LBB3_4:
	move	$a0, $zero
	ld.w	$a3, $fp, 252
	ori	$a1, $zero, 201
	bnez	$a3, .LBB3_21
.LBB3_5:                                # %lor.lhs.false
	ld.w	$a1, $fp, 300
	beqz	$a1, .LBB3_7
# %bb.6:
	ori	$a1, $zero, 194
	b	.LBB3_21
.LBB3_7:                                # %lor.lhs.false2
	ld.w	$a1, $fp, 64
	ori	$a3, $zero, 8
	bne	$a1, $a3, .LBB3_14
# %bb.8:                                # %if.else
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	blt	$a2, $a1, .LBB3_15
# %bb.9:                                # %for.body8.preheader
	ld.d	$a3, $fp, 80
	addi.d	$a4, $a3, 24
	ori	$a5, $zero, 1
	ori	$a6, $zero, 2
	ori	$a3, $zero, 1
	b	.LBB3_12
	.p2align	4, , 16
.LBB3_10:                               # %if.then12
                                        #   in Loop: Header=BB3_12 Depth=1
	move	$a3, $zero
.LBB3_11:                               # %for.inc13
                                        #   in Loop: Header=BB3_12 Depth=1
	addi.w	$a2, $a2, -1
	addi.d	$a4, $a4, 96
	beqz	$a2, .LBB3_15
.LBB3_12:                               # %for.body8
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a4, -4
	blt	$a5, $a7, .LBB3_10
# %bb.13:                               # %lor.lhs.false10
                                        #   in Loop: Header=BB3_12 Depth=1
	ld.w	$a7, $a4, 0
	bge	$a7, $a6, .LBB3_10
	b	.LBB3_11
.LBB3_14:
	move	$a3, $zero
	b	.LBB3_18
.LBB3_15:                               # %for.end16
	sltu	$a2, $zero, $a3
	and	$a0, $a0, $a2
	bne	$a0, $a1, .LBB3_18
# %bb.16:                               # %if.end22
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 74
	st.w	$a1, $a0, 40
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a2, 0
	ori	$a1, $zero, 201
	ld.w	$a0, $fp, 252
	bnez	$a0, .LBB3_21
# %bb.17:                               # %if.else26.thread
	ld.w	$a0, $fp, 300
	ori	$a1, $zero, 194
	bnez	$a0, .LBB3_21
	b	.LBB3_20
.LBB3_18:                               # %if.else26
	ld.w	$a0, $fp, 300
	ori	$a1, $zero, 194
	bnez	$a0, .LBB3_21
# %bb.19:                               # %if.else30
	ori	$a1, $zero, 192
	bnez	$a3, .LBB3_21
.LBB3_20:                               # %if.else33
	ori	$a1, $zero, 193
.LBB3_21:                               # %if.end36
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(emit_sof)
	jr	$t8
.Lfunc_end3:
	.size	write_frame_header, .Lfunc_end3-write_frame_header
                                        # -- End function
	.p2align	5                               # -- Begin function write_scan_header
	.type	write_scan_header,@function
write_scan_header:                      # @write_scan_header
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 252
	beqz	$a0, .LBB4_59
.LBB4_1:                                # %if.end13
	ld.w	$a0, $fp, 272
	beqz	$a0, .LBB4_20
# %bb.2:                                # %if.then15
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_5
# %bb.3:                                # %if.then.i.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_5
# %bb.4:                                # %if.then3.i.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_5:                                # %emit_byte.exit.i.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 221
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_8
# %bb.6:                                # %if.then.i7.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_8
# %bb.7:                                # %if.then3.i11.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_8:                                # %emit_marker.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_11
# %bb.9:                                # %if.then.i.i10.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_11
# %bb.10:                               # %if.then3.i.i14.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_11:                               # %emit_byte.exit.i9.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 4
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_14
# %bb.12:                               # %if.then.i9.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_14
# %bb.13:                               # %if.then3.i13.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_14:                               # %emit_2bytes.exit.i
	ld.d	$a0, $fp, 32
	ld.w	$s0, $fp, 272
	ld.d	$a1, $a0, 0
	srli.d	$a2, $s0, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_17
# %bb.15:                               # %if.then.i.i32.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_17
# %bb.16:                               # %if.then3.i.i36.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_17:                               # %emit_byte.exit.i21.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_20
# %bb.18:                               # %if.then.i9.i26.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_20
# %bb.19:                               # %if.then3.i13.i30.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_20:                               # %if.end16
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_23
# %bb.21:                               # %if.then.i.i.i50
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_23
# %bb.22:                               # %if.then3.i.i.i54
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_23:                               # %emit_byte.exit.i.i24
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 218
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_26
# %bb.24:                               # %if.then.i7.i.i44
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_26
# %bb.25:                               # %if.then3.i11.i.i48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_26:                               # %emit_marker.exit.i29
	ld.d	$a0, $fp, 32
	ld.w	$a1, $fp, 316
	ld.d	$a2, $a0, 0
	slli.d	$a3, $a1, 1
	addi.d	$a3, $a3, 6
	srli.d	$a3, $a3, 8
	addi.d	$a4, $a2, 1
	st.d	$a4, $a0, 0
	st.b	$a3, $a2, 0
	ld.d	$a2, $a0, 8
	ori	$a3, $zero, 6
	alsl.w	$s0, $a1, $a3, 1
	addi.d	$a1, $a2, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_29
# %bb.27:                               # %if.then.i.i30.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_29
# %bb.28:                               # %if.then3.i.i34.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_29:                               # %emit_byte.exit.i29.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_32
# %bb.30:                               # %if.then.i9.i.i38
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_32
# %bb.31:                               # %if.then3.i13.i.i42
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_32:                               # %emit_2bytes.exit.i37
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $fp, 316
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_35
# %bb.33:                               # %if.then.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_35
# %bb.34:                               # %if.then3.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_35:                               # %emit_byte.exit.i
	ld.w	$a0, $fp, 316
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_50
# %bb.36:                               # %for.body.lr.ph.i
	move	$s0, $zero
	ori	$s1, $zero, 320
	ori	$s2, $zero, 22
	b	.LBB4_38
	.p2align	4, , 16
.LBB4_37:                               # %emit_byte.exit61.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a0, $fp, 316
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bge	$s0, $a0, .LBB4_50
.LBB4_38:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ldx.d	$s3, $fp, $s1
	ld.d	$a1, $a0, 0
	ld.b	$a2, $s3, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_40
# %bb.39:                               # %if.then.i42.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_45
.LBB4_40:                               # %emit_byte.exit48.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a0, $s3, 20
	ld.w	$a2, $fp, 300
	ld.w	$a1, $s3, 24
	beqz	$a2, .LBB4_47
.LBB4_41:                               # %if.then.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a2, $fp, 404
	beqz	$a2, .LBB4_43
# %bb.42:                               #   in Loop: Header=BB4_38 Depth=1
	move	$a0, $zero
	b	.LBB4_47
	.p2align	4, , 16
.LBB4_43:                               # %if.then6.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a1, $fp, 412
	beqz	$a1, .LBB4_46
# %bb.44:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.w	$a2, $fp, 252
	move	$a1, $zero
	sltui	$a2, $a2, 1
	masknez	$a0, $a0, $a2
	b	.LBB4_47
.LBB4_45:                               # %if.then3.i46.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $s3, 20
	ld.w	$a2, $fp, 300
	ld.w	$a1, $s3, 24
	bnez	$a2, .LBB4_41
	b	.LBB4_47
.LBB4_46:                               #   in Loop: Header=BB4_38 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB4_47:                               # %if.end11.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a2, $fp, 32
	ld.d	$a3, $a2, 0
	alsl.d	$a0, $a0, $a1, 4
	addi.d	$a1, $a3, 1
	st.d	$a1, $a2, 0
	st.b	$a0, $a3, 0
	ld.d	$a0, $a2, 8
	addi.d	$a0, $a0, -1
	st.d	$a0, $a2, 8
	bnez	$a0, .LBB4_37
# %bb.48:                               # %if.then.i55.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a1, $a2, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_37
# %bb.49:                               # %if.then3.i59.i
                                        #   in Loop: Header=BB4_38 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB4_37
.LBB4_50:                               # %for.end.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $fp, 404
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_53
# %bb.51:                               # %if.then.i68.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_53
# %bb.52:                               # %if.then3.i72.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_53:                               # %emit_byte.exit74.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $fp, 408
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_56
# %bb.54:                               # %if.then.i81.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB4_56
# %bb.55:                               # %if.then3.i85.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_56:                               # %emit_byte.exit87.i
	ld.d	$a0, $fp, 32
	ld.w	$a1, $fp, 412
	ld.w	$a2, $fp, 416
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a1, $a2, 4
	addi.d	$a2, $a3, 1
	st.d	$a2, $a0, 0
	st.b	$a1, $a3, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB4_58
# %bb.57:                               # %if.then.i94.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB4_69
.LBB4_58:                               # %emit_sos.exit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB4_59:                               # %for.cond.preheader
	ld.w	$a0, $fp, 316
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB4_1
# %bb.60:                               # %for.body.lr.ph
	move	$s0, $zero
	ori	$s1, $zero, 320
	b	.LBB4_65
	.p2align	4, , 16
.LBB4_61:                               # %if.else9
                                        #   in Loop: Header=BB4_65 Depth=1
	ld.w	$a1, $s2, 20
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB4_62:                               # %for.inc
                                        #   in Loop: Header=BB4_65 Depth=1
	ld.w	$a1, $s2, 24
	ori	$a2, $zero, 1
	move	$a0, $fp
.LBB4_63:                               # %for.inc
                                        #   in Loop: Header=BB4_65 Depth=1
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB4_64:                               # %for.inc
                                        #   in Loop: Header=BB4_65 Depth=1
	ld.w	$a0, $fp, 316
	addi.d	$s0, $s0, 1
	addi.d	$s1, $s1, 8
	bge	$s0, $a0, .LBB4_1
.LBB4_65:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, 300
	ldx.d	$s2, $fp, $s1
	beqz	$a0, .LBB4_61
# %bb.66:                               # %if.then2
                                        #   in Loop: Header=BB4_65 Depth=1
	ld.w	$a0, $fp, 404
	bnez	$a0, .LBB4_62
# %bb.67:                               # %if.then4
                                        #   in Loop: Header=BB4_65 Depth=1
	ld.w	$a0, $fp, 412
	bnez	$a0, .LBB4_64
# %bb.68:                               # %if.then6
                                        #   in Loop: Header=BB4_65 Depth=1
	ld.w	$a1, $s2, 20
	move	$a0, $fp
	move	$a2, $zero
	b	.LBB4_63
.LBB4_69:                               # %if.then3.i98.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	jr	$a1
.Lfunc_end4:
	.size	write_scan_header, .Lfunc_end4-write_scan_header
                                        # -- End function
	.p2align	5                               # -- Begin function write_file_trailer
	.type	write_file_trailer,@function
write_file_trailer:                     # @write_file_trailer
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB5_3
# %bb.1:                                # %if.then.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB5_3
# %bb.2:                                # %if.then3.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB5_3:                                # %emit_byte.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 217
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB5_5
# %bb.4:                                # %if.then.i7.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB5_6
.LBB5_5:                                # %emit_marker.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB5_6:                                # %if.then3.i11.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.Lfunc_end5:
	.size	write_file_trailer, .Lfunc_end5-write_file_trailer
                                        # -- End function
	.p2align	5                               # -- Begin function write_tables_only
	.type	write_tables_only,@function
write_tables_only:                      # @write_tables_only
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB6_3
# %bb.1:                                # %if.then.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB6_3
# %bb.2:                                # %if.then3.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB6_3:                                # %emit_byte.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 216
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB6_6
# %bb.4:                                # %if.then.i7.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB6_6
# %bb.5:                                # %if.then3.i11.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB6_6:                                # %emit_marker.exit
	ld.d	$a0, $fp, 88
	beqz	$a0, .LBB6_8
# %bb.7:                                # %if.then
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit_dqt)
	jirl	$ra, $ra, 0
.LBB6_8:                                # %for.inc
	ld.d	$a0, $fp, 96
	beqz	$a0, .LBB6_10
# %bb.9:                                # %if.then.1
	ori	$a1, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dqt)
	jirl	$ra, $ra, 0
.LBB6_10:                               # %for.inc.1
	ld.d	$a0, $fp, 104
	beqz	$a0, .LBB6_12
# %bb.11:                               # %if.then.2
	ori	$a1, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dqt)
	jirl	$ra, $ra, 0
.LBB6_12:                               # %for.inc.2
	ld.d	$a0, $fp, 112
	beqz	$a0, .LBB6_14
# %bb.13:                               # %if.then.3
	ori	$a1, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dqt)
	jirl	$ra, $ra, 0
.LBB6_14:                               # %for.inc.3
	ld.w	$a0, $fp, 252
	bnez	$a0, .LBB6_31
# %bb.15:                               # %for.cond3.preheader
	ld.d	$a0, $fp, 120
	beqz	$a0, .LBB6_17
# %bb.16:                               # %if.then9
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_17:                               # %if.end10
	ld.d	$a0, $fp, 152
	beqz	$a0, .LBB6_19
# %bb.18:                               # %if.then14
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_19:                               # %for.inc16
	ld.d	$a0, $fp, 128
	beqz	$a0, .LBB6_21
# %bb.20:                               # %if.then9.1
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_21:                               # %if.end10.1
	ld.d	$a0, $fp, 160
	beqz	$a0, .LBB6_23
# %bb.22:                               # %if.then14.1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_23:                               # %for.inc16.1
	ld.d	$a0, $fp, 136
	beqz	$a0, .LBB6_25
# %bb.24:                               # %if.then9.2
	ori	$a1, $zero, 2
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_25:                               # %if.end10.2
	ld.d	$a0, $fp, 168
	beqz	$a0, .LBB6_27
# %bb.26:                               # %if.then14.2
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_27:                               # %for.inc16.2
	ld.d	$a0, $fp, 144
	beqz	$a0, .LBB6_29
# %bb.28:                               # %if.then9.3
	ori	$a1, $zero, 3
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_29:                               # %if.end10.3
	ld.d	$a0, $fp, 176
	beqz	$a0, .LBB6_31
# %bb.30:                               # %if.then14.3
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(emit_dht)
	jirl	$ra, $ra, 0
.LBB6_31:                               # %if.end19
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB6_34
# %bb.32:                               # %if.then.i.i34
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB6_34
# %bb.33:                               # %if.then3.i.i38
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB6_34:                               # %emit_byte.exit.i23
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 217
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB6_36
# %bb.35:                               # %if.then.i7.i28
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB6_37
.LBB6_36:                               # %emit_marker.exit40
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_37:                               # %if.then3.i11.i32
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.Lfunc_end6:
	.size	write_tables_only, .Lfunc_end6-write_tables_only
                                        # -- End function
	.p2align	5                               # -- Begin function emit_dqt
	.type	emit_dqt,@function
emit_dqt:                               # @emit_dqt
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$s1, $a0, 88
	bnez	$s1, .LBB7_2
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 0
	st.w	$s0, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 51
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB7_2:                                # %vector.body
	vld	$vr0, $s1, 0
	vld	$vr1, $s1, 16
	vld	$vr2, $s1, 32
	vld	$vr3, $s1, 48
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	vld	$vr2, $s1, 64
	vld	$vr3, $s1, 80
	vld	$vr4, $s1, 96
	vld	$vr5, $s1, 112
	vor.v	$vr0, $vr0, $vr2
	vor.v	$vr1, $vr1, $vr3
	vor.v	$vr0, $vr0, $vr4
	vor.v	$vr1, $vr1, $vr5
	vor.v	$vr0, $vr1, $vr0
	vrepli.h	$vr1, 255
	ld.w	$a0, $s1, 128
	vslt.hu	$vr0, $vr1, $vr0
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a1, $vr0, 0
	andi	$s2, $a1, 255
	bnez	$a0, .LBB7_31
# %bb.3:                                # %if.then11
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_6
# %bb.4:                                # %if.then.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_6
# %bb.5:                                # %if.then3.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB7_6:                                # %emit_byte.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 219
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_9
# %bb.7:                                # %if.then.i7.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_9
# %bb.8:                                # %if.then3.i11.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB7_9:                                # %emit_marker.exit
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$zero, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_12
# %bb.10:                               # %if.then.i.i31
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_12
# %bb.11:                               # %if.then3.i.i35
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB7_12:                               # %emit_byte.exit.i30
	ld.d	$a0, $fp, 32
	sltu	$s3, $zero, $s2
	ori	$a1, $zero, 67
	masknez	$a1, $a1, $s3
	ld.d	$a2, $a0, 0
	addi.d	$a3, $zero, -125
	maskeqz	$a3, $a3, $s3
	or	$a1, $a3, $a1
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	st.b	$a1, $a2, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_15
# %bb.13:                               # %if.then.i9.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_15
# %bb.14:                               # %if.then3.i13.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB7_15:                               # %emit_2bytes.exit
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $s3, $s0, 4
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_18
# %bb.16:                               # %if.then.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_18
# %bb.17:                               # %if.then3.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB7_18:                               # %emit_byte.exit
	pcalau12i	$a0, %got_pc_hi20(jpeg_natural_order)
	ld.d	$s0, $a0, %got_pc_lo12(jpeg_natural_order)
	move	$s3, $zero
	ori	$s4, $zero, 22
	ori	$s5, $zero, 256
	bnez	$s2, .LBB7_20
	b	.LBB7_27
	.p2align	4, , 16
.LBB7_19:                               # %emit_byte.exit62
                                        #   in Loop: Header=BB7_20 Depth=1
	addi.d	$s3, $s3, 4
	beq	$s3, $s5, .LBB7_30
.LBB7_20:                               # %for.body16
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$a1, $s0, $s3
	ld.d	$a0, $fp, 32
	slli.d	$a1, $a1, 1
	ldx.hu	$s6, $s1, $a1
	ld.d	$a1, $a0, 0
	srli.d	$a2, $s6, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_23
# %bb.21:                               # %if.then.i43
                                        #   in Loop: Header=BB7_20 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_23
# %bb.22:                               # %if.then3.i47
                                        #   in Loop: Header=BB7_20 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s4, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	.p2align	4, , 16
.LBB7_23:                               # %if.end25
                                        #   in Loop: Header=BB7_20 Depth=1
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s6, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_19
# %bb.24:                               # %if.then.i56
                                        #   in Loop: Header=BB7_20 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_19
# %bb.25:                               # %if.then3.i60
                                        #   in Loop: Header=BB7_20 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s4, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB7_19
	.p2align	4, , 16
.LBB7_26:                               # %emit_byte.exit62.us
                                        #   in Loop: Header=BB7_27 Depth=1
	addi.d	$s3, $s3, 4
	beq	$s3, $s5, .LBB7_30
.LBB7_27:                               # %for.body16.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ldx.w	$a1, $s0, $s3
	ld.d	$a2, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.b	$a1, $s1, $a1
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	st.b	$a1, $a2, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB7_26
# %bb.28:                               # %if.then.i56.us
                                        #   in Loop: Header=BB7_27 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB7_26
# %bb.29:                               # %if.then3.i60.us
                                        #   in Loop: Header=BB7_27 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s4, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB7_26
.LBB7_30:                               # %for.end28
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 128
.LBB7_31:                               # %if.end30
	sltu	$a0, $zero, $s2
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end7:
	.size	emit_dqt, .Lfunc_end7-emit_dqt
                                        # -- End function
	.p2align	5                               # -- Begin function emit_sof
	.type	emit_sof,@function
emit_sof:                               # @emit_sof
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	ld.d	$a2, $a0, 0
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	ori	$a3, $zero, 255
	st.b	$a3, $a2, 0
	ld.d	$a2, $a0, 8
	move	$s0, $a1
	addi.d	$a1, $a2, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_3
# %bb.1:                                # %if.then.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_3
# %bb.2:                                # %if.then3.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_3:                                # %emit_byte.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_6
# %bb.4:                                # %if.then.i7.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_6
# %bb.5:                                # %if.then3.i11.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_6:                                # %emit_marker.exit
	ld.d	$a0, $fp, 32
	ld.w	$a1, $fp, 68
	ld.d	$a2, $a0, 0
	alsl.d	$a1, $a1, $a1, 1
	addi.d	$s0, $a1, 8
	srli.d	$a1, $s0, 8
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	st.b	$a1, $a2, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_9
# %bb.7:                                # %if.then.i.i34
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_9
# %bb.8:                                # %if.then3.i.i38
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_9:                                # %emit_byte.exit.i33
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_11
# %bb.10:                               # %if.then.i9.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB8_13
.LBB8_11:                               # %emit_2bytes.exit
	ld.hu	$a0, $fp, 46
	bnez	$a0, .LBB8_14
.LBB8_12:                               # %lor.lhs.false
	ld.hu	$a0, $fp, 42
	bnez	$a0, .LBB8_14
	b	.LBB8_15
.LBB8_13:                               # %if.then3.i13.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.hu	$a0, $fp, 46
	beqz	$a0, .LBB8_12
.LBB8_14:                               # %if.then
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 40
	lu32i.d	$a1, 65535
	st.d	$a1, $a0, 40
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_15:                               # %if.end
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $fp, 64
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_18
# %bb.16:                               # %if.then.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_18
# %bb.17:                               # %if.then3.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_18:                               # %emit_byte.exit
	ld.d	$a0, $fp, 32
	ld.w	$s0, $fp, 44
	ld.d	$a1, $a0, 0
	srli.d	$a2, $s0, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_21
# %bb.19:                               # %if.then.i.i59
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_21
# %bb.20:                               # %if.then3.i.i63
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_21:                               # %emit_byte.exit.i47
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_24
# %bb.22:                               # %if.then.i9.i53
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_24
# %bb.23:                               # %if.then3.i13.i57
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_24:                               # %emit_2bytes.exit65
	ld.d	$a0, $fp, 32
	ld.w	$s0, $fp, 40
	ld.d	$a1, $a0, 0
	srli.d	$a2, $s0, 8
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_27
# %bb.25:                               # %if.then.i.i85
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_27
# %bb.26:                               # %if.then3.i.i89
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_27:                               # %emit_byte.exit.i73
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s0, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_30
# %bb.28:                               # %if.then.i9.i79
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_30
# %bb.29:                               # %if.then3.i13.i83
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_30:                               # %emit_2bytes.exit91
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $fp, 68
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_33
# %bb.31:                               # %if.then.i98
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_33
# %bb.32:                               # %if.then3.i102
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB8_33:                               # %emit_byte.exit104
	ld.w	$a0, $fp, 68
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_45
# %bb.34:                               # %for.body.preheader
	ld.d	$s0, $fp, 80
	move	$s1, $zero
	ori	$s2, $zero, 22
	b	.LBB8_36
	.p2align	4, , 16
.LBB8_35:                               # %emit_byte.exit143
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.w	$a0, $fp, 68
	addi.w	$s1, $s1, 1
	addi.d	$s0, $s0, 96
	bge	$s1, $a0, .LBB8_45
.LBB8_36:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $s0, 0
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_39
# %bb.37:                               # %if.then.i111
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_39
# %bb.38:                               # %if.then3.i115
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	.p2align	4, , 16
.LBB8_39:                               # %emit_byte.exit117
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a0, $fp, 32
	ld.w	$a1, $s0, 8
	ld.w	$a2, $s0, 12
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a1, $a2, 4
	addi.d	$a2, $a3, 1
	st.d	$a2, $a0, 0
	st.b	$a1, $a3, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_42
# %bb.40:                               # %if.then.i124
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_42
# %bb.41:                               # %if.then3.i128
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	.p2align	4, , 16
.LBB8_42:                               # %emit_byte.exit130
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ld.b	$a2, $s0, 16
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB8_35
# %bb.43:                               # %if.then.i137
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB8_35
# %bb.44:                               # %if.then3.i141
                                        #   in Loop: Header=BB8_36 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB8_35
.LBB8_45:                               # %for.end
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end8:
	.size	emit_sof, .Lfunc_end8-emit_sof
                                        # -- End function
	.p2align	5                               # -- Begin function emit_dht
	.type	emit_dht,@function
emit_dht:                               # @emit_dht
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
	move	$fp, $a0
	sltui	$a0, $a2, 1
	alsl.d	$a2, $a1, $fp, 3
	addi.d	$a3, $a2, 152
	addi.d	$a2, $a2, 120
	masknez	$a3, $a3, $a0
	maskeqz	$a2, $a2, $a0
	or	$a2, $a2, $a3
	ld.d	$s0, $a2, 0
	addi.d	$a2, $a1, 16
	maskeqz	$a1, $a1, $a0
	masknez	$a0, $a2, $a0
	or	$s1, $a1, $a0
	beqz	$s0, .LBB9_2
# %bb.1:                                # %if.end7
	ld.w	$a0, $s0, 276
	bnez	$a0, .LBB9_30
	b	.LBB9_3
.LBB9_2:                                # %if.then3
	ld.d	$a0, $fp, 0
	st.w	$s1, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 49
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $s0, 276
	bnez	$a0, .LBB9_30
.LBB9_3:                                # %if.then9
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 255
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_6
# %bb.4:                                # %if.then.i.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_6
# %bb.5:                                # %if.then3.i.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB9_6:                                # %emit_byte.exit.i
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	ori	$a2, $zero, 196
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_9
# %bb.7:                                # %if.then.i7.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_9
# %bb.8:                                # %if.then3.i11.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB9_9:                                # %emit_marker.exit
	ld.bu	$a0, $s0, 1
	ld.bu	$a1, $s0, 2
	ld.bu	$a2, $s0, 3
	ld.bu	$a3, $s0, 4
	ld.bu	$a4, $s0, 5
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	ld.bu	$a1, $s0, 6
	ld.bu	$a2, $s0, 7
	ld.bu	$a3, $s0, 8
	ld.bu	$a4, $s0, 9
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a4
	ld.bu	$a1, $s0, 10
	ld.bu	$a2, $s0, 11
	ld.bu	$a3, $s0, 12
	ld.bu	$a4, $s0, 13
	add.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a3
	add.d	$a1, $a0, $a4
	ld.bu	$a2, $s0, 14
	ld.bu	$a3, $s0, 15
	ld.d	$a0, $fp, 32
	ld.bu	$a4, $s0, 16
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	ld.d	$a2, $a0, 0
	add.w	$s2, $a1, $a4
	addi.d	$s3, $s2, 19
	srli.d	$a1, $s3, 8
	addi.d	$a3, $a2, 1
	st.d	$a3, $a0, 0
	st.b	$a1, $a2, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_12
# %bb.10:                               # %if.then.i.i36
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_12
# %bb.11:                               # %if.then3.i.i40
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB9_12:                               # %emit_byte.exit.i35
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s3, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_15
# %bb.13:                               # %if.then.i9.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_15
# %bb.14:                               # %if.then3.i13.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB9_15:                               # %emit_2bytes.exit
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	addi.d	$a2, $a1, 1
	st.d	$a2, $a0, 0
	st.b	$s1, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_18
# %bb.16:                               # %if.then.i
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_18
# %bb.17:                               # %if.then3.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 22
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB9_18:                               # %for.body20.preheader
	move	$s1, $zero
	addi.d	$s3, $s0, 1
	ori	$s4, $zero, 22
	ori	$s5, $zero, 16
	b	.LBB9_20
	.p2align	4, , 16
.LBB9_19:                               # %emit_byte.exit54
                                        #   in Loop: Header=BB9_20 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $s5, .LBB9_23
.LBB9_20:                               # %for.body20
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ldx.b	$a2, $s3, $s1
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_19
# %bb.21:                               # %if.then.i48
                                        #   in Loop: Header=BB9_20 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_19
# %bb.22:                               # %if.then3.i52
                                        #   in Loop: Header=BB9_20 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s4, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB9_19
.LBB9_23:                               # %for.cond28.preheader
	beqz	$s2, .LBB9_29
# %bb.24:                               # %for.body31.lr.ph
	move	$s1, $zero
	addi.d	$s3, $s0, 17
	ori	$s4, $zero, 22
	b	.LBB9_26
	.p2align	4, , 16
.LBB9_25:                               # %emit_byte.exit67
                                        #   in Loop: Header=BB9_26 Depth=1
	addi.d	$s1, $s1, 1
	bgeu	$s1, $s2, .LBB9_29
.LBB9_26:                               # %for.body31
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ldx.b	$a2, $s3, $s1
	addi.d	$a3, $a1, 1
	st.d	$a3, $a0, 0
	st.b	$a2, $a1, 0
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 8
	bnez	$a1, .LBB9_25
# %bb.27:                               # %if.then.i61
                                        #   in Loop: Header=BB9_26 Depth=1
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB9_25
# %bb.28:                               # %if.then3.i65
                                        #   in Loop: Header=BB9_26 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s4, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB9_25
.LBB9_29:                               # %for.end37
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 276
.LBB9_30:                               # %if.end39
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
.Lfunc_end9:
	.size	emit_dht, .Lfunc_end9-emit_dht
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym write_any_marker
	.addrsig_sym write_file_header
	.addrsig_sym write_frame_header
	.addrsig_sym write_scan_header
	.addrsig_sym write_file_trailer
	.addrsig_sym write_tables_only
