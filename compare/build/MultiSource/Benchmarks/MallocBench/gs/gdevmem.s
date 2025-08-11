	.file	"gdevmem.c"
	.text
	.globl	gx_device_memory_bitmap_size    # -- Begin function gx_device_memory_bitmap_size
	.p2align	5
	.type	gx_device_memory_bitmap_size,@function
gx_device_memory_bitmap_size:           # @gx_device_memory_bitmap_size
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 24
	ld.w	$a2, $a0, 48
	mul.d	$a1, $a2, $a1
	addi.w	$a1, $a1, 31
	srli.d	$a1, $a1, 3
	addi.w	$a2, $zero, -4
	ld.w	$a3, $a0, 28
	lu32i.d	$a2, 0
	and	$a2, $a1, $a2
	addi.d	$a1, $a2, 8
	mul.d	$a1, $a1, $a3
	st.w	$a2, $a0, 152
	move	$a0, $a1
	ret
.Lfunc_end0:
	.size	gx_device_memory_bitmap_size, .Lfunc_end0-gx_device_memory_bitmap_size
                                        # -- End function
	.globl	mem_open                        # -- Begin function mem_open
	.p2align	5
	.type	mem_open,@function
mem_open:                               # @mem_open
# %bb.0:                                # %entry
	ld.w	$a4, $a0, 28
	ld.w	$a1, $a0, 152
	ld.d	$a2, $a0, 160
	mul.d	$a3, $a1, $a4
	add.d	$a3, $a2, $a3
	st.d	$a3, $a0, 168
	beqz	$a4, .LBB1_3
# %bb.1:                                # %while.body.preheader
	slli.d	$a0, $a4, 3
	.p2align	4, , 16
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $a3, 0
	addi.d	$a3, $a3, 8
	addi.d	$a0, $a0, -8
	add.d	$a2, $a2, $a1
	bnez	$a0, .LBB1_2
.LBB1_3:                                # %while.end
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	mem_open, .Lfunc_end1-mem_open
                                        # -- End function
	.globl	mem_get_initial_matrix          # -- Begin function mem_get_initial_matrix
	.p2align	5
	.type	mem_get_initial_matrix,@function
mem_get_initial_matrix:                 # @mem_get_initial_matrix
# %bb.0:                                # %entry
	addi.d	$a3, $a0, 56
	ori	$a2, $zero, 96
	move	$a0, $a1
	move	$a1, $a3
	pcaddu18i	$t8, %call36(memcpy)
	jr	$t8
.Lfunc_end2:
	.size	mem_get_initial_matrix, .Lfunc_end2-mem_get_initial_matrix
                                        # -- End function
	.globl	gs_device_is_memory             # -- Begin function gs_device_is_memory
	.p2align	5
	.type	gs_device_is_memory,@function
gs_device_is_memory:                    # @gs_device_is_memory
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 16
	ld.bu	$a1, $a0, 0
	ori	$a2, $zero, 105
	bne	$a1, $a2, .LBB3_6
# %bb.1:                                # %for.cond
	ld.bu	$a1, $a0, 1
	ori	$a2, $zero, 109
	bne	$a1, $a2, .LBB3_6
# %bb.2:                                # %for.cond.1
	ld.bu	$a1, $a0, 2
	ori	$a2, $zero, 97
	bne	$a1, $a2, .LBB3_6
# %bb.3:                                # %for.cond.2
	ld.bu	$a1, $a0, 3
	ori	$a2, $zero, 103
	bne	$a1, $a2, .LBB3_6
# %bb.4:                                # %for.cond.3
	ld.bu	$a1, $a0, 4
	ori	$a2, $zero, 101
	bne	$a1, $a2, .LBB3_6
# %bb.5:                                # %for.cond.4
	ld.bu	$a0, $a0, 5
	addi.d	$a0, $a0, -40
	sltui	$a0, $a0, 1
	ret
.LBB3_6:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	gs_device_is_memory, .Lfunc_end3-gs_device_is_memory
                                        # -- End function
	.globl	mem_bytes_per_scan_line         # -- Begin function mem_bytes_per_scan_line
	.p2align	5
	.type	mem_bytes_per_scan_line,@function
mem_bytes_per_scan_line:                # @mem_bytes_per_scan_line
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 24
	ld.w	$a0, $a0, 48
	mul.d	$a0, $a0, $a1
	addi.w	$a0, $a0, 7
	srai.d	$a0, $a0, 3
	ret
.Lfunc_end4:
	.size	mem_bytes_per_scan_line, .Lfunc_end4-mem_bytes_per_scan_line
                                        # -- End function
	.globl	mem_copy_scan_lines             # -- Begin function mem_copy_scan_lines
	.p2align	5
	.type	mem_copy_scan_lines,@function
mem_copy_scan_lines:                    # @mem_copy_scan_lines
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
	move	$s2, $a0
	ld.w	$a0, $a0, 24
	ld.w	$a4, $s2, 48
	move	$s0, $a2
	move	$fp, $a1
	mul.d	$a0, $a4, $a0
	ld.w	$a1, $s2, 28
	addi.w	$a0, $a0, 7
	srai.d	$s4, $a0, 3
	div.wu	$a0, $a3, $s4
	sub.w	$a1, $a1, $fp
	sltu	$a2, $a0, $a1
	ld.d	$a6, $s2, 176
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s1, $a0, $a1
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $fp
	move	$a3, $s4
	move	$a4, $s1
	move	$a5, $zero
	jirl	$ra, $a6, 0
	move	$s3, $fp
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB5_2
	.p2align	4, , 16
.LBB5_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$s5, $s1, 31, 1
	mul.d	$s6, $s5, $s4
	addi.w	$a3, $s6, 0
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(mem_copy_scan_lines)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s6, 31, 0
	ld.d	$a6, $s2, 176
	add.d	$s0, $s0, $a0
	add.w	$s3, $s5, $s3
	sub.w	$s1, $s1, $s5
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s3
	move	$a3, $s4
	move	$a4, $s1
	move	$a5, $zero
	jirl	$ra, $a6, 0
	bltz	$a0, .LBB5_1
.LBB5_2:                                # %while.end
	beqz	$s1, .LBB5_6
# %bb.3:                                # %while.body13.lr.ph
	ld.d	$a0, $s2, 168
	alsl.d	$s5, $s3, $a0, 3
	bstrpick.d	$s2, $s4, 31, 0
	move	$s4, $s1
	.p2align	4, , 16
.LBB5_4:                                # %while.body13
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s5, 0
	addi.w	$s4, $s4, -1
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 8
	add.d	$s0, $s0, $s2
	bnez	$s4, .LBB5_4
# %bb.5:                                # %while.end17.loopexit
	add.d	$s3, $s1, $s3
.LBB5_6:                                # %while.end17
	sub.w	$a0, $s3, $fp
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
.Lfunc_end5:
	.size	mem_copy_scan_lines, .Lfunc_end5-mem_copy_scan_lines
                                        # -- End function
	.globl	mem_no_fault_proc               # -- Begin function mem_no_fault_proc
	.p2align	5
	.type	mem_no_fault_proc,@function
mem_no_fault_proc:                      # @mem_no_fault_proc
# %bb.0:                                # %entry
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	mem_no_fault_proc, .Lfunc_end6-mem_no_fault_proc
                                        # -- End function
	.globl	mem_fill_recover                # -- Begin function mem_fill_recover
	.p2align	5
	.type	mem_fill_recover,@function
mem_fill_recover:                       # @mem_fill_recover
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a7, $zero, -2
	beq	$a6, $a7, .LBB7_3
# %bb.1:                                # %entry
	addi.w	$a7, $zero, -1
	bne	$a6, $a7, .LBB7_5
# %bb.2:                                # %sw.bb
	srai.d	$fp, $a3, 1
	add.w	$s1, $fp, $a1
	sub.w	$a3, $a3, $fp
	move	$s2, $a2
	move	$s0, $a4
	b	.LBB7_4
.LBB7_3:                                # %sw.bb1
	srai.d	$s0, $a4, 1
	add.w	$s2, $s0, $a2
	sub.w	$a4, $a4, $s0
	move	$s1, $a1
	move	$fp, $a3
.LBB7_4:                                # %sw.epilog
	ld.d	$a6, $a0, 8
	ld.d	$a6, $a6, 56
	move	$s3, $a0
	move	$s4, $a5
	jirl	$ra, $a6, 0
	ld.d	$a0, $s3, 8
	ld.d	$a6, $a0, 56
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	move	$a4, $s0
	move	$a5, $s4
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	jr	$a6
.LBB7_5:                                # %cleanup
	move	$a0, $a6
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end7:
	.size	mem_fill_recover, .Lfunc_end7-mem_fill_recover
                                        # -- End function
	.globl	mem_copy_mono_recover           # -- Begin function mem_copy_mono_recover
	.p2align	5
	.type	mem_copy_mono_recover,@function
mem_copy_mono_recover:                  # @mem_copy_mono_recover
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ld.d	$t0, $sp, 128
	addi.w	$t1, $zero, -2
	beq	$t0, $t1, .LBB8_3
# %bb.1:                                # %entry
	addi.w	$t1, $zero, -1
	bne	$t0, $t1, .LBB8_5
# %bb.2:                                # %sw.bb
	srai.d	$fp, $a6, 1
	add.w	$s1, $fp, $a4
	sub.w	$a6, $a6, $fp
	move	$s2, $a5
	move	$s0, $a7
	b	.LBB8_4
.LBB8_3:                                # %sw.bb1
	srai.d	$s0, $a7, 1
	add.w	$s2, $s0, $a5
	sub.w	$a7, $a7, $s0
	move	$s1, $a4
	move	$fp, $a6
.LBB8_4:                                # %sw.epilog
	ld.d	$t0, $a0, 8
	ld.d	$s7, $sp, 120
	ld.d	$s8, $sp, 112
	ld.d	$t0, $t0, 72
	st.d	$s7, $sp, 8
	st.d	$s8, $sp, 0
	move	$s3, $a0
	move	$s4, $a1
	move	$s5, $a2
	move	$s6, $a3
	jirl	$ra, $t0, 0
	ld.d	$a0, $s3, 8
	ld.d	$t0, $a0, 72
	st.d	$s7, $sp, 8
	st.d	$s8, $sp, 0
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s5
	move	$a3, $s6
	move	$a4, $s1
	move	$a5, $s2
	move	$a6, $fp
	move	$a7, $s0
	jirl	$ra, $t0, 0
	b	.LBB8_6
.LBB8_5:                                # %cleanup
	move	$a0, $t0
.LBB8_6:                                # %cleanup
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end8:
	.size	mem_copy_mono_recover, .Lfunc_end8-mem_copy_mono_recover
                                        # -- End function
	.globl	mem_copy_color_recover          # -- Begin function mem_copy_color_recover
	.p2align	5
	.type	mem_copy_color_recover,@function
mem_copy_color_recover:                 # @mem_copy_color_recover
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
	ld.d	$t0, $sp, 80
	addi.w	$t1, $zero, -2
	beq	$t0, $t1, .LBB9_3
# %bb.1:                                # %entry
	addi.w	$t1, $zero, -1
	bne	$t0, $t1, .LBB9_5
# %bb.2:                                # %sw.bb
	srai.d	$fp, $a6, 1
	add.w	$s1, $fp, $a4
	sub.w	$a6, $a6, $fp
	move	$s2, $a5
	move	$s0, $a7
	b	.LBB9_4
.LBB9_3:                                # %sw.bb1
	srai.d	$s0, $a7, 1
	add.w	$s2, $s0, $a5
	sub.w	$a7, $a7, $s0
	move	$s1, $a4
	move	$fp, $a6
.LBB9_4:                                # %sw.epilog
	ld.d	$t0, $a0, 8
	ld.d	$t0, $t0, 80
	move	$s3, $a0
	move	$s4, $a1
	move	$s5, $a2
	move	$s6, $a3
	jirl	$ra, $t0, 0
	ld.d	$a0, $s3, 8
	ld.d	$t0, $a0, 80
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s5
	move	$a3, $s6
	move	$a4, $s1
	move	$a5, $s2
	move	$a6, $fp
	move	$a7, $s0
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
	jr	$t0
.LBB9_5:                                # %cleanup
	move	$a0, $t0
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
.Lfunc_end9:
	.size	mem_copy_color_recover, .Lfunc_end9-mem_copy_color_recover
                                        # -- End function
	.globl	mem_mono_fill_rectangle         # -- Begin function mem_mono_fill_rectangle
	.p2align	5
	.type	mem_mono_fill_rectangle,@function
mem_mono_fill_rectangle:                # @mem_mono_fill_rectangle
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a0
	ld.d	$a6, $a0, 176
	pcalau12i	$a0, %pc_hi20(mem_no_fault_proc)
	addi.d	$a0, $a0, %pc_lo12(mem_no_fault_proc)
	move	$s4, $a5
	move	$fp, $a4
	move	$s0, $a3
	move	$s3, $a2
	move	$s1, $a1
	beq	$a6, $a0, .LBB10_2
# %bb.1:                                # %if.then
	srai.d	$a1, $s1, 3
	add.d	$a0, $s1, $s0
	addi.w	$a0, $a0, 7
	srai.d	$a0, $a0, 3
	sub.d	$a3, $a0, $a1
	ori	$a5, $zero, 1
	move	$a0, $s2
	move	$a2, $s3
	move	$a4, $fp
	jirl	$ra, $a6, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB10_12
.LBB10_2:                               # %if.end8
	ori	$a1, $zero, 1
	move	$a0, $zero
	blt	$s0, $a1, .LBB10_38
# %bb.3:                                # %if.end8
	blt	$fp, $a1, .LBB10_38
# %bb.4:                                # %if.end12
	addi.w	$a0, $zero, -1
	bltz	$s1, .LBB10_38
# %bb.5:                                # %lor.lhs.false14
	bltz	$s3, .LBB10_38
# %bb.6:                                # %lor.lhs.false14
	ld.w	$a1, $s2, 24
	sub.w	$a1, $a1, $s0
	blt	$a1, $s1, .LBB10_38
# %bb.7:                                # %lor.lhs.false19
	ld.w	$a1, $s2, 28
	sub.w	$a1, $a1, $fp
	blt	$a1, $s3, .LBB10_38
# %bb.8:                                # %if.end23
	addi.w	$a0, $zero, -1
	beq	$s4, $a0, .LBB10_35
# %bb.9:                                # %if.end23
	ld.d	$a1, $s2, 168
	ori	$a2, $zero, 1
	beq	$s4, $a2, .LBB10_17
# %bb.10:                               # %if.end23
	bnez	$s4, .LBB10_38
# %bb.11:                               # %sw.bb
	ld.b	$s2, $s2, 184
	b	.LBB10_18
.LBB10_12:                              # %if.then6
	addi.w	$a2, $zero, -2
	beq	$a0, $a2, .LBB10_15
# %bb.13:                               # %if.then6
	bne	$a0, $a1, .LBB10_38
# %bb.14:                               # %sw.bb.i
	srai.d	$s5, $s0, 1
	add.w	$s7, $s5, $s1
	sub.w	$s0, $s0, $s5
	move	$s8, $s3
	move	$s6, $fp
	b	.LBB10_16
.LBB10_15:                              # %sw.bb1.i
	srai.d	$s6, $fp, 1
	add.w	$s8, $s6, $s3
	sub.w	$fp, $fp, $s6
	move	$s7, $s1
	move	$s5, $s0
.LBB10_16:                              # %sw.epilog.i
	ld.d	$a0, $s2, 8
	ld.d	$a6, $a0, 56
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s3
	move	$a3, $s0
	move	$a4, $fp
	move	$a5, $s4
	jirl	$ra, $a6, 0
	ld.d	$a0, $s2, 8
	ld.d	$a6, $a0, 56
	move	$a0, $s2
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s5
	move	$a4, $s6
	move	$a5, $s4
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	jr	$a6
.LBB10_17:                              # %sw.bb29
	ld.b	$a0, $s2, 184
	nor	$s2, $a0, $zero
.LBB10_18:                              # %sw.epilog
	bstrpick.d	$s4, $s1, 31, 3
	andi	$a0, $s1, 7
	add.w	$a2, $s0, $a0
	ori	$a3, $zero, 8
	alsl.d	$s3, $s3, $a1, 3
	bltu	$a3, $a2, .LBB10_20
# %bb.19:                               # %if.then37
	ori	$a1, $zero, 255
	srl.w	$a1, $a1, $s0
	xori	$a1, $a1, 255
	srl.w	$s1, $a1, $a0
	b	.LBB10_31
.LBB10_20:                              # %if.else
	beqz	$a0, .LBB10_27
# %bb.21:                               # %if.then42
	andi	$a1, $s2, 255
	beqz	$a1, .LBB10_24
# %bb.22:                               # %do.body.preheader
	ori	$a1, $zero, 255
	srl.w	$a0, $a1, $a0
	move	$a1, $fp
	move	$a2, $s3
.LBB10_23:                              # %do.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ldx.b	$a4, $a3, $s4
	or	$a4, $a4, $a0
	stx.b	$a4, $a3, $s4
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB10_23
	b	.LBB10_26
.LBB10_24:                              # %do.body61.preheader
	addi.d	$a1, $zero, -256
	sra.w	$a0, $a1, $a0
	move	$a1, $fp
	move	$a2, $s3
.LBB10_25:                              # %do.body61
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	ldx.b	$a4, $a3, $s4
	and	$a4, $a4, $a0
	stx.b	$a4, $a3, $s4
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB10_25
.LBB10_26:                              # %if.end74
	addi.d	$s4, $s4, 1
	addi.w	$a0, $zero, -8
	lu32i.d	$a0, 0
	or	$a0, $s1, $a0
	add.w	$s0, $s0, $a0
.LBB10_27:                              # %if.end78
	andi	$a0, $s0, 7
	addi.d	$a1, $zero, -256
	ori	$a2, $zero, 8
	sra.w	$s1, $a1, $a0
	bltu	$s0, $a2, .LBB10_31
# %bb.28:                               # %if.then87
	srai.d	$s0, $s0, 3
	addi.w	$s5, $s4, 0
	move	$s6, $fp
	move	$s7, $s3
	.p2align	4, , 16
.LBB10_29:                              # %do.body93
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s7, 0
	add.d	$a0, $a0, $s5
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.w	$s6, $s6, -1
	addi.d	$s7, $s7, 8
	bnez	$s6, .LBB10_29
# %bb.30:                               # %do.end102
	add.d	$s4, $s0, $s4
.LBB10_31:                              # %if.end105
	andi	$a0, $s1, 255
	beqz	$a0, .LBB10_35
# %bb.32:                               # %if.then107
	andi	$a0, $s2, 255
	addi.w	$a1, $s4, 0
	beqz	$a0, .LBB10_36
# %bb.33:                               # %do.body115.preheader
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_34:                              # %do.body115
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s3, 0
	ldx.b	$a3, $a2, $a1
	or	$a3, $a3, $s1
	stx.b	$a3, $a2, $a1
	addi.w	$fp, $fp, -1
	addi.d	$s3, $s3, 8
	bnez	$fp, .LBB10_34
	b	.LBB10_38
.LBB10_35:
	move	$a0, $zero
	b	.LBB10_38
.LBB10_36:                              # %if.else127
	nor	$a2, $s1, $zero
	move	$a0, $zero
	.p2align	4, , 16
.LBB10_37:                              # %do.body133
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s3, 0
	ldx.b	$a4, $a3, $a1
	and	$a4, $a4, $a2
	stx.b	$a4, $a3, $a1
	addi.w	$fp, $fp, -1
	addi.d	$s3, $s3, 8
	bnez	$fp, .LBB10_37
.LBB10_38:                              # %cleanup148
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end10:
	.size	mem_mono_fill_rectangle, .Lfunc_end10-mem_mono_fill_rectangle
                                        # -- End function
	.globl	mem_mono_copy_mono              # -- Begin function mem_mono_copy_mono
	.p2align	5
	.type	mem_mono_copy_mono,@function
mem_mono_copy_mono:                     # @mem_mono_copy_mono
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
	ld.d	$s3, $sp, 200
	ld.d	$s0, $sp, 192
	addi.w	$t0, $s3, 0
	addi.w	$t1, $s0, 0
	move	$fp, $a5
	bne	$t0, $t1, .LBB11_2
# %bb.1:                                # %if.then
	move	$a1, $a4
	move	$a2, $fp
	move	$a3, $a6
	move	$a4, $a7
	move	$a5, $s0
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
	pcaddu18i	$t8, %call36(mem_mono_fill_rectangle)
	jr	$t8
.LBB11_2:                               # %if.end
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	st.d	$t0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$t2, $a0, 176
	pcalau12i	$a5, %pc_hi20(mem_no_fault_proc)
	addi.d	$a5, $a5, %pc_lo12(mem_no_fault_proc)
	beq	$t2, $a5, .LBB11_4
# %bb.3:                                # %if.then5
	srai.d	$t0, $a4, 3
	add.d	$a5, $a4, $a6
	addi.w	$a5, $a5, 7
	srai.d	$a5, $a5, 3
	sub.d	$t1, $a5, $t0
	ori	$a5, $zero, 1
	move	$s1, $a0
	move	$s4, $a1
	move	$a1, $t0
	move	$s6, $a2
	move	$a2, $fp
	move	$s7, $a3
	move	$a3, $t1
	move	$s8, $a4
	move	$a4, $a7
	move	$s2, $s0
	move	$s0, $fp
	move	$fp, $a6
	move	$s5, $s3
	move	$s3, $a7
	jirl	$ra, $t2, 0
	move	$a4, $s8
	move	$a2, $s6
	move	$a1, $s4
	move	$a7, $s3
	move	$s3, $s5
	move	$a6, $fp
	move	$fp, $s0
	move	$s0, $s2
	move	$a3, $s7
	addi.w	$t0, $zero, -1
	move	$a5, $a0
	move	$a0, $s1
	bge	$t0, $a5, .LBB11_12
.LBB11_4:                               # %if.end16
	ori	$t0, $zero, 1
	move	$a5, $zero
	blt	$a6, $t0, .LBB11_77
# %bb.5:                                # %if.end16
	blt	$a7, $t0, .LBB11_77
# %bb.6:                                # %if.end22
	addi.w	$a5, $zero, -1
	bltz	$a4, .LBB11_77
# %bb.7:                                # %lor.lhs.false25
	bltz	$fp, .LBB11_77
# %bb.8:                                # %lor.lhs.false25
	ld.w	$t0, $a0, 24
	sub.w	$t0, $t0, $a6
	blt	$t0, $a4, .LBB11_77
# %bb.9:                                # %lor.lhs.false32
	ld.w	$t0, $a0, 28
	sub.w	$t0, $t0, $a7
	blt	$t0, $fp, .LBB11_77
# %bb.10:                               # %if.end37
	ld.d	$a5, $a0, 168
	slli.d	$t1, $fp, 3
	ori	$s7, $zero, 8
	andi	$s1, $a4, 7
	sub.d	$s8, $s7, $s1
	ori	$t3, $zero, 255
	srl.w	$t0, $t3, $s1
	sub.w	$t2, $a6, $s8
	bgeu	$a6, $s8, .LBB11_17
# %bb.11:                               # %if.then54
	srl.w	$t3, $t0, $a6
	sub.d	$t0, $t0, $t3
                                        # implicit-def: $r16
	b	.LBB11_18
.LBB11_12:                              # %if.then13
	addi.w	$t1, $zero, -2
	beq	$a5, $t1, .LBB11_15
# %bb.13:                               # %if.then13
	bne	$a5, $t0, .LBB11_77
# %bb.14:                               # %sw.bb.i
	srai.d	$s1, $a6, 1
	add.w	$a5, $s1, $a4
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	sub.w	$a6, $a6, $s1
	move	$s4, $fp
	move	$s2, $a7
	b	.LBB11_16
.LBB11_15:                              # %sw.bb1.i
	srai.d	$s2, $a7, 1
	add.w	$s4, $s2, $fp
	sub.w	$a7, $a7, $s2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	move	$s1, $a6
.LBB11_16:                              # %sw.epilog.i
	ld.d	$a5, $a0, 8
	ld.d	$t0, $a5, 72
	st.d	$s3, $sp, 8
	st.d	$s0, $sp, 0
	move	$s5, $a0
	move	$s6, $a1
	move	$s7, $a2
	move	$s8, $a3
	move	$a5, $fp
	jirl	$ra, $t0, 0
	ld.d	$a0, $s5, 8
	ld.d	$t0, $a0, 72
	st.d	$s3, $sp, 8
	st.d	$s0, $sp, 0
	move	$a0, $s5
	move	$a1, $s6
	move	$a2, $s7
	move	$a3, $s8
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	move	$a5, $s4
	move	$a6, $s1
	move	$a7, $s2
	jirl	$ra, $t0, 0
	b	.LBB11_78
.LBB11_17:                              # %if.else
	andi	$t4, $t2, 7
	srl.w	$t3, $t3, $t4
	xori	$t4, $t3, 255
.LBB11_18:                              # %if.end61
	ld.w	$t3, $a0, 184
	ldx.d	$t1, $a5, $t1
	bstrpick.d	$a0, $a4, 31, 3
	srai.d	$s6, $a2, 3
	andi	$s4, $a2, 7
	beqz	$t3, .LBB11_20
# %bb.19:                               # %if.then63
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	sltu	$a2, $zero, $a2
	xor	$s0, $s0, $a2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	sltu	$a2, $zero, $a2
	xor	$s3, $s3, $a2
.LBB11_20:                              # %if.end75
	alsl.d	$t6, $fp, $a5, 3
	add.d	$s5, $t1, $a0
	add.d	$s2, $a1, $s6
	addi.w	$a4, $s0, 0
	addi.d	$a2, $a4, -1
	sltui	$t1, $a2, 1
	addi.w	$t3, $s3, 0
	sltui	$t5, $t3, 1
	or	$a2, $t5, $t1
	sub.d	$a2, $zero, $a2
	sltui	$a4, $a4, 1
	or	$t7, $t5, $a4
	addi.d	$t8, $t7, -1
	addi.d	$a4, $t3, -1
	sltui	$a4, $a4, 1
	or	$t3, $a4, $t1
	orn	$a4, $t8, $t0
	orn	$t5, $t8, $t4
	bne	$s1, $s4, .LBB11_46
# %bb.21:                               # %while.body.lr.ph
	add.d	$a6, $a6, $s1
	addi.w	$a5, $a6, -16
	bstrpick.d	$fp, $a5, 31, 3
	add.d	$t1, $a1, $s6
	addi.d	$t1, $t1, 1
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	sltu	$t1, $zero, $a7
	sub.d	$t1, $a7, $t1
	bstrpick.d	$t1, $t1, 31, 0
	mul.d	$t1, $a3, $t1
	add.d	$a1, $a1, $t1
	add.d	$t1, $a1, $fp
	add.d	$t1, $t1, $s6
	addi.d	$t1, $t1, 2
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	addi.d	$fp, $fp, 1
	slti	$t1, $t2, 15
	maskeqz	$s0, $t2, $t1
	ori	$s1, $zero, 15
	masknez	$t1, $s1, $t1
	or	$t1, $s0, $t1
	nor	$t1, $t1, $zero
	add.w	$s3, $a6, $t1
	bstrpick.d	$a6, $s3, 31, 3
	add.d	$a1, $a1, $a6
	add.d	$a1, $a1, $s6
	addi.d	$a1, $a1, 2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a1, $a6, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a1, 29, 5
	slli.d	$s7, $a1, 5
	slli.d	$a1, $a1, 8
	sub.w	$a1, $t2, $a1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	xvreplgr2vr.w	$xr0, $a2
	xvreplgr2vr.w	$xr1, $t8
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	bstrpick.d	$a1, $fp, 29, 5
	slli.d	$ra, $a1, 5
	slli.d	$a1, $a1, 8
	sub.w	$a1, $t2, $a1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$s8, $zero, 8
	xvrepli.b	$xr2, -1
	ori	$s6, $zero, 1
	b	.LBB11_23
	.p2align	4, , 16
.LBB11_22:                              # %if.end145
                                        #   in Loop: Header=BB11_23 Depth=1
	ld.d	$a6, $t6, 8
	addi.w	$a7, $a1, -1
	addi.d	$t6, $t6, 8
	add.d	$s5, $a6, $a0
	add.d	$s2, $s2, $a3
	bgeu	$s6, $a1, .LBB11_76
.LBB11_23:                              # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_44 Depth 2
                                        #     Child Loop BB11_33 Depth 2
                                        #     Child Loop BB11_39 Depth 2
                                        #     Child Loop BB11_28 Depth 2
	ld.bu	$a6, $s2, 0
	ld.b	$t1, $s5, 0
	move	$a1, $a7
	xor	$a6, $a6, $a2
	or	$a7, $a4, $a6
	and	$a7, $a7, $t1
	and	$a6, $a6, $t0
	maskeqz	$a6, $a6, $t3
	or	$a6, $a7, $a6
	st.b	$a6, $s5, 0
	blt	$t2, $s8, .LBB11_29
# %bb.24:                               # %while.body119.lr.ph
                                        #   in Loop: Header=BB11_23 Depth=1
	ori	$a6, $zero, 248
	beqz	$t3, .LBB11_30
# %bb.25:                               # %while.body119.us.preheader
                                        #   in Loop: Header=BB11_23 Depth=1
	bgeu	$a5, $a6, .LBB11_36
.LBB11_26:                              #   in Loop: Header=BB11_23 Depth=1
	move	$a6, $t2
	move	$t1, $s2
.LBB11_27:                              # %while.body119.us.preheader440
                                        #   in Loop: Header=BB11_23 Depth=1
	move	$s4, $s5
	move	$a7, $t1
	.p2align	4, , 16
.LBB11_28:                              # %while.body119.us
                                        #   Parent Loop BB11_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s0, $a6
	ld.b	$s5, $a7, 1
	addi.w	$a6, $a6, -8
	ld.b	$fp, $s4, 1
	addi.d	$t1, $a7, 1
	xor	$a7, $s5, $a2
	addi.d	$s5, $s4, 1
	masknez	$fp, $fp, $t7
	or	$a7, $fp, $a7
	st.b	$a7, $s4, 1
	move	$s4, $s5
	move	$a7, $t1
	bltu	$s1, $s0, .LBB11_28
	b	.LBB11_34
	.p2align	4, , 16
.LBB11_29:                              #   in Loop: Header=BB11_23 Depth=1
	move	$t1, $s2
	move	$a6, $t2
	b	.LBB11_34
.LBB11_30:                              # %while.body119.preheader
                                        #   in Loop: Header=BB11_23 Depth=1
	bgeu	$s3, $a6, .LBB11_41
.LBB11_31:                              #   in Loop: Header=BB11_23 Depth=1
	move	$a6, $t2
	move	$t1, $s2
.LBB11_32:                              # %while.body119.preheader441
                                        #   in Loop: Header=BB11_23 Depth=1
	move	$s4, $s5
	move	$a7, $t1
	.p2align	4, , 16
.LBB11_33:                              # %while.body119
                                        #   Parent Loop BB11_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$fp, $a6
	ld.b	$s0, $a7, 1
	addi.w	$a6, $a6, -8
	addi.d	$t1, $a7, 1
	ld.b	$a7, $s4, 1
	xor	$s0, $s0, $a2
	addi.d	$s5, $s4, 1
	or	$s0, $s0, $t8
	and	$a7, $a7, $s0
	st.b	$a7, $s4, 1
	move	$s4, $s5
	move	$a7, $t1
	blt	$s1, $fp, .LBB11_33
.LBB11_34:                              # %while.end
                                        #   in Loop: Header=BB11_23 Depth=1
	blt	$a6, $s6, .LBB11_22
# %bb.35:                               # %if.then131
                                        #   in Loop: Header=BB11_23 Depth=1
	ld.bu	$a6, $t1, 1
	ld.b	$a7, $s5, 1
	xor	$a6, $a6, $a2
	or	$t1, $t5, $a6
	and	$a7, $t1, $a7
	and	$a6, $a6, $t4
	maskeqz	$a6, $a6, $t3
	or	$a6, $a7, $a6
	st.b	$a6, $s5, 1
	b	.LBB11_22
.LBB11_36:                              # %vector.memcheck376
                                        #   in Loop: Header=BB11_23 Depth=1
	addi.d	$s4, $s5, 1
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	add.d	$a6, $s5, $a6
	addi.d	$a6, $a6, 2
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	sltu	$a7, $s4, $a7
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	sltu	$a6, $t1, $a6
	and	$a6, $a7, $a6
	bnez	$a6, .LBB11_26
# %bb.37:                               # %vector.memcheck376
                                        #   in Loop: Header=BB11_23 Depth=1
	bltz	$a3, .LBB11_26
# %bb.38:                               # %vector.ph386
                                        #   in Loop: Header=BB11_23 Depth=1
	move	$a6, $zero
	add.d	$s5, $s5, $ra
	add.d	$t1, $s2, $ra
	.p2align	4, , 16
.LBB11_39:                              # %vector.body392
                                        #   Parent Loop BB11_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $s2, $a6
	xvld	$xr3, $a7, 1
	xvpermi.q	$xr6, $xr3, 1
	vpickve2gr.b	$a7, $vr6, 8
	xvinsgr2vr.w	$xr4, $a7, 0
	vpickve2gr.b	$a7, $vr6, 9
	xvinsgr2vr.w	$xr4, $a7, 1
	vpickve2gr.b	$a7, $vr6, 10
	xvinsgr2vr.w	$xr4, $a7, 2
	vpickve2gr.b	$a7, $vr6, 11
	xvinsgr2vr.w	$xr4, $a7, 3
	vpickve2gr.b	$a7, $vr6, 12
	xvinsgr2vr.w	$xr4, $a7, 4
	vpickve2gr.b	$a7, $vr6, 13
	xvinsgr2vr.w	$xr4, $a7, 5
	vpickve2gr.b	$a7, $vr6, 14
	xvinsgr2vr.w	$xr4, $a7, 6
	vpickve2gr.b	$a7, $vr6, 15
	xvinsgr2vr.w	$xr4, $a7, 7
	vpickve2gr.b	$a7, $vr6, 0
	xvinsgr2vr.w	$xr5, $a7, 0
	vpickve2gr.b	$a7, $vr6, 1
	xvinsgr2vr.w	$xr5, $a7, 1
	vpickve2gr.b	$a7, $vr6, 2
	xvinsgr2vr.w	$xr5, $a7, 2
	vpickve2gr.b	$a7, $vr6, 3
	xvinsgr2vr.w	$xr5, $a7, 3
	vpickve2gr.b	$a7, $vr6, 4
	xvinsgr2vr.w	$xr5, $a7, 4
	vpickve2gr.b	$a7, $vr6, 5
	xvinsgr2vr.w	$xr5, $a7, 5
	vpickve2gr.b	$a7, $vr6, 6
	xvinsgr2vr.w	$xr5, $a7, 6
	vpickve2gr.b	$a7, $vr6, 7
	xvinsgr2vr.w	$xr5, $a7, 7
	vpickve2gr.b	$a7, $vr3, 8
	xvinsgr2vr.w	$xr6, $a7, 0
	vpickve2gr.b	$a7, $vr3, 9
	xvinsgr2vr.w	$xr6, $a7, 1
	vpickve2gr.b	$a7, $vr3, 10
	xvinsgr2vr.w	$xr6, $a7, 2
	vpickve2gr.b	$a7, $vr3, 11
	xvinsgr2vr.w	$xr6, $a7, 3
	vpickve2gr.b	$a7, $vr3, 12
	xvinsgr2vr.w	$xr6, $a7, 4
	vpickve2gr.b	$a7, $vr3, 13
	xvinsgr2vr.w	$xr6, $a7, 5
	vpickve2gr.b	$a7, $vr3, 14
	xvinsgr2vr.w	$xr6, $a7, 6
	vpickve2gr.b	$a7, $vr3, 15
	xvinsgr2vr.w	$xr6, $a7, 7
	vpickve2gr.b	$a7, $vr3, 0
	xvinsgr2vr.w	$xr7, $a7, 0
	vpickve2gr.b	$a7, $vr3, 1
	xvinsgr2vr.w	$xr7, $a7, 1
	vpickve2gr.b	$a7, $vr3, 2
	xvinsgr2vr.w	$xr7, $a7, 2
	vpickve2gr.b	$a7, $vr3, 3
	xvinsgr2vr.w	$xr7, $a7, 3
	vpickve2gr.b	$a7, $vr3, 4
	xvinsgr2vr.w	$xr7, $a7, 4
	vpickve2gr.b	$a7, $vr3, 5
	xvinsgr2vr.w	$xr7, $a7, 5
	vpickve2gr.b	$a7, $vr3, 6
	xvinsgr2vr.w	$xr7, $a7, 6
	vpickve2gr.b	$a7, $vr3, 7
	xvinsgr2vr.w	$xr7, $a7, 7
	xvxor.v	$xr3, $xr0, $xr7
	xvldx	$xr8, $s4, $a6
	xvxor.v	$xr6, $xr0, $xr6
	xvxor.v	$xr5, $xr0, $xr5
	xvxor.v	$xr4, $xr0, $xr4
	xvpermi.q	$xr10, $xr8, 1
	vpickve2gr.b	$a7, $vr10, 8
	xvinsgr2vr.w	$xr7, $a7, 0
	vpickve2gr.b	$a7, $vr10, 9
	xvinsgr2vr.w	$xr7, $a7, 1
	vpickve2gr.b	$a7, $vr10, 10
	xvinsgr2vr.w	$xr7, $a7, 2
	vpickve2gr.b	$a7, $vr10, 11
	xvinsgr2vr.w	$xr7, $a7, 3
	vpickve2gr.b	$a7, $vr10, 12
	xvinsgr2vr.w	$xr7, $a7, 4
	vpickve2gr.b	$a7, $vr10, 13
	xvinsgr2vr.w	$xr7, $a7, 5
	vpickve2gr.b	$a7, $vr10, 14
	xvinsgr2vr.w	$xr7, $a7, 6
	vpickve2gr.b	$a7, $vr10, 15
	xvinsgr2vr.w	$xr7, $a7, 7
	vpickve2gr.b	$a7, $vr10, 0
	xvinsgr2vr.w	$xr9, $a7, 0
	vpickve2gr.b	$a7, $vr10, 1
	xvinsgr2vr.w	$xr9, $a7, 1
	vpickve2gr.b	$a7, $vr10, 2
	xvinsgr2vr.w	$xr9, $a7, 2
	vpickve2gr.b	$a7, $vr10, 3
	xvinsgr2vr.w	$xr9, $a7, 3
	vpickve2gr.b	$a7, $vr10, 4
	xvinsgr2vr.w	$xr9, $a7, 4
	vpickve2gr.b	$a7, $vr10, 5
	xvinsgr2vr.w	$xr9, $a7, 5
	vpickve2gr.b	$a7, $vr10, 6
	xvinsgr2vr.w	$xr9, $a7, 6
	vpickve2gr.b	$a7, $vr10, 7
	xvinsgr2vr.w	$xr9, $a7, 7
	vpickve2gr.b	$a7, $vr8, 8
	xvinsgr2vr.w	$xr10, $a7, 0
	vpickve2gr.b	$a7, $vr8, 9
	xvinsgr2vr.w	$xr10, $a7, 1
	vpickve2gr.b	$a7, $vr8, 10
	xvinsgr2vr.w	$xr10, $a7, 2
	vpickve2gr.b	$a7, $vr8, 11
	xvinsgr2vr.w	$xr10, $a7, 3
	vpickve2gr.b	$a7, $vr8, 12
	xvinsgr2vr.w	$xr10, $a7, 4
	vpickve2gr.b	$a7, $vr8, 13
	xvinsgr2vr.w	$xr10, $a7, 5
	vpickve2gr.b	$a7, $vr8, 14
	xvinsgr2vr.w	$xr10, $a7, 6
	vpickve2gr.b	$a7, $vr8, 15
	xvinsgr2vr.w	$xr10, $a7, 7
	vpickve2gr.b	$a7, $vr8, 0
	xvinsgr2vr.w	$xr11, $a7, 0
	vpickve2gr.b	$a7, $vr8, 1
	xvinsgr2vr.w	$xr11, $a7, 1
	vpickve2gr.b	$a7, $vr8, 2
	xvinsgr2vr.w	$xr11, $a7, 2
	vpickve2gr.b	$a7, $vr8, 3
	xvinsgr2vr.w	$xr11, $a7, 3
	vpickve2gr.b	$a7, $vr8, 4
	xvinsgr2vr.w	$xr11, $a7, 4
	vpickve2gr.b	$a7, $vr8, 5
	xvinsgr2vr.w	$xr11, $a7, 5
	vpickve2gr.b	$a7, $vr8, 6
	xvinsgr2vr.w	$xr11, $a7, 6
	vpickve2gr.b	$a7, $vr8, 7
	xvinsgr2vr.w	$xr11, $a7, 7
	addi.d	$a7, $zero, -1
	maskeqz	$a7, $a7, $t7
	xvreplgr2vr.w	$xr8, $a7
	xvxor.v	$xr8, $xr8, $xr2
	xvand.v	$xr11, $xr11, $xr8
	xvand.v	$xr10, $xr10, $xr8
	xvand.v	$xr9, $xr9, $xr8
	xvand.v	$xr7, $xr7, $xr8
	xvor.v	$xr4, $xr7, $xr4
	xvor.v	$xr5, $xr9, $xr5
	xvor.v	$xr6, $xr10, $xr6
	xvor.v	$xr7, $xr11, $xr3
	xvpickve2gr.w	$a7, $xr7, 0
	vinsgr2vr.b	$vr3, $a7, 0
	xvpickve2gr.w	$a7, $xr7, 1
	vinsgr2vr.b	$vr3, $a7, 1
	xvpickve2gr.w	$a7, $xr7, 2
	vinsgr2vr.b	$vr3, $a7, 2
	xvpickve2gr.w	$a7, $xr7, 3
	vinsgr2vr.b	$vr3, $a7, 3
	xvpickve2gr.w	$a7, $xr7, 4
	vinsgr2vr.b	$vr3, $a7, 4
	xvpickve2gr.w	$a7, $xr7, 5
	vinsgr2vr.b	$vr3, $a7, 5
	xvpickve2gr.w	$a7, $xr7, 6
	vinsgr2vr.b	$vr3, $a7, 6
	xvpickve2gr.w	$a7, $xr7, 7
	vinsgr2vr.b	$vr3, $a7, 7
	xvpickve2gr.w	$a7, $xr6, 0
	vinsgr2vr.b	$vr3, $a7, 8
	xvpickve2gr.w	$a7, $xr6, 1
	vinsgr2vr.b	$vr3, $a7, 9
	xvpickve2gr.w	$a7, $xr6, 2
	vinsgr2vr.b	$vr3, $a7, 10
	xvpickve2gr.w	$a7, $xr6, 3
	vinsgr2vr.b	$vr3, $a7, 11
	xvpickve2gr.w	$a7, $xr6, 4
	vinsgr2vr.b	$vr3, $a7, 12
	xvpickve2gr.w	$a7, $xr6, 5
	vinsgr2vr.b	$vr3, $a7, 13
	xvpickve2gr.w	$a7, $xr6, 6
	vinsgr2vr.b	$vr3, $a7, 14
	xvpickve2gr.w	$a7, $xr6, 7
	vinsgr2vr.b	$vr3, $a7, 15
	xvpickve2gr.w	$a7, $xr5, 0
	xvpermi.d	$xr6, $xr3, 14
	vinsgr2vr.b	$vr6, $a7, 0
	xvpermi.q	$xr3, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 1
	xvpermi.d	$xr6, $xr3, 14
	vinsgr2vr.b	$vr6, $a7, 1
	xvpermi.q	$xr3, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 2
	xvpermi.d	$xr6, $xr3, 14
	vinsgr2vr.b	$vr6, $a7, 2
	xvpermi.q	$xr3, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 3
	xvpermi.d	$xr6, $xr3, 14
	vinsgr2vr.b	$vr6, $a7, 3
	xvpermi.q	$xr3, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 4
	xvpermi.d	$xr6, $xr3, 14
	vinsgr2vr.b	$vr6, $a7, 4
	xvpermi.q	$xr3, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 5
	xvpermi.d	$xr6, $xr3, 14
	vinsgr2vr.b	$vr6, $a7, 5
	xvpermi.q	$xr3, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 6
	xvpermi.d	$xr6, $xr3, 14
	vinsgr2vr.b	$vr6, $a7, 6
	xvpermi.q	$xr3, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 7
	xvpermi.d	$xr5, $xr3, 14
	vinsgr2vr.b	$vr5, $a7, 7
	xvpermi.q	$xr3, $xr5, 2
	xvpickve2gr.w	$a7, $xr4, 0
	xvpermi.d	$xr5, $xr3, 14
	vinsgr2vr.b	$vr5, $a7, 8
	xvpermi.q	$xr3, $xr5, 2
	xvpickve2gr.w	$a7, $xr4, 1
	xvpermi.d	$xr5, $xr3, 14
	vinsgr2vr.b	$vr5, $a7, 9
	xvpermi.q	$xr3, $xr5, 2
	xvpickve2gr.w	$a7, $xr4, 2
	xvpermi.d	$xr5, $xr3, 14
	vinsgr2vr.b	$vr5, $a7, 10
	xvpermi.q	$xr3, $xr5, 2
	xvpickve2gr.w	$a7, $xr4, 3
	xvpermi.d	$xr5, $xr3, 14
	vinsgr2vr.b	$vr5, $a7, 11
	xvpermi.q	$xr3, $xr5, 2
	xvpickve2gr.w	$a7, $xr4, 4
	xvpermi.d	$xr5, $xr3, 14
	vinsgr2vr.b	$vr5, $a7, 12
	xvpermi.q	$xr3, $xr5, 2
	xvpickve2gr.w	$a7, $xr4, 5
	xvpermi.d	$xr5, $xr3, 14
	vinsgr2vr.b	$vr5, $a7, 13
	xvpermi.q	$xr3, $xr5, 2
	xvpickve2gr.w	$a7, $xr4, 6
	xvpermi.d	$xr5, $xr3, 14
	vinsgr2vr.b	$vr5, $a7, 14
	xvpermi.q	$xr3, $xr5, 2
	xvpickve2gr.w	$a7, $xr4, 7
	xvpermi.d	$xr4, $xr3, 14
	vinsgr2vr.b	$vr4, $a7, 15
	xvpermi.q	$xr3, $xr4, 2
	xvstx	$xr3, $s4, $a6
	addi.d	$a6, $a6, 32
	bne	$ra, $a6, .LBB11_39
# %bb.40:                               # %middle.block399
                                        #   in Loop: Header=BB11_23 Depth=1
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	bne	$ra, $a7, .LBB11_27
	b	.LBB11_34
.LBB11_41:                              # %vector.memcheck404
                                        #   in Loop: Header=BB11_23 Depth=1
	addi.d	$a6, $s5, 1
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	add.d	$a7, $s5, $a7
	addi.d	$a7, $a7, 2
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	sltu	$t1, $a6, $t1
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	sltu	$a7, $fp, $a7
	and	$a7, $t1, $a7
	bnez	$a7, .LBB11_31
# %bb.42:                               # %vector.memcheck404
                                        #   in Loop: Header=BB11_23 Depth=1
	bltz	$a3, .LBB11_31
# %bb.43:                               # %vector.ph418
                                        #   in Loop: Header=BB11_23 Depth=1
	move	$s4, $zero
	add.d	$s5, $s5, $s7
	add.d	$t1, $s2, $s7
	.p2align	4, , 16
.LBB11_44:                              # %vector.body426
                                        #   Parent Loop BB11_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a7, $s2, $s4
	xvld	$xr4, $a7, 1
	xvpermi.q	$xr6, $xr4, 1
	vpickve2gr.b	$a7, $vr6, 8
	xvinsgr2vr.w	$xr3, $a7, 0
	vpickve2gr.b	$a7, $vr6, 9
	xvinsgr2vr.w	$xr3, $a7, 1
	vpickve2gr.b	$a7, $vr6, 10
	xvinsgr2vr.w	$xr3, $a7, 2
	vpickve2gr.b	$a7, $vr6, 11
	xvinsgr2vr.w	$xr3, $a7, 3
	vpickve2gr.b	$a7, $vr6, 12
	xvinsgr2vr.w	$xr3, $a7, 4
	vpickve2gr.b	$a7, $vr6, 13
	xvinsgr2vr.w	$xr3, $a7, 5
	vpickve2gr.b	$a7, $vr6, 14
	xvinsgr2vr.w	$xr3, $a7, 6
	vpickve2gr.b	$a7, $vr6, 15
	xvinsgr2vr.w	$xr3, $a7, 7
	vpickve2gr.b	$a7, $vr6, 0
	xvinsgr2vr.w	$xr5, $a7, 0
	vpickve2gr.b	$a7, $vr6, 1
	xvinsgr2vr.w	$xr5, $a7, 1
	vpickve2gr.b	$a7, $vr6, 2
	xvinsgr2vr.w	$xr5, $a7, 2
	vpickve2gr.b	$a7, $vr6, 3
	xvinsgr2vr.w	$xr5, $a7, 3
	vpickve2gr.b	$a7, $vr6, 4
	xvinsgr2vr.w	$xr5, $a7, 4
	vpickve2gr.b	$a7, $vr6, 5
	xvinsgr2vr.w	$xr5, $a7, 5
	vpickve2gr.b	$a7, $vr6, 6
	xvinsgr2vr.w	$xr5, $a7, 6
	vpickve2gr.b	$a7, $vr6, 7
	xvinsgr2vr.w	$xr5, $a7, 7
	vpickve2gr.b	$a7, $vr4, 8
	xvinsgr2vr.w	$xr6, $a7, 0
	vpickve2gr.b	$a7, $vr4, 9
	xvinsgr2vr.w	$xr6, $a7, 1
	vpickve2gr.b	$a7, $vr4, 10
	xvinsgr2vr.w	$xr6, $a7, 2
	vpickve2gr.b	$a7, $vr4, 11
	xvinsgr2vr.w	$xr6, $a7, 3
	vpickve2gr.b	$a7, $vr4, 12
	xvinsgr2vr.w	$xr6, $a7, 4
	vpickve2gr.b	$a7, $vr4, 13
	xvinsgr2vr.w	$xr6, $a7, 5
	vpickve2gr.b	$a7, $vr4, 14
	xvinsgr2vr.w	$xr6, $a7, 6
	vpickve2gr.b	$a7, $vr4, 15
	xvinsgr2vr.w	$xr6, $a7, 7
	vpickve2gr.b	$a7, $vr4, 0
	xvinsgr2vr.w	$xr7, $a7, 0
	vpickve2gr.b	$a7, $vr4, 1
	xvinsgr2vr.w	$xr7, $a7, 1
	vpickve2gr.b	$a7, $vr4, 2
	xvinsgr2vr.w	$xr7, $a7, 2
	vpickve2gr.b	$a7, $vr4, 3
	xvinsgr2vr.w	$xr7, $a7, 3
	vpickve2gr.b	$a7, $vr4, 4
	xvinsgr2vr.w	$xr7, $a7, 4
	vpickve2gr.b	$a7, $vr4, 5
	xvinsgr2vr.w	$xr7, $a7, 5
	vpickve2gr.b	$a7, $vr4, 6
	xvinsgr2vr.w	$xr7, $a7, 6
	vpickve2gr.b	$a7, $vr4, 7
	xvinsgr2vr.w	$xr7, $a7, 7
	xvxor.v	$xr4, $xr0, $xr7
	xvxor.v	$xr7, $xr0, $xr6
	xvxor.v	$xr6, $xr0, $xr5
	xvxor.v	$xr3, $xr0, $xr3
	xvor.v	$xr5, $xr3, $xr1
	xvor.v	$xr6, $xr6, $xr1
	xvor.v	$xr7, $xr7, $xr1
	xvor.v	$xr8, $xr4, $xr1
	xvldx	$xr3, $a6, $s4
	xvpickve2gr.w	$a7, $xr8, 0
	vinsgr2vr.b	$vr4, $a7, 0
	xvpickve2gr.w	$a7, $xr8, 1
	vinsgr2vr.b	$vr4, $a7, 1
	xvpickve2gr.w	$a7, $xr8, 2
	vinsgr2vr.b	$vr4, $a7, 2
	xvpickve2gr.w	$a7, $xr8, 3
	vinsgr2vr.b	$vr4, $a7, 3
	xvpickve2gr.w	$a7, $xr8, 4
	vinsgr2vr.b	$vr4, $a7, 4
	xvpickve2gr.w	$a7, $xr8, 5
	vinsgr2vr.b	$vr4, $a7, 5
	xvpickve2gr.w	$a7, $xr8, 6
	vinsgr2vr.b	$vr4, $a7, 6
	xvpickve2gr.w	$a7, $xr8, 7
	vinsgr2vr.b	$vr4, $a7, 7
	xvpickve2gr.w	$a7, $xr7, 0
	vinsgr2vr.b	$vr4, $a7, 8
	xvpickve2gr.w	$a7, $xr7, 1
	vinsgr2vr.b	$vr4, $a7, 9
	xvpickve2gr.w	$a7, $xr7, 2
	vinsgr2vr.b	$vr4, $a7, 10
	xvpickve2gr.w	$a7, $xr7, 3
	vinsgr2vr.b	$vr4, $a7, 11
	xvpickve2gr.w	$a7, $xr7, 4
	vinsgr2vr.b	$vr4, $a7, 12
	xvpickve2gr.w	$a7, $xr7, 5
	vinsgr2vr.b	$vr4, $a7, 13
	xvpickve2gr.w	$a7, $xr7, 6
	vinsgr2vr.b	$vr4, $a7, 14
	xvpickve2gr.w	$a7, $xr7, 7
	vinsgr2vr.b	$vr4, $a7, 15
	xvpickve2gr.w	$a7, $xr6, 0
	xvpermi.d	$xr7, $xr4, 14
	vinsgr2vr.b	$vr7, $a7, 0
	xvpermi.q	$xr4, $xr7, 2
	xvpickve2gr.w	$a7, $xr6, 1
	xvpermi.d	$xr7, $xr4, 14
	vinsgr2vr.b	$vr7, $a7, 1
	xvpermi.q	$xr4, $xr7, 2
	xvpickve2gr.w	$a7, $xr6, 2
	xvpermi.d	$xr7, $xr4, 14
	vinsgr2vr.b	$vr7, $a7, 2
	xvpermi.q	$xr4, $xr7, 2
	xvpickve2gr.w	$a7, $xr6, 3
	xvpermi.d	$xr7, $xr4, 14
	vinsgr2vr.b	$vr7, $a7, 3
	xvpermi.q	$xr4, $xr7, 2
	xvpickve2gr.w	$a7, $xr6, 4
	xvpermi.d	$xr7, $xr4, 14
	vinsgr2vr.b	$vr7, $a7, 4
	xvpermi.q	$xr4, $xr7, 2
	xvpickve2gr.w	$a7, $xr6, 5
	xvpermi.d	$xr7, $xr4, 14
	vinsgr2vr.b	$vr7, $a7, 5
	xvpermi.q	$xr4, $xr7, 2
	xvpickve2gr.w	$a7, $xr6, 6
	xvpermi.d	$xr7, $xr4, 14
	vinsgr2vr.b	$vr7, $a7, 6
	xvpermi.q	$xr4, $xr7, 2
	xvpickve2gr.w	$a7, $xr6, 7
	xvpermi.d	$xr6, $xr4, 14
	vinsgr2vr.b	$vr6, $a7, 7
	xvpermi.q	$xr4, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 0
	xvpermi.d	$xr6, $xr4, 14
	vinsgr2vr.b	$vr6, $a7, 8
	xvpermi.q	$xr4, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 1
	xvpermi.d	$xr6, $xr4, 14
	vinsgr2vr.b	$vr6, $a7, 9
	xvpermi.q	$xr4, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 2
	xvpermi.d	$xr6, $xr4, 14
	vinsgr2vr.b	$vr6, $a7, 10
	xvpermi.q	$xr4, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 3
	xvpermi.d	$xr6, $xr4, 14
	vinsgr2vr.b	$vr6, $a7, 11
	xvpermi.q	$xr4, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 4
	xvpermi.d	$xr6, $xr4, 14
	vinsgr2vr.b	$vr6, $a7, 12
	xvpermi.q	$xr4, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 5
	xvpermi.d	$xr6, $xr4, 14
	vinsgr2vr.b	$vr6, $a7, 13
	xvpermi.q	$xr4, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 6
	xvpermi.d	$xr6, $xr4, 14
	vinsgr2vr.b	$vr6, $a7, 14
	xvpermi.q	$xr4, $xr6, 2
	xvpickve2gr.w	$a7, $xr5, 7
	xvpermi.d	$xr5, $xr4, 14
	vinsgr2vr.b	$vr5, $a7, 15
	xvpermi.q	$xr4, $xr5, 2
	xvand.v	$xr3, $xr3, $xr4
	xvstx	$xr3, $a6, $s4
	addi.d	$s4, $s4, 32
	bne	$s7, $s4, .LBB11_44
# %bb.45:                               # %middle.block433
                                        #   in Loop: Header=BB11_23 Depth=1
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 48                    # 8-byte Folded Reload
	bne	$s7, $a7, .LBB11_32
	b	.LBB11_34
.LBB11_46:                              # %while.body160.lr.ph
	sub.d	$t1, $s7, $s4
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	sub.d	$t1, $t1, $s8
	andi	$s0, $t1, 7
	ori	$t1, $zero, 8
	sub.d	$s3, $t1, $s0
	blt	$t2, $t1, .LBB11_79
# %bb.47:                               # %while.body160.us.preheader
	addi.w	$s6, $a7, -1
	add.d	$a5, $a6, $s1
	slti	$a7, $t2, 15
	ori	$a1, $zero, 15
	masknez	$t1, $a1, $a7
	maskeqz	$a7, $t2, $a7
	or	$a7, $a7, $t1
	nor	$a7, $a7, $zero
	add.w	$a7, $a5, $a7
	bstrpick.d	$a5, $a7, 31, 3
	addi.d	$fp, $a5, 2
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a5, $a5, 29, 5
	slli.d	$t1, $a5, 5
	st.d	$t1, $sp, 80                    # 8-byte Folded Spill
	slli.d	$a5, $a5, 8
	sub.w	$a5, $t2, $a5
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	xvreplgr2vr.w	$xr0, $s3
	xvreplgr2vr.w	$xr1, $a2
	xvreplgr2vr.w	$xr2, $t8
	xvreplgr2vr.b	$xr3, $s0
	xvrepli.b	$xr4, -1
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	b	.LBB11_50
.LBB11_48:                              # %if.end225.us
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.b	$s5, $a5, 0
	xor	$t1, $t1, $a2
	or	$s6, $t5, $t1
	and	$s5, $s6, $s5
	and	$t1, $t1, $t4
	maskeqz	$t1, $t1, $t3
	or	$t1, $s5, $t1
	st.b	$t1, $a5, 0
.LBB11_49:                              # %if.end236.us
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.d	$t1, $t6, 8
	move	$a5, $zero
	addi.d	$t6, $t6, 8
	add.d	$s5, $t1, $a0
	add.d	$s2, $s2, $a3
	addi.w	$s6, $s8, -1
	blez	$s8, .LBB11_77
.LBB11_50:                              # %while.body160.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_74 Depth 2
                                        #     Child Loop BB11_66 Depth 2
                                        #     Child Loop BB11_71 Depth 2
                                        #     Child Loop BB11_60 Depth 2
	move	$s8, $s6
	bgeu	$s1, $s4, .LBB11_53
# %bb.51:                               # %if.else170.us
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.bu	$a5, $s2, 0
	addi.d	$s7, $s2, 1
	sll.w	$a5, $a5, $s3
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	bgeu	$t1, $a6, .LBB11_54
# %bb.52:                               # %if.then175.us
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.bu	$t1, $s7, 0
	srl.w	$t1, $t1, $s0
	add.d	$a5, $t1, $a5
	b	.LBB11_54
.LBB11_53:                              # %if.then167.us
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.bu	$a5, $s2, 0
	srl.w	$a5, $a5, $s0
	move	$s7, $s2
.LBB11_54:                              # %if.end180.us
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.b	$t1, $s5, 0
	xor	$a5, $a5, $a2
	or	$s6, $a4, $a5
	and	$t1, $s6, $t1
	and	$a5, $a5, $t0
	maskeqz	$a5, $a5, $t3
	or	$a5, $t1, $a5
	st.b	$a5, $s5, 0
	addi.d	$s6, $s5, 1
	ori	$a5, $zero, 248
	beqz	$t3, .LBB11_61
# %bb.55:                               # %while.body196.us.us.preheader
                                        #   in Loop: Header=BB11_50 Depth=1
	bltu	$a7, $a5, .LBB11_58
# %bb.56:                               # %vector.memcheck
                                        #   in Loop: Header=BB11_50 Depth=1
	add.d	$a5, $s7, $fp
	bgeu	$s6, $a5, .LBB11_70
# %bb.57:                               # %vector.memcheck
                                        #   in Loop: Header=BB11_50 Depth=1
	add.d	$a5, $s5, $fp
	bgeu	$s7, $a5, .LBB11_70
.LBB11_58:                              #   in Loop: Header=BB11_50 Depth=1
	move	$a5, $s6
	move	$ra, $t2
	move	$s5, $s7
.LBB11_59:                              # %while.body196.us.us.preheader443
                                        #   in Loop: Header=BB11_50 Depth=1
	move	$s7, $s5
	.p2align	4, , 16
.LBB11_60:                              # %while.body196.us.us
                                        #   Parent Loop BB11_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t1, $s7, 0
	ld.bu	$s5, $s7, 1
	sll.w	$t1, $t1, $s3
	srl.w	$s5, $s5, $s0
	ld.b	$fp, $a5, 0
	add.d	$t1, $s5, $t1
	move	$s6, $ra
	addi.d	$s5, $s7, 1
	xor	$t1, $t1, $a2
	masknez	$fp, $fp, $t7
	or	$t1, $fp, $t1
	st.b	$t1, $a5, 0
	addi.w	$ra, $ra, -8
	addi.d	$a5, $a5, 1
	move	$s7, $s5
	blt	$a1, $s6, .LBB11_60
	b	.LBB11_67
.LBB11_61:                              # %while.body196.us171.preheader
                                        #   in Loop: Header=BB11_50 Depth=1
	bltu	$a7, $a5, .LBB11_64
# %bb.62:                               # %vector.memcheck343
                                        #   in Loop: Header=BB11_50 Depth=1
	add.d	$a5, $s7, $fp
	bgeu	$s6, $a5, .LBB11_73
# %bb.63:                               # %vector.memcheck343
                                        #   in Loop: Header=BB11_50 Depth=1
	add.d	$a5, $s5, $fp
	bgeu	$s7, $a5, .LBB11_73
.LBB11_64:                              #   in Loop: Header=BB11_50 Depth=1
	move	$a5, $s6
	move	$ra, $t2
	move	$s5, $s7
.LBB11_65:                              # %while.body196.us171.preheader444
                                        #   in Loop: Header=BB11_50 Depth=1
	move	$s7, $s5
	.p2align	4, , 16
.LBB11_66:                              # %while.body196.us171
                                        #   Parent Loop BB11_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$t1, $s7, 0
	ld.bu	$s5, $s7, 1
	move	$fp, $ra
	sll.w	$t1, $t1, $s3
	srl.w	$s5, $s5, $s0
	add.d	$t1, $s5, $t1
	ld.b	$s6, $a5, 0
	addi.d	$s5, $s7, 1
	xor	$t1, $t1, $a2
	or	$t1, $t1, $t8
	and	$t1, $s6, $t1
	st.b	$t1, $a5, 0
	addi.w	$ra, $ra, -8
	addi.d	$a5, $a5, 1
	move	$s7, $s5
	blt	$a1, $fp, .LBB11_66
.LBB11_67:                              # %while.cond193.while.end212_crit_edge.us
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	blez	$ra, .LBB11_49
# %bb.68:                               # %if.then215.us
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.bu	$t1, $s5, 0
	sll.w	$t1, $t1, $s3
	bge	$s0, $ra, .LBB11_48
# %bb.69:                               # %if.then221.us
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.bu	$s5, $s5, 1
	srl.w	$s5, $s5, $s0
	add.d	$t1, $s5, $t1
	b	.LBB11_48
.LBB11_70:                              # %vector.ph
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.d	$t1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a5, $s6, $t1
	add.d	$s5, $s7, $t1
	addi.d	$ra, $s7, 1
	move	$s7, $t1
	.p2align	4, , 16
.LBB11_71:                              # %vector.body
                                        #   Parent Loop BB11_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr5, $ra, -1
	xvpermi.q	$xr8, $xr5, 1
	vpickve2gr.b	$t1, $vr8, 8
	xvinsgr2vr.w	$xr6, $t1, 0
	vpickve2gr.b	$t1, $vr8, 9
	xvinsgr2vr.w	$xr6, $t1, 1
	vpickve2gr.b	$t1, $vr8, 10
	xvinsgr2vr.w	$xr6, $t1, 2
	vpickve2gr.b	$t1, $vr8, 11
	xvinsgr2vr.w	$xr6, $t1, 3
	vpickve2gr.b	$t1, $vr8, 12
	xvinsgr2vr.w	$xr6, $t1, 4
	vpickve2gr.b	$t1, $vr8, 13
	xvinsgr2vr.w	$xr6, $t1, 5
	vpickve2gr.b	$t1, $vr8, 14
	xvinsgr2vr.w	$xr6, $t1, 6
	vpickve2gr.b	$t1, $vr8, 15
	xvinsgr2vr.w	$xr6, $t1, 7
	vpickve2gr.b	$t1, $vr8, 0
	xvinsgr2vr.w	$xr7, $t1, 0
	vpickve2gr.b	$t1, $vr8, 1
	xvinsgr2vr.w	$xr7, $t1, 1
	vpickve2gr.b	$t1, $vr8, 2
	xvinsgr2vr.w	$xr7, $t1, 2
	vpickve2gr.b	$t1, $vr8, 3
	xvinsgr2vr.w	$xr7, $t1, 3
	vpickve2gr.b	$t1, $vr8, 4
	xvinsgr2vr.w	$xr7, $t1, 4
	vpickve2gr.b	$t1, $vr8, 5
	xvinsgr2vr.w	$xr7, $t1, 5
	vpickve2gr.b	$t1, $vr8, 6
	xvinsgr2vr.w	$xr7, $t1, 6
	vpickve2gr.b	$t1, $vr8, 7
	xvinsgr2vr.w	$xr7, $t1, 7
	vpickve2gr.b	$t1, $vr5, 8
	xvinsgr2vr.w	$xr8, $t1, 0
	vpickve2gr.b	$t1, $vr5, 9
	xvinsgr2vr.w	$xr8, $t1, 1
	vpickve2gr.b	$t1, $vr5, 10
	xvinsgr2vr.w	$xr8, $t1, 2
	vpickve2gr.b	$t1, $vr5, 11
	xvinsgr2vr.w	$xr8, $t1, 3
	vpickve2gr.b	$t1, $vr5, 12
	xvinsgr2vr.w	$xr8, $t1, 4
	vpickve2gr.b	$t1, $vr5, 13
	xvinsgr2vr.w	$xr8, $t1, 5
	vpickve2gr.b	$t1, $vr5, 14
	xvinsgr2vr.w	$xr8, $t1, 6
	vpickve2gr.b	$t1, $vr5, 15
	xvinsgr2vr.w	$xr8, $t1, 7
	vpickve2gr.b	$t1, $vr5, 0
	xvinsgr2vr.w	$xr9, $t1, 0
	vpickve2gr.b	$t1, $vr5, 1
	xvinsgr2vr.w	$xr9, $t1, 1
	vpickve2gr.b	$t1, $vr5, 2
	xvinsgr2vr.w	$xr9, $t1, 2
	vpickve2gr.b	$t1, $vr5, 3
	xvinsgr2vr.w	$xr9, $t1, 3
	vpickve2gr.b	$t1, $vr5, 4
	xvinsgr2vr.w	$xr9, $t1, 4
	vpickve2gr.b	$t1, $vr5, 5
	xvinsgr2vr.w	$xr9, $t1, 5
	vpickve2gr.b	$t1, $vr5, 6
	xvinsgr2vr.w	$xr9, $t1, 6
	vpickve2gr.b	$t1, $vr5, 7
	xvinsgr2vr.w	$xr9, $t1, 7
	xvsll.w	$xr5, $xr7, $xr0
	xvld	$xr10, $ra, 0
	xvsll.w	$xr7, $xr6, $xr0
	xvsll.w	$xr6, $xr9, $xr0
	xvsll.w	$xr8, $xr8, $xr0
	xvsrl.b	$xr11, $xr10, $xr3
	vpickve2gr.b	$t1, $vr11, 0
	xvinsgr2vr.w	$xr9, $t1, 0
	vpickve2gr.b	$t1, $vr11, 1
	xvinsgr2vr.w	$xr9, $t1, 1
	vpickve2gr.b	$t1, $vr11, 2
	xvinsgr2vr.w	$xr9, $t1, 2
	vpickve2gr.b	$t1, $vr11, 3
	xvinsgr2vr.w	$xr9, $t1, 3
	vpickve2gr.b	$t1, $vr11, 4
	xvinsgr2vr.w	$xr9, $t1, 4
	vpickve2gr.b	$t1, $vr11, 5
	xvinsgr2vr.w	$xr9, $t1, 5
	vpickve2gr.b	$t1, $vr11, 6
	xvinsgr2vr.w	$xr9, $t1, 6
	vpickve2gr.b	$t1, $vr11, 7
	xvinsgr2vr.w	$xr9, $t1, 7
	vpickve2gr.b	$t1, $vr11, 8
	xvinsgr2vr.w	$xr10, $t1, 0
	vpickve2gr.b	$t1, $vr11, 9
	xvinsgr2vr.w	$xr10, $t1, 1
	vpickve2gr.b	$t1, $vr11, 10
	xvinsgr2vr.w	$xr10, $t1, 2
	vpickve2gr.b	$t1, $vr11, 11
	xvinsgr2vr.w	$xr10, $t1, 3
	vpickve2gr.b	$t1, $vr11, 12
	xvinsgr2vr.w	$xr10, $t1, 4
	vpickve2gr.b	$t1, $vr11, 13
	xvinsgr2vr.w	$xr10, $t1, 5
	vpickve2gr.b	$t1, $vr11, 14
	xvinsgr2vr.w	$xr10, $t1, 6
	vpickve2gr.b	$t1, $vr11, 15
	xvinsgr2vr.w	$xr10, $t1, 7
	xvpermi.q	$xr11, $xr11, 1
	vpickve2gr.b	$t1, $vr11, 0
	xvinsgr2vr.w	$xr12, $t1, 0
	vpickve2gr.b	$t1, $vr11, 1
	xvinsgr2vr.w	$xr12, $t1, 1
	vpickve2gr.b	$t1, $vr11, 2
	xvinsgr2vr.w	$xr12, $t1, 2
	vpickve2gr.b	$t1, $vr11, 3
	xvinsgr2vr.w	$xr12, $t1, 3
	vpickve2gr.b	$t1, $vr11, 4
	xvinsgr2vr.w	$xr12, $t1, 4
	vpickve2gr.b	$t1, $vr11, 5
	xvinsgr2vr.w	$xr12, $t1, 5
	vpickve2gr.b	$t1, $vr11, 6
	xvinsgr2vr.w	$xr12, $t1, 6
	vpickve2gr.b	$t1, $vr11, 7
	xvinsgr2vr.w	$xr12, $t1, 7
	vpickve2gr.b	$t1, $vr11, 8
	xvinsgr2vr.w	$xr13, $t1, 0
	vpickve2gr.b	$t1, $vr11, 9
	xvinsgr2vr.w	$xr13, $t1, 1
	vpickve2gr.b	$t1, $vr11, 10
	xvinsgr2vr.w	$xr13, $t1, 2
	vpickve2gr.b	$t1, $vr11, 11
	xvinsgr2vr.w	$xr13, $t1, 3
	vpickve2gr.b	$t1, $vr11, 12
	xvinsgr2vr.w	$xr13, $t1, 4
	vpickve2gr.b	$t1, $vr11, 13
	xvinsgr2vr.w	$xr13, $t1, 5
	vpickve2gr.b	$t1, $vr11, 14
	xvinsgr2vr.w	$xr13, $t1, 6
	vpickve2gr.b	$t1, $vr11, 15
	xvinsgr2vr.w	$xr13, $t1, 7
	xvadd.w	$xr7, $xr7, $xr13
	xvadd.w	$xr5, $xr5, $xr12
	xvadd.w	$xr11, $xr8, $xr10
	xvadd.w	$xr8, $xr6, $xr9
	xvxor.v	$xr5, $xr5, $xr1
	xvld	$xr10, $s6, 0
	xvxor.v	$xr6, $xr7, $xr1
	xvxor.v	$xr8, $xr8, $xr1
	xvxor.v	$xr9, $xr11, $xr1
	xvpermi.q	$xr12, $xr10, 1
	vpickve2gr.b	$t1, $vr12, 8
	xvinsgr2vr.w	$xr7, $t1, 0
	vpickve2gr.b	$t1, $vr12, 9
	xvinsgr2vr.w	$xr7, $t1, 1
	vpickve2gr.b	$t1, $vr12, 10
	xvinsgr2vr.w	$xr7, $t1, 2
	vpickve2gr.b	$t1, $vr12, 11
	xvinsgr2vr.w	$xr7, $t1, 3
	vpickve2gr.b	$t1, $vr12, 12
	xvinsgr2vr.w	$xr7, $t1, 4
	vpickve2gr.b	$t1, $vr12, 13
	xvinsgr2vr.w	$xr7, $t1, 5
	vpickve2gr.b	$t1, $vr12, 14
	xvinsgr2vr.w	$xr7, $t1, 6
	vpickve2gr.b	$t1, $vr12, 15
	xvinsgr2vr.w	$xr7, $t1, 7
	vpickve2gr.b	$t1, $vr12, 0
	xvinsgr2vr.w	$xr11, $t1, 0
	vpickve2gr.b	$t1, $vr12, 1
	xvinsgr2vr.w	$xr11, $t1, 1
	vpickve2gr.b	$t1, $vr12, 2
	xvinsgr2vr.w	$xr11, $t1, 2
	vpickve2gr.b	$t1, $vr12, 3
	xvinsgr2vr.w	$xr11, $t1, 3
	vpickve2gr.b	$t1, $vr12, 4
	xvinsgr2vr.w	$xr11, $t1, 4
	vpickve2gr.b	$t1, $vr12, 5
	xvinsgr2vr.w	$xr11, $t1, 5
	vpickve2gr.b	$t1, $vr12, 6
	xvinsgr2vr.w	$xr11, $t1, 6
	vpickve2gr.b	$t1, $vr12, 7
	xvinsgr2vr.w	$xr11, $t1, 7
	vpickve2gr.b	$t1, $vr10, 8
	xvinsgr2vr.w	$xr12, $t1, 0
	vpickve2gr.b	$t1, $vr10, 9
	xvinsgr2vr.w	$xr12, $t1, 1
	vpickve2gr.b	$t1, $vr10, 10
	xvinsgr2vr.w	$xr12, $t1, 2
	vpickve2gr.b	$t1, $vr10, 11
	xvinsgr2vr.w	$xr12, $t1, 3
	vpickve2gr.b	$t1, $vr10, 12
	xvinsgr2vr.w	$xr12, $t1, 4
	vpickve2gr.b	$t1, $vr10, 13
	xvinsgr2vr.w	$xr12, $t1, 5
	vpickve2gr.b	$t1, $vr10, 14
	xvinsgr2vr.w	$xr12, $t1, 6
	vpickve2gr.b	$t1, $vr10, 15
	xvinsgr2vr.w	$xr12, $t1, 7
	vpickve2gr.b	$t1, $vr10, 0
	xvinsgr2vr.w	$xr13, $t1, 0
	vpickve2gr.b	$t1, $vr10, 1
	xvinsgr2vr.w	$xr13, $t1, 1
	vpickve2gr.b	$t1, $vr10, 2
	xvinsgr2vr.w	$xr13, $t1, 2
	vpickve2gr.b	$t1, $vr10, 3
	xvinsgr2vr.w	$xr13, $t1, 3
	vpickve2gr.b	$t1, $vr10, 4
	xvinsgr2vr.w	$xr13, $t1, 4
	vpickve2gr.b	$t1, $vr10, 5
	xvinsgr2vr.w	$xr13, $t1, 5
	vpickve2gr.b	$t1, $vr10, 6
	xvinsgr2vr.w	$xr13, $t1, 6
	vpickve2gr.b	$t1, $vr10, 7
	xvinsgr2vr.w	$xr13, $t1, 7
	addi.d	$t1, $zero, -1
	maskeqz	$t1, $t1, $t7
	xvreplgr2vr.w	$xr10, $t1
	xvxor.v	$xr10, $xr10, $xr4
	xvand.v	$xr13, $xr13, $xr10
	xvand.v	$xr12, $xr12, $xr10
	xvand.v	$xr11, $xr11, $xr10
	xvand.v	$xr7, $xr7, $xr10
	xvor.v	$xr6, $xr7, $xr6
	xvor.v	$xr7, $xr11, $xr5
	xvor.v	$xr9, $xr12, $xr9
	xvor.v	$xr8, $xr13, $xr8
	xvpickve2gr.w	$t1, $xr8, 0
	vinsgr2vr.b	$vr5, $t1, 0
	xvpickve2gr.w	$t1, $xr8, 1
	vinsgr2vr.b	$vr5, $t1, 1
	xvpickve2gr.w	$t1, $xr8, 2
	vinsgr2vr.b	$vr5, $t1, 2
	xvpickve2gr.w	$t1, $xr8, 3
	vinsgr2vr.b	$vr5, $t1, 3
	xvpickve2gr.w	$t1, $xr8, 4
	vinsgr2vr.b	$vr5, $t1, 4
	xvpickve2gr.w	$t1, $xr8, 5
	vinsgr2vr.b	$vr5, $t1, 5
	xvpickve2gr.w	$t1, $xr8, 6
	vinsgr2vr.b	$vr5, $t1, 6
	xvpickve2gr.w	$t1, $xr8, 7
	vinsgr2vr.b	$vr5, $t1, 7
	xvpickve2gr.w	$t1, $xr9, 0
	vinsgr2vr.b	$vr5, $t1, 8
	xvpickve2gr.w	$t1, $xr9, 1
	vinsgr2vr.b	$vr5, $t1, 9
	xvpickve2gr.w	$t1, $xr9, 2
	vinsgr2vr.b	$vr5, $t1, 10
	xvpickve2gr.w	$t1, $xr9, 3
	vinsgr2vr.b	$vr5, $t1, 11
	xvpickve2gr.w	$t1, $xr9, 4
	vinsgr2vr.b	$vr5, $t1, 12
	xvpickve2gr.w	$t1, $xr9, 5
	vinsgr2vr.b	$vr5, $t1, 13
	xvpickve2gr.w	$t1, $xr9, 6
	vinsgr2vr.b	$vr5, $t1, 14
	xvpickve2gr.w	$t1, $xr9, 7
	vinsgr2vr.b	$vr5, $t1, 15
	xvpickve2gr.w	$t1, $xr7, 0
	xvpermi.d	$xr8, $xr5, 14
	vinsgr2vr.b	$vr8, $t1, 0
	xvpermi.q	$xr5, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 1
	xvpermi.d	$xr8, $xr5, 14
	vinsgr2vr.b	$vr8, $t1, 1
	xvpermi.q	$xr5, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 2
	xvpermi.d	$xr8, $xr5, 14
	vinsgr2vr.b	$vr8, $t1, 2
	xvpermi.q	$xr5, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 3
	xvpermi.d	$xr8, $xr5, 14
	vinsgr2vr.b	$vr8, $t1, 3
	xvpermi.q	$xr5, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 4
	xvpermi.d	$xr8, $xr5, 14
	vinsgr2vr.b	$vr8, $t1, 4
	xvpermi.q	$xr5, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 5
	xvpermi.d	$xr8, $xr5, 14
	vinsgr2vr.b	$vr8, $t1, 5
	xvpermi.q	$xr5, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 6
	xvpermi.d	$xr8, $xr5, 14
	vinsgr2vr.b	$vr8, $t1, 6
	xvpermi.q	$xr5, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 7
	xvpermi.d	$xr7, $xr5, 14
	vinsgr2vr.b	$vr7, $t1, 7
	xvpermi.q	$xr5, $xr7, 2
	xvpickve2gr.w	$t1, $xr6, 0
	xvpermi.d	$xr7, $xr5, 14
	vinsgr2vr.b	$vr7, $t1, 8
	xvpermi.q	$xr5, $xr7, 2
	xvpickve2gr.w	$t1, $xr6, 1
	xvpermi.d	$xr7, $xr5, 14
	vinsgr2vr.b	$vr7, $t1, 9
	xvpermi.q	$xr5, $xr7, 2
	xvpickve2gr.w	$t1, $xr6, 2
	xvpermi.d	$xr7, $xr5, 14
	vinsgr2vr.b	$vr7, $t1, 10
	xvpermi.q	$xr5, $xr7, 2
	xvpickve2gr.w	$t1, $xr6, 3
	xvpermi.d	$xr7, $xr5, 14
	vinsgr2vr.b	$vr7, $t1, 11
	xvpermi.q	$xr5, $xr7, 2
	xvpickve2gr.w	$t1, $xr6, 4
	xvpermi.d	$xr7, $xr5, 14
	vinsgr2vr.b	$vr7, $t1, 12
	xvpermi.q	$xr5, $xr7, 2
	xvpickve2gr.w	$t1, $xr6, 5
	xvpermi.d	$xr7, $xr5, 14
	vinsgr2vr.b	$vr7, $t1, 13
	xvpermi.q	$xr5, $xr7, 2
	xvpickve2gr.w	$t1, $xr6, 6
	xvpermi.d	$xr7, $xr5, 14
	vinsgr2vr.b	$vr7, $t1, 14
	xvpermi.q	$xr5, $xr7, 2
	xvpickve2gr.w	$t1, $xr6, 7
	xvpermi.d	$xr6, $xr5, 14
	vinsgr2vr.b	$vr6, $t1, 15
	xvpermi.q	$xr5, $xr6, 2
	xvst	$xr5, $s6, 0
	addi.d	$s7, $s7, -32
	addi.d	$ra, $ra, 32
	addi.d	$s6, $s6, 32
	bnez	$s7, .LBB11_71
# %bb.72:                               # %middle.block
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.d	$ra, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	bne	$t1, $fp, .LBB11_59
	b	.LBB11_67
.LBB11_73:                              # %vector.ph351
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.d	$ra, $sp, 80                    # 8-byte Folded Reload
	add.d	$a5, $s6, $ra
	add.d	$s5, $s7, $ra
	addi.d	$s7, $s7, 1
	.p2align	4, , 16
.LBB11_74:                              # %vector.body363
                                        #   Parent Loop BB11_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr5, $s7, -1
	xvpermi.q	$xr8, $xr5, 1
	vpickve2gr.b	$t1, $vr8, 8
	xvinsgr2vr.w	$xr6, $t1, 0
	vpickve2gr.b	$t1, $vr8, 9
	xvinsgr2vr.w	$xr6, $t1, 1
	vpickve2gr.b	$t1, $vr8, 10
	xvinsgr2vr.w	$xr6, $t1, 2
	vpickve2gr.b	$t1, $vr8, 11
	xvinsgr2vr.w	$xr6, $t1, 3
	vpickve2gr.b	$t1, $vr8, 12
	xvinsgr2vr.w	$xr6, $t1, 4
	vpickve2gr.b	$t1, $vr8, 13
	xvinsgr2vr.w	$xr6, $t1, 5
	vpickve2gr.b	$t1, $vr8, 14
	xvinsgr2vr.w	$xr6, $t1, 6
	vpickve2gr.b	$t1, $vr8, 15
	xvinsgr2vr.w	$xr6, $t1, 7
	vpickve2gr.b	$t1, $vr8, 0
	xvinsgr2vr.w	$xr7, $t1, 0
	vpickve2gr.b	$t1, $vr8, 1
	xvinsgr2vr.w	$xr7, $t1, 1
	vpickve2gr.b	$t1, $vr8, 2
	xvinsgr2vr.w	$xr7, $t1, 2
	vpickve2gr.b	$t1, $vr8, 3
	xvinsgr2vr.w	$xr7, $t1, 3
	vpickve2gr.b	$t1, $vr8, 4
	xvinsgr2vr.w	$xr7, $t1, 4
	vpickve2gr.b	$t1, $vr8, 5
	xvinsgr2vr.w	$xr7, $t1, 5
	vpickve2gr.b	$t1, $vr8, 6
	xvinsgr2vr.w	$xr7, $t1, 6
	vpickve2gr.b	$t1, $vr8, 7
	xvinsgr2vr.w	$xr7, $t1, 7
	vpickve2gr.b	$t1, $vr5, 8
	xvinsgr2vr.w	$xr8, $t1, 0
	vpickve2gr.b	$t1, $vr5, 9
	xvinsgr2vr.w	$xr8, $t1, 1
	vpickve2gr.b	$t1, $vr5, 10
	xvinsgr2vr.w	$xr8, $t1, 2
	vpickve2gr.b	$t1, $vr5, 11
	xvinsgr2vr.w	$xr8, $t1, 3
	vpickve2gr.b	$t1, $vr5, 12
	xvinsgr2vr.w	$xr8, $t1, 4
	vpickve2gr.b	$t1, $vr5, 13
	xvinsgr2vr.w	$xr8, $t1, 5
	vpickve2gr.b	$t1, $vr5, 14
	xvinsgr2vr.w	$xr8, $t1, 6
	vpickve2gr.b	$t1, $vr5, 15
	xvinsgr2vr.w	$xr8, $t1, 7
	vpickve2gr.b	$t1, $vr5, 0
	xvinsgr2vr.w	$xr9, $t1, 0
	vpickve2gr.b	$t1, $vr5, 1
	xvinsgr2vr.w	$xr9, $t1, 1
	vpickve2gr.b	$t1, $vr5, 2
	xvinsgr2vr.w	$xr9, $t1, 2
	vpickve2gr.b	$t1, $vr5, 3
	xvinsgr2vr.w	$xr9, $t1, 3
	vpickve2gr.b	$t1, $vr5, 4
	xvinsgr2vr.w	$xr9, $t1, 4
	vpickve2gr.b	$t1, $vr5, 5
	xvinsgr2vr.w	$xr9, $t1, 5
	vpickve2gr.b	$t1, $vr5, 6
	xvinsgr2vr.w	$xr9, $t1, 6
	vpickve2gr.b	$t1, $vr5, 7
	xvinsgr2vr.w	$xr9, $t1, 7
	xvsll.w	$xr5, $xr7, $xr0
	xvld	$xr10, $s7, 0
	xvsll.w	$xr7, $xr6, $xr0
	xvsll.w	$xr6, $xr9, $xr0
	xvsll.w	$xr8, $xr8, $xr0
	xvsrl.b	$xr11, $xr10, $xr3
	vpickve2gr.b	$t1, $vr11, 0
	xvinsgr2vr.w	$xr9, $t1, 0
	vpickve2gr.b	$t1, $vr11, 1
	xvinsgr2vr.w	$xr9, $t1, 1
	vpickve2gr.b	$t1, $vr11, 2
	xvinsgr2vr.w	$xr9, $t1, 2
	vpickve2gr.b	$t1, $vr11, 3
	xvinsgr2vr.w	$xr9, $t1, 3
	vpickve2gr.b	$t1, $vr11, 4
	xvinsgr2vr.w	$xr9, $t1, 4
	vpickve2gr.b	$t1, $vr11, 5
	xvinsgr2vr.w	$xr9, $t1, 5
	vpickve2gr.b	$t1, $vr11, 6
	xvinsgr2vr.w	$xr9, $t1, 6
	vpickve2gr.b	$t1, $vr11, 7
	xvinsgr2vr.w	$xr9, $t1, 7
	vpickve2gr.b	$t1, $vr11, 8
	xvinsgr2vr.w	$xr10, $t1, 0
	vpickve2gr.b	$t1, $vr11, 9
	xvinsgr2vr.w	$xr10, $t1, 1
	vpickve2gr.b	$t1, $vr11, 10
	xvinsgr2vr.w	$xr10, $t1, 2
	vpickve2gr.b	$t1, $vr11, 11
	xvinsgr2vr.w	$xr10, $t1, 3
	vpickve2gr.b	$t1, $vr11, 12
	xvinsgr2vr.w	$xr10, $t1, 4
	vpickve2gr.b	$t1, $vr11, 13
	xvinsgr2vr.w	$xr10, $t1, 5
	vpickve2gr.b	$t1, $vr11, 14
	xvinsgr2vr.w	$xr10, $t1, 6
	vpickve2gr.b	$t1, $vr11, 15
	xvinsgr2vr.w	$xr10, $t1, 7
	xvpermi.q	$xr11, $xr11, 1
	vpickve2gr.b	$t1, $vr11, 0
	xvinsgr2vr.w	$xr12, $t1, 0
	vpickve2gr.b	$t1, $vr11, 1
	xvinsgr2vr.w	$xr12, $t1, 1
	vpickve2gr.b	$t1, $vr11, 2
	xvinsgr2vr.w	$xr12, $t1, 2
	vpickve2gr.b	$t1, $vr11, 3
	xvinsgr2vr.w	$xr12, $t1, 3
	vpickve2gr.b	$t1, $vr11, 4
	xvinsgr2vr.w	$xr12, $t1, 4
	vpickve2gr.b	$t1, $vr11, 5
	xvinsgr2vr.w	$xr12, $t1, 5
	vpickve2gr.b	$t1, $vr11, 6
	xvinsgr2vr.w	$xr12, $t1, 6
	vpickve2gr.b	$t1, $vr11, 7
	xvinsgr2vr.w	$xr12, $t1, 7
	vpickve2gr.b	$t1, $vr11, 8
	xvinsgr2vr.w	$xr13, $t1, 0
	vpickve2gr.b	$t1, $vr11, 9
	xvinsgr2vr.w	$xr13, $t1, 1
	vpickve2gr.b	$t1, $vr11, 10
	xvinsgr2vr.w	$xr13, $t1, 2
	vpickve2gr.b	$t1, $vr11, 11
	xvinsgr2vr.w	$xr13, $t1, 3
	vpickve2gr.b	$t1, $vr11, 12
	xvinsgr2vr.w	$xr13, $t1, 4
	vpickve2gr.b	$t1, $vr11, 13
	xvinsgr2vr.w	$xr13, $t1, 5
	vpickve2gr.b	$t1, $vr11, 14
	xvinsgr2vr.w	$xr13, $t1, 6
	vpickve2gr.b	$t1, $vr11, 15
	xvinsgr2vr.w	$xr13, $t1, 7
	xvadd.w	$xr7, $xr7, $xr13
	xvadd.w	$xr5, $xr5, $xr12
	xvadd.w	$xr8, $xr8, $xr10
	xvadd.w	$xr6, $xr6, $xr9
	xvxor.v	$xr5, $xr5, $xr1
	xvxor.v	$xr7, $xr7, $xr1
	xvxor.v	$xr6, $xr6, $xr1
	xvxor.v	$xr9, $xr8, $xr1
	xvor.v	$xr7, $xr7, $xr2
	xvor.v	$xr8, $xr5, $xr2
	xvor.v	$xr9, $xr9, $xr2
	xvor.v	$xr10, $xr6, $xr2
	xvld	$xr5, $s6, 0
	xvpickve2gr.w	$t1, $xr10, 0
	vinsgr2vr.b	$vr6, $t1, 0
	xvpickve2gr.w	$t1, $xr10, 1
	vinsgr2vr.b	$vr6, $t1, 1
	xvpickve2gr.w	$t1, $xr10, 2
	vinsgr2vr.b	$vr6, $t1, 2
	xvpickve2gr.w	$t1, $xr10, 3
	vinsgr2vr.b	$vr6, $t1, 3
	xvpickve2gr.w	$t1, $xr10, 4
	vinsgr2vr.b	$vr6, $t1, 4
	xvpickve2gr.w	$t1, $xr10, 5
	vinsgr2vr.b	$vr6, $t1, 5
	xvpickve2gr.w	$t1, $xr10, 6
	vinsgr2vr.b	$vr6, $t1, 6
	xvpickve2gr.w	$t1, $xr10, 7
	vinsgr2vr.b	$vr6, $t1, 7
	xvpickve2gr.w	$t1, $xr9, 0
	vinsgr2vr.b	$vr6, $t1, 8
	xvpickve2gr.w	$t1, $xr9, 1
	vinsgr2vr.b	$vr6, $t1, 9
	xvpickve2gr.w	$t1, $xr9, 2
	vinsgr2vr.b	$vr6, $t1, 10
	xvpickve2gr.w	$t1, $xr9, 3
	vinsgr2vr.b	$vr6, $t1, 11
	xvpickve2gr.w	$t1, $xr9, 4
	vinsgr2vr.b	$vr6, $t1, 12
	xvpickve2gr.w	$t1, $xr9, 5
	vinsgr2vr.b	$vr6, $t1, 13
	xvpickve2gr.w	$t1, $xr9, 6
	vinsgr2vr.b	$vr6, $t1, 14
	xvpickve2gr.w	$t1, $xr9, 7
	vinsgr2vr.b	$vr6, $t1, 15
	xvpickve2gr.w	$t1, $xr8, 0
	xvpermi.d	$xr9, $xr6, 14
	vinsgr2vr.b	$vr9, $t1, 0
	xvpermi.q	$xr6, $xr9, 2
	xvpickve2gr.w	$t1, $xr8, 1
	xvpermi.d	$xr9, $xr6, 14
	vinsgr2vr.b	$vr9, $t1, 1
	xvpermi.q	$xr6, $xr9, 2
	xvpickve2gr.w	$t1, $xr8, 2
	xvpermi.d	$xr9, $xr6, 14
	vinsgr2vr.b	$vr9, $t1, 2
	xvpermi.q	$xr6, $xr9, 2
	xvpickve2gr.w	$t1, $xr8, 3
	xvpermi.d	$xr9, $xr6, 14
	vinsgr2vr.b	$vr9, $t1, 3
	xvpermi.q	$xr6, $xr9, 2
	xvpickve2gr.w	$t1, $xr8, 4
	xvpermi.d	$xr9, $xr6, 14
	vinsgr2vr.b	$vr9, $t1, 4
	xvpermi.q	$xr6, $xr9, 2
	xvpickve2gr.w	$t1, $xr8, 5
	xvpermi.d	$xr9, $xr6, 14
	vinsgr2vr.b	$vr9, $t1, 5
	xvpermi.q	$xr6, $xr9, 2
	xvpickve2gr.w	$t1, $xr8, 6
	xvpermi.d	$xr9, $xr6, 14
	vinsgr2vr.b	$vr9, $t1, 6
	xvpermi.q	$xr6, $xr9, 2
	xvpickve2gr.w	$t1, $xr8, 7
	xvpermi.d	$xr8, $xr6, 14
	vinsgr2vr.b	$vr8, $t1, 7
	xvpermi.q	$xr6, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 0
	xvpermi.d	$xr8, $xr6, 14
	vinsgr2vr.b	$vr8, $t1, 8
	xvpermi.q	$xr6, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 1
	xvpermi.d	$xr8, $xr6, 14
	vinsgr2vr.b	$vr8, $t1, 9
	xvpermi.q	$xr6, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 2
	xvpermi.d	$xr8, $xr6, 14
	vinsgr2vr.b	$vr8, $t1, 10
	xvpermi.q	$xr6, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 3
	xvpermi.d	$xr8, $xr6, 14
	vinsgr2vr.b	$vr8, $t1, 11
	xvpermi.q	$xr6, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 4
	xvpermi.d	$xr8, $xr6, 14
	vinsgr2vr.b	$vr8, $t1, 12
	xvpermi.q	$xr6, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 5
	xvpermi.d	$xr8, $xr6, 14
	vinsgr2vr.b	$vr8, $t1, 13
	xvpermi.q	$xr6, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 6
	xvpermi.d	$xr8, $xr6, 14
	vinsgr2vr.b	$vr8, $t1, 14
	xvpermi.q	$xr6, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 7
	xvpermi.d	$xr7, $xr6, 14
	vinsgr2vr.b	$vr7, $t1, 15
	xvpermi.q	$xr6, $xr7, 2
	xvand.v	$xr5, $xr5, $xr6
	xvst	$xr5, $s6, 0
	addi.d	$ra, $ra, -32
	addi.d	$s7, $s7, 32
	addi.d	$s6, $s6, 32
	bnez	$ra, .LBB11_74
# %bb.75:                               # %middle.block371
                                        #   in Loop: Header=BB11_50 Depth=1
	ld.d	$ra, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	bne	$t1, $fp, .LBB11_65
	b	.LBB11_67
.LBB11_76:
	move	$a5, $zero
.LBB11_77:                              # %cleanup244
	move	$a0, $a5
.LBB11_78:                              # %cleanup244
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
.LBB11_79:                              # %while.body160.lr.ph.split
	ori	$t1, $zero, 1
	blt	$t2, $t1, .LBB11_88
# %bb.80:                               # %while.body160.us194.preheader
	alsl.d	$a1, $fp, $a5, 3
	addi.d	$a1, $a1, 8
	b	.LBB11_82
.LBB11_81:                              # %if.end225.us230
                                        #   in Loop: Header=BB11_82 Depth=1
	ld.b	$a5, $s5, 1
	xor	$t1, $t1, $a2
	or	$t6, $t5, $t1
	and	$a5, $t6, $a5
	and	$t1, $t1, $t4
	maskeqz	$t1, $t1, $t3
	or	$a5, $a5, $t1
	st.b	$a5, $s5, 1
	ld.d	$t1, $a1, 0
	move	$a5, $zero
	add.d	$s5, $t1, $a0
	add.d	$s2, $s2, $a3
	addi.w	$a7, $a7, -1
	addi.d	$a1, $a1, 8
	blez	$a7, .LBB11_77
.LBB11_82:                              # %while.body160.us194
                                        # =>This Inner Loop Header: Depth=1
	bgeu	$s1, $s4, .LBB11_85
# %bb.83:                               # %if.else170.us202
                                        #   in Loop: Header=BB11_82 Depth=1
	ld.bu	$t1, $s2, 0
	addi.d	$a5, $s2, 1
	sll.w	$t6, $t1, $s3
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	bgeu	$t1, $a6, .LBB11_86
# %bb.84:                               # %if.then175.us206
                                        #   in Loop: Header=BB11_82 Depth=1
	ld.bu	$t1, $a5, 0
	srl.w	$t1, $t1, $s0
	add.d	$t6, $t1, $t6
	b	.LBB11_86
.LBB11_85:                              # %if.then167.us199
                                        #   in Loop: Header=BB11_82 Depth=1
	ld.bu	$a5, $s2, 0
	srl.w	$t6, $a5, $s0
	move	$a5, $s2
.LBB11_86:                              # %if.end180.us210
                                        #   in Loop: Header=BB11_82 Depth=1
	ld.b	$t1, $s5, 0
	xor	$t6, $t6, $a2
	or	$t7, $a4, $t6
	and	$t1, $t7, $t1
	and	$t6, $t6, $t0
	maskeqz	$t6, $t6, $t3
	or	$t1, $t1, $t6
	st.b	$t1, $s5, 0
	ld.bu	$t1, $a5, 0
	sll.w	$t1, $t1, $s3
	bge	$s0, $t2, .LBB11_81
# %bb.87:                               # %if.then221.us225
                                        #   in Loop: Header=BB11_82 Depth=1
	ld.bu	$a5, $a5, 1
	srl.w	$a5, $a5, $s0
	add.d	$t1, $a5, $t1
	b	.LBB11_81
.LBB11_88:                              # %while.body160.lr.ph.split.split
	bgeu	$s1, $s4, .LBB11_93
# %bb.89:                               # %while.body160.us246.preheader
	alsl.d	$a5, $fp, $a5, 3
	addi.d	$t1, $a5, 8
	add.d	$a1, $s6, $a1
	addi.d	$a1, $a1, 1
	b	.LBB11_91
.LBB11_90:                              # %if.end180.us259
                                        #   in Loop: Header=BB11_91 Depth=1
	ld.b	$t2, $s5, 0
	xor	$a5, $a5, $a2
	or	$t4, $a4, $a5
	and	$t2, $t4, $t2
	and	$a5, $a5, $t0
	maskeqz	$a5, $a5, $t3
	or	$a5, $t2, $a5
	st.b	$a5, $s5, 0
	ld.d	$t2, $t1, 0
	move	$a5, $zero
	add.d	$s5, $t2, $a0
	addi.w	$a7, $a7, -1
	addi.d	$t1, $t1, 8
	add.d	$a1, $a1, $a3
	blez	$a7, .LBB11_77
.LBB11_91:                              # %while.body160.us246
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a1, -1
	sll.w	$a5, $a5, $s3
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	bgeu	$t2, $a6, .LBB11_90
# %bb.92:                               # %if.then175.us255
                                        #   in Loop: Header=BB11_91 Depth=1
	ld.bu	$t2, $a1, 0
	srl.w	$t2, $t2, $s0
	add.d	$a5, $t2, $a5
	b	.LBB11_90
.LBB11_93:                              # %while.body160.lr.ph.split.split.split
	alsl.d	$a1, $fp, $a5, 3
	addi.d	$a1, $a1, 8
	beqz	$t3, .LBB11_95
.LBB11_94:                              # %while.body160.us274
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $s2, 0
	ld.b	$a6, $s5, 0
	srl.w	$a5, $a5, $s0
	xor	$a5, $a5, $a2
	or	$t1, $a4, $a5
	and	$a6, $t1, $a6
	and	$a5, $a5, $t0
	or	$a5, $a6, $a5
	st.b	$a5, $s5, 0
	ld.d	$a6, $a1, 0
	move	$a5, $zero
	add.d	$s5, $a6, $a0
	add.d	$s2, $s2, $a3
	addi.w	$a7, $a7, -1
	addi.d	$a1, $a1, 8
	bnez	$a7, .LBB11_94
	b	.LBB11_77
.LBB11_95:                              # %while.body160
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $s2, 0
	ld.b	$a6, $s5, 0
	srl.w	$a5, $a5, $s0
	xor	$a5, $a5, $a2
	or	$a5, $a4, $a5
	and	$a5, $a6, $a5
	st.b	$a5, $s5, 0
	ld.d	$a6, $a1, 0
	move	$a5, $zero
	add.d	$s5, $a6, $a0
	add.d	$s2, $s2, $a3
	addi.w	$a7, $a7, -1
	addi.d	$a1, $a1, 8
	bnez	$a7, .LBB11_95
	b	.LBB11_77
.Lfunc_end11:
	.size	mem_mono_copy_mono, .Lfunc_end11-mem_mono_copy_mono
                                        # -- End function
	.globl	mem_mono_copy_color             # -- Begin function mem_mono_copy_color
	.p2align	5
	.type	mem_mono_copy_color,@function
mem_mono_copy_color:                    # @mem_mono_copy_color
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	ori	$t0, $zero, 1
	st.d	$t0, $sp, 8
	st.d	$zero, $sp, 0
	pcaddu18i	$ra, %call36(mem_mono_copy_mono)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end12:
	.size	mem_mono_copy_color, .Lfunc_end12-mem_mono_copy_color
                                        # -- End function
	.globl	copy_byte_rect                  # -- Begin function copy_byte_rect
	.p2align	5
	.type	copy_byte_rect,@function
copy_byte_rect:                         # @copy_byte_rect
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
	ori	$s3, $zero, 1
	blt	$a6, $s3, .LBB13_3
# %bb.1:                                # %while.body.lr.ph
	move	$fp, $a5
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	ld.d	$a0, $a0, 168
	alsl.d	$s4, $a4, $a0, 3
	addi.d	$s5, $a6, 1
	.p2align	4, , 16
.LBB13_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	add.d	$a0, $a0, $s0
	move	$a1, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$s2, $s2, $s1
	addi.w	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	bltu	$s3, $s5, .LBB13_2
.LBB13_3:                               # %while.end
	move	$a0, $zero
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
.Lfunc_end13:
	.size	copy_byte_rect, .Lfunc_end13-copy_byte_rect
                                        # -- End function
	.globl	mem_mapped_map_rgb_color        # -- Begin function mem_mapped_map_rgb_color
	.p2align	5
	.type	mem_mapped_map_rgb_color,@function
mem_mapped_map_rgb_color:               # @mem_mapped_map_rgb_color
# %bb.0:                                # %entry
	ld.w	$a5, $a0, 188
	ld.d	$a0, $a0, 192
	ori	$a4, $zero, 1
	blt	$a5, $a4, .LBB14_6
# %bb.1:                                # %while.body.lr.ph
	addi.d	$a6, $a5, 1
	ori	$a7, $zero, 768
                                        # implicit-def: $r9
	move	$t0, $a0
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               # %if.end34
                                        #   in Loop: Header=BB14_3 Depth=1
	addi.w	$a6, $a6, -1
	addi.d	$t0, $t0, 3
	bgeu	$a4, $a6, .LBB14_7
.LBB14_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t1, $t0, 0
	sub.w	$t1, $t1, $a1
	srai.d	$t2, $t1, 31
	xor	$t1, $t1, $t2
	sub.w	$t1, $t1, $t2
	bge	$t1, $a7, .LBB14_2
# %bb.4:                                # %if.then7
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.bu	$t2, $t0, 1
	sub.w	$t2, $t2, $a2
	srai.d	$t3, $t2, 31
	xor	$t2, $t2, $t3
	sub.d	$t2, $t2, $t3
	add.w	$t1, $t2, $t1
	bgeu	$t1, $a7, .LBB14_2
# %bb.5:                                # %if.then18
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.bu	$t2, $t0, 2
	sub.w	$t2, $t2, $a3
	srai.d	$t3, $t2, 31
	xor	$t2, $t2, $t3
	sub.d	$t2, $t2, $t3
	add.w	$t1, $t2, $t1
	sltu	$t2, $t1, $a7
	masknez	$a5, $a5, $t2
	maskeqz	$t3, $t0, $t2
	or	$a5, $t3, $a5
	maskeqz	$t1, $t1, $t2
	masknez	$a7, $a7, $t2
	or	$a7, $t1, $a7
	b	.LBB14_2
.LBB14_6:
                                        # implicit-def: $r9
.LBB14_7:                               # %while.end
	sub.d	$a0, $a5, $a0
	lu12i.w	$a1, 349525
	ori	$a1, $a1, 1366
	lu32i.d	$a1, 349525
	lu52i.d	$a1, $a1, 1365
	mulh.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 63
	add.d	$a0, $a0, $a1
	ret
.Lfunc_end14:
	.size	mem_mapped_map_rgb_color, .Lfunc_end14-mem_mapped_map_rgb_color
                                        # -- End function
	.globl	mem_mapped_map_color_rgb        # -- Begin function mem_mapped_map_color_rgb
	.p2align	5
	.type	mem_mapped_map_color_rgb,@function
mem_mapped_map_color_rgb:               # @mem_mapped_map_color_rgb
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 192
	alsl.d	$a1, $a1, $a1, 1
	slli.d	$a1, $a1, 32
	srai.d	$a1, $a1, 32
	ldx.bu	$a3, $a0, $a1
	add.d	$a0, $a0, $a1
	st.h	$a3, $a2, 0
	ld.bu	$a1, $a0, 1
	st.h	$a1, $a2, 2
	ld.bu	$a0, $a0, 2
	st.h	$a0, $a2, 4
	move	$a0, $zero
	ret
.Lfunc_end15:
	.size	mem_mapped_map_color_rgb, .Lfunc_end15-mem_mapped_map_color_rgb
                                        # -- End function
	.globl	mem_mapped_fill_rectangle       # -- Begin function mem_mapped_fill_rectangle
	.p2align	5
	.type	mem_mapped_fill_rectangle,@function
mem_mapped_fill_rectangle:              # @mem_mapped_fill_rectangle
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a0
	ld.d	$a6, $a0, 176
	pcalau12i	$a0, %pc_hi20(mem_no_fault_proc)
	addi.d	$a0, $a0, %pc_lo12(mem_no_fault_proc)
	move	$fp, $a5
	move	$s3, $a4
	move	$s0, $a3
	move	$s4, $a2
	move	$s1, $a1
	beq	$a6, $a0, .LBB16_2
# %bb.1:                                # %if.then
	ori	$a5, $zero, 1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s0
	move	$a4, $s3
	jirl	$ra, $a6, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB16_7
.LBB16_2:                               # %if.end5
	ori	$s5, $zero, 1
	blt	$s3, $s5, .LBB16_5
# %bb.3:                                # %while.body.lr.ph
	ld.d	$a0, $s2, 168
	alsl.d	$s2, $s4, $a0, 3
	addi.d	$s3, $s3, 1
	.p2align	4, , 16
.LBB16_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	add.d	$a0, $a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, -1
	addi.d	$s2, $s2, 8
	bltu	$s5, $s3, .LBB16_4
.LBB16_5:
	move	$a0, $zero
.LBB16_6:                               # %cleanup16
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB16_7:                               # %if.then3
	addi.w	$a2, $zero, -2
	beq	$a0, $a2, .LBB16_10
# %bb.8:                                # %if.then3
	bne	$a0, $a1, .LBB16_6
# %bb.9:                                # %sw.bb.i
	srai.d	$s5, $s0, 1
	add.w	$s7, $s5, $s1
	sub.w	$s0, $s0, $s5
	move	$s8, $s4
	move	$s6, $s3
	b	.LBB16_11
.LBB16_10:                              # %sw.bb1.i
	srai.d	$s6, $s3, 1
	add.w	$s8, $s6, $s4
	sub.w	$s3, $s3, $s6
	move	$s7, $s1
	move	$s5, $s0
.LBB16_11:                              # %sw.epilog.i
	ld.d	$a0, $s2, 8
	ld.d	$a6, $a0, 56
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s0
	move	$a4, $s3
	move	$a5, $fp
	jirl	$ra, $a6, 0
	ld.d	$a0, $s2, 8
	ld.d	$a6, $a0, 56
	move	$a0, $s2
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s5
	move	$a4, $s6
	move	$a5, $fp
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	jr	$a6
.Lfunc_end16:
	.size	mem_mapped_fill_rectangle, .Lfunc_end16-mem_mapped_fill_rectangle
                                        # -- End function
	.globl	mem_mapped_copy_mono            # -- Begin function mem_mapped_copy_mono
	.p2align	5
	.type	mem_mapped_copy_mono,@function
mem_mapped_copy_mono:                   # @mem_mapped_copy_mono
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
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s1, $a0
	ld.d	$s7, $sp, 152
	ld.d	$t0, $a0, 176
	ld.d	$s8, $sp, 144
	pcalau12i	$a0, %pc_hi20(mem_no_fault_proc)
	addi.d	$a0, $a0, %pc_lo12(mem_no_fault_proc)
	move	$s4, $a7
	move	$s2, $a6
	move	$s6, $a5
	move	$s0, $a4
	move	$fp, $a3
	move	$s3, $a2
	move	$s5, $a1
	beq	$t0, $a0, .LBB17_2
# %bb.1:                                # %if.then
	ori	$a5, $zero, 1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s6
	move	$a3, $s2
	move	$a4, $s4
	jirl	$ra, $t0, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB17_11
.LBB17_2:                               # %if.end5
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB17_31
# %bb.3:                                # %while.body.lr.ph
	ld.d	$a0, $s1, 168
	alsl.d	$a0, $s6, $a0, 3
	srai.d	$a1, $s3, 3
	add.d	$a1, $s5, $a1
	andi	$a2, $s3, 7
	ori	$a3, $zero, 128
	srl.w	$a2, $a3, $a2
	addi.w	$a3, $zero, -1
	addi.w	$a6, $s4, -1
	beq	$s7, $a3, .LBB17_14
# %bb.4:                                # %while.body.lr.ph.split
	beq	$s8, $a3, .LBB17_23
# %bb.5:                                # %while.body.preheader
	addi.d	$a3, $s2, 1
	ori	$a4, $zero, 1
	b	.LBB17_7
	.p2align	4, , 16
.LBB17_6:                               # %do.end.split.split
                                        #   in Loop: Header=BB17_7 Depth=1
	add.d	$a1, $a1, $fp
	addi.d	$a0, $a0, 8
	addi.w	$a6, $a5, -1
	blez	$a5, .LBB17_31
.LBB17_7:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_9 Depth 2
	ld.d	$t0, $a0, 0
	ld.bu	$a7, $a1, 0
	move	$a5, $a6
	add.d	$a6, $t0, $s0
	addi.d	$t1, $a1, 1
	move	$t0, $a3
	move	$t2, $a2
	b	.LBB17_9
	.p2align	4, , 16
.LBB17_8:                               # %if.then32
                                        #   in Loop: Header=BB17_9 Depth=2
	ld.bu	$a7, $t1, 0
	addi.d	$t1, $t1, 1
	ori	$t2, $zero, 128
	addi.w	$t0, $t0, -1
	addi.d	$a6, $a6, 1
	bge	$a4, $t0, .LBB17_6
.LBB17_9:                               # %do.body
                                        #   Parent Loop BB17_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$t3, $t2, $a7
	addi.w	$t3, $t3, 0
	addi.w	$t4, $t2, 0
	sltui	$t3, $t3, 1
	masknez	$t5, $s7, $t3
	maskeqz	$t3, $s8, $t3
	or	$t3, $t3, $t5
	st.b	$t3, $a6, 0
	bgeu	$a4, $t4, .LBB17_8
# %bb.10:                               #   in Loop: Header=BB17_9 Depth=2
	bstrpick.d	$t2, $t2, 31, 1
	addi.w	$t0, $t0, -1
	addi.d	$a6, $a6, 1
	blt	$a4, $t0, .LBB17_9
	b	.LBB17_6
.LBB17_11:                              # %if.then3
	addi.w	$a2, $zero, -2
	beq	$a0, $a2, .LBB17_33
# %bb.12:                               # %if.then3
	bne	$a0, $a1, .LBB17_32
# %bb.13:                               # %sw.bb.i
	srai.d	$a0, $s2, 1
	add.w	$a1, $a0, $s0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	sub.w	$s2, $s2, $a0
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	b	.LBB17_34
.LBB17_14:                              # %while.body.us.preheader
	addi.d	$a4, $s2, 1
	ori	$a5, $zero, 1
	b	.LBB17_16
	.p2align	4, , 16
.LBB17_15:                              # %do.end.split.us.us
                                        #   in Loop: Header=BB17_16 Depth=1
	add.d	$a1, $a1, $fp
	addi.d	$a0, $a0, 8
	addi.w	$a6, $a7, -1
	blez	$a7, .LBB17_31
.LBB17_16:                              # %while.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_18 Depth 2
	ld.d	$t1, $a0, 0
	ld.bu	$t0, $a1, 0
	move	$a7, $a6
	add.d	$a6, $t1, $s0
	addi.d	$t2, $a1, 1
	move	$t1, $a4
	move	$t3, $a2
	b	.LBB17_18
	.p2align	4, , 16
.LBB17_17:                              # %if.then32.us.us
                                        #   in Loop: Header=BB17_18 Depth=2
	ld.bu	$t0, $t2, 0
	addi.d	$t2, $t2, 1
	ori	$t3, $zero, 128
	addi.w	$t1, $t1, -1
	addi.d	$a6, $a6, 1
	bge	$a5, $t1, .LBB17_15
.LBB17_18:                              # %do.body.us.us
                                        #   Parent Loop BB17_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$t4, $t3, $t0
	addi.w	$t4, $t4, 0
	bnez	$t4, .LBB17_21
# %bb.19:                               # %do.body.us.us
                                        #   in Loop: Header=BB17_18 Depth=2
	beq	$s8, $a3, .LBB17_21
# %bb.20:                               # %if.then25.us.us
                                        #   in Loop: Header=BB17_18 Depth=2
	st.b	$s8, $a6, 0
.LBB17_21:                              # %if.end28.us.us
                                        #   in Loop: Header=BB17_18 Depth=2
	addi.w	$t4, $t3, 0
	bgeu	$a5, $t4, .LBB17_17
# %bb.22:                               #   in Loop: Header=BB17_18 Depth=2
	bstrpick.d	$t3, $t3, 31, 1
	addi.w	$t1, $t1, -1
	addi.d	$a6, $a6, 1
	blt	$a5, $t1, .LBB17_18
	b	.LBB17_15
.LBB17_23:                              # %while.body.us59.preheader
	addi.d	$a3, $s2, 1
	ori	$a4, $zero, 1
	b	.LBB17_25
	.p2align	4, , 16
.LBB17_24:                              # %do.end.split.split.us.us
                                        #   in Loop: Header=BB17_25 Depth=1
	add.d	$a1, $a1, $fp
	addi.d	$a0, $a0, 8
	addi.w	$a6, $a5, -1
	blez	$a5, .LBB17_31
.LBB17_25:                              # %while.body.us59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_27 Depth 2
	ld.d	$t0, $a0, 0
	ld.bu	$a7, $a1, 0
	move	$a5, $a6
	add.d	$a6, $t0, $s0
	addi.d	$t1, $a1, 1
	move	$t0, $a3
	move	$t2, $a2
	b	.LBB17_27
	.p2align	4, , 16
.LBB17_26:                              #   in Loop: Header=BB17_27 Depth=2
	bstrpick.d	$t2, $t2, 31, 1
	addi.w	$t0, $t0, -1
	addi.d	$a6, $a6, 1
	bge	$a4, $t0, .LBB17_24
.LBB17_27:                              # %do.body.us31.us
                                        #   Parent Loop BB17_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$t3, $t2, $a7
	addi.w	$t3, $t3, 0
	beqz	$t3, .LBB17_29
# %bb.28:                               # %if.then17.us39.us
                                        #   in Loop: Header=BB17_27 Depth=2
	st.b	$s7, $a6, 0
.LBB17_29:                              # %if.end28.us41.us
                                        #   in Loop: Header=BB17_27 Depth=2
	addi.w	$t3, $t2, 0
	bltu	$a4, $t3, .LBB17_26
# %bb.30:                               # %if.then32.us44.us
                                        #   in Loop: Header=BB17_27 Depth=2
	ld.bu	$a7, $t1, 0
	addi.d	$t1, $t1, 1
	ori	$t2, $zero, 128
	addi.w	$t0, $t0, -1
	addi.d	$a6, $a6, 1
	blt	$a4, $t0, .LBB17_27
	b	.LBB17_24
.LBB17_31:
	move	$a0, $zero
.LBB17_32:                              # %cleanup45
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
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
.LBB17_33:                              # %sw.bb1.i
	srai.d	$a0, $s4, 1
	add.w	$a1, $a0, $s6
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	sub.w	$s4, $s4, $a0
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
.LBB17_34:                              # %sw.epilog.i
	ld.d	$a0, $s1, 8
	ld.d	$t0, $a0, 72
	st.d	$s7, $sp, 8
	st.d	$s8, $sp, 0
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s3
	move	$a3, $fp
	move	$a4, $s0
	move	$a5, $s6
	move	$a6, $s2
	move	$a7, $s4
	jirl	$ra, $t0, 0
	ld.d	$a0, $s1, 8
	ld.d	$t0, $a0, 72
	st.d	$s7, $sp, 8
	st.d	$s8, $sp, 0
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s3
	move	$a3, $fp
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 40                    # 8-byte Folded Reload
	jirl	$ra, $t0, 0
	b	.LBB17_32
.Lfunc_end17:
	.size	mem_mapped_copy_mono, .Lfunc_end17-mem_mapped_copy_mono
                                        # -- End function
	.globl	mem_mapped_copy_color           # -- Begin function mem_mapped_copy_color
	.p2align	5
	.type	mem_mapped_copy_color,@function
mem_mapped_copy_color:                  # @mem_mapped_copy_color
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$s2, $a0
	ld.d	$t0, $a0, 176
	pcalau12i	$a0, %pc_hi20(mem_no_fault_proc)
	addi.d	$a0, $a0, %pc_lo12(mem_no_fault_proc)
	move	$s3, $a7
	move	$s0, $a6
	move	$s6, $a5
	move	$s1, $a4
	move	$fp, $a3
	move	$s4, $a2
	move	$s5, $a1
	beq	$t0, $a0, .LBB18_2
# %bb.1:                                # %if.then
	ori	$a5, $zero, 1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s6
	move	$a3, $s0
	move	$a4, $s3
	jirl	$ra, $t0, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB18_11
.LBB18_2:                               # %if.end5
	ori	$a1, $zero, 1
	move	$a0, $zero
	blt	$s0, $a1, .LBB18_14
# %bb.3:                                # %if.end5
	blt	$s3, $a1, .LBB18_14
# %bb.4:                                # %if.end9
	addi.w	$a0, $zero, -1
	bltz	$s1, .LBB18_14
# %bb.5:                                # %lor.lhs.false11
	bltz	$s6, .LBB18_14
# %bb.6:                                # %lor.lhs.false11
	ld.w	$a1, $s2, 24
	sub.w	$a1, $a1, $s0
	blt	$a1, $s1, .LBB18_14
# %bb.7:                                # %lor.lhs.false15
	ld.w	$a1, $s2, 28
	sub.w	$a1, $a1, $s3
	blt	$a1, $s6, .LBB18_14
# %bb.8:                                # %while.body.lr.ph.i
	ld.d	$a0, $s2, 168
	add.d	$s2, $s5, $s4
	alsl.d	$s4, $s6, $a0, 3
	addi.d	$s3, $s3, 1
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB18_9:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	add.d	$a0, $a0, $s1
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$s2, $s2, $fp
	addi.w	$s3, $s3, -1
	addi.d	$s4, $s4, 8
	bltu	$s5, $s3, .LBB18_9
# %bb.10:
	move	$a0, $zero
	b	.LBB18_14
.LBB18_11:                              # %if.then3
	addi.w	$a2, $zero, -2
	beq	$a0, $a2, .LBB18_15
# %bb.12:                               # %if.then3
	bne	$a0, $a1, .LBB18_14
# %bb.13:                               # %sw.bb.i
	srai.d	$s7, $s0, 1
	add.w	$a0, $s7, $s1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	sub.w	$s0, $s0, $s7
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s8, $s3
	b	.LBB18_16
.LBB18_14:                              # %return
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB18_15:                              # %sw.bb1.i
	srai.d	$s8, $s3, 1
	add.w	$a0, $s8, $s6
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	sub.w	$s3, $s3, $s8
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $s0
.LBB18_16:                              # %sw.epilog.i
	ld.d	$a0, $s2, 8
	ld.d	$t0, $a0, 80
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $fp
	move	$a4, $s1
	move	$a5, $s6
	move	$a6, $s0
	move	$a7, $s3
	jirl	$ra, $t0, 0
	ld.d	$a0, $s2, 8
	ld.d	$t0, $a0, 80
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $fp
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	move	$a6, $s7
	move	$a7, $s8
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	jr	$t0
.Lfunc_end18:
	.size	mem_mapped_copy_color, .Lfunc_end18-mem_mapped_copy_color
                                        # -- End function
	.globl	mem_true_map_rgb_color          # -- Begin function mem_true_map_rgb_color
	.p2align	5
	.type	mem_true_map_rgb_color,@function
mem_true_map_rgb_color:                 # @mem_true_map_rgb_color
# %bb.0:                                # %entry
	andi	$a0, $a3, 255
	slli.d	$a0, $a0, 24
	bstrins.d	$a0, $a2, 23, 16
	bstrins.d	$a0, $a1, 15, 8
	ret
.Lfunc_end19:
	.size	mem_true_map_rgb_color, .Lfunc_end19-mem_true_map_rgb_color
                                        # -- End function
	.globl	mem_true_map_color_rgb          # -- Begin function mem_true_map_color_rgb
	.p2align	5
	.type	mem_true_map_color_rgb,@function
mem_true_map_color_rgb:                 # @mem_true_map_color_rgb
# %bb.0:                                # %entry
	bstrpick.d	$a0, $a1, 15, 8
	st.h	$a0, $a2, 0
	bstrpick.d	$a0, $a1, 23, 16
	st.h	$a0, $a2, 2
	bstrpick.d	$a0, $a1, 31, 24
	st.h	$a0, $a2, 4
	move	$a0, $zero
	ret
.Lfunc_end20:
	.size	mem_true_map_color_rgb, .Lfunc_end20-mem_true_map_color_rgb
                                        # -- End function
	.globl	mem_true24_fill_rectangle       # -- Begin function mem_true24_fill_rectangle
	.p2align	5
	.type	mem_true24_fill_rectangle,@function
mem_true24_fill_rectangle:              # @mem_true24_fill_rectangle
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a0
	ld.d	$a6, $a0, 176
	move	$s2, $a5
	move	$s0, $a4
	move	$fp, $a3
	move	$s4, $a2
	pcalau12i	$a0, %pc_hi20(mem_no_fault_proc)
	addi.d	$a0, $a0, %pc_lo12(mem_no_fault_proc)
	alsl.w	$s1, $a1, $a1, 1
	beq	$a6, $a0, .LBB21_2
# %bb.1:                                # %if.then
	move	$s5, $a1
	alsl.w	$a3, $fp, $fp, 1
	ori	$a5, $zero, 1
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	move	$a4, $s0
	jirl	$ra, $a6, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB21_14
.LBB21_2:                               # %if.end8
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB21_12
# %bb.3:                                # %while.body.preheader
	ld.d	$a4, $s3, 168
	srli.d	$a1, $s2, 8
	srli.d	$a2, $s2, 16
	srli.d	$a3, $s2, 24
	alsl.d	$a4, $s4, $a4, 3
	slti	$a5, $fp, 1
	masknez	$a6, $a0, $a5
	maskeqz	$a5, $fp, $a5
	or	$a5, $a5, $a6
	sub.d	$a5, $fp, $a5
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a5, $a5, 1
	bstrpick.d	$t0, $a5, 32, 1
	slli.d	$a6, $t0, 1
	sub.d	$a7, $fp, $a6
	slli.d	$t1, $t0, 2
	alsl.d	$t0, $t0, $t1, 1
	addi.d	$t1, $s1, 2
	ori	$t2, $zero, 2
	b	.LBB21_5
	.p2align	4, , 16
.LBB21_4:                               # %do.end
                                        #   in Loop: Header=BB21_5 Depth=1
	addi.w	$s0, $t3, -1
	addi.d	$a4, $a4, 8
	bge	$a0, $t3, .LBB21_12
.LBB21_5:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_8 Depth 2
                                        #     Child Loop BB21_11 Depth 2
	ld.d	$t5, $a4, 0
	move	$t3, $s0
	add.d	$t4, $t5, $s1
	bge	$fp, $t2, .LBB21_7
# %bb.6:                                #   in Loop: Header=BB21_5 Depth=1
	move	$t5, $fp
	b	.LBB21_10
	.p2align	4, , 16
.LBB21_7:                               # %vector.ph
                                        #   in Loop: Header=BB21_5 Depth=1
	add.d	$t4, $t4, $t0
	add.d	$t5, $t5, $t1
	move	$t6, $a6
	.p2align	4, , 16
.LBB21_8:                               # %vector.body
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a1, $t5, -2
	st.b	$a1, $t5, 1
	st.b	$a2, $t5, -1
	st.b	$a2, $t5, 2
	st.b	$a3, $t5, 0
	st.b	$a3, $t5, 3
	addi.d	$t6, $t6, -2
	addi.d	$t5, $t5, 6
	bnez	$t6, .LBB21_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB21_5 Depth=1
	move	$t5, $a7
	beq	$a5, $a6, .LBB21_4
.LBB21_10:                              # %do.body.preheader
                                        #   in Loop: Header=BB21_5 Depth=1
	addi.d	$t5, $t5, 1
	.p2align	4, , 16
.LBB21_11:                              # %do.body
                                        #   Parent Loop BB21_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.b	$a1, $t4, 0
	st.b	$a2, $t4, 1
	addi.d	$t6, $t4, 3
	addi.w	$t5, $t5, -1
	st.b	$a3, $t4, 2
	move	$t4, $t6
	blt	$a0, $t5, .LBB21_11
	b	.LBB21_4
.LBB21_12:
	move	$a0, $zero
.LBB21_13:                              # %cleanup23
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB21_14:                              # %if.then6
	addi.w	$a2, $zero, -2
	beq	$a0, $a2, .LBB21_17
# %bb.15:                               # %if.then6
	bne	$a0, $a1, .LBB21_13
# %bb.16:                               # %sw.bb.i
	srai.d	$s1, $fp, 1
	add.w	$s7, $s1, $s5
	sub.w	$fp, $fp, $s1
	move	$s8, $s4
	move	$s6, $s0
	b	.LBB21_18
.LBB21_17:                              # %sw.bb1.i
	srai.d	$s6, $s0, 1
	add.w	$s8, $s6, $s4
	sub.w	$s0, $s0, $s6
	move	$s7, $s5
	move	$s1, $fp
.LBB21_18:                              # %sw.epilog.i
	ld.d	$a0, $s3, 8
	ld.d	$a6, $a0, 56
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $fp
	move	$a4, $s0
	move	$a5, $s2
	jirl	$ra, $a6, 0
	ld.d	$a0, $s3, 8
	ld.d	$a6, $a0, 56
	move	$a0, $s3
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s1
	move	$a4, $s6
	move	$a5, $s2
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	jr	$a6
.Lfunc_end21:
	.size	mem_true24_fill_rectangle, .Lfunc_end21-mem_true24_fill_rectangle
                                        # -- End function
	.globl	mem_true24_copy_mono            # -- Begin function mem_true24_copy_mono
	.p2align	5
	.type	mem_true24_copy_mono,@function
mem_true24_copy_mono:                   # @mem_true24_copy_mono
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s3, $a7
	move	$t1, $a5
	move	$fp, $a3
	move	$s2, $a2
	move	$a7, $a1
	move	$s5, $a0
	ld.d	$s4, $sp, 136
	ld.d	$t0, $a0, 176
	ld.d	$s8, $sp, 128
	pcalau12i	$a0, %pc_hi20(mem_no_fault_proc)
	addi.d	$a0, $a0, %pc_lo12(mem_no_fault_proc)
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	alsl.w	$s0, $a4, $a4, 1
	beq	$t0, $a0, .LBB22_2
# %bb.1:                                # %if.then
	alsl.w	$a3, $a6, $a6, 1
	ori	$a5, $zero, 1
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $t1
	move	$a4, $s3
	move	$s1, $s2
	move	$s2, $a7
	move	$s6, $s4
	move	$s4, $a6
	move	$s7, $t1
	jirl	$ra, $t0, 0
	move	$t1, $s7
	move	$a6, $s4
	move	$s4, $s6
	move	$a7, $s2
	move	$s2, $s1
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB22_11
.LBB22_2:                               # %if.end11
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB22_31
# %bb.3:                                # %while.body.lr.ph
	ld.d	$a0, $s5, 168
	srli.d	$a3, $s8, 8
	srli.d	$a4, $s8, 16
	srli.d	$a5, $s8, 24
	alsl.d	$a0, $t1, $a0, 3
	srai.d	$a1, $s2, 3
	add.d	$a1, $a7, $a1
	andi	$a2, $s2, 7
	ori	$a7, $zero, 128
	srl.w	$a2, $a7, $a2
	addi.w	$t1, $zero, -1
	addi.w	$t3, $s3, -1
	beq	$s4, $t1, .LBB22_14
# %bb.4:                                # %while.body.lr.ph.split
	srli.d	$s6, $s4, 8
	srli.d	$a7, $s4, 16
	srli.d	$t0, $s4, 24
	beq	$s8, $t1, .LBB22_23
# %bb.5:                                # %while.body.preheader
	addi.d	$t1, $a6, 1
	ori	$t2, $zero, 1
	b	.LBB22_7
	.p2align	4, , 16
.LBB22_6:                               # %do.end.split.split
                                        #   in Loop: Header=BB22_7 Depth=1
	add.d	$a1, $a1, $fp
	addi.d	$a0, $a0, 8
	addi.w	$t3, $t4, -1
	blez	$t4, .LBB22_31
.LBB22_7:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_9 Depth 2
	ld.d	$t6, $a0, 0
	ld.bu	$t5, $a1, 0
	move	$t4, $t3
	add.d	$t3, $t6, $s0
	addi.d	$t7, $a1, 1
	move	$t6, $t1
	move	$t8, $a2
	b	.LBB22_9
	.p2align	4, , 16
.LBB22_8:                               # %if.then43
                                        #   in Loop: Header=BB22_9 Depth=2
	ld.bu	$t5, $t7, 0
	addi.d	$t7, $t7, 1
	ori	$t8, $zero, 128
	addi.w	$t6, $t6, -1
	addi.d	$t3, $t3, 3
	bge	$t2, $t6, .LBB22_6
.LBB22_9:                               # %do.body
                                        #   Parent Loop BB22_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$s1, $t8, $t5
	addi.w	$s1, $s1, 0
	addi.w	$s2, $t8, 0
	sltui	$s1, $s1, 1
	masknez	$s3, $s6, $s1
	maskeqz	$s4, $a3, $s1
	or	$s3, $s4, $s3
	masknez	$s4, $a7, $s1
	maskeqz	$s5, $a4, $s1
	or	$s4, $s5, $s4
	masknez	$s5, $t0, $s1
	maskeqz	$s1, $a5, $s1
	or	$s1, $s1, $s5
	st.b	$s3, $t3, 0
	st.b	$s4, $t3, 1
	st.b	$s1, $t3, 2
	bgeu	$t2, $s2, .LBB22_8
# %bb.10:                               #   in Loop: Header=BB22_9 Depth=2
	bstrpick.d	$t8, $t8, 31, 1
	addi.w	$t6, $t6, -1
	addi.d	$t3, $t3, 3
	blt	$t2, $t6, .LBB22_9
	b	.LBB22_6
.LBB22_11:                              # %if.then9
	addi.w	$a2, $zero, -2
	beq	$a0, $a2, .LBB22_33
# %bb.12:                               # %if.then9
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB22_32
# %bb.13:                               # %sw.bb.i
	srai.d	$s6, $a6, 1
	add.w	$s7, $s6, $a4
	sub.w	$a6, $a6, $s6
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $s3
	b	.LBB22_34
.LBB22_14:                              # %while.body.us.preheader
	addi.d	$a6, $a6, 1
	ori	$a7, $zero, 1
	b	.LBB22_16
	.p2align	4, , 16
.LBB22_15:                              # %do.end.split.us.us
                                        #   in Loop: Header=BB22_16 Depth=1
	add.d	$a1, $a1, $fp
	addi.d	$a0, $a0, 8
	addi.w	$t3, $t0, -1
	blez	$t0, .LBB22_31
.LBB22_16:                              # %while.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_18 Depth 2
	ld.d	$t4, $a0, 0
	ld.bu	$t2, $a1, 0
	move	$t0, $t3
	add.d	$t3, $t4, $s0
	addi.d	$t5, $a1, 1
	move	$t4, $a6
	move	$t6, $a2
	b	.LBB22_18
	.p2align	4, , 16
.LBB22_17:                              # %if.then43.us.us
                                        #   in Loop: Header=BB22_18 Depth=2
	ld.bu	$t2, $t5, 0
	addi.d	$t5, $t5, 1
	ori	$t6, $zero, 128
	addi.w	$t4, $t4, -1
	bge	$a7, $t4, .LBB22_15
.LBB22_18:                              # %do.body.us.us
                                        #   Parent Loop BB22_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$t7, $t6, $t2
	addi.w	$t7, $t7, 0
	bnez	$t7, .LBB22_21
# %bb.19:                               # %do.body.us.us
                                        #   in Loop: Header=BB22_18 Depth=2
	beq	$s8, $t1, .LBB22_21
# %bb.20:                               # %if.then34.us.us
                                        #   in Loop: Header=BB22_18 Depth=2
	st.b	$a3, $t3, 0
	st.b	$a4, $t3, 1
	addi.d	$t7, $t3, 3
	st.b	$a5, $t3, 2
	move	$t3, $t7
.LBB22_21:                              # %if.end39.us.us
                                        #   in Loop: Header=BB22_18 Depth=2
	addi.w	$t7, $t6, 0
	bgeu	$a7, $t7, .LBB22_17
# %bb.22:                               #   in Loop: Header=BB22_18 Depth=2
	bstrpick.d	$t6, $t6, 31, 1
	addi.w	$t4, $t4, -1
	blt	$a7, $t4, .LBB22_18
	b	.LBB22_15
.LBB22_23:                              # %while.body.us108.preheader
	addi.d	$a3, $a6, 1
	ori	$a4, $zero, 1
	b	.LBB22_25
	.p2align	4, , 16
.LBB22_24:                              # %do.end.split.split.us.us
                                        #   in Loop: Header=BB22_25 Depth=1
	add.d	$a1, $a1, $fp
	addi.d	$a0, $a0, 8
	addi.w	$t3, $a5, -1
	blez	$a5, .LBB22_31
.LBB22_25:                              # %while.body.us108
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_27 Depth 2
	ld.d	$t2, $a0, 0
	ld.bu	$t1, $a1, 0
	move	$a5, $t3
	add.d	$t2, $t2, $s0
	addi.d	$t4, $a1, 1
	move	$t3, $a3
	move	$t5, $a2
	b	.LBB22_27
	.p2align	4, , 16
.LBB22_26:                              #   in Loop: Header=BB22_27 Depth=2
	bstrpick.d	$t5, $t5, 31, 1
	addi.w	$t3, $t3, -1
	bge	$a4, $t3, .LBB22_24
.LBB22_27:                              # %do.body.us80.us
                                        #   Parent Loop BB22_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$t6, $t5, $t1
	addi.w	$t6, $t6, 0
	beqz	$t6, .LBB22_29
# %bb.28:                               # %if.then24.us88.us
                                        #   in Loop: Header=BB22_27 Depth=2
	st.b	$s6, $t2, 0
	st.b	$a7, $t2, 1
	addi.d	$t6, $t2, 3
	st.b	$t0, $t2, 2
	move	$t2, $t6
.LBB22_29:                              # %if.end39.us90.us
                                        #   in Loop: Header=BB22_27 Depth=2
	addi.w	$t6, $t5, 0
	bltu	$a4, $t6, .LBB22_26
# %bb.30:                               # %if.then43.us94.us
                                        #   in Loop: Header=BB22_27 Depth=2
	ld.bu	$t1, $t4, 0
	addi.d	$t4, $t4, 1
	ori	$t5, $zero, 128
	addi.w	$t3, $t3, -1
	blt	$a4, $t3, .LBB22_27
	b	.LBB22_24
.LBB22_31:
	move	$a0, $zero
.LBB22_32:                              # %cleanup55
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB22_33:                              # %sw.bb1.i
	srai.d	$s0, $s3, 1
	add.w	$a0, $s0, $t1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	sub.w	$s3, $s3, $s0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	move	$s7, $a4
	move	$s6, $a6
.LBB22_34:                              # %sw.epilog.i
	ld.d	$a0, $s5, 8
	ld.d	$t0, $a0, 72
	st.d	$s4, $sp, 8
	st.d	$s8, $sp, 0
	move	$a0, $s5
	move	$a1, $a7
	move	$a2, $s2
	move	$a3, $fp
	move	$a5, $t1
	move	$s1, $a7
	move	$a7, $s3
	jirl	$ra, $t0, 0
	ld.d	$a0, $s5, 8
	ld.d	$t0, $a0, 72
	st.d	$s4, $sp, 8
	st.d	$s8, $sp, 0
	move	$a0, $s5
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	move	$a4, $s7
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	move	$a6, $s6
	move	$a7, $s0
	jirl	$ra, $t0, 0
	b	.LBB22_32
.Lfunc_end22:
	.size	mem_true24_copy_mono, .Lfunc_end22-mem_true24_copy_mono
                                        # -- End function
	.globl	mem_true24_copy_color           # -- Begin function mem_true24_copy_color
	.p2align	5
	.type	mem_true24_copy_color,@function
mem_true24_copy_color:                  # @mem_true24_copy_color
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$t0, $a0, 176
	pcalau12i	$a0, %pc_hi20(mem_no_fault_proc)
	addi.d	$a0, $a0, %pc_lo12(mem_no_fault_proc)
	move	$s1, $a7
	move	$s3, $a6
	move	$s4, $a5
	move	$s6, $a4
	move	$fp, $a3
	move	$s5, $a2
	move	$s2, $a1
	beq	$t0, $a0, .LBB23_2
# %bb.1:                                # %if.then
	alsl.w	$a1, $s6, $s6, 1
	alsl.w	$a3, $s3, $s3, 1
	ori	$a5, $zero, 1
	move	$a0, $s0
	move	$a2, $s4
	move	$a4, $s1
	jirl	$ra, $t0, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB23_11
.LBB23_2:                               # %if.end6
	ori	$a1, $zero, 1
	move	$a0, $zero
	blt	$s3, $a1, .LBB23_14
# %bb.3:                                # %if.end6
	blt	$s1, $a1, .LBB23_14
# %bb.4:                                # %if.end10
	addi.w	$a0, $zero, -1
	bltz	$s6, .LBB23_14
# %bb.5:                                # %lor.lhs.false12
	bltz	$s4, .LBB23_14
# %bb.6:                                # %lor.lhs.false12
	ld.w	$a1, $s0, 24
	sub.w	$a1, $a1, $s3
	blt	$a1, $s6, .LBB23_14
# %bb.7:                                # %lor.lhs.false16
	ld.w	$a1, $s0, 28
	sub.w	$a1, $a1, $s1
	blt	$a1, $s4, .LBB23_14
# %bb.8:                                # %while.body.lr.ph.i
	alsl.w	$a0, $s5, $s5, 1
	ld.d	$a1, $s0, 168
	add.d	$s0, $s2, $a0
	alsl.w	$s5, $s6, $s6, 1
	alsl.w	$s2, $s3, $s3, 1
	alsl.d	$s3, $s4, $a1, 3
	addi.d	$s1, $s1, 1
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB23_9:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	add.d	$a0, $a0, $s5
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $fp
	addi.w	$s1, $s1, -1
	addi.d	$s3, $s3, 8
	bltu	$s4, $s1, .LBB23_9
# %bb.10:
	move	$a0, $zero
	b	.LBB23_14
.LBB23_11:                              # %if.then4
	addi.w	$a2, $zero, -2
	beq	$a0, $a2, .LBB23_15
# %bb.12:                               # %if.then4
	bne	$a0, $a1, .LBB23_14
# %bb.13:                               # %sw.bb.i
	srai.d	$s7, $s3, 1
	add.w	$a0, $s7, $s6
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	sub.w	$s3, $s3, $s7
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s8, $s1
	b	.LBB23_16
.LBB23_14:                              # %return
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB23_15:                              # %sw.bb1.i
	srai.d	$s8, $s1, 1
	add.w	$a0, $s8, $s4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	sub.w	$s1, $s1, $s8
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $s3
.LBB23_16:                              # %sw.epilog.i
	ld.d	$a0, $s0, 8
	ld.d	$t0, $a0, 80
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s3
	move	$a7, $s1
	jirl	$ra, $t0, 0
	ld.d	$a0, $s0, 8
	ld.d	$t0, $a0, 80
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $fp
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	move	$a6, $s7
	move	$a7, $s8
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	jr	$t0
.Lfunc_end23:
	.size	mem_true24_copy_color, .Lfunc_end23-mem_true24_copy_color
                                        # -- End function
	.globl	mem_true32_fill_rectangle       # -- Begin function mem_true32_fill_rectangle
	.p2align	5
	.type	mem_true32_fill_rectangle,@function
mem_true32_fill_rectangle:              # @mem_true32_fill_rectangle
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a0
	ld.d	$a6, $a0, 176
	move	$fp, $a5
	move	$s1, $a4
	move	$s0, $a3
	move	$s4, $a2
	pcalau12i	$a0, %pc_hi20(mem_no_fault_proc)
	addi.d	$a0, $a0, %pc_lo12(mem_no_fault_proc)
	slli.w	$s2, $a1, 2
	beq	$a6, $a0, .LBB24_2
# %bb.1:                                # %if.then
	move	$s5, $a1
	slli.w	$a3, $s0, 2
	ori	$a5, $zero, 1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s4
	move	$a4, $s1
	jirl	$ra, $a6, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB24_14
.LBB24_2:                               # %if.end6
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB24_12
# %bb.3:                                # %while.body.preheader
	ld.d	$a1, $s3, 168
	alsl.d	$a1, $s4, $a1, 3
	slti	$a2, $s0, 1
	masknez	$a3, $a0, $a2
	maskeqz	$a2, $s0, $a2
	or	$a2, $a2, $a3
	sub.w	$a2, $s0, $a2
	bstrpick.d	$a3, $a2, 31, 0
	addi.d	$a3, $a3, 1
	bstrpick.d	$a5, $a3, 32, 3
	slli.d	$a4, $a5, 3
	slli.d	$a5, $a5, 6
	sub.d	$a6, $s0, $a4
	xvreplgr2vr.d	$xr0, $fp
	addi.d	$a7, $s2, 32
	ori	$t0, $zero, 7
	b	.LBB24_5
	.p2align	4, , 16
.LBB24_4:                               # %do.end
                                        #   in Loop: Header=BB24_5 Depth=1
	addi.w	$s1, $t1, -1
	addi.d	$a1, $a1, 8
	bge	$a0, $t1, .LBB24_12
.LBB24_5:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_8 Depth 2
                                        #     Child Loop BB24_11 Depth 2
	ld.d	$t3, $a1, 0
	move	$t1, $s1
	add.d	$t2, $t3, $s2
	bgeu	$a2, $t0, .LBB24_7
# %bb.6:                                #   in Loop: Header=BB24_5 Depth=1
	move	$t3, $s0
	b	.LBB24_10
	.p2align	4, , 16
.LBB24_7:                               # %vector.ph
                                        #   in Loop: Header=BB24_5 Depth=1
	add.d	$t2, $t2, $a5
	add.d	$t3, $t3, $a7
	move	$t4, $a4
	.p2align	4, , 16
.LBB24_8:                               # %vector.body
                                        #   Parent Loop BB24_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $t3, -32
	xvst	$xr0, $t3, 0
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB24_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB24_5 Depth=1
	move	$t3, $a6
	beq	$a3, $a4, .LBB24_4
.LBB24_10:                              # %do.body.preheader
                                        #   in Loop: Header=BB24_5 Depth=1
	addi.d	$t3, $t3, 1
	.p2align	4, , 16
.LBB24_11:                              # %do.body
                                        #   Parent Loop BB24_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t4, $t2, 8
	addi.w	$t3, $t3, -1
	st.d	$fp, $t2, 0
	move	$t2, $t4
	blt	$a0, $t3, .LBB24_11
	b	.LBB24_4
.LBB24_12:
	move	$a0, $zero
.LBB24_13:                              # %cleanup19
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB24_14:                              # %if.then4
	addi.w	$a2, $zero, -2
	beq	$a0, $a2, .LBB24_17
# %bb.15:                               # %if.then4
	bne	$a0, $a1, .LBB24_13
# %bb.16:                               # %sw.bb.i
	srai.d	$s2, $s0, 1
	add.w	$s7, $s2, $s5
	sub.w	$s0, $s0, $s2
	move	$s8, $s4
	move	$s6, $s1
	b	.LBB24_18
.LBB24_17:                              # %sw.bb1.i
	srai.d	$s6, $s1, 1
	add.w	$s8, $s6, $s4
	sub.w	$s1, $s1, $s6
	move	$s7, $s5
	move	$s2, $s0
.LBB24_18:                              # %sw.epilog.i
	ld.d	$a0, $s3, 8
	ld.d	$a6, $a0, 56
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s4
	move	$a3, $s0
	move	$a4, $s1
	move	$a5, $fp
	jirl	$ra, $a6, 0
	ld.d	$a0, $s3, 8
	ld.d	$a6, $a0, 56
	move	$a0, $s3
	move	$a1, $s7
	move	$a2, $s8
	move	$a3, $s2
	move	$a4, $s6
	move	$a5, $fp
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	jr	$a6
.Lfunc_end24:
	.size	mem_true32_fill_rectangle, .Lfunc_end24-mem_true32_fill_rectangle
                                        # -- End function
	.globl	mem_true32_copy_mono            # -- Begin function mem_true32_copy_mono
	.p2align	5
	.type	mem_true32_copy_mono,@function
mem_true32_copy_mono:                   # @mem_true32_copy_mono
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$s3, $a7
	move	$t1, $a5
	move	$fp, $a3
	move	$s2, $a2
	move	$s5, $a0
	ld.d	$s8, $sp, 136
	ld.d	$a7, $a0, 176
	ld.d	$s4, $sp, 128
	pcalau12i	$a0, %pc_hi20(mem_no_fault_proc)
	addi.d	$a0, $a0, %pc_lo12(mem_no_fault_proc)
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	slli.w	$s0, $a4, 2
	beq	$a7, $a0, .LBB25_2
# %bb.1:                                # %if.then
	move	$s1, $s2
	move	$s2, $a1
	slli.w	$a3, $a6, 2
	ori	$a5, $zero, 1
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $t1
	move	$a4, $s3
	move	$s6, $a6
	move	$s7, $t1
	jirl	$ra, $a7, 0
	move	$t1, $s7
	move	$a6, $s6
	move	$a1, $s2
	move	$s2, $s1
	addi.w	$a3, $zero, -1
	bge	$a3, $a0, .LBB25_11
.LBB25_2:                               # %if.end6
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB25_31
# %bb.3:                                # %while.body.lr.ph
	ld.d	$a0, $s5, 168
	alsl.d	$a0, $t1, $a0, 3
	srai.d	$a2, $s2, 3
	add.d	$a1, $a1, $a2
	andi	$a2, $s2, 7
	ori	$a3, $zero, 128
	srl.w	$a2, $a3, $a2
	addi.w	$a3, $zero, -1
	addi.w	$t2, $s3, -1
	beq	$s8, $a3, .LBB25_14
# %bb.4:                                # %while.body.lr.ph.split
	beq	$s4, $a3, .LBB25_23
# %bb.5:                                # %while.body.preheader
	addi.d	$a3, $a6, 1
	ori	$a4, $zero, 1
	b	.LBB25_7
	.p2align	4, , 16
.LBB25_6:                               # %do.end.split.split
                                        #   in Loop: Header=BB25_7 Depth=1
	add.d	$a1, $a1, $fp
	addi.d	$a0, $a0, 8
	addi.w	$t2, $a5, -1
	blez	$a5, .LBB25_31
.LBB25_7:                               # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_9 Depth 2
	ld.d	$t0, $a0, 0
	ld.bu	$a7, $a1, 0
	move	$a5, $t2
	add.d	$a6, $t0, $s0
	addi.d	$t1, $a1, 1
	move	$t0, $a3
	move	$t2, $a2
	b	.LBB25_9
	.p2align	4, , 16
.LBB25_8:                               # %if.then32
                                        #   in Loop: Header=BB25_9 Depth=2
	ld.bu	$a7, $t1, 0
	addi.d	$t1, $t1, 1
	ori	$t2, $zero, 128
	addi.w	$t0, $t0, -1
	addi.d	$a6, $a6, 8
	bge	$a4, $t0, .LBB25_6
.LBB25_9:                               # %do.body
                                        #   Parent Loop BB25_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$t3, $t2, $a7
	addi.w	$t3, $t3, 0
	addi.w	$t4, $t2, 0
	sltui	$t3, $t3, 1
	masknez	$t5, $s8, $t3
	maskeqz	$t3, $s4, $t3
	or	$t3, $t3, $t5
	st.d	$t3, $a6, 0
	bgeu	$a4, $t4, .LBB25_8
# %bb.10:                               #   in Loop: Header=BB25_9 Depth=2
	bstrpick.d	$t2, $t2, 31, 1
	addi.w	$t0, $t0, -1
	addi.d	$a6, $a6, 8
	blt	$a4, $t0, .LBB25_9
	b	.LBB25_6
.LBB25_11:                              # %if.then4
	addi.w	$a2, $zero, -2
	beq	$a0, $a2, .LBB25_33
# %bb.12:                               # %if.then4
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $a3, .LBB25_32
# %bb.13:                               # %sw.bb.i
	srai.d	$s1, $a6, 1
	add.w	$s7, $s1, $a4
	sub.w	$a6, $a6, $s1
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	move	$s6, $s3
	b	.LBB25_34
.LBB25_14:                              # %while.body.us.preheader
	addi.d	$a4, $a6, 1
	ori	$a5, $zero, 1
	b	.LBB25_16
	.p2align	4, , 16
.LBB25_15:                              # %do.end.split.us.us
                                        #   in Loop: Header=BB25_16 Depth=1
	add.d	$a1, $a1, $fp
	addi.d	$a0, $a0, 8
	addi.w	$t2, $a7, -1
	blez	$a7, .LBB25_31
.LBB25_16:                              # %while.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_18 Depth 2
	ld.d	$t1, $a0, 0
	ld.bu	$t0, $a1, 0
	move	$a7, $t2
	add.d	$a6, $t1, $s0
	addi.d	$t2, $a1, 1
	move	$t1, $a4
	move	$t3, $a2
	b	.LBB25_18
	.p2align	4, , 16
.LBB25_17:                              # %if.then32.us.us
                                        #   in Loop: Header=BB25_18 Depth=2
	ld.bu	$t0, $t2, 0
	addi.d	$t2, $t2, 1
	ori	$t3, $zero, 128
	addi.w	$t1, $t1, -1
	addi.d	$a6, $a6, 8
	bge	$a5, $t1, .LBB25_15
.LBB25_18:                              # %do.body.us.us
                                        #   Parent Loop BB25_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$t4, $t3, $t0
	addi.w	$t4, $t4, 0
	bnez	$t4, .LBB25_21
# %bb.19:                               # %do.body.us.us
                                        #   in Loop: Header=BB25_18 Depth=2
	beq	$s4, $a3, .LBB25_21
# %bb.20:                               # %if.then26.us.us
                                        #   in Loop: Header=BB25_18 Depth=2
	st.d	$s4, $a6, 0
.LBB25_21:                              # %if.end28.us.us
                                        #   in Loop: Header=BB25_18 Depth=2
	addi.w	$t4, $t3, 0
	bgeu	$a5, $t4, .LBB25_17
# %bb.22:                               #   in Loop: Header=BB25_18 Depth=2
	bstrpick.d	$t3, $t3, 31, 1
	addi.w	$t1, $t1, -1
	addi.d	$a6, $a6, 8
	blt	$a5, $t1, .LBB25_18
	b	.LBB25_15
.LBB25_23:                              # %while.body.us59.preheader
	addi.d	$a3, $a6, 1
	ori	$a4, $zero, 1
	b	.LBB25_25
	.p2align	4, , 16
.LBB25_24:                              # %do.end.split.split.us.us
                                        #   in Loop: Header=BB25_25 Depth=1
	add.d	$a1, $a1, $fp
	addi.d	$a0, $a0, 8
	addi.w	$t2, $a5, -1
	blez	$a5, .LBB25_31
.LBB25_25:                              # %while.body.us59
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_27 Depth 2
	ld.d	$t0, $a0, 0
	ld.bu	$a7, $a1, 0
	move	$a5, $t2
	add.d	$a6, $t0, $s0
	addi.d	$t1, $a1, 1
	move	$t0, $a3
	move	$t2, $a2
	b	.LBB25_27
	.p2align	4, , 16
.LBB25_26:                              #   in Loop: Header=BB25_27 Depth=2
	bstrpick.d	$t2, $t2, 31, 1
	addi.w	$t0, $t0, -1
	addi.d	$a6, $a6, 8
	bge	$a4, $t0, .LBB25_24
.LBB25_27:                              # %do.body.us31.us
                                        #   Parent Loop BB25_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	and	$t3, $t2, $a7
	addi.w	$t3, $t3, 0
	beqz	$t3, .LBB25_29
# %bb.28:                               # %if.then19.us39.us
                                        #   in Loop: Header=BB25_27 Depth=2
	st.d	$s8, $a6, 0
.LBB25_29:                              # %if.end28.us41.us
                                        #   in Loop: Header=BB25_27 Depth=2
	addi.w	$t3, $t2, 0
	bltu	$a4, $t3, .LBB25_26
# %bb.30:                               # %if.then32.us44.us
                                        #   in Loop: Header=BB25_27 Depth=2
	ld.bu	$a7, $t1, 0
	addi.d	$t1, $t1, 1
	ori	$t2, $zero, 128
	addi.w	$t0, $t0, -1
	addi.d	$a6, $a6, 8
	blt	$a4, $t0, .LBB25_27
	b	.LBB25_24
.LBB25_31:
	move	$a0, $zero
.LBB25_32:                              # %cleanup45
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB25_33:                              # %sw.bb1.i
	srai.d	$s6, $s3, 1
	add.w	$a0, $s6, $t1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	sub.w	$s3, $s3, $s6
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	move	$s7, $a4
	move	$s1, $a6
.LBB25_34:                              # %sw.epilog.i
	ld.d	$a0, $s5, 8
	ld.d	$t0, $a0, 72
	st.d	$s8, $sp, 8
	st.d	$s4, $sp, 0
	move	$a0, $s5
	move	$a2, $s2
	move	$s0, $a1
	move	$a3, $fp
	move	$a5, $t1
	move	$a7, $s3
	jirl	$ra, $t0, 0
	ld.d	$a0, $s5, 8
	ld.d	$t0, $a0, 72
	st.d	$s8, $sp, 8
	st.d	$s4, $sp, 0
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s2
	move	$a3, $fp
	move	$a4, $s7
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	move	$a6, $s1
	move	$a7, $s6
	jirl	$ra, $t0, 0
	b	.LBB25_32
.Lfunc_end25:
	.size	mem_true32_copy_mono, .Lfunc_end25-mem_true32_copy_mono
                                        # -- End function
	.globl	mem_true32_copy_color           # -- Begin function mem_true32_copy_color
	.p2align	5
	.type	mem_true32_copy_color,@function
mem_true32_copy_color:                  # @mem_true32_copy_color
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$t0, $a0, 176
	pcalau12i	$a0, %pc_hi20(mem_no_fault_proc)
	addi.d	$a0, $a0, %pc_lo12(mem_no_fault_proc)
	move	$s1, $a7
	move	$s3, $a6
	move	$s4, $a5
	move	$s6, $a4
	move	$fp, $a3
	move	$s5, $a2
	move	$s2, $a1
	beq	$t0, $a0, .LBB26_2
# %bb.1:                                # %if.then
	slli.w	$a1, $s6, 2
	slli.w	$a3, $s3, 2
	ori	$a5, $zero, 1
	move	$a0, $s0
	move	$a2, $s4
	move	$a4, $s1
	jirl	$ra, $t0, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB26_11
.LBB26_2:                               # %if.end6
	ori	$a1, $zero, 1
	move	$a0, $zero
	blt	$s3, $a1, .LBB26_14
# %bb.3:                                # %if.end6
	blt	$s1, $a1, .LBB26_14
# %bb.4:                                # %if.end10
	addi.w	$a0, $zero, -1
	bltz	$s6, .LBB26_14
# %bb.5:                                # %lor.lhs.false12
	bltz	$s4, .LBB26_14
# %bb.6:                                # %lor.lhs.false12
	ld.w	$a1, $s0, 24
	sub.w	$a1, $a1, $s3
	blt	$a1, $s6, .LBB26_14
# %bb.7:                                # %lor.lhs.false16
	ld.w	$a1, $s0, 28
	sub.w	$a1, $a1, $s1
	blt	$a1, $s4, .LBB26_14
# %bb.8:                                # %while.body.lr.ph.i
	slli.w	$a0, $s5, 2
	ld.d	$a1, $s0, 168
	add.d	$s0, $s2, $a0
	slli.w	$s5, $s6, 2
	slli.w	$s2, $s3, 2
	alsl.d	$s3, $s4, $a1, 3
	addi.d	$s1, $s1, 1
	ori	$s4, $zero, 1
	.p2align	4, , 16
.LBB26_9:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 0
	add.d	$a0, $a0, $s5
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $fp
	addi.w	$s1, $s1, -1
	addi.d	$s3, $s3, 8
	bltu	$s4, $s1, .LBB26_9
# %bb.10:
	move	$a0, $zero
	b	.LBB26_14
.LBB26_11:                              # %if.then4
	addi.w	$a2, $zero, -2
	beq	$a0, $a2, .LBB26_15
# %bb.12:                               # %if.then4
	bne	$a0, $a1, .LBB26_14
# %bb.13:                               # %sw.bb.i
	srai.d	$s7, $s3, 1
	add.w	$a0, $s7, $s6
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	sub.w	$s3, $s3, $s7
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s8, $s1
	b	.LBB26_16
.LBB26_14:                              # %return
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB26_15:                              # %sw.bb1.i
	srai.d	$s8, $s1, 1
	add.w	$a0, $s8, $s4
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	sub.w	$s1, $s1, $s8
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $s3
.LBB26_16:                              # %sw.epilog.i
	ld.d	$a0, $s0, 8
	ld.d	$t0, $a0, 80
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $fp
	move	$a4, $s6
	move	$a5, $s4
	move	$a6, $s3
	move	$a7, $s1
	jirl	$ra, $t0, 0
	ld.d	$a0, $s0, 8
	ld.d	$t0, $a0, 80
	move	$a0, $s0
	move	$a1, $s2
	move	$a2, $s5
	move	$a3, $fp
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	move	$a6, $s7
	move	$a7, $s8
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	jr	$t0
.Lfunc_end26:
	.size	mem_true32_copy_color, .Lfunc_end26-mem_true32_copy_color
                                        # -- End function
	.type	mem_mono_procs,@object          # @mem_mono_procs
	.data
	.globl	mem_mono_procs
	.p2align	3, 0x0
mem_mono_procs:
	.dword	mem_open
	.dword	mem_get_initial_matrix
	.dword	gx_default_sync_output
	.dword	gx_default_output_page
	.dword	gx_default_close_device
	.dword	gx_default_map_rgb_color
	.dword	gx_default_map_color_rgb
	.dword	mem_mono_fill_rectangle
	.dword	gx_default_tile_rectangle
	.dword	mem_mono_copy_mono
	.dword	mem_mono_copy_color
	.dword	gx_default_draw_line
	.dword	gx_default_fill_trapezoid
	.dword	gx_default_tile_trapezoid
	.size	mem_mono_procs, 112

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"image(mono)"
	.size	.L.str.1, 12

	.type	mem_mono_device,@object         # @mem_mono_device
	.data
	.globl	mem_mono_device
	.p2align	3, 0x0
mem_mono_device:
	.word	200                             # 0xc8
	.space	4
	.dword	mem_mono_procs
	.dword	.L.str.1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	0                               # 0x0
	.half	1                               # 0x1
	.space	2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0x3f800000                      # float 1
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x3f800000                      # float 1
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0                               # 0x0
	.space	4
	.dword	0
	.dword	0
	.dword	mem_no_fault_proc
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	0
	.size	mem_mono_device, 200

	.type	mem_mapped_procs,@object        # @mem_mapped_procs
	.globl	mem_mapped_procs
	.p2align	3, 0x0
mem_mapped_procs:
	.dword	mem_open
	.dword	mem_get_initial_matrix
	.dword	gx_default_sync_output
	.dword	gx_default_output_page
	.dword	gx_default_close_device
	.dword	mem_mapped_map_rgb_color
	.dword	mem_mapped_map_color_rgb
	.dword	mem_mapped_fill_rectangle
	.dword	gx_default_tile_rectangle
	.dword	mem_mapped_copy_mono
	.dword	mem_mapped_copy_color
	.dword	gx_default_draw_line
	.dword	gx_default_fill_trapezoid
	.dword	gx_default_tile_trapezoid
	.size	mem_mapped_procs, 112

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"image(8)"
	.size	.L.str.2, 9

	.type	mem_mapped_color_device,@object # @mem_mapped_color_device
	.data
	.globl	mem_mapped_color_device
	.p2align	3, 0x0
mem_mapped_color_device:
	.word	200                             # 0xc8
	.space	4
	.dword	mem_mapped_procs
	.dword	.L.str.2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	1                               # 0x1
	.half	255                             # 0xff
	.space	2
	.word	8                               # 0x8
	.word	0                               # 0x0
	.word	0x3f800000                      # float 1
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x3f800000                      # float 1
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0                               # 0x0
	.space	4
	.dword	0
	.dword	0
	.dword	mem_no_fault_proc
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	0
	.size	mem_mapped_color_device, 200

	.type	mem_true24_procs,@object        # @mem_true24_procs
	.globl	mem_true24_procs
	.p2align	3, 0x0
mem_true24_procs:
	.dword	mem_open
	.dword	mem_get_initial_matrix
	.dword	gx_default_sync_output
	.dword	gx_default_output_page
	.dword	gx_default_close_device
	.dword	mem_true_map_rgb_color
	.dword	mem_true_map_color_rgb
	.dword	mem_true24_fill_rectangle
	.dword	gx_default_tile_rectangle
	.dword	mem_true24_copy_mono
	.dword	mem_true24_copy_color
	.dword	gx_default_draw_line
	.dword	gx_default_fill_trapezoid
	.dword	gx_default_tile_trapezoid
	.size	mem_true24_procs, 112

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"image(24)"
	.size	.L.str.3, 10

	.type	mem_true24_color_device,@object # @mem_true24_color_device
	.data
	.globl	mem_true24_color_device
	.p2align	3, 0x0
mem_true24_color_device:
	.word	200                             # 0xc8
	.space	4
	.dword	mem_true24_procs
	.dword	.L.str.3
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	1                               # 0x1
	.half	255                             # 0xff
	.space	2
	.word	24                              # 0x18
	.word	0                               # 0x0
	.word	0x3f800000                      # float 1
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x3f800000                      # float 1
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0                               # 0x0
	.space	4
	.dword	0
	.dword	0
	.dword	mem_no_fault_proc
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	0
	.size	mem_true24_color_device, 200

	.type	mem_true32_procs,@object        # @mem_true32_procs
	.globl	mem_true32_procs
	.p2align	3, 0x0
mem_true32_procs:
	.dword	mem_open
	.dword	mem_get_initial_matrix
	.dword	gx_default_sync_output
	.dword	gx_default_output_page
	.dword	gx_default_close_device
	.dword	mem_true_map_rgb_color
	.dword	mem_true_map_color_rgb
	.dword	mem_true32_fill_rectangle
	.dword	gx_default_tile_rectangle
	.dword	mem_true32_copy_mono
	.dword	mem_true32_copy_color
	.dword	gx_default_draw_line
	.dword	gx_default_fill_trapezoid
	.dword	gx_default_tile_trapezoid
	.size	mem_true32_procs, 112

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"image(32)"
	.size	.L.str.4, 10

	.type	mem_true32_color_device,@object # @mem_true32_color_device
	.data
	.globl	mem_true32_color_device
	.p2align	3, 0x0
mem_true32_color_device:
	.word	200                             # 0xc8
	.space	4
	.dword	mem_true32_procs
	.dword	.L.str.4
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0x3f800000                      # float 1
	.word	0x3f800000                      # float 1
	.word	1                               # 0x1
	.half	255                             # 0xff
	.space	2
	.word	32                              # 0x20
	.word	0                               # 0x0
	.word	0x3f800000                      # float 1
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x3f800000                      # float 1
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0x00000000                      # float 0
	.space	4
	.dword	0                               # 0x0
	.word	0                               # 0x0
	.space	4
	.dword	0
	.dword	0
	.dword	mem_no_fault_proc
	.word	0                               # 0x0
	.word	0                               # 0x0
	.dword	0
	.size	mem_true32_color_device, 200

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mem_open
	.addrsig_sym mem_get_initial_matrix
	.addrsig_sym mem_no_fault_proc
	.addrsig_sym gx_default_sync_output
	.addrsig_sym gx_default_output_page
	.addrsig_sym gx_default_close_device
	.addrsig_sym gx_default_map_rgb_color
	.addrsig_sym gx_default_map_color_rgb
	.addrsig_sym mem_mono_fill_rectangle
	.addrsig_sym gx_default_tile_rectangle
	.addrsig_sym mem_mono_copy_mono
	.addrsig_sym mem_mono_copy_color
	.addrsig_sym gx_default_draw_line
	.addrsig_sym gx_default_fill_trapezoid
	.addrsig_sym gx_default_tile_trapezoid
	.addrsig_sym mem_mapped_map_rgb_color
	.addrsig_sym mem_mapped_map_color_rgb
	.addrsig_sym mem_mapped_fill_rectangle
	.addrsig_sym mem_mapped_copy_mono
	.addrsig_sym mem_mapped_copy_color
	.addrsig_sym mem_true_map_rgb_color
	.addrsig_sym mem_true_map_color_rgb
	.addrsig_sym mem_true24_fill_rectangle
	.addrsig_sym mem_true24_copy_mono
	.addrsig_sym mem_true24_copy_color
	.addrsig_sym mem_true32_fill_rectangle
	.addrsig_sym mem_true32_copy_mono
	.addrsig_sym mem_true32_copy_color
	.addrsig_sym mem_mono_procs
	.addrsig_sym mem_mapped_procs
	.addrsig_sym mem_true24_procs
	.addrsig_sym mem_true32_procs
