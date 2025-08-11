	.file	"stepanov_vector.cpp"
	.text
	.globl	_Z13record_resultdPKc           # -- Begin function _Z13record_resultdPKc
	.p2align	5
	.type	_Z13record_resultdPKc,@function
_Z13record_resultdPKc:                  # @_Z13record_resultdPKc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(results)
	ld.d	$a2, $s2, %pc_lo12(results)
	pcalau12i	$s1, %pc_hi20(allocated_results)
	ld.w	$a1, $s1, %pc_lo12(allocated_results)
	move	$fp, $a0
	fmov.d	$fs0, $fa0
	pcalau12i	$s0, %pc_hi20(current_test)
	beqz	$a2, .LBB0_2
# %bb.1:                                # %entry
	ld.w	$a0, $s0, %pc_lo12(current_test)
	blt	$a0, $a1, .LBB0_4
.LBB0_2:                                # %if.then
	addi.w	$a0, $a1, 10
	st.w	$a0, $s1, %pc_lo12(allocated_results)
	slli.d	$a1, $a0, 4
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, %pc_lo12(results)
	beqz	$a0, .LBB0_5
# %bb.3:                                # %if.then.if.end5_crit_edge
	move	$a2, $a0
	ld.w	$a0, $s0, %pc_lo12(current_test)
.LBB0_4:                                # %if.end5
	alsl.d	$a1, $a0, $a2, 4
	slli.d	$a3, $a0, 4
	fstx.d	$fs0, $a2, $a3
	st.d	$fp, $a1, 8
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, %pc_lo12(current_test)
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_5:                                # %if.then3
	ld.w	$a1, $s1, %pc_lo12(allocated_results)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z13record_resultdPKc, .Lfunc_end0-_Z13record_resultdPKc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z9summarizePKciiii
.LCPI1_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	_Z9summarizePKciiii
	.p2align	5
	.type	_Z9summarizePKciiii,@function
_Z9summarizePKciiii:                    # @_Z9summarizePKciiii
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(current_test)
	ld.w	$s0, $s6, %pc_lo12(current_test)
	move	$s8, $a4
	move	$s2, $a2
	move	$s3, $a1
	move	$fp, $a0
	ori	$s5, $zero, 1
	pcalau12i	$s7, %pc_hi20(results)
	blt	$s0, $s5, .LBB1_3
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a0, $s7, %pc_lo12(results)
	addi.d	$s4, $a0, 8
	ori	$s1, $zero, 12
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	addi.d	$s0, $s0, -1
	addi.d	$s4, $s4, 16
	bnez	$s0, .LBB1_2
	b	.LBB1_4
.LBB1_3:
	ori	$s1, $zero, 12
.LBB1_4:                                # %for.end
	addi.w	$a1, $s1, -12
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a2, %pc_hi20(.L.str.2)
	addi.d	$s4, $a2, %pc_lo12(.L.str.2)
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(current_test)
	movgr2fr.d	$fs0, $zero
	blt	$a0, $s5, .LBB1_10
# %bb.5:                                # %for.body8.preheader
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s4, $zero
	move	$s0, $zero
	movgr2fr.w	$fa0, $s3
	movgr2fr.w	$fa1, $s2
	pcalau12i	$a0, %pc_hi20(.LCPI1_0)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI1_0)
	ffint.d.w	$fa0, $fa0
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa0, $fa1
	fdiv.d	$fs1, $fa0, $fa2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s2, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s3, $a0, %pc_lo12(.L.str.5)
	.p2align	4, , 16
.LBB1_6:                                # %for.body8
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $s7, %pc_lo12(results)
	add.d	$a0, $fp, $s8
	ld.d	$s5, $a0, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	fldx.d	$fa0, $fp, $s8
	fld.d	$fa1, $fp, 0
	sub.w	$a2, $s1, $a0
	fdiv.d	$fa2, $fs1, $fa0
	fdiv.d	$fa1, $fa0, $fa1
	movfr2gr.d	$a5, $fa0
	movfr2gr.d	$a6, $fa2
	movfr2gr.d	$a7, $fa1
	move	$a0, $s2
	move	$a1, $s4
	move	$a3, $s3
	move	$a4, $s5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(current_test)
	addi.d	$s0, $s0, 1
	addi.w	$s4, $s4, 1
	addi.d	$s8, $s8, 16
	blt	$s0, $a0, .LBB1_6
# %bb.7:                                # %for.cond35.preheader
	ori	$a1, $zero, 1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	blt	$a0, $a1, .LBB1_10
# %bb.8:                                # %for.body37.lr.ph
	ld.d	$a1, $s7, %pc_lo12(results)
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB1_9:                                # %for.body37
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB1_9
.LBB1_10:                               # %for.end43
	movfr2gr.d	$a2, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	beqz	$s8, .LBB1_15
# %bb.11:                               # %for.end43
	ld.w	$a0, $s6, %pc_lo12(current_test)
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB1_15
# %bb.12:                               # %for.body49.lr.ph
	ld.d	$a0, $s7, %pc_lo12(results)
	fld.d	$fs1, $a0, 0
	addi.d	$s0, $a0, 16
	movgr2fr.d	$fs0, $zero
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB1_13:                               # %for.body49
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $s0, 0
	fdiv.d	$fa0, $fa0, $fs1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, %pc_lo12(current_test)
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 16
	blt	$s1, $a0, .LBB1_13
# %bb.14:                               # %for.end60
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	movfr2gr.d	$a2, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB1_15:                               # %if.end66
	st.w	$zero, $s6, %pc_lo12(current_test)
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.Lfunc_end1:
	.size	_Z9summarizePKciiii, .Lfunc_end1-_Z9summarizePKciiii
                                        # -- End function
	.globl	_Z17summarize_simplefP8_IO_FILEPKc # -- Begin function _Z17summarize_simplefP8_IO_FILEPKc
	.p2align	5
	.type	_Z17summarize_simplefP8_IO_FILEPKc,@function
_Z17summarize_simplefP8_IO_FILEPKc:     # @_Z17summarize_simplefP8_IO_FILEPKc
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(current_test)
	ld.w	$fp, $s5, %pc_lo12(current_test)
	move	$s0, $a1
	move	$s7, $a0
	ori	$s3, $zero, 1
	pcalau12i	$s4, %pc_hi20(results)
	blt	$fp, $s3, .LBB2_3
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a0, $s4, %pc_lo12(results)
	addi.d	$s2, $a0, 8
	ori	$s1, $zero, 12
	.p2align	4, , 16
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	slt	$a1, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s1, $a1, $a0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 16
	bnez	$fp, .LBB2_2
	b	.LBB2_4
.LBB2_3:
	ori	$s1, $zero, 12
.LBB2_4:                                # %for.end
	addi.w	$a2, $s1, -12
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	move	$a0, $s7
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s7
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(current_test)
	movgr2fr.d	$fs0, $zero
	blt	$a0, $s3, .LBB2_10
# %bb.5:                                # %for.body6.preheader
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	move	$s8, $zero
	move	$s2, $zero
	move	$fp, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s3, $a0, %pc_lo12(.L.str.5)
	.p2align	4, , 16
.LBB2_6:                                # %for.body6
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s6, $s4, %pc_lo12(results)
	add.d	$a0, $s6, $s8
	move	$s0, $s5
	ld.d	$s5, $a0, 8
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ldx.d	$a6, $s6, $s8
	sub.w	$a3, $s1, $a0
	move	$a0, $s7
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s2
	move	$a4, $s3
	move	$a5, $s5
	move	$s5, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(current_test)
	addi.d	$fp, $fp, 1
	addi.w	$s2, $s2, 1
	addi.d	$s8, $s8, 16
	blt	$fp, $a0, .LBB2_6
# %bb.7:                                # %for.cond23.preheader
	ori	$a1, $zero, 1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB2_10
# %bb.8:                                # %for.body25.lr.ph
	ld.d	$a1, $s4, %pc_lo12(results)
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB2_9:                                # %for.body25
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a1, 0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 16
	bnez	$a0, .LBB2_9
.LBB2_10:                               # %for.end31
	movfr2gr.d	$a3, $fs0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s7
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	st.w	$zero, $s5, %pc_lo12(current_test)
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	_Z17summarize_simplefP8_IO_FILEPKc, .Lfunc_end2-_Z17summarize_simplefP8_IO_FILEPKc
                                        # -- End function
	.globl	_Z11start_timerv                # -- Begin function _Z11start_timerv
	.p2align	5
	.type	_Z11start_timerv,@function
_Z11start_timerv:                       # @_Z11start_timerv
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(start_time)
	st.d	$a0, $a1, %pc_lo12(start_time)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_Z11start_timerv, .Lfunc_end3-_Z11start_timerv
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z5timerv
.LCPI4_0:
	.dword	0x412e848000000000              # double 1.0E+6
	.text
	.globl	_Z5timerv
	.p2align	5
	.type	_Z5timerv,@function
_Z5timerv:                              # @_Z5timerv
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(clock)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(start_time)
	ld.d	$a1, $a1, %pc_lo12(start_time)
	pcalau12i	$a2, %pc_hi20(end_time)
	pcalau12i	$a3, %pc_hi20(.LCPI4_0)
	fld.d	$fa0, $a3, %pc_lo12(.LCPI4_0)
	sub.d	$a1, $a0, $a1
	movgr2fr.d	$fa1, $a1
	ffint.d.l	$fa1, $fa1
	fdiv.d	$fa0, $fa1, $fa0
	st.d	$a0, $a2, %pc_lo12(end_time)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	_Z5timerv, .Lfunc_end4-_Z5timerv
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI5_0:
	.dword	0x409f400000000000              # double 2000
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 264                  # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	move	$s0, $a0
	ori	$s1, $zero, 2
	pcalau12i	$a0, %pc_hi20(iterations)
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(init_value)
	blt	$s0, $s1, .LBB5_3
# %bb.1:                                # %if.end
	move	$fp, $a1
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(iterations)
	beq	$s0, $s1, .LBB5_3
# %bb.2:                                # %if.then2
	ld.d	$a0, $fp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s5, %pc_lo12(init_value)
.LBB5_3:                                # %if.end5
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.w	$a0, $a0, 123
	pcaddu18i	$ra, %call36(srand)
	jirl	$ra, $ra, 0
	pcalau12i	$s7, %pc_hi20(dpb)
	ld.d	$a4, $s7, %pc_lo12(dpb)
	pcalau12i	$a0, %pc_hi20(dpe)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a0, %pc_lo12(dpe)
	beq	$a4, $a0, .LBB5_10
# %bb.4:                                # %while.body.i.preheader
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	sub.d	$a1, $a0, $a4
	addi.d	$a1, $a1, -8
	ori	$a2, $zero, 56
	bgeu	$a1, $a2, .LBB5_6
# %bb.5:
	move	$a1, $a4
	b	.LBB5_9
.LBB5_6:                                # %vector.ph
	srli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 61, 3
	slli.d	$a3, $a1, 3
	slli.d	$a1, $a1, 6
	add.d	$a1, $a4, $a1
	xvreplve0.d	$xr1, $xr0
	addi.d	$a4, $a4, 32
	move	$a5, $a3
	.p2align	4, , 16
.LBB5_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr1, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB5_7
# %bb.8:                                # %middle.block
	beq	$a2, $a3, .LBB5_10
	.p2align	4, , 16
.LBB5_9:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a1, $a2
	bne	$a2, $a0, .LBB5_9
.LBB5_10:                               # %_ZN9benchmark4fillIPddEEvT_S2_T0_.exit
	st.d	$zero, $sp, 224
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 160                  # 16-byte Folded Spill
	vst	$vr0, $sp, 208
.Ltmp0:                                 # EH_LABEL
	addi.d	$a0, $sp, 208
	ori	$a1, $zero, 2000
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.11:                               # %invoke.cont
	ld.d	$s2, $sp, 208
	ld.d	$s3, $sp, 216
	beq	$s2, $s3, .LBB5_17
# %bb.12:                               # %while.body.i39.preheader
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	sub.d	$a0, $s3, $s2
	addi.d	$a1, $a0, -8
	ori	$a2, $zero, 56
	move	$a0, $s2
	bltu	$a1, $a2, .LBB5_16
# %bb.13:                               # %vector.ph1084
	srli.d	$a0, $a1, 3
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 61, 3
	slli.d	$a2, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a0, $s2, $a0
	xvreplve0.d	$xr1, $xr0
	addi.d	$a3, $s2, 32
	move	$a4, $a2
	.p2align	4, , 16
.LBB5_14:                               # %vector.body1089
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr1, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_14
# %bb.15:                               # %middle.block1094
	beq	$a1, $a2, .LBB5_17
	.p2align	4, , 16
.LBB5_16:                               # %while.body.i39
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	bne	$a1, $s3, .LBB5_16
.LBB5_17:                               # %_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_.exit
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	ori	$a1, $zero, 1
	pcalau12i	$a2, %pc_hi20(current_test)
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(rdpb)
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(rdpe)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	blt	$a0, $a1, .LBB5_89
# %bb.18:                               # %for.body.lr.ph.i
	ld.d	$s1, $s7, %pc_lo12(dpb)
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(dpe)
	pcalau12i	$s0, %pc_hi20(.LCPI5_0)
	beq	$s1, $s4, .LBB5_25
# %bb.19:                               # %for.body.i.preheader
	move	$s6, $zero
	fld.d	$fs0, $s0, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_21
	.p2align	4, , 16
.LBB5_20:                               # %_Z9check_sumd.exit.i
                                        #   in Loop: Header=BB5_21 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a0, .LBB5_29
.LBB5_21:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_22 Depth 2
	fmov.d	$fa0, $fs1
	move	$a1, $s1
	.p2align	4, , 16
.LBB5_22:                               # %while.body.i.i
                                        #   Parent Loop BB5_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_22
# %bb.23:                               # %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i
                                        #   in Loop: Header=BB5_21 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_20
# %bb.24:                               # %if.then.i.i
                                        #   in Loop: Header=BB5_21 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_20
.LBB5_25:                               # %for.body.us.preheader.i
	move	$s1, $zero
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	fld.d	$fs0, $s0, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_26:                               # %_Z9check_sumd.exit.us.i
                                        #   in Loop: Header=BB5_27 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_29
.LBB5_27:                               # %for.body.us.i
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa0, $fs0
	fcmp.ceq.d	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB5_26
# %bb.28:                               # %if.then.i.us.i
                                        #   in Loop: Header=BB5_27 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_26
.LBB5_29:                               # %invoke.cont32
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_89
# %bb.30:                               # %for.body.lr.ph.i54
	ld.d	$s1, $sp, 208
	ld.d	$s4, $sp, 216
	beq	$s1, $s4, .LBB5_37
# %bb.31:                               # %for.body.i55.preheader
	move	$s6, $zero
	fld.d	$fs0, $s0, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_33
	.p2align	4, , 16
.LBB5_32:                               # %_Z9check_sumd.exit.i62
                                        #   in Loop: Header=BB5_33 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a0, .LBB5_41
.LBB5_33:                               # %for.body.i55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_34 Depth 2
	fmov.d	$fa0, $fs1
	move	$a1, $s1
	.p2align	4, , 16
.LBB5_34:                               # %while.body.i.i57
                                        #   Parent Loop BB5_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_34
# %bb.35:                               # %_ZN9benchmark10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEET0_T_S9_S8_.exit.loopexit.i
                                        #   in Loop: Header=BB5_33 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_32
# %bb.36:                               # %if.then.i.i65
                                        #   in Loop: Header=BB5_33 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_32
.LBB5_37:                               # %for.body.us.preheader.i68
	move	$s1, $zero
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	fld.d	$fs0, $s0, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_39
	.p2align	4, , 16
.LBB5_38:                               # %_Z9check_sumd.exit.us.i74
                                        #   in Loop: Header=BB5_39 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_41
.LBB5_39:                               # %for.body.us.i70
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa1, $fa0, $fs0
	fcmp.ceq.d	$fcc0, $fa1, $fs1
	bcnez	$fcc0, .LBB5_38
# %bb.40:                               # %if.then.i.us.i77
                                        #   in Loop: Header=BB5_39 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa0, $s5, %pc_lo12(init_value)
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_38
.LBB5_41:                               # %invoke.cont45
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_89
# %bb.42:                               # %for.body.i81.preheader
	move	$s1, $zero
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(rdpb)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $a1, %pc_lo12(rdpe)
	fld.d	$fs0, $s0, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_44
	.p2align	4, , 16
.LBB5_43:                               # %_Z9check_sumd.exit.i87
                                        #   in Loop: Header=BB5_44 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_49
.LBB5_44:                               # %for.body.i81
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_46 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s4, $s6, .LBB5_47
# %bb.45:                               # %while.body.i.i82.preheader
                                        #   in Loop: Header=BB5_44 Depth=1
	move	$a1, $s4
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_46:                               # %while.body.i.i82
                                        #   Parent Loop BB5_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a2, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s6, .LBB5_46
.LBB5_47:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIPdEdEET0_T_S5_S4_.exit.i
                                        #   in Loop: Header=BB5_44 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_43
# %bb.48:                               # %if.then.i.i90
                                        #   in Loop: Header=BB5_44 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_43
.LBB5_49:                               # %invoke.cont48
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_89
# %bb.50:                               # %for.body.i95.preheader
	move	$s0, $zero
	ld.d	$s1, $sp, 216
	ld.d	$s4, $sp, 208
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_52
	.p2align	4, , 16
.LBB5_51:                               # %_Z9check_sumd.exit.i102
                                        #   in Loop: Header=BB5_52 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_57
.LBB5_52:                               # %for.body.i95
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_54 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s1, $s4, .LBB5_55
# %bb.53:                               # %while.body.i.i97.preheader
                                        #   in Loop: Header=BB5_52 Depth=1
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_54:                               # %while.body.i.i97
                                        #   Parent Loop BB5_52 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a2, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_54
.LBB5_55:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEET0_T_SB_SA_.exit.i
                                        #   in Loop: Header=BB5_52 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_51
# %bb.56:                               # %if.then.i.i105
                                        #   in Loop: Header=BB5_52 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_51
.LBB5_57:                               # %invoke.cont51
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_89
# %bb.58:                               # %for.body.i109.preheader
	move	$s0, $zero
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_60
	.p2align	4, , 16
.LBB5_59:                               # %_Z9check_sumd.exit.i123
                                        #   in Loop: Header=BB5_60 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_65
.LBB5_60:                               # %for.body.i109
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_62 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s2, $s3, .LBB5_63
# %bb.61:                               # %while.body.i.i113.preheader
                                        #   in Loop: Header=BB5_60 Depth=1
	move	$a1, $s3
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_62:                               # %while.body.i.i113
                                        #   Parent Loop BB5_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a2, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s2, .LBB5_62
.LBB5_63:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEET0_T_SB_SA_.exit.i119
                                        #   in Loop: Header=BB5_60 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_59
# %bb.64:                               # %if.then.i.i126
                                        #   in Loop: Header=BB5_60 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_59
.LBB5_65:                               # %invoke.cont54
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_89
# %bb.66:                               # %for.body.i133.preheader
	move	$s0, $zero
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$s1, $a1, %pc_lo12(rrdpb+8)
	pcalau12i	$a1, %pc_hi20(rrdpe+8)
	ld.d	$s4, $a1, %pc_lo12(rrdpe+8)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_68
	.p2align	4, , 16
.LBB5_67:                               # %_Z9check_sumd.exit.i141
                                        #   in Loop: Header=BB5_68 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_73
.LBB5_68:                               # %for.body.i133
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_70 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s1, $s4, .LBB5_71
# %bb.69:                               # %while.body.i.i134.preheader
                                        #   in Loop: Header=BB5_68 Depth=1
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_70:                               # %while.body.i.i134
                                        #   Parent Loop BB5_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_70
.LBB5_71:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_.exit.i
                                        #   in Loop: Header=BB5_68 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_67
# %bb.72:                               # %if.then.i.i144
                                        #   in Loop: Header=BB5_68 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_67
.LBB5_73:                               # %invoke.cont57
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_89
# %bb.74:                               # %for.body.i154.preheader
	move	$s0, $zero
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_76
	.p2align	4, , 16
.LBB5_75:                               # %_Z9check_sumd.exit.i163
                                        #   in Loop: Header=BB5_76 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_81
.LBB5_76:                               # %for.body.i154
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_78 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s2, $s3, .LBB5_79
# %bb.77:                               # %while.body.i.i157.preheader
                                        #   in Loop: Header=BB5_76 Depth=1
	move	$a1, $s2
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_78:                               # %while.body.i.i157
                                        #   Parent Loop BB5_76 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s3, .LBB5_78
.LBB5_79:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i
                                        #   in Loop: Header=BB5_76 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_75
# %bb.80:                               # %if.then.i.i166
                                        #   in Loop: Header=BB5_76 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_75
.LBB5_81:                               # %invoke.cont60
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_89
# %bb.82:                               # %for.body.i177.preheader
	move	$s0, $zero
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$fp, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_84
	.p2align	4, , 16
.LBB5_83:                               # %_Z9check_sumd.exit.i192
                                        #   in Loop: Header=BB5_84 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_89
.LBB5_84:                               # %for.body.i177
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_86 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s2, $s3, .LBB5_87
# %bb.85:                               # %while.body.i.i181.preheader
                                        #   in Loop: Header=BB5_84 Depth=1
	move	$a1, $s2
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_86:                               # %while.body.i.i181
                                        #   Parent Loop BB5_84 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s3, .LBB5_86
.LBB5_87:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i188
                                        #   in Loop: Header=BB5_84 Depth=1
	fld.d	$fa1, $s5, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_83
# %bb.88:                               # %if.then.i.i195
                                        #   in Loop: Header=BB5_84 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	b	.LBB5_83
.LBB5_89:                               # %invoke.cont63
	lu12i.w	$a1, 67108
	ori	$a1, $a1, 3539
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 38
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.w	$a0, $a1, %pc_lo12(iterations)
	st.d	$zero, $sp, 200
	vld	$vr0, $sp, 160                  # 16-byte Folded Reload
	vst	$vr0, $sp, 184
.Ltmp3:                                 # EH_LABEL
	addi.d	$a0, $sp, 184
	ori	$a1, $zero, 2000
	pcaddu18i	$ra, %call36(_ZNSt6vectorIdSaIdEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.90:                               # %invoke.cont65
	pcalau12i	$a0, %pc_hi20(dMpb)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$fp, $a0, %pc_lo12(dMpb)
	pcalau12i	$a0, %pc_hi20(dMpe)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s0, $a0, %pc_lo12(dMpe)
	beq	$fp, $s0, .LBB5_93
	.p2align	4, , 16
.LBB5_91:                               # %while.body.i217
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.d	$a0, $fp, 8
	fst.d	$fa0, $fp, 0
	move	$fp, $a0
	bne	$a0, $s0, .LBB5_91
# %bb.92:                               # %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $a0, %pc_lo12(dMpb)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $a0, %pc_lo12(dMpe)
.LBB5_93:                               # %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit
	ld.d	$s5, $sp, 184
	beq	$fp, $s0, .LBB5_100
# %bb.94:                               # %while.body.i226.preheader
	sub.d	$a0, $s0, $fp
	addi.d	$a2, $a0, -8
	ori	$a3, $zero, 56
	move	$a0, $fp
	move	$a1, $s5
	bltu	$a2, $a3, .LBB5_99
# %bb.95:                               # %while.body.i226.preheader
	sub.d	$a3, $s5, $fp
	ori	$a4, $zero, 64
	move	$a0, $fp
	move	$a1, $s5
	bltu	$a3, $a4, .LBB5_99
# %bb.96:                               # %vector.ph1099
	srli.d	$a0, $a2, 3
	addi.d	$a2, $a0, 1
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$a3, $a0, 3
	slli.d	$a1, $a0, 6
	add.d	$a0, $fp, $a1
	add.d	$a1, $s5, $a1
	addi.d	$a4, $s5, 32
	addi.d	$a5, $fp, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB5_97:                               # %vector.body1102
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB5_97
# %bb.98:                               # %middle.block1110
	beq	$a2, $a3, .LBB5_100
	.p2align	4, , 16
.LBB5_99:                               # %while.body.i226
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s0, .LBB5_99
.LBB5_100:                              # %_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_.exit
	ld.d	$a0, $sp, 192
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a2, $s7, %pc_lo12(dpb)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(dpe)
.Ltmp6:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a4, $a0, %pc_lo12(.L.str.26)
	movgr2fr.d	$fa0, $zero
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp7:                                 # EH_LABEL
# %bb.101:                              # %invoke.cont91
	ld.d	$a0, $sp, 184
	ld.d	$a1, $sp, 192
	ld.d	$a2, $sp, 208
	ld.d	$a3, $sp, 216
.Ltmp8:                                 # EH_LABEL
	pcalau12i	$a4, %pc_hi20(.L.str.27)
	addi.d	$a4, $a4, %pc_lo12(.L.str.27)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp9:                                 # EH_LABEL
# %bb.102:                              # %invoke.cont116
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
	pcalau12i	$a1, %pc_hi20(rdMpb)
	ori	$a0, $zero, 1
	pcalau12i	$a2, %pc_hi20(rdMpe)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	blt	$a4, $a0, .LBB5_225
# %bb.103:                              # %for.body.i244.preheader
	move	$s0, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(rdpb)
	ld.d	$s4, $a1, %pc_lo12(rdMpb)
	ld.d	$s6, $a2, %pc_lo12(rdMpe)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(rdpe)
	addi.d	$fp, $s1, -8
	sub.d	$a0, $s4, $s1
	sub.d	$a1, $s4, $s6
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$s8, $a2
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$a1, $a0, 2
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	sub.d	$a1, $s1, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	sub.d	$a0, $s4, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s4, -32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $s1, -32
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB5_106
	.p2align	4, , 16
.LBB5_104:                              # %if.then.i.i249
                                        #   in Loop: Header=BB5_106 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB5_105:                              # %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i
                                        #   in Loop: Header=BB5_106 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a4, .LBB5_123
.LBB5_106:                              # %for.body.i244
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_109 Depth 2
                                        #     Child Loop BB5_112 Depth 2
                                        #     Child Loop BB5_116 Depth 2
                                        #       Child Loop BB5_117 Depth 3
                                        #     Child Loop BB5_121 Depth 2
	beq	$s4, $s6, .LBB5_113
# %bb.107:                              # %while.body.i.i245.preheader
                                        #   in Loop: Header=BB5_106 Depth=1
	move	$a1, $s1
	move	$a0, $s4
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_111
# %bb.108:                              # %vector.body1121.preheader
                                        #   in Loop: Header=BB5_106 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_109:                              # %vector.body1121
                                        #   Parent Loop BB5_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -32
	addi.d	$a0, $a0, -32
	bnez	$a2, .LBB5_109
# %bb.110:                              # %middle.block1130
                                        #   in Loop: Header=BB5_106 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	beq	$s8, $a2, .LBB5_113
.LBB5_111:                              # %while.body.i.i245.preheader1532
                                        #   in Loop: Header=BB5_106 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB5_112:                              # %while.body.i.i245
                                        #   Parent Loop BB5_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, -8
	addi.d	$a2, $a0, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a0, $a2
	bne	$a2, $s6, .LBB5_112
.LBB5_113:                              # %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i
                                        #   in Loop: Header=BB5_106 Depth=1
	beq	$fp, $s7, .LBB5_120
# %bb.114:                              # %while.body.i3.i.preheader
                                        #   in Loop: Header=BB5_106 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $fp
	b	.LBB5_116
	.p2align	4, , 16
.LBB5_115:                              # %land.rhs.i.i.for.end.i.i_crit_edge
                                        #   in Loop: Header=BB5_116 Depth=2
	add.d	$a2, $s1, $a2
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	beq	$a1, $s7, .LBB5_120
.LBB5_116:                              # %while.body.i3.i
                                        #   Parent Loop BB5_106 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_117 Depth 3
	fld.d	$fa0, $a1, -8
	addi.d	$a1, $a1, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_117:                              # %land.rhs.i.i
                                        #   Parent Loop BB5_106 Depth=1
                                        #     Parent Loop BB5_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s1, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_115
# %bb.118:                              # %for.body.i.i
                                        #   in Loop: Header=BB5_117 Depth=3
	add.d	$a3, $s1, $a2
	addi.d	$a2, $a2, 8
	fst.d	$fa1, $a3, -8
	bnez	$a2, .LBB5_117
# %bb.119:                              #   in Loop: Header=BB5_116 Depth=2
	move	$a2, $s1
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	bne	$a1, $s7, .LBB5_116
.LBB5_120:                              # %while.cond.i.i.i.preheader
                                        #   in Loop: Header=BB5_106 Depth=1
	move	$a0, $fp
	.p2align	4, , 16
.LBB5_121:                              # %while.cond.i.i.i
                                        #   Parent Loop BB5_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s7, .LBB5_105
# %bb.122:                              # %while.body.i.i.i
                                        #   in Loop: Header=BB5_121 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_121
	b	.LBB5_104
.LBB5_123:                              # %invoke.cont121
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB5_225
# %bb.124:                              # %for.body.i256.preheader
	move	$s0, $zero
	ld.d	$s1, $sp, 216
	ld.d	$s4, $sp, 192
	ld.d	$s6, $sp, 184
	ld.d	$s7, $sp, 208
	addi.d	$fp, $s1, -8
	sub.d	$a0, $s4, $s1
	sub.d	$a1, $s4, $s6
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$s8, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s8, 61, 2
	slli.d	$a1, $a0, 2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	sub.d	$a1, $s1, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	sub.d	$a0, $s4, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s4, -32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $s1, -32
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB5_127
	.p2align	4, , 16
.LBB5_125:                              # %if.then.i.i272
                                        #   in Loop: Header=BB5_127 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB5_126:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i
                                        #   in Loop: Header=BB5_127 Depth=1
	addi.w	$s0, $s0, 1
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	bge	$s0, $a4, .LBB5_144
.LBB5_127:                              # %for.body.i256
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_130 Depth 2
                                        #     Child Loop BB5_133 Depth 2
                                        #     Child Loop BB5_137 Depth 2
                                        #       Child Loop BB5_138 Depth 3
                                        #     Child Loop BB5_142 Depth 2
	beq	$s4, $s6, .LBB5_134
# %bb.128:                              # %while.body.i.i259.preheader
                                        #   in Loop: Header=BB5_127 Depth=1
	move	$a1, $s1
	move	$a0, $s4
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_132
# %bb.129:                              # %vector.body1141.preheader
                                        #   in Loop: Header=BB5_127 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_130:                              # %vector.body1141
                                        #   Parent Loop BB5_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -32
	addi.d	$a0, $a0, -32
	bnez	$a2, .LBB5_130
# %bb.131:                              # %middle.block1151
                                        #   in Loop: Header=BB5_127 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	beq	$s8, $a2, .LBB5_134
.LBB5_132:                              # %while.body.i.i259.preheader1531
                                        #   in Loop: Header=BB5_127 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB5_133:                              # %while.body.i.i259
                                        #   Parent Loop BB5_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, -8
	addi.d	$a2, $a0, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a0, $a2
	bne	$a2, $s6, .LBB5_133
.LBB5_134:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i
                                        #   in Loop: Header=BB5_127 Depth=1
	beq	$fp, $s7, .LBB5_141
# %bb.135:                              # %land.rhs.preheader.i.i.preheader
                                        #   in Loop: Header=BB5_127 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$a1, $fp
	b	.LBB5_137
	.p2align	4, , 16
.LBB5_136:                              # %land.rhs.i.i264.for.end.i.i267_crit_edge
                                        #   in Loop: Header=BB5_137 Depth=2
	add.d	$a2, $s1, $a2
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	beq	$a1, $s7, .LBB5_141
.LBB5_137:                              # %land.rhs.preheader.i.i
                                        #   Parent Loop BB5_127 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_138 Depth 3
	fld.d	$fa0, $a1, -8
	addi.d	$a1, $a1, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_138:                              # %land.rhs.i.i264
                                        #   Parent Loop BB5_127 Depth=1
                                        #     Parent Loop BB5_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s1, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_136
# %bb.139:                              # %for.body.i.i277
                                        #   in Loop: Header=BB5_138 Depth=3
	add.d	$a3, $s1, $a2
	addi.d	$a2, $a2, 8
	fst.d	$fa1, $a3, -8
	bnez	$a2, .LBB5_138
# %bb.140:                              #   in Loop: Header=BB5_137 Depth=2
	move	$a2, $s1
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	bne	$a1, $s7, .LBB5_137
.LBB5_141:                              # %while.cond.i.i.i268.preheader
                                        #   in Loop: Header=BB5_127 Depth=1
	move	$a0, $fp
	.p2align	4, , 16
.LBB5_142:                              # %while.cond.i.i.i268
                                        #   Parent Loop BB5_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s7, .LBB5_126
# %bb.143:                              # %while.body.i.i.i270
                                        #   in Loop: Header=BB5_142 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_142
	b	.LBB5_125
.LBB5_144:                              # %invoke.cont126
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB5_225
# %bb.145:                              # %for.body.i279.preheader
	move	$s0, $zero
	addi.d	$s1, $s3, -8
	sub.d	$a0, $a5, $s3
	sub.d	$a1, $a5, $s5
	addi.d	$a3, $a1, -8
	srli.d	$a1, $a3, 3
	addi.d	$a2, $a1, 1
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	sltui	$a1, $a3, 24
	sltui	$a0, $a0, 32
	or	$s4, $a1, $a0
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s6, $a0, 2
	slli.d	$a0, $a0, 5
	sub.d	$s8, $s3, $a0
	sub.d	$a0, $a5, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $a5, -32
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $s3, -32
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	addi.w	$s7, $zero, -8
	b	.LBB5_148
	.p2align	4, , 16
.LBB5_146:                              # %if.then.i.i311
                                        #   in Loop: Header=BB5_148 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB5_147:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i314
                                        #   in Loop: Header=BB5_148 Depth=1
	addi.w	$s0, $s0, 1
	bge	$s0, $a4, .LBB5_165
.LBB5_148:                              # %for.body.i279
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_151 Depth 2
                                        #     Child Loop BB5_154 Depth 2
                                        #     Child Loop BB5_158 Depth 2
                                        #       Child Loop BB5_159 Depth 3
                                        #     Child Loop BB5_163 Depth 2
	beq	$a5, $s5, .LBB5_155
# %bb.149:                              # %while.body.i.i283.preheader
                                        #   in Loop: Header=BB5_148 Depth=1
	move	$a1, $s3
	move	$a0, $a5
	bnez	$s4, .LBB5_153
# %bb.150:                              # %vector.body1162.preheader
                                        #   in Loop: Header=BB5_148 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	move	$a2, $s6
	.p2align	4, , 16
.LBB5_151:                              # %vector.body1162
                                        #   Parent Loop BB5_148 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -32
	addi.d	$a0, $a0, -32
	bnez	$a2, .LBB5_151
# %bb.152:                              # %middle.block1172
                                        #   in Loop: Header=BB5_148 Depth=1
	move	$a1, $s8
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $s6, .LBB5_155
.LBB5_153:                              # %while.body.i.i283.preheader1530
                                        #   in Loop: Header=BB5_148 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB5_154:                              # %while.body.i.i283
                                        #   Parent Loop BB5_148 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, -8
	addi.d	$a2, $a0, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a0, $a2
	bne	$a2, $s5, .LBB5_154
.LBB5_155:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i289
                                        #   in Loop: Header=BB5_148 Depth=1
	beq	$s1, $s2, .LBB5_162
# %bb.156:                              # %land.rhs.preheader.i.i292.preheader
                                        #   in Loop: Header=BB5_148 Depth=1
	move	$a0, $s7
	move	$a1, $s1
	b	.LBB5_158
	.p2align	4, , 16
.LBB5_157:                              # %land.rhs.i.i295.for.end.i.i298_crit_edge
                                        #   in Loop: Header=BB5_158 Depth=2
	add.d	$a2, $s3, $a2
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	beq	$a1, $s2, .LBB5_162
.LBB5_158:                              # %land.rhs.preheader.i.i292
                                        #   Parent Loop BB5_148 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_159 Depth 3
	fld.d	$fa0, $a1, -8
	addi.d	$a1, $a1, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_159:                              # %land.rhs.i.i295
                                        #   Parent Loop BB5_148 Depth=1
                                        #     Parent Loop BB5_158 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s3, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_157
# %bb.160:                              # %for.body.i.i317
                                        #   in Loop: Header=BB5_159 Depth=3
	add.d	$a3, $s3, $a2
	addi.d	$a2, $a2, 8
	fst.d	$fa1, $a3, -8
	bnez	$a2, .LBB5_159
# %bb.161:                              #   in Loop: Header=BB5_158 Depth=2
	move	$a2, $s3
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	bne	$a1, $s2, .LBB5_158
.LBB5_162:                              # %while.cond.i.i.i303.preheader
                                        #   in Loop: Header=BB5_148 Depth=1
	move	$a0, $s1
	.p2align	4, , 16
.LBB5_163:                              # %while.cond.i.i.i303
                                        #   Parent Loop BB5_148 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s2, .LBB5_147
# %bb.164:                              # %while.body.i.i.i307
                                        #   in Loop: Header=BB5_163 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_163
	b	.LBB5_146
.LBB5_165:                              # %invoke.cont131
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB5_225
# %bb.166:                              # %for.body.i329.preheader
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(rrdMpb+8)
	ld.d	$s8, $a0, %pc_lo12(rrdMpb+8)
	pcalau12i	$a0, %pc_hi20(rrdMpe+8)
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$fp, $a1, %pc_lo12(rrdpb+8)
	ld.d	$s4, $a0, %pc_lo12(rrdMpe+8)
	pcalau12i	$a0, %pc_hi20(rrdpe+8)
	ld.d	$s1, $a0, %pc_lo12(rrdpe+8)
	addi.d	$a7, $fp, 8
	sub.d	$a0, $fp, $s8
	sub.d	$a1, $s4, $s8
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$s7, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $fp, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	add.d	$a0, $s8, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s8, 32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 32
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.w	$s6, $zero, -8
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	b	.LBB5_169
	.p2align	4, , 16
.LBB5_167:                              # %if.then.i.i343
                                        #   in Loop: Header=BB5_169 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$s5, $a7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a7, $s5
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB5_168:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i
                                        #   in Loop: Header=BB5_169 Depth=1
	addi.w	$s0, $s0, 1
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	bge	$s0, $a4, .LBB5_185
.LBB5_169:                              # %for.body.i329
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_172 Depth 2
                                        #     Child Loop BB5_174 Depth 2
                                        #     Child Loop BB5_178 Depth 2
                                        #       Child Loop BB5_179 Depth 3
                                        #     Child Loop BB5_183 Depth 2
	beq	$s8, $s4, .LBB5_175
# %bb.170:                              # %while.body.i.i331.preheader
                                        #   in Loop: Header=BB5_169 Depth=1
	move	$a0, $fp
	move	$a1, $s8
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_174
# %bb.171:                              # %vector.body1183.preheader
                                        #   in Loop: Header=BB5_169 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_172:                              # %vector.body1183
                                        #   Parent Loop BB5_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_172
# %bb.173:                              # %middle.block1192
                                        #   in Loop: Header=BB5_169 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$a2, $s7, .LBB5_175
	.p2align	4, , 16
.LBB5_174:                              # %while.body.i.i331
                                        #   Parent Loop BB5_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_174
.LBB5_175:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i
                                        #   in Loop: Header=BB5_169 Depth=1
	beq	$a7, $s1, .LBB5_182
# %bb.176:                              # %while.body.i11.i.preheader
                                        #   in Loop: Header=BB5_169 Depth=1
	move	$a0, $zero
	move	$a1, $a7
	b	.LBB5_178
	.p2align	4, , 16
.LBB5_177:                              # %land.rhs.i.i336.for.end.i.i338_crit_edge
                                        #   in Loop: Header=BB5_178 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $s1, .LBB5_182
.LBB5_178:                              # %while.body.i11.i
                                        #   Parent Loop BB5_169 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_179 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_179:                              # %land.rhs.i.i336
                                        #   Parent Loop BB5_169 Depth=1
                                        #     Parent Loop BB5_178 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $fp, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $fp, $a2
	bcnez	$fcc0, .LBB5_177
# %bb.180:                              # %for.body.i.i348
                                        #   in Loop: Header=BB5_179 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s6, .LBB5_179
# %bb.181:                              #   in Loop: Header=BB5_178 Depth=2
	move	$a2, $fp
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $s1, .LBB5_178
.LBB5_182:                              # %while.cond.i.i.i339.preheader
                                        #   in Loop: Header=BB5_169 Depth=1
	move	$a0, $a7
	.p2align	4, , 16
.LBB5_183:                              # %while.cond.i.i.i339
                                        #   Parent Loop BB5_169 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s1, .LBB5_168
# %bb.184:                              # %while.body.i.i.i341
                                        #   in Loop: Header=BB5_183 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_183
	b	.LBB5_167
.LBB5_185:                              # %invoke.cont136
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB5_225
# %bb.186:                              # %for.body.i363.preheader
	move	$s1, $zero
	addi.d	$s7, $s2, 8
	sub.d	$a0, $s2, $s5
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s0, $a1, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 61, 3
	slli.d	$s4, $a0, 3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 6
	add.d	$s8, $s2, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $s5, 32
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_189
	.p2align	4, , 16
.LBB5_187:                              # %if.then.i.i382
                                        #   in Loop: Header=BB5_189 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB5_188:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i
                                        #   in Loop: Header=BB5_189 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a4, .LBB5_205
.LBB5_189:                              # %for.body.i363
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_192 Depth 2
                                        #     Child Loop BB5_194 Depth 2
                                        #     Child Loop BB5_198 Depth 2
                                        #       Child Loop BB5_199 Depth 3
                                        #     Child Loop BB5_203 Depth 2
	beq	$a5, $s5, .LBB5_195
# %bb.190:                              # %while.body.i.i366.preheader
                                        #   in Loop: Header=BB5_189 Depth=1
	move	$a0, $s2
	move	$a1, $s5
	bnez	$s0, .LBB5_194
# %bb.191:                              # %vector.body1203.preheader
                                        #   in Loop: Header=BB5_189 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_192:                              # %vector.body1203
                                        #   Parent Loop BB5_189 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_192
# %bb.193:                              # %middle.block1212
                                        #   in Loop: Header=BB5_189 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $s4, .LBB5_195
	.p2align	4, , 16
.LBB5_194:                              # %while.body.i.i366
                                        #   Parent Loop BB5_189 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a5, .LBB5_194
.LBB5_195:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i
                                        #   in Loop: Header=BB5_189 Depth=1
	beq	$s3, $s7, .LBB5_202
# %bb.196:                              # %while.body.i11.i371.preheader
                                        #   in Loop: Header=BB5_189 Depth=1
	move	$a0, $zero
	move	$a1, $s7
	b	.LBB5_198
	.p2align	4, , 16
.LBB5_197:                              # %land.rhs.i.i372.for.end.i.i375_crit_edge
                                        #   in Loop: Header=BB5_198 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$s3, $a1, .LBB5_202
.LBB5_198:                              # %while.body.i11.i371
                                        #   Parent Loop BB5_189 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_199 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_199:                              # %land.rhs.i.i372
                                        #   Parent Loop BB5_189 Depth=1
                                        #     Parent Loop BB5_198 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s2, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s2, $a2
	bcnez	$fcc0, .LBB5_197
# %bb.200:                              # %for.body.i.i387
                                        #   in Loop: Header=BB5_199 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s6, .LBB5_199
# %bb.201:                              #   in Loop: Header=BB5_198 Depth=2
	move	$a2, $s2
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$s3, $a1, .LBB5_198
.LBB5_202:                              # %while.cond.i.i.i378.preheader
                                        #   in Loop: Header=BB5_189 Depth=1
	move	$a0, $s7
	.p2align	4, , 16
.LBB5_203:                              # %while.cond.i.i.i378
                                        #   Parent Loop BB5_189 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_188
# %bb.204:                              # %while.body.i.i.i380
                                        #   in Loop: Header=BB5_203 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_203
	b	.LBB5_187
.LBB5_205:                              # %invoke.cont141
	ori	$a0, $zero, 1
	blt	$a4, $a0, .LBB5_225
# %bb.206:                              # %for.body.i402.preheader
	move	$s1, $zero
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	slli.d	$s4, $a0, 3
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.d	$s8, $s2, $a0
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a0, $s5, 32
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_209
	.p2align	4, , 16
.LBB5_207:                              # %if.then.i.i433
                                        #   in Loop: Header=BB5_209 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB5_208:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i436
                                        #   in Loop: Header=BB5_209 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a4, .LBB5_225
.LBB5_209:                              # %for.body.i402
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_212 Depth 2
                                        #     Child Loop BB5_214 Depth 2
                                        #     Child Loop BB5_218 Depth 2
                                        #       Child Loop BB5_219 Depth 3
                                        #     Child Loop BB5_223 Depth 2
	beq	$a5, $s5, .LBB5_215
# %bb.210:                              # %while.body.i.i406.preheader
                                        #   in Loop: Header=BB5_209 Depth=1
	move	$a0, $s2
	move	$a1, $s5
	bnez	$s0, .LBB5_214
# %bb.211:                              # %vector.body1223.preheader
                                        #   in Loop: Header=BB5_209 Depth=1
	move	$a0, $s4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_212:                              # %vector.body1223
                                        #   Parent Loop BB5_209 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_212
# %bb.213:                              # %middle.block1232
                                        #   in Loop: Header=BB5_209 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $s4, .LBB5_215
	.p2align	4, , 16
.LBB5_214:                              # %while.body.i.i406
                                        #   Parent Loop BB5_209 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a5, .LBB5_214
.LBB5_215:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i412
                                        #   in Loop: Header=BB5_209 Depth=1
	beq	$s3, $s7, .LBB5_222
# %bb.216:                              # %while.body.i11.i415.preheader
                                        #   in Loop: Header=BB5_209 Depth=1
	move	$a0, $zero
	move	$a1, $s7
	b	.LBB5_218
	.p2align	4, , 16
.LBB5_217:                              # %land.rhs.i.i418.for.end.i.i422_crit_edge
                                        #   in Loop: Header=BB5_218 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$s3, $a1, .LBB5_222
.LBB5_218:                              # %while.body.i11.i415
                                        #   Parent Loop BB5_209 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_219 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_219:                              # %land.rhs.i.i418
                                        #   Parent Loop BB5_209 Depth=1
                                        #     Parent Loop BB5_218 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s2, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s2, $a2
	bcnez	$fcc0, .LBB5_217
# %bb.220:                              # %for.body.i.i439
                                        #   in Loop: Header=BB5_219 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s6, .LBB5_219
# %bb.221:                              #   in Loop: Header=BB5_218 Depth=2
	move	$a2, $s2
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$s3, $a1, .LBB5_218
.LBB5_222:                              # %while.cond.i.i.i427.preheader
                                        #   in Loop: Header=BB5_209 Depth=1
	move	$a0, $s7
	.p2align	4, , 16
.LBB5_223:                              # %while.cond.i.i.i427
                                        #   Parent Loop BB5_209 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_208
# %bb.224:                              # %while.body.i.i.i431
                                        #   in Loop: Header=BB5_223 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_223
	b	.LBB5_207
.LBB5_225:                              # %invoke.cont146
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(dMpb)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(dMpe)
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(dpb)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(dpe)
	slli.d	$a4, $a4, 3
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	st.w	$a4, $a5, %pc_lo12(iterations)
.Ltmp10:                                # EH_LABEL
	pcalau12i	$a4, %pc_hi20(.L.str.34)
	addi.d	$a4, $a4, %pc_lo12(.L.str.34)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp11:                                # EH_LABEL
# %bb.226:                              # %invoke.cont147
	ld.d	$a0, $sp, 184
	ld.d	$a1, $sp, 192
	ld.d	$a2, $sp, 208
	ld.d	$a3, $sp, 216
.Ltmp12:                                # EH_LABEL
	pcalau12i	$a4, %pc_hi20(.L.str.35)
	addi.d	$a4, $a4, %pc_lo12(.L.str.35)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp13:                                # EH_LABEL
# %bb.227:                              # %invoke.cont172
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	blez	$a0, .LBB5_314
# %bb.228:                              # %for.body.i449.preheader
	move	$s0, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(rdpb)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(rdMpb)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(rdMpe)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(rdpe)
	addi.d	$fp, $s1, -8
	sub.d	$a0, $s4, $s1
	sub.d	$a1, $s4, $s6
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	sub.d	$a1, $s1, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	sub.d	$a0, $s4, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s4, -32
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s1, -32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB5_231
	.p2align	4, , 16
.LBB5_229:                              # %if.then.i.i465
                                        #   in Loop: Header=BB5_231 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_230:                              # %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i467
                                        #   in Loop: Header=BB5_231 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_242
.LBB5_231:                              # %for.body.i449
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_234 Depth 2
                                        #     Child Loop BB5_237 Depth 2
                                        #     Child Loop BB5_240 Depth 2
	beq	$s4, $s6, .LBB5_238
# %bb.232:                              # %while.body.i.i451.preheader
                                        #   in Loop: Header=BB5_231 Depth=1
	move	$a1, $s1
	move	$a0, $s4
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_236
# %bb.233:                              # %vector.body1243.preheader
                                        #   in Loop: Header=BB5_231 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s8
	.p2align	4, , 16
.LBB5_234:                              # %vector.body1243
                                        #   Parent Loop BB5_231 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -32
	addi.d	$a0, $a0, -32
	bnez	$a2, .LBB5_234
# %bb.235:                              # %middle.block1253
                                        #   in Loop: Header=BB5_231 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beq	$a2, $s8, .LBB5_238
.LBB5_236:                              # %while.body.i.i451.preheader1521
                                        #   in Loop: Header=BB5_231 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB5_237:                              # %while.body.i.i451
                                        #   Parent Loop BB5_231 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, -8
	addi.d	$a2, $a0, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a0, $a2
	bne	$a2, $s6, .LBB5_237
.LBB5_238:                              # %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i456
                                        #   in Loop: Header=BB5_231 Depth=1
	st.d	$s1, $sp, 248
	st.d	$s7, $sp, 232
.Ltmp14:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.239:                              # %while.cond.i.i.i458.preheader
                                        #   in Loop: Header=BB5_231 Depth=1
	move	$a0, $fp
	.p2align	4, , 16
.LBB5_240:                              # %while.cond.i.i.i458
                                        #   Parent Loop BB5_231 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s7, .LBB5_230
# %bb.241:                              # %while.body.i.i.i461
                                        #   in Loop: Header=BB5_240 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_240
	b	.LBB5_229
.LBB5_242:                              # %invoke.cont177
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_314
# %bb.243:                              # %for.body.i476.preheader
	move	$s0, $zero
	ld.d	$s1, $sp, 216
	ld.d	$s4, $sp, 192
	ld.d	$s6, $sp, 184
	ld.d	$s7, $sp, 208
	addi.d	$fp, $s1, -8
	sub.d	$a0, $s4, $s1
	sub.d	$a1, $s4, $s6
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	sub.d	$a1, $s1, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	sub.d	$a0, $s4, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s4, -32
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s1, -32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB5_246
	.p2align	4, , 16
.LBB5_244:                              # %if.then.i.i496
                                        #   in Loop: Header=BB5_246 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
.LBB5_245:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i498
                                        #   in Loop: Header=BB5_246 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_257
.LBB5_246:                              # %for.body.i476
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_249 Depth 2
                                        #     Child Loop BB5_252 Depth 2
                                        #     Child Loop BB5_255 Depth 2
	beq	$s4, $s6, .LBB5_253
# %bb.247:                              # %while.body.i.i480.preheader
                                        #   in Loop: Header=BB5_246 Depth=1
	move	$a1, $s1
	move	$a0, $s4
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_251
# %bb.248:                              # %vector.body1264.preheader
                                        #   in Loop: Header=BB5_246 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s8
	.p2align	4, , 16
.LBB5_249:                              # %vector.body1264
                                        #   Parent Loop BB5_246 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -32
	addi.d	$a0, $a0, -32
	bnez	$a2, .LBB5_249
# %bb.250:                              # %middle.block1274
                                        #   in Loop: Header=BB5_246 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beq	$a2, $s8, .LBB5_253
.LBB5_251:                              # %while.body.i.i480.preheader1519
                                        #   in Loop: Header=BB5_246 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB5_252:                              # %while.body.i.i480
                                        #   Parent Loop BB5_246 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, -8
	addi.d	$a2, $a0, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a0, $a2
	bne	$a2, $s6, .LBB5_252
.LBB5_253:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i486
                                        #   in Loop: Header=BB5_246 Depth=1
	st.d	$s1, $sp, 248
	st.d	$s7, $sp, 232
.Ltmp17:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.254:                              # %while.cond.i.i.i488.preheader
                                        #   in Loop: Header=BB5_246 Depth=1
	move	$a0, $fp
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_255:                              # %while.cond.i.i.i488
                                        #   Parent Loop BB5_246 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s7, .LBB5_245
# %bb.256:                              # %while.body.i.i.i492
                                        #   in Loop: Header=BB5_255 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_255
	b	.LBB5_244
.LBB5_257:                              # %invoke.cont182
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_314
# %bb.258:                              # %for.body.i505.preheader
	move	$s0, $zero
	addi.d	$s1, $s3, -8
	sub.d	$a0, $a2, $s3
	sub.d	$a1, $a2, $s5
	addi.d	$a4, $a1, -8
	srli.d	$a1, $a4, 3
	addi.d	$a3, $a1, 1
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	sltui	$a1, $a4, 24
	sltui	$a0, $a0, 32
	or	$s4, $a1, $a0
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a3, 61, 2
	slli.d	$s6, $a0, 2
	slli.d	$a0, $a0, 5
	sub.d	$a1, $s3, $a0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a0, $a2, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$s7, $a2, -32
	addi.d	$s8, $s3, -32
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_261
	.p2align	4, , 16
.LBB5_259:                              # %if.then.i.i525
                                        #   in Loop: Header=BB5_261 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
.LBB5_260:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i527
                                        #   in Loop: Header=BB5_261 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_272
.LBB5_261:                              # %for.body.i505
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_264 Depth 2
                                        #     Child Loop BB5_267 Depth 2
                                        #     Child Loop BB5_270 Depth 2
	beq	$a2, $s5, .LBB5_268
# %bb.262:                              # %while.body.i.i509.preheader
                                        #   in Loop: Header=BB5_261 Depth=1
	move	$a1, $s3
	move	$a0, $a2
	bnez	$s4, .LBB5_266
# %bb.263:                              # %vector.body1285.preheader
                                        #   in Loop: Header=BB5_261 Depth=1
	move	$a0, $s8
	move	$a1, $s7
	move	$a2, $s6
	.p2align	4, , 16
.LBB5_264:                              # %vector.body1285
                                        #   Parent Loop BB5_261 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -32
	addi.d	$a0, $a0, -32
	bnez	$a2, .LBB5_264
# %bb.265:                              # %middle.block1295
                                        #   in Loop: Header=BB5_261 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $s6, .LBB5_268
.LBB5_266:                              # %while.body.i.i509.preheader1517
                                        #   in Loop: Header=BB5_261 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB5_267:                              # %while.body.i.i509
                                        #   Parent Loop BB5_261 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, -8
	addi.d	$a2, $a0, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a0, $a2
	bne	$a2, $s5, .LBB5_267
.LBB5_268:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i515
                                        #   in Loop: Header=BB5_261 Depth=1
	st.d	$s3, $sp, 248
	st.d	$s2, $sp, 232
.Ltmp20:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.269:                              # %while.cond.i.i.i517.preheader
                                        #   in Loop: Header=BB5_261 Depth=1
	move	$a0, $s1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_270:                              # %while.cond.i.i.i517
                                        #   Parent Loop BB5_261 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s2, .LBB5_260
# %bb.271:                              # %while.body.i.i.i521
                                        #   in Loop: Header=BB5_270 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_270
	b	.LBB5_259
.LBB5_272:                              # %invoke.cont187
	blez	$a0, .LBB5_314
# %bb.273:                              # %for.body.lr.ph.i538
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(rrdMpb+8)
	ld.d	$s4, $a0, %pc_lo12(rrdMpb+8)
	pcalau12i	$a0, %pc_hi20(rrdMpe+8)
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$s7, $a1, %pc_lo12(rrdpb+8)
	ld.d	$s6, $a0, %pc_lo12(rrdMpe+8)
	pcalau12i	$a0, %pc_hi20(rrdpe+8)
	ld.d	$s0, $a0, %pc_lo12(rrdpe+8)
	sub.d	$a0, $s7, $s4
	sub.d	$a1, $s6, $s4
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$fp, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s7, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	add.d	$a0, $s4, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s4, 32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $s7, 32
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$s8, $s7, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB5_276
	.p2align	4, , 16
.LBB5_274:                              # %if.then.i.i556
                                        #   in Loop: Header=BB5_276 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
.LBB5_275:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i558
                                        #   in Loop: Header=BB5_276 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_286
.LBB5_276:                              # %for.body.i543
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_279 Depth 2
                                        #     Child Loop BB5_281 Depth 2
                                        #     Child Loop BB5_284 Depth 2
	beq	$s4, $s6, .LBB5_282
# %bb.277:                              # %while.body.i.i545.preheader
                                        #   in Loop: Header=BB5_276 Depth=1
	move	$a0, $s7
	move	$a1, $s4
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_281
# %bb.278:                              # %vector.body1306.preheader
                                        #   in Loop: Header=BB5_276 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_279:                              # %vector.body1306
                                        #   Parent Loop BB5_276 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_279
# %bb.280:                              # %middle.block1315
                                        #   in Loop: Header=BB5_276 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$a2, $fp, .LBB5_282
	.p2align	4, , 16
.LBB5_281:                              # %while.body.i.i545
                                        #   Parent Loop BB5_276 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s6, .LBB5_281
.LBB5_282:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i550
                                        #   in Loop: Header=BB5_276 Depth=1
	st.d	$s7, $sp, 256
	st.d	$s0, $sp, 240
.Ltmp23:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.283:                              # %while.cond.i.i.i551.preheader
                                        #   in Loop: Header=BB5_276 Depth=1
	move	$a0, $s8
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_284:                              # %while.cond.i.i.i551
                                        #   Parent Loop BB5_276 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s0, .LBB5_275
# %bb.285:                              # %while.body.i.i.i554
                                        #   in Loop: Header=BB5_284 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_284
	b	.LBB5_274
.LBB5_286:                              # %invoke.cont192
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_314
# %bb.287:                              # %for.body.lr.ph.i573
	move	$s0, $zero
	sub.d	$a0, $s2, $s5
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s6, $a1, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 61, 3
	slli.d	$s7, $a0, 3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 6
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$s4, $s5, 32
	addi.d	$s8, $s2, 32
	addi.d	$s1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_290
	.p2align	4, , 16
.LBB5_288:                              # %if.then.i.i597
                                        #   in Loop: Header=BB5_290 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
.LBB5_289:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i599
                                        #   in Loop: Header=BB5_290 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_300
.LBB5_290:                              # %for.body.i580
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_293 Depth 2
                                        #     Child Loop BB5_295 Depth 2
                                        #     Child Loop BB5_298 Depth 2
	beq	$s5, $a3, .LBB5_296
# %bb.291:                              # %while.body.i.i584.preheader
                                        #   in Loop: Header=BB5_290 Depth=1
	move	$a0, $s2
	move	$a1, $s5
	bnez	$s6, .LBB5_295
# %bb.292:                              # %vector.body1326.preheader
                                        #   in Loop: Header=BB5_290 Depth=1
	move	$a0, $s7
	move	$a1, $s8
	move	$a2, $s4
	.p2align	4, , 16
.LBB5_293:                              # %vector.body1326
                                        #   Parent Loop BB5_290 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_293
# %bb.294:                              # %middle.block1335
                                        #   in Loop: Header=BB5_290 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $s7, .LBB5_296
	.p2align	4, , 16
.LBB5_295:                              # %while.body.i.i584
                                        #   Parent Loop BB5_290 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a3, .LBB5_295
.LBB5_296:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i590
                                        #   in Loop: Header=BB5_290 Depth=1
	st.d	$s2, $sp, 256
	st.d	$s3, $sp, 240
.Ltmp26:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.297:                              # %while.cond.i.i.i591.preheader
                                        #   in Loop: Header=BB5_290 Depth=1
	move	$a0, $s1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_298:                              # %while.cond.i.i.i591
                                        #   Parent Loop BB5_290 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_289
# %bb.299:                              # %while.body.i.i.i595
                                        #   in Loop: Header=BB5_298 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_298
	b	.LBB5_288
.LBB5_300:                              # %invoke.cont197
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_314
# %bb.301:                              # %for.body.lr.ph.i614
	move	$s0, $zero
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slli.d	$s1, $a0, 3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$s8, $s5, 32
	addi.d	$s7, $s2, 32
	addi.d	$s4, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_304
	.p2align	4, , 16
.LBB5_302:                              # %if.then.i.i638
                                        #   in Loop: Header=BB5_304 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
.LBB5_303:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i640
                                        #   in Loop: Header=BB5_304 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_314
.LBB5_304:                              # %for.body.i621
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_307 Depth 2
                                        #     Child Loop BB5_309 Depth 2
                                        #     Child Loop BB5_312 Depth 2
	beq	$s5, $a3, .LBB5_310
# %bb.305:                              # %while.body.i.i625.preheader
                                        #   in Loop: Header=BB5_304 Depth=1
	move	$a0, $s2
	move	$a1, $s5
	bnez	$s6, .LBB5_309
# %bb.306:                              # %vector.body1346.preheader
                                        #   in Loop: Header=BB5_304 Depth=1
	move	$a0, $s1
	move	$a1, $s7
	move	$a2, $s8
	.p2align	4, , 16
.LBB5_307:                              # %vector.body1346
                                        #   Parent Loop BB5_304 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_307
# %bb.308:                              # %middle.block1355
                                        #   in Loop: Header=BB5_304 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $s1, .LBB5_310
	.p2align	4, , 16
.LBB5_309:                              # %while.body.i.i625
                                        #   Parent Loop BB5_304 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a3, .LBB5_309
.LBB5_310:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i631
                                        #   in Loop: Header=BB5_304 Depth=1
	st.d	$s2, $sp, 256
	st.d	$s3, $sp, 240
.Ltmp29:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.311:                              # %while.cond.i.i.i632.preheader
                                        #   in Loop: Header=BB5_304 Depth=1
	move	$a0, $s4
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_312:                              # %while.cond.i.i.i632
                                        #   Parent Loop BB5_304 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_303
# %bb.313:                              # %while.body.i.i.i636
                                        #   in Loop: Header=BB5_312 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_312
	b	.LBB5_302
.LBB5_314:                              # %invoke.cont202
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(dMpb)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(dMpe)
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(dpb)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(dpe)
.Ltmp32:                                # EH_LABEL
	pcalau12i	$a4, %pc_hi20(.L.str.42)
	addi.d	$a4, $a4, %pc_lo12(.L.str.42)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp33:                                # EH_LABEL
# %bb.315:                              # %invoke.cont203
	ld.d	$a0, $sp, 184
	ld.d	$a1, $sp, 192
	ld.d	$a2, $sp, 208
	ld.d	$a3, $sp, 216
.Ltmp34:                                # EH_LABEL
	pcalau12i	$a4, %pc_hi20(.L.str.43)
	addi.d	$a4, $a4, %pc_lo12(.L.str.43)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.316:                              # %invoke.cont228
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	blez	$a0, .LBB5_403
# %bb.317:                              # %for.body.i654.preheader
	move	$s0, $zero
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $a0, %pc_lo12(rdpb)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(rdMpb)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(rdMpe)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(rdpe)
	addi.d	$fp, $s1, -8
	sub.d	$a0, $s4, $s1
	sub.d	$a1, $s4, $s6
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	sub.d	$a1, $s1, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	sub.d	$a0, $s4, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s4, -32
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s1, -32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB5_320
	.p2align	4, , 16
.LBB5_318:                              # %if.then.i.i671
                                        #   in Loop: Header=BB5_320 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_319:                              # %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i673
                                        #   in Loop: Header=BB5_320 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_331
.LBB5_320:                              # %for.body.i654
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_323 Depth 2
                                        #     Child Loop BB5_326 Depth 2
                                        #     Child Loop BB5_329 Depth 2
	beq	$s4, $s6, .LBB5_327
# %bb.321:                              # %while.body.i.i657.preheader
                                        #   in Loop: Header=BB5_320 Depth=1
	move	$a1, $s1
	move	$a0, $s4
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_325
# %bb.322:                              # %vector.body1366.preheader
                                        #   in Loop: Header=BB5_320 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s8
	.p2align	4, , 16
.LBB5_323:                              # %vector.body1366
                                        #   Parent Loop BB5_320 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -32
	addi.d	$a0, $a0, -32
	bnez	$a2, .LBB5_323
# %bb.324:                              # %middle.block1376
                                        #   in Loop: Header=BB5_320 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beq	$a2, $s8, .LBB5_327
.LBB5_325:                              # %while.body.i.i657.preheader1508
                                        #   in Loop: Header=BB5_320 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB5_326:                              # %while.body.i.i657
                                        #   Parent Loop BB5_320 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, -8
	addi.d	$a2, $a0, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a0, $a2
	bne	$a2, $s6, .LBB5_326
.LBB5_327:                              # %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i662
                                        #   in Loop: Header=BB5_320 Depth=1
	st.d	$s1, $sp, 248
	st.d	$s7, $sp, 232
.Ltmp37:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.328:                              # %while.cond.i.i.i664.preheader
                                        #   in Loop: Header=BB5_320 Depth=1
	move	$a0, $fp
	.p2align	4, , 16
.LBB5_329:                              # %while.cond.i.i.i664
                                        #   Parent Loop BB5_320 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s7, .LBB5_319
# %bb.330:                              # %while.body.i.i.i667
                                        #   in Loop: Header=BB5_329 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_329
	b	.LBB5_318
.LBB5_331:                              # %invoke.cont233
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_403
# %bb.332:                              # %for.body.i682.preheader
	move	$s0, $zero
	ld.d	$s1, $sp, 216
	ld.d	$s4, $sp, 192
	ld.d	$s6, $sp, 184
	ld.d	$s7, $sp, 208
	addi.d	$fp, $s1, -8
	sub.d	$a0, $s4, $s1
	sub.d	$a1, $s4, $s6
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s8, $a0, 2
	slli.d	$a0, $a0, 5
	sub.d	$a1, $s1, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	sub.d	$a0, $s4, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s4, -32
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s1, -32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB5_335
	.p2align	4, , 16
.LBB5_333:                              # %if.then.i.i702
                                        #   in Loop: Header=BB5_335 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
.LBB5_334:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i704
                                        #   in Loop: Header=BB5_335 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_346
.LBB5_335:                              # %for.body.i682
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_338 Depth 2
                                        #     Child Loop BB5_341 Depth 2
                                        #     Child Loop BB5_344 Depth 2
	beq	$s4, $s6, .LBB5_342
# %bb.336:                              # %while.body.i.i686.preheader
                                        #   in Loop: Header=BB5_335 Depth=1
	move	$a1, $s1
	move	$a0, $s4
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_340
# %bb.337:                              # %vector.body1387.preheader
                                        #   in Loop: Header=BB5_335 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	move	$a2, $s8
	.p2align	4, , 16
.LBB5_338:                              # %vector.body1387
                                        #   Parent Loop BB5_335 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -32
	addi.d	$a0, $a0, -32
	bnez	$a2, .LBB5_338
# %bb.339:                              # %middle.block1397
                                        #   in Loop: Header=BB5_335 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beq	$a2, $s8, .LBB5_342
.LBB5_340:                              # %while.body.i.i686.preheader1506
                                        #   in Loop: Header=BB5_335 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB5_341:                              # %while.body.i.i686
                                        #   Parent Loop BB5_335 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, -8
	addi.d	$a2, $a0, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a0, $a2
	bne	$a2, $s6, .LBB5_341
.LBB5_342:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i692
                                        #   in Loop: Header=BB5_335 Depth=1
	st.d	$s1, $sp, 248
	st.d	$s7, $sp, 232
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.343:                              # %while.cond.i.i.i694.preheader
                                        #   in Loop: Header=BB5_335 Depth=1
	move	$a0, $fp
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_344:                              # %while.cond.i.i.i694
                                        #   Parent Loop BB5_335 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s7, .LBB5_334
# %bb.345:                              # %while.body.i.i.i698
                                        #   in Loop: Header=BB5_344 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_344
	b	.LBB5_333
.LBB5_346:                              # %invoke.cont238
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_403
# %bb.347:                              # %for.body.i711.preheader
	move	$s0, $zero
	addi.d	$s1, $s3, -8
	sub.d	$a0, $a2, $s3
	sub.d	$a1, $a2, $s5
	addi.d	$a4, $a1, -8
	srli.d	$a1, $a4, 3
	addi.d	$a3, $a1, 1
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	sltui	$a1, $a4, 24
	sltui	$a0, $a0, 32
	or	$s4, $a1, $a0
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a3, 61, 2
	slli.d	$s6, $a0, 2
	slli.d	$a0, $a0, 5
	sub.d	$a1, $s3, $a0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	sub.d	$a0, $a2, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$s7, $a2, -32
	addi.d	$s8, $s3, -32
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_350
	.p2align	4, , 16
.LBB5_348:                              # %if.then.i.i731
                                        #   in Loop: Header=BB5_350 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
.LBB5_349:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i733
                                        #   in Loop: Header=BB5_350 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_361
.LBB5_350:                              # %for.body.i711
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_353 Depth 2
                                        #     Child Loop BB5_356 Depth 2
                                        #     Child Loop BB5_359 Depth 2
	beq	$a2, $s5, .LBB5_357
# %bb.351:                              # %while.body.i.i715.preheader
                                        #   in Loop: Header=BB5_350 Depth=1
	move	$a1, $s3
	move	$a0, $a2
	bnez	$s4, .LBB5_355
# %bb.352:                              # %vector.body1408.preheader
                                        #   in Loop: Header=BB5_350 Depth=1
	move	$a0, $s8
	move	$a1, $s7
	move	$a2, $s6
	.p2align	4, , 16
.LBB5_353:                              # %vector.body1408
                                        #   Parent Loop BB5_350 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -32
	addi.d	$a0, $a0, -32
	bnez	$a2, .LBB5_353
# %bb.354:                              # %middle.block1418
                                        #   in Loop: Header=BB5_350 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $s6, .LBB5_357
.LBB5_355:                              # %while.body.i.i715.preheader1504
                                        #   in Loop: Header=BB5_350 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB5_356:                              # %while.body.i.i715
                                        #   Parent Loop BB5_350 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, -8
	addi.d	$a2, $a0, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a0, $a2
	bne	$a2, $s5, .LBB5_356
.LBB5_357:                              # %_ZN9benchmark4copyISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEES9_EEvT_SA_T0_.exit.i721
                                        #   in Loop: Header=BB5_350 Depth=1
	st.d	$s3, $sp, 248
	st.d	$s2, $sp, 232
.Ltmp43:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.358:                              # %while.cond.i.i.i723.preheader
                                        #   in Loop: Header=BB5_350 Depth=1
	move	$a0, $s1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_359:                              # %while.cond.i.i.i723
                                        #   Parent Loop BB5_350 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s2, .LBB5_349
# %bb.360:                              # %while.body.i.i.i727
                                        #   in Loop: Header=BB5_359 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_359
	b	.LBB5_348
.LBB5_361:                              # %invoke.cont243
	blez	$a0, .LBB5_403
# %bb.362:                              # %for.body.lr.ph.i745
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(rrdMpb+8)
	ld.d	$s4, $a0, %pc_lo12(rrdMpb+8)
	pcalau12i	$a0, %pc_hi20(rrdMpe+8)
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$s7, $a1, %pc_lo12(rrdpb+8)
	ld.d	$s6, $a0, %pc_lo12(rrdMpe+8)
	pcalau12i	$a0, %pc_hi20(rrdpe+8)
	ld.d	$s0, $a0, %pc_lo12(rrdpe+8)
	sub.d	$a0, $s7, $s4
	sub.d	$a1, $s6, $s4
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$fp, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s7, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	add.d	$a0, $s4, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s4, 32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $s7, 32
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	addi.d	$s8, $s7, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB5_365
	.p2align	4, , 16
.LBB5_363:                              # %if.then.i.i766
                                        #   in Loop: Header=BB5_365 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
.LBB5_364:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i768
                                        #   in Loop: Header=BB5_365 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_375
.LBB5_365:                              # %for.body.i752
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_368 Depth 2
                                        #     Child Loop BB5_370 Depth 2
                                        #     Child Loop BB5_373 Depth 2
	beq	$s4, $s6, .LBB5_371
# %bb.366:                              # %while.body.i.i755.preheader
                                        #   in Loop: Header=BB5_365 Depth=1
	move	$a0, $s7
	move	$a1, $s4
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_370
# %bb.367:                              # %vector.body1429.preheader
                                        #   in Loop: Header=BB5_365 Depth=1
	move	$a0, $fp
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_368:                              # %vector.body1429
                                        #   Parent Loop BB5_365 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_368
# %bb.369:                              # %middle.block1438
                                        #   in Loop: Header=BB5_365 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	beq	$a2, $fp, .LBB5_371
	.p2align	4, , 16
.LBB5_370:                              # %while.body.i.i755
                                        #   Parent Loop BB5_365 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s6, .LBB5_370
.LBB5_371:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i760
                                        #   in Loop: Header=BB5_365 Depth=1
	st.d	$s7, $sp, 256
	st.d	$s0, $sp, 240
.Ltmp46:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.372:                              # %while.cond.i.i.i761.preheader
                                        #   in Loop: Header=BB5_365 Depth=1
	move	$a0, $s8
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_373:                              # %while.cond.i.i.i761
                                        #   Parent Loop BB5_365 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s0, .LBB5_364
# %bb.374:                              # %while.body.i.i.i764
                                        #   in Loop: Header=BB5_373 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_373
	b	.LBB5_363
.LBB5_375:                              # %invoke.cont248
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_403
# %bb.376:                              # %for.body.lr.ph.i783
	move	$s0, $zero
	sub.d	$a0, $s2, $s5
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s6, $a1, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 61, 3
	slli.d	$s7, $a0, 3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 6
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$s4, $s5, 32
	addi.d	$s8, $s2, 32
	addi.d	$s1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_379
	.p2align	4, , 16
.LBB5_377:                              # %if.then.i.i807
                                        #   in Loop: Header=BB5_379 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
.LBB5_378:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i809
                                        #   in Loop: Header=BB5_379 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_389
.LBB5_379:                              # %for.body.i790
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_382 Depth 2
                                        #     Child Loop BB5_384 Depth 2
                                        #     Child Loop BB5_387 Depth 2
	beq	$s5, $a3, .LBB5_385
# %bb.380:                              # %while.body.i.i794.preheader
                                        #   in Loop: Header=BB5_379 Depth=1
	move	$a0, $s2
	move	$a1, $s5
	bnez	$s6, .LBB5_384
# %bb.381:                              # %vector.body1449.preheader
                                        #   in Loop: Header=BB5_379 Depth=1
	move	$a0, $s7
	move	$a1, $s8
	move	$a2, $s4
	.p2align	4, , 16
.LBB5_382:                              # %vector.body1449
                                        #   Parent Loop BB5_379 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_382
# %bb.383:                              # %middle.block1458
                                        #   in Loop: Header=BB5_379 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $s7, .LBB5_385
	.p2align	4, , 16
.LBB5_384:                              # %while.body.i.i794
                                        #   Parent Loop BB5_379 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a3, .LBB5_384
.LBB5_385:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i800
                                        #   in Loop: Header=BB5_379 Depth=1
	st.d	$s2, $sp, 256
	st.d	$s3, $sp, 240
.Ltmp49:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.386:                              # %while.cond.i.i.i801.preheader
                                        #   in Loop: Header=BB5_379 Depth=1
	move	$a0, $s1
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_387:                              # %while.cond.i.i.i801
                                        #   Parent Loop BB5_379 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_378
# %bb.388:                              # %while.body.i.i.i805
                                        #   in Loop: Header=BB5_387 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_387
	b	.LBB5_377
.LBB5_389:                              # %invoke.cont253
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_403
# %bb.390:                              # %for.body.lr.ph.i824
	move	$s0, $zero
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slli.d	$s1, $a0, 3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$s8, $s5, 32
	addi.d	$s7, $s2, 32
	addi.d	$s4, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$fp, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_393
	.p2align	4, , 16
.LBB5_391:                              # %if.then.i.i848
                                        #   in Loop: Header=BB5_393 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
.LBB5_392:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i850
                                        #   in Loop: Header=BB5_393 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s0, $s0, 1
	bge	$s0, $a0, .LBB5_403
.LBB5_393:                              # %for.body.i831
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_396 Depth 2
                                        #     Child Loop BB5_398 Depth 2
                                        #     Child Loop BB5_401 Depth 2
	beq	$s5, $a3, .LBB5_399
# %bb.394:                              # %while.body.i.i835.preheader
                                        #   in Loop: Header=BB5_393 Depth=1
	move	$a0, $s2
	move	$a1, $s5
	bnez	$s6, .LBB5_398
# %bb.395:                              # %vector.body1469.preheader
                                        #   in Loop: Header=BB5_393 Depth=1
	move	$a0, $s1
	move	$a1, $s7
	move	$a2, $s8
	.p2align	4, , 16
.LBB5_396:                              # %vector.body1469
                                        #   Parent Loop BB5_393 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_396
# %bb.397:                              # %middle.block1478
                                        #   in Loop: Header=BB5_393 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $s1, .LBB5_399
	.p2align	4, , 16
.LBB5_398:                              # %while.body.i.i835
                                        #   Parent Loop BB5_393 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $a3, .LBB5_398
.LBB5_399:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEESA_EEvT_SB_T0_.exit.i841
                                        #   in Loop: Header=BB5_393 Depth=1
	st.d	$s2, $sp, 256
	st.d	$s3, $sp, 240
.Ltmp52:                                # EH_LABEL
	addi.d	$a0, $sp, 248
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp53:                                # EH_LABEL
# %bb.400:                              # %while.cond.i.i.i842.preheader
                                        #   in Loop: Header=BB5_393 Depth=1
	move	$a0, $s4
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_401:                              # %while.cond.i.i.i842
                                        #   Parent Loop BB5_393 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s3, .LBB5_392
# %bb.402:                              # %while.body.i.i.i846
                                        #   in Loop: Header=BB5_401 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_401
	b	.LBB5_391
.LBB5_403:                              # %invoke.cont258
	ld.d	$a0, $sp, 184
	beqz	$a0, .LBB5_405
# %bb.404:                              # %if.then.i.i.i
	ld.d	$a1, $sp, 200
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_405:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $sp, 208
	beqz	$a0, .LBB5_407
# %bb.406:                              # %if.then.i.i.i859
	ld.d	$a1, $sp, 224
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_407:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit864
	move	$a0, $zero
	fld.d	$fs1, $sp, 264                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 272                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB5_408:                              # %lpad64
.Ltmp5:                                 # EH_LABEL
	b	.LBB5_423
.LBB5_409:                              # %lpad
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	ld.d	$a0, $sp, 208
	beqz	$a0, .LBB5_425
	b	.LBB5_427
.LBB5_410:                              # %lpad90.loopexit
.Ltmp54:                                # EH_LABEL
	b	.LBB5_423
.LBB5_411:                              # %lpad90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp31:                                # EH_LABEL
	b	.LBB5_423
.LBB5_412:                              # %lpad90.loopexit.split-lp.loopexit
.Ltmp51:                                # EH_LABEL
	b	.LBB5_423
.LBB5_413:                              # %lpad90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp28:                                # EH_LABEL
	b	.LBB5_423
.LBB5_414:                              # %lpad90.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp48:                                # EH_LABEL
	b	.LBB5_423
.LBB5_415:                              # %lpad90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp25:                                # EH_LABEL
	b	.LBB5_423
.LBB5_416:                              # %lpad90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
.Ltmp36:                                # EH_LABEL
	b	.LBB5_423
.LBB5_417:                              # %lpad90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp45:                                # EH_LABEL
	b	.LBB5_423
.LBB5_418:                              # %lpad90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp22:                                # EH_LABEL
	b	.LBB5_423
.LBB5_419:                              # %lpad90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp42:                                # EH_LABEL
	b	.LBB5_423
.LBB5_420:                              # %lpad90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp19:                                # EH_LABEL
	b	.LBB5_423
.LBB5_421:                              # %lpad90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp39:                                # EH_LABEL
	b	.LBB5_423
.LBB5_422:                              # %lpad90.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp16:                                # EH_LABEL
.LBB5_423:                              # %ehcleanup
	move	$fp, $a0
	ld.d	$a0, $sp, 184
	bnez	$a0, .LBB5_426
# %bb.424:                              # %ehcleanup266
	ld.d	$a0, $sp, 208
	bnez	$a0, .LBB5_427
.LBB5_425:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit878
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_426:                              # %if.then.i.i.i866
	ld.d	$a1, $sp, 200
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208
	beqz	$a0, .LBB5_425
.LBB5_427:                              # %if.then.i.i.i873
	ld.d	$a1, $sp, 224
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp13-.Ltmp10                #   Call between .Ltmp10 and .Ltmp13
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp17-.Ltmp15                #   Call between .Ltmp15 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp20-.Ltmp18                #   Call between .Ltmp18 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp23-.Ltmp21                #   Call between .Ltmp21 and .Ltmp23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin0          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp26-.Ltmp24                #   Call between .Ltmp24 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp29-.Ltmp27                #   Call between .Ltmp27 and .Ltmp29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp35-.Ltmp32                #   Call between .Ltmp32 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp37-.Ltmp35                #   Call between .Ltmp35 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp40-.Ltmp38                #   Call between .Ltmp38 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp43-.Ltmp41                #   Call between .Ltmp41 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp46-.Ltmp44                #   Call between .Ltmp44 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp49-.Ltmp47                #   Call between .Ltmp47 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin0          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp52-.Ltmp50                #   Call between .Ltmp50 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin0          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Lfunc_end5-.Ltmp53            #   Call between .Ltmp53 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc,"axG",@progbits,_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc,comdat
	.weak	_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc # -- Begin function _Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc
	.p2align	5
	.type	_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc,@function
_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc: # @_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	pcalau12i	$a4, %pc_hi20(iterations)
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a4, $a4, %pc_lo12(iterations)
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB6_44
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$s5, $a2, 8
	beq	$s5, $a3, .LBB6_20
# %bb.2:                                # %for.body.lr.ph.split
	beq	$s2, $s1, .LBB6_32
# %bb.3:                                # %for.body.preheader
	move	$s3, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$s4, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s7, $a1, $a0
	bstrpick.d	$a0, $s4, 61, 3
	slli.d	$s8, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s6, $zero, -8
	b	.LBB6_6
	.p2align	4, , 16
.LBB6_4:                                # %if.then.i
                                        #   in Loop: Header=BB6_6 Depth=1
	pcalau12i	$a0, %pc_hi20(current_test)
	ld.w	$a1, $a0, %pc_lo12(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_5:                                # %_Z13verify_sortedIPdEvT_S1_.exit
                                        #   in Loop: Header=BB6_6 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a4, .LBB6_44
.LBB6_6:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #     Child Loop BB6_10 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #       Child Loop BB6_14 Depth 3
                                        #     Child Loop BB6_18 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s7, .LBB6_10
# %bb.7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_8:                                # %vector.body
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB6_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB6_6 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$s4, $s8, .LBB6_11
	.p2align	4, , 16
.LBB6_10:                               # %while.body.i
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB6_10
.LBB6_11:                               # %while.body.i5.preheader
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB6_13
	.p2align	4, , 16
.LBB6_12:                               # %land.rhs.i.for.end.i_crit_edge
                                        #   in Loop: Header=BB6_13 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB6_17
.LBB6_13:                               # %while.body.i5
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_14 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB6_14:                               # %land.rhs.i
                                        #   Parent Loop BB6_6 Depth=1
                                        #     Parent Loop BB6_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB6_12
# %bb.15:                               # %for.body.i
                                        #   in Loop: Header=BB6_14 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s6, .LBB6_14
# %bb.16:                               #   in Loop: Header=BB6_13 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB6_13
.LBB6_17:                               # %while.cond.i.i.preheader
                                        #   in Loop: Header=BB6_6 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_18:                               # %while.cond.i.i
                                        #   Parent Loop BB6_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_5
# %bb.19:                               # %while.body.i.i
                                        #   in Loop: Header=BB6_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_18
	b	.LBB6_4
.LBB6_20:                               # %for.body.us.preheader
	move	$s6, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s8, $a1, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$s7, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 32
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB6_23
	.p2align	4, , 16
.LBB6_21:                               # %if.then.i.us
                                        #   in Loop: Header=BB6_23 Depth=1
	ld.w	$a1, $s4, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_22:                               # %_Z13verify_sortedIPdEvT_S1_.exit.us
                                        #   in Loop: Header=BB6_23 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a4, .LBB6_44
.LBB6_23:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_26 Depth 2
                                        #     Child Loop BB6_28 Depth 2
                                        #     Child Loop BB6_30 Depth 2
	beq	$s2, $s1, .LBB6_29
# %bb.24:                               # %while.body.i.us.preheader
                                        #   in Loop: Header=BB6_23 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s8, .LBB6_28
# %bb.25:                               # %vector.body48.preheader
                                        #   in Loop: Header=BB6_23 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_26:                               # %vector.body48
                                        #   Parent Loop BB6_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB6_26
# %bb.27:                               # %middle.block57
                                        #   in Loop: Header=BB6_23 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB6_29
	.p2align	4, , 16
.LBB6_28:                               # %while.body.i.us
                                        #   Parent Loop BB6_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB6_28
.LBB6_29:                               # %while.cond.i.i.us.preheader
                                        #   in Loop: Header=BB6_23 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_30:                               # %while.cond.i.i.us
                                        #   Parent Loop BB6_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_22
# %bb.31:                               # %while.body.i.i.us
                                        #   in Loop: Header=BB6_30 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_30
	b	.LBB6_21
.LBB6_32:                               # %for.body.us9.preheader
	move	$s2, $zero
	addi.w	$s3, $zero, -8
	pcalau12i	$s4, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB6_35
	.p2align	4, , 16
.LBB6_33:                               # %if.then.i.us18
                                        #   in Loop: Header=BB6_35 Depth=1
	ld.w	$a1, $s4, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_34:                               # %_Z13verify_sortedIPdEvT_S1_.exit.us20
                                        #   in Loop: Header=BB6_35 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a4, .LBB6_44
.LBB6_35:                               # %for.body.us9
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_37 Depth 2
                                        #       Child Loop BB6_38 Depth 3
                                        #     Child Loop BB6_42 Depth 2
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB6_37
	.p2align	4, , 16
.LBB6_36:                               # %land.rhs.i.us.for.end.i.us_crit_edge
                                        #   in Loop: Header=BB6_37 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB6_41
.LBB6_37:                               # %while.body.i5.us
                                        #   Parent Loop BB6_35 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_38 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB6_38:                               # %land.rhs.i.us
                                        #   Parent Loop BB6_35 Depth=1
                                        #     Parent Loop BB6_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB6_36
# %bb.39:                               # %for.body.i.us
                                        #   in Loop: Header=BB6_38 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s3, .LBB6_38
# %bb.40:                               #   in Loop: Header=BB6_37 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB6_37
.LBB6_41:                               # %while.cond.i.i.us12.preheader
                                        #   in Loop: Header=BB6_35 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_42:                               # %while.cond.i.i.us12
                                        #   Parent Loop BB6_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_34
# %bb.43:                               # %while.body.i.i.us16
                                        #   in Loop: Header=BB6_42 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_42
	b	.LBB6_33
.LBB6_44:                               # %for.end
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
.Lfunc_end6:
	.size	_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc, .Lfunc_end6-_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,"axG",@progbits,_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,comdat
	.weak	_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc # -- Begin function _Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.p2align	5
	.type	_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,@function
_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc: # @_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	pcalau12i	$a4, %pc_hi20(iterations)
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a4, $a4, %pc_lo12(iterations)
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB7_46
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$s5, $a2, 8
	beq	$s5, $a3, .LBB7_15
# %bb.2:                                # %for.body.lr.ph.split
	bne	$s2, $s1, .LBB7_28
# %bb.3:                                # %for.body.us8.preheader
	move	$s2, $zero
	addi.w	$s3, $zero, -8
	pcalau12i	$s4, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_4:                                # %if.then.i.us17
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a1, $s4, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB7_5:                                # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us19
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a4, .LBB7_46
.LBB7_6:                                # %for.body.us8
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_8 Depth 2
                                        #       Child Loop BB7_9 Depth 3
                                        #     Child Loop BB7_13 Depth 2
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %land.rhs.i.us.for.end.i.us_crit_edge
                                        #   in Loop: Header=BB7_8 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB7_12
.LBB7_8:                                # %while.body.i4.us
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_9 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB7_9:                                # %land.rhs.i.us
                                        #   Parent Loop BB7_6 Depth=1
                                        #     Parent Loop BB7_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB7_7
# %bb.10:                               # %for.body.i.us
                                        #   in Loop: Header=BB7_9 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s3, .LBB7_9
# %bb.11:                               #   in Loop: Header=BB7_8 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB7_8
.LBB7_12:                               # %while.cond.i.i.us11.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_13:                               # %while.cond.i.i.us11
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_5
# %bb.14:                               # %while.body.i.i.us15
                                        #   in Loop: Header=BB7_13 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_13
	b	.LBB7_4
.LBB7_15:                               # %for.body.us.preheader
	move	$s6, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s8, $a1, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$s7, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB7_18
	.p2align	4, , 16
.LBB7_16:                               # %if.then.i.us
                                        #   in Loop: Header=BB7_18 Depth=1
	ld.w	$a1, $s4, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB7_17:                               # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us
                                        #   in Loop: Header=BB7_18 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a4, .LBB7_46
.LBB7_18:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_24 Depth 2
                                        #     Child Loop BB7_26 Depth 2
	beq	$s2, $s1, .LBB7_25
# %bb.19:                               # %while.body.i.us.preheader
                                        #   in Loop: Header=BB7_18 Depth=1
	beqz	$s8, .LBB7_21
# %bb.20:                               #   in Loop: Header=BB7_18 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB7_24
	.p2align	4, , 16
.LBB7_21:                               # %vector.body42.preheader
                                        #   in Loop: Header=BB7_18 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_22:                               # %vector.body42
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB7_22
# %bb.23:                               # %middle.block51
                                        #   in Loop: Header=BB7_18 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB7_25
	.p2align	4, , 16
.LBB7_24:                               # %while.body.i.us
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB7_24
.LBB7_25:                               # %while.cond.i.i.us.preheader
                                        #   in Loop: Header=BB7_18 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_26:                               # %while.cond.i.i.us
                                        #   Parent Loop BB7_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_17
# %bb.27:                               # %while.body.i.i.us
                                        #   in Loop: Header=BB7_26 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_26
	b	.LBB7_16
.LBB7_28:                               # %for.body.preheader
	move	$s3, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$s4, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s7, $a1, $a0
	bstrpick.d	$a0, $s4, 61, 3
	slli.d	$s8, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 32
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.w	$s6, $zero, -8
	b	.LBB7_31
	.p2align	4, , 16
.LBB7_29:                               # %if.then.i
                                        #   in Loop: Header=BB7_31 Depth=1
	pcalau12i	$a0, %pc_hi20(current_test)
	ld.w	$a1, $a0, %pc_lo12(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB7_30:                               # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
                                        #   in Loop: Header=BB7_31 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a4, .LBB7_46
.LBB7_31:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_34 Depth 2
                                        #     Child Loop BB7_36 Depth 2
                                        #     Child Loop BB7_39 Depth 2
                                        #       Child Loop BB7_40 Depth 3
                                        #     Child Loop BB7_44 Depth 2
	beqz	$s7, .LBB7_33
# %bb.32:                               #   in Loop: Header=BB7_31 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB7_36
	.p2align	4, , 16
.LBB7_33:                               # %vector.body.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_34:                               # %vector.body
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB7_34
# %bb.35:                               # %middle.block
                                        #   in Loop: Header=BB7_31 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$s4, $s8, .LBB7_37
	.p2align	4, , 16
.LBB7_36:                               # %while.body.i
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB7_36
.LBB7_37:                               # %while.body.i4.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB7_39
	.p2align	4, , 16
.LBB7_38:                               # %land.rhs.i.for.end.i_crit_edge
                                        #   in Loop: Header=BB7_39 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB7_43
.LBB7_39:                               # %while.body.i4
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_40 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB7_40:                               # %land.rhs.i
                                        #   Parent Loop BB7_31 Depth=1
                                        #     Parent Loop BB7_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB7_38
# %bb.41:                               # %for.body.i
                                        #   in Loop: Header=BB7_40 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s6, .LBB7_40
# %bb.42:                               #   in Loop: Header=BB7_39 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB7_39
.LBB7_43:                               # %while.cond.i.i.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_44:                               # %while.cond.i.i
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_30
# %bb.45:                               # %while.body.i.i
                                        #   in Loop: Header=BB7_44 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_44
	b	.LBB7_29
.LBB7_46:                               # %for.end
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
.Lfunc_end7:
	.size	_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc, .Lfunc_end7-_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc,"axG",@progbits,_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc,comdat
	.weak	_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc # -- Begin function _Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc
	.p2align	5
	.type	_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc,@function
_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc: # @_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB8_19
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	beq	$a0, $a1, .LBB8_13
# %bb.2:                                # %for.body.preheader
	move	$s5, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$s8, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s6, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_3:                                # %if.then.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB8_4:                                # %_Z13verify_sortedIPdEvT_S1_.exit
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB8_19
.LBB8_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_7 Depth 2
                                        #     Child Loop BB8_9 Depth 2
                                        #     Child Loop BB8_11 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s7, .LBB8_9
# %bb.6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB8_7:                                # %vector.body
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB8_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB8_10
	.p2align	4, , 16
.LBB8_9:                                # %while.body.i
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB8_9
.LBB8_10:                               # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit
                                        #   in Loop: Header=BB8_5 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	.p2align	4, , 16
.LBB8_11:                               # %while.cond.i.i
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB8_4
# %bb.12:                               # %while.body.i.i
                                        #   in Loop: Header=BB8_11 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB8_11
	b	.LBB8_3
.LBB8_13:                               # %for.body.us.preheader
	move	$s2, $zero
	addi.d	$s3, $s0, 8
	pcalau12i	$s5, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB8_16
	.p2align	4, , 16
.LBB8_14:                               # %if.then.i.us
                                        #   in Loop: Header=BB8_16 Depth=1
	ld.w	$a1, $s5, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB8_15:                               # %_Z13verify_sortedIPdEvT_S1_.exit.us
                                        #   in Loop: Header=BB8_16 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB8_19
.LBB8_16:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_17 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	.p2align	4, , 16
.LBB8_17:                               # %while.cond.i.i.us
                                        #   Parent Loop BB8_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB8_15
# %bb.18:                               # %while.body.i.i.us
                                        #   in Loop: Header=BB8_17 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB8_17
	b	.LBB8_14
.LBB8_19:                               # %for.end
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
.Lfunc_end8:
	.size	_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc, .Lfunc_end8-_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,"axG",@progbits,_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,comdat
	.weak	_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc # -- Begin function _Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.p2align	5
	.type	_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,@function
_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc: # @_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB9_20
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	bne	$a0, $a1, .LBB9_8
# %bb.2:                                # %for.body.us.preheader
	move	$s2, $zero
	addi.d	$s3, $s0, 8
	pcalau12i	$s5, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_3:                                # %if.then.i.us
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.w	$a1, $s5, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB9_4:                                # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB9_20
.LBB9_5:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	.p2align	4, , 16
.LBB9_6:                                # %while.cond.i.i.us
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB9_4
# %bb.7:                                # %while.body.i.i.us
                                        #   in Loop: Header=BB9_6 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB9_6
	b	.LBB9_3
.LBB9_8:                                # %for.body.preheader
	move	$s5, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$s8, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 32
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s6, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB9_11
	.p2align	4, , 16
.LBB9_9:                                # %if.then.i
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB9_10:                               # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB9_20
.LBB9_11:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_14 Depth 2
                                        #     Child Loop BB9_16 Depth 2
                                        #     Child Loop BB9_18 Depth 2
	beqz	$s7, .LBB9_13
# %bb.12:                               #   in Loop: Header=BB9_11 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB9_16
	.p2align	4, , 16
.LBB9_13:                               # %vector.body.preheader
                                        #   in Loop: Header=BB9_11 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB9_14:                               # %vector.body
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB9_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB9_11 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB9_17
	.p2align	4, , 16
.LBB9_16:                               # %while.body.i
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB9_16
.LBB9_17:                               # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit
                                        #   in Loop: Header=BB9_11 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	.p2align	4, , 16
.LBB9_18:                               # %while.cond.i.i
                                        #   Parent Loop BB9_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB9_10
# %bb.19:                               # %while.body.i.i
                                        #   in Loop: Header=BB9_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB9_18
	b	.LBB9_9
.LBB9_20:                               # %for.end
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
.Lfunc_end9:
	.size	_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc, .Lfunc_end9-_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc,"axG",@progbits,_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc,comdat
	.weak	_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc # -- Begin function _Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc
	.p2align	5
	.type	_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc,@function
_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc: # @_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB10_19
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	beq	$a0, $a1, .LBB10_13
# %bb.2:                                # %for.body.preheader
	move	$s5, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$s8, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s6, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_3:                               # %if.then.i
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_4:                               # %_Z13verify_sortedIPdEvT_S1_.exit
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB10_19
.LBB10_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_7 Depth 2
                                        #     Child Loop BB10_9 Depth 2
                                        #     Child Loop BB10_11 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s7, .LBB10_9
# %bb.6:                                # %vector.body.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB10_7:                               # %vector.body
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB10_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB10_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB10_10
	.p2align	4, , 16
.LBB10_9:                               # %while.body.i
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB10_9
.LBB10_10:                              # %_ZN9benchmark4copyIPdS1_EEvT_S2_T0_.exit.loopexit
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	.p2align	4, , 16
.LBB10_11:                              # %while.cond.i.i
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB10_4
# %bb.12:                               # %while.body.i.i
                                        #   in Loop: Header=BB10_11 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_11
	b	.LBB10_3
.LBB10_13:                              # %for.body.us.preheader
	move	$s2, $zero
	addi.d	$s3, $s0, 8
	pcalau12i	$s5, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB10_16
	.p2align	4, , 16
.LBB10_14:                              # %if.then.i.us
                                        #   in Loop: Header=BB10_16 Depth=1
	ld.w	$a1, $s5, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB10_15:                              # %_Z13verify_sortedIPdEvT_S1_.exit.us
                                        #   in Loop: Header=BB10_16 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB10_19
.LBB10_16:                              # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_17 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	.p2align	4, , 16
.LBB10_17:                              # %while.cond.i.i.us
                                        #   Parent Loop BB10_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB10_15
# %bb.18:                               # %while.body.i.i.us
                                        #   in Loop: Header=BB10_17 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB10_17
	b	.LBB10_14
.LBB10_19:                              # %for.end
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
.Lfunc_end10:
	.size	_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc, .Lfunc_end10-_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,"axG",@progbits,_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,comdat
	.weak	_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc # -- Begin function _Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.p2align	5
	.type	_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc,@function
_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc: # @_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB11_20
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	bne	$a0, $a1, .LBB11_8
# %bb.2:                                # %for.body.us.preheader
	move	$s2, $zero
	addi.d	$s3, $s0, 8
	pcalau12i	$s5, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB11_5
	.p2align	4, , 16
.LBB11_3:                               # %if.then.i.us
                                        #   in Loop: Header=BB11_5 Depth=1
	ld.w	$a1, $s5, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB11_4:                               # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us
                                        #   in Loop: Header=BB11_5 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s2, $s2, 1
	bge	$s2, $a0, .LBB11_20
.LBB11_5:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_6 Depth 2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	.p2align	4, , 16
.LBB11_6:                               # %while.cond.i.i.us
                                        #   Parent Loop BB11_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB11_4
# %bb.7:                                # %while.body.i.i.us
                                        #   in Loop: Header=BB11_6 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB11_6
	b	.LBB11_3
.LBB11_8:                               # %for.body.preheader
	move	$s5, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$s8, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 32
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s6, $s0, 8
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB11_11
	.p2align	4, , 16
.LBB11_9:                               # %if.then.i
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB11_10:                              # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.w	$a0, $s4, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB11_20
.LBB11_11:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_14 Depth 2
                                        #     Child Loop BB11_16 Depth 2
                                        #     Child Loop BB11_18 Depth 2
	beqz	$s7, .LBB11_13
# %bb.12:                               #   in Loop: Header=BB11_11 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB11_16
	.p2align	4, , 16
.LBB11_13:                              # %vector.body.preheader
                                        #   in Loop: Header=BB11_11 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB11_14:                              # %vector.body
                                        #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB11_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB11_11 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB11_17
	.p2align	4, , 16
.LBB11_16:                              # %while.body.i
                                        #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB11_16
.LBB11_17:                              # %_ZN9benchmark4copyIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES7_EEvT_S8_T0_.exit.loopexit
                                        #   in Loop: Header=BB11_11 Depth=1
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	.p2align	4, , 16
.LBB11_18:                              # %while.cond.i.i
                                        #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB11_10
# %bb.19:                               # %while.body.i.i
                                        #   in Loop: Header=BB11_18 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB11_18
	b	.LBB11_9
.LBB11_20:                              # %for.end
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
.Lfunc_end11:
	.size	_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc, .Lfunc_end11-_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIdSaIdEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.p2align	2
	.type	_ZNSt6vectorIdSaIdEE17_M_default_appendEm,@function
_ZNSt6vectorIdSaIdEE17_M_default_appendEm: # @_ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	beqz	$a1, .LBB12_15
# %bb.1:                                # %if.then
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a1, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $a1
	srai.d	$a0, $a0, 3
	bgeu	$a0, $s0, .LBB12_10
# %bb.2:                                # %if.else
	ld.d	$s1, $fp, 0
	sub.d	$s2, $a1, $s1
	srai.d	$a1, $s2, 3
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 255
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB12_16
# %bb.3:                                # %if.then.i.i.i23
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	ori	$s7, $zero, 1
	stx.d	$zero, $a0, $s2
	beq	$s0, $s7, .LBB12_5
# %bb.4:                                # %if.end.i.i.i.i26
	addi.d	$a0, $s6, 8
	slli.d	$a1, $s0, 3
	addi.d	$a2, $a1, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB12_5:                               # %invoke.cont
	blt	$s2, $s7, .LBB12_7
# %bb.6:                                # %if.then.i.i.i33
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB12_7:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
	beqz	$s1, .LBB12_9
# %bb.8:                                # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_9:                               # %_ZNSt6vectorIdSaIdEE12_Guard_allocD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 3
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 3
	st.d	$a0, $fp, 16
	b	.LBB12_15
.LBB12_10:                              # %if.then.i.i.i
	st.d	$zero, $a1, 0
	ori	$a2, $zero, 1
	addi.d	$a0, $a1, 8
	bne	$s0, $a2, .LBB12_12
# %bb.11:
	st.d	$a0, $fp, 8
	b	.LBB12_15
.LBB12_12:                              # %if.end.i.i.i.i
	slli.d	$a2, $s0, 3
	ori	$a3, $zero, 8
	alsl.d	$s0, $s0, $a1, 3
	beq	$a2, $a3, .LBB12_14
# %bb.13:                               # %for.body.i.preheader.i.i.i
	addi.d	$a2, $a2, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB12_14:                              # %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit
	st.d	$s0, $fp, 8
.LBB12_15:                              # %if.end45
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
.LBB12_16:                              # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZNSt6vectorIdSaIdEE17_M_default_appendEm, .Lfunc_end12-_ZNSt6vectorIdSaIdEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortIPddEEvT_S2_,"axG",@progbits,_ZN9benchmark9quicksortIPddEEvT_S2_,comdat
	.weak	_ZN9benchmark9quicksortIPddEEvT_S2_ # -- Begin function _ZN9benchmark9quicksortIPddEEvT_S2_
	.p2align	5
	.type	_ZN9benchmark9quicksortIPddEEvT_S2_,@function
_ZN9benchmark9quicksortIPddEEvT_S2_:    # @_ZN9benchmark9quicksortIPddEEvT_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a1
	sub.d	$a1, $a1, $a0
	ori	$a2, $zero, 9
	blt	$a1, $a2, .LBB13_11
# %bb.1:                                # %if.then.preheader
	addi.d	$s1, $fp, -8
	ori	$s2, $zero, 8
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %for.end
                                        #   in Loop: Header=BB13_3 Depth=1
	addi.d	$s0, $a1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bge	$s2, $s3, .LBB13_11
.LBB13_3:                               # %if.then
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
                                        #       Child Loop BB13_5 Depth 3
                                        #       Child Loop BB13_8 Depth 3
	fld.d	$fa0, $a0, 0
	move	$a1, $fp
	move	$a2, $a0
	.p2align	4, , 16
.LBB13_4:                               # %for.cond
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_5 Depth 3
                                        #       Child Loop BB13_8 Depth 3
	sub.d	$s3, $s1, $a1
	.p2align	4, , 16
.LBB13_5:                               # %while.cond
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s3, $s3, 8
	bcnez	$fcc0, .LBB13_5
# %bb.6:                                # %while.end
                                        #   in Loop: Header=BB13_4 Depth=2
	bgeu	$a2, $a1, .LBB13_2
# %bb.7:                                # %while.cond4.preheader
                                        #   in Loop: Header=BB13_4 Depth=2
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB13_8:                               # %while.cond4
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB13_8
# %bb.9:                                # %while.end8
                                        #   in Loop: Header=BB13_4 Depth=2
	bgeu	$a2, $a1, .LBB13_2
# %bb.10:                               # %if.end11
                                        #   in Loop: Header=BB13_4 Depth=2
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB13_4
.LBB13_11:                              # %if.end13
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	_ZN9benchmark9quicksortIPddEEvT_S2_, .Lfunc_end13-_ZN9benchmark9quicksortIPddEEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,"axG",@progbits,_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,comdat
	.weak	_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_ # -- Begin function _ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.p2align	5
	.type	_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,@function
_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_: # @_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a1
	move	$s0, $a0
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 9
	blt	$a0, $a1, .LBB14_11
# %bb.1:                                # %if.then.lr.ph
	ori	$s1, $zero, 8
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               # %for.end
                                        #   in Loop: Header=BB14_3 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
	sub.d	$a0, $fp, $s0
	bge	$s1, $a0, .LBB14_11
.LBB14_3:                               # %if.then
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_4 Depth 2
                                        #       Child Loop BB14_5 Depth 3
                                        #       Child Loop BB14_8 Depth 3
	move	$a0, $s0
	fld.d	$fa0, $s0, 0
	move	$a1, $s0
	move	$a2, $fp
	.p2align	4, , 16
.LBB14_4:                               # %for.cond
                                        #   Parent Loop BB14_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_5 Depth 3
                                        #       Child Loop BB14_8 Depth 3
	addi.d	$s0, $a2, 8
	.p2align	4, , 16
.LBB14_5:                               # %while.cond
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a2, -8
	addi.d	$a2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s0, $s0, -8
	bcnez	$fcc0, .LBB14_5
# %bb.6:                                # %while.end
                                        #   in Loop: Header=BB14_4 Depth=2
	bgeu	$a1, $a2, .LBB14_2
# %bb.7:                                # %while.cond9.preheader
                                        #   in Loop: Header=BB14_4 Depth=2
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB14_8:                               # %while.cond9
                                        #   Parent Loop BB14_3 Depth=1
                                        #     Parent Loop BB14_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB14_8
# %bb.9:                                # %while.end14
                                        #   in Loop: Header=BB14_4 Depth=2
	bgeu	$a1, $a2, .LBB14_2
# %bb.10:                               # %if.end17
                                        #   in Loop: Header=BB14_4 Depth=2
	fst.d	$fa2, $a2, 0
	fst.d	$fa1, $a1, 0
	b	.LBB14_4
.LBB14_11:                              # %if.end38
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_, .Lfunc_end14-_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_,"axG",@progbits,_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_,comdat
	.weak	_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_ # -- Begin function _ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_
	.p2align	5
	.type	_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_,@function
_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_: # @_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sub.d	$a2, $a0, $a1
	ori	$a3, $zero, 9
	blt	$a2, $a3, .LBB15_9
# %bb.1:                                # %if.then
	fld.d	$fa0, $a0, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB15_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_5 Depth 2
	fld.d	$fa1, $a1, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB15_2
# %bb.3:                                # %while.end
                                        #   in Loop: Header=BB15_2 Depth=1
	bgeu	$a1, $a2, .LBB15_8
# %bb.4:                                # %while.cond7.preheader
                                        #   in Loop: Header=BB15_2 Depth=1
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB15_5:                               # %while.cond7
                                        #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, -16
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB15_5
# %bb.6:                                # %while.end12
                                        #   in Loop: Header=BB15_2 Depth=1
	bgeu	$a1, $a2, .LBB15_8
# %bb.7:                                # %if.end15
                                        #   in Loop: Header=BB15_2 Depth=1
	fst.d	$fa2, $a1, -8
	fst.d	$fa1, $a2, -8
	b	.LBB15_2
.LBB15_8:                               # %for.end
	st.d	$a0, $sp, 32
	addi.d	$s0, $a1, -8
	st.d	$s0, $sp, 24
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$s0, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
.LBB15_9:                               # %if.end23
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end15:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_, .Lfunc_end15-_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,"axG",@progbits,_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,comdat
	.weak	_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_ # -- Begin function _ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.p2align	5
	.type	_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,@function
_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_: # @_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sub.d	$a2, $a0, $a1
	ori	$a3, $zero, 9
	blt	$a2, $a3, .LBB16_9
# %bb.1:                                # %if.then
	fld.d	$fa0, $a0, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB16_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
	fld.d	$fa1, $a1, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB16_2
# %bb.3:                                # %while.end
                                        #   in Loop: Header=BB16_2 Depth=1
	bgeu	$a1, $a2, .LBB16_8
# %bb.4:                                # %while.cond7.preheader
                                        #   in Loop: Header=BB16_2 Depth=1
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB16_5:                               # %while.cond7
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, -16
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB16_5
# %bb.6:                                # %while.end12
                                        #   in Loop: Header=BB16_2 Depth=1
	bgeu	$a1, $a2, .LBB16_8
# %bb.7:                                # %if.end15
                                        #   in Loop: Header=BB16_2 Depth=1
	fst.d	$fa2, $a1, -8
	fst.d	$fa1, $a2, -8
	b	.LBB16_2
.LBB16_8:                               # %for.end
	st.d	$a0, $sp, 32
	addi.d	$s0, $a1, -8
	st.d	$s0, $sp, 24
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 24
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$s0, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.LBB16_9:                               # %if.end23
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end16:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_, .Lfunc_end16-_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,"axG",@progbits,_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,comdat
	.weak	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_ # -- Begin function _ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.p2align	5
	.type	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,@function
_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_: # @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	sub.d	$a2, $a1, $a0
	ori	$a3, $zero, 9
	blt	$a2, $a3, .LBB17_9
# %bb.1:                                # %if.then
	fld.d	$fa0, $a0, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB17_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_5 Depth 2
	fld.d	$fa1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, -8
	bcnez	$fcc0, .LBB17_2
# %bb.3:                                # %while.end
                                        #   in Loop: Header=BB17_2 Depth=1
	bgeu	$a2, $a1, .LBB17_8
# %bb.4:                                # %while.cond7.preheader
                                        #   in Loop: Header=BB17_2 Depth=1
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB17_5:                               # %while.cond7
                                        #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB17_5
# %bb.6:                                # %while.end12
                                        #   in Loop: Header=BB17_2 Depth=1
	bgeu	$a2, $a1, .LBB17_8
# %bb.7:                                # %if.end15
                                        #   in Loop: Header=BB17_2 Depth=1
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB17_2
.LBB17_8:                               # %for.end
	st.d	$a0, $sp, 64
	addi.d	$s0, $a1, 8
	st.d	$s0, $sp, 48
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$s0, $sp, 32
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
.LBB17_9:                               # %if.end23
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end17:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_, .Lfunc_end17-_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,"axG",@progbits,_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,comdat
	.weak	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_ # -- Begin function _ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.p2align	5
	.type	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,@function
_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_: # @_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	sub.d	$a2, $a1, $a0
	ori	$a3, $zero, 9
	blt	$a2, $a3, .LBB18_10
# %bb.1:                                # %if.then
	fld.d	$fa0, $a0, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB18_2:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_3 Depth 2
                                        #     Child Loop BB18_6 Depth 2
	addi.d	$s0, $a1, 8
	.p2align	4, , 16
.LBB18_3:                               # %while.cond
                                        #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s0, $s0, -8
	bcnez	$fcc0, .LBB18_3
# %bb.4:                                # %while.end
                                        #   in Loop: Header=BB18_2 Depth=1
	bgeu	$a2, $a1, .LBB18_9
# %bb.5:                                # %while.cond7.preheader
                                        #   in Loop: Header=BB18_2 Depth=1
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB18_6:                               # %while.cond7
                                        #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB18_6
# %bb.7:                                # %while.end12
                                        #   in Loop: Header=BB18_2 Depth=1
	bgeu	$a2, $a1, .LBB18_9
# %bb.8:                                # %if.end15
                                        #   in Loop: Header=BB18_2 Depth=1
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB18_2
.LBB18_9:                               # %for.end
	st.d	$a0, $sp, 64
	st.d	$s0, $sp, 48
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 40
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	st.d	$s0, $sp, 32
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 24
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.LBB18_10:                              # %if.end23
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end18:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_, .Lfunc_end18-_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortIPddEEvT_S2_,"axG",@progbits,_ZN9benchmark8heapsortIPddEEvT_S2_,comdat
	.weak	_ZN9benchmark8heapsortIPddEEvT_S2_ # -- Begin function _ZN9benchmark8heapsortIPddEEvT_S2_
	.p2align	5
	.type	_ZN9benchmark8heapsortIPddEEvT_S2_,@function
_ZN9benchmark8heapsortIPddEEvT_S2_:     # @_ZN9benchmark8heapsortIPddEEvT_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB19_25
# %bb.1:                                # %for.body.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB19_4
	.p2align	4, , 16
.LBB19_2:                               #   in Loop: Header=BB19_4 Depth=1
	move	$t0, $a7
.LBB19_3:                               # %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit
                                        #   in Loop: Header=BB19_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB19_13
.LBB19_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_6 Depth 2
                                        #     Child Loop BB19_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB19_12
# %bb.5:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB19_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB19_6:                               # %for.body.i
                                        #   Parent Loop BB19_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a7, $t0, $a0, 3
	slli.d	$t2, $t0, 3
	fld.d	$fa1, $a7, -8
	fldx.d	$fa2, $a0, $t2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	slli.d	$t2, $a7, 3
	fldx.d	$fa1, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	fstx.d	$fa1, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB19_6
# %bb.7:                                # %for.end.i
                                        #   in Loop: Header=BB19_4 Depth=1
	bne	$t0, $a1, .LBB19_9
.LBB19_8:                               # %if.then9.i
                                        #   in Loop: Header=BB19_4 Depth=1
	fld.d	$fa1, $a4, 0
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $a2
.LBB19_9:                               # %if.end14.i
                                        #   in Loop: Header=BB19_4 Depth=1
	blt	$a7, $a6, .LBB19_2
	.p2align	4, , 16
.LBB19_10:                              # %land.rhs.i
                                        #   Parent Loop BB19_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB19_2
# %bb.11:                               # %while.body.i
                                        #   in Loop: Header=BB19_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB19_10
	b	.LBB19_3
	.p2align	4, , 16
.LBB19_12:                              #   in Loop: Header=BB19_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB19_8
	b	.LBB19_9
.LBB19_13:                              # %for.body4.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB19_16
	.p2align	4, , 16
.LBB19_14:                              #   in Loop: Header=BB19_16 Depth=1
	move	$a6, $zero
.LBB19_15:                              # %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit52
                                        #   in Loop: Header=BB19_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB19_25
.LBB19_16:                              # %for.body4
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_18 Depth 2
                                        #     Child Loop BB19_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB19_21
# %bb.17:                               # %for.body.i40.preheader
                                        #   in Loop: Header=BB19_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB19_18:                              # %for.body.i40
                                        #   Parent Loop BB19_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a6, $a7, $a0, 3
	slli.d	$t1, $a7, 3
	fld.d	$fa1, $a6, -8
	fldx.d	$fa2, $a0, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	slli.d	$t1, $a6, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB19_18
# %bb.19:                               # %for.end.i18
                                        #   in Loop: Header=BB19_16 Depth=1
	bne	$a7, $a1, .LBB19_22
.LBB19_20:                              # %if.end14.i22.thread
                                        #   in Loop: Header=BB19_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB19_23
	.p2align	4, , 16
.LBB19_21:                              #   in Loop: Header=BB19_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB19_20
.LBB19_22:                              # %if.end14.i22
                                        #   in Loop: Header=BB19_16 Depth=1
	blt	$a6, $a3, .LBB19_15
	.p2align	4, , 16
.LBB19_23:                              # %land.rhs.i27
                                        #   Parent Loop BB19_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB19_15
# %bb.24:                               # %while.body.i33
                                        #   in Loop: Header=BB19_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB19_23
	b	.LBB19_14
.LBB19_25:                              # %for.end10
	ret
.Lfunc_end19:
	.size	_ZN9benchmark8heapsortIPddEEvT_S2_, .Lfunc_end19-_ZN9benchmark8heapsortIPddEEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,"axG",@progbits,_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,comdat
	.weak	_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_ # -- Begin function _ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.p2align	5
	.type	_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_,@function
_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_: # @_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.cfi_startproc
# %bb.0:                                # %entry
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB20_25
# %bb.1:                                # %for.body.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_2:                               #   in Loop: Header=BB20_4 Depth=1
	move	$t0, $a7
.LBB20_3:                               # %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB20_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB20_13
.LBB20_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_6 Depth 2
                                        #     Child Loop BB20_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB20_12
# %bb.5:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB20_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB20_6:                               # %for.body.i
                                        #   Parent Loop BB20_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a7, $t0, $a0, 3
	slli.d	$t2, $t0, 3
	fld.d	$fa1, $a7, -8
	fldx.d	$fa2, $a0, $t2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	slli.d	$t2, $a7, 3
	fldx.d	$fa1, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	fstx.d	$fa1, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB20_6
# %bb.7:                                # %for.end.i
                                        #   in Loop: Header=BB20_4 Depth=1
	bne	$t0, $a1, .LBB20_9
.LBB20_8:                               # %if.then24.i
                                        #   in Loop: Header=BB20_4 Depth=1
	fld.d	$fa1, $a4, 0
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $a2
.LBB20_9:                               # %if.end37.i
                                        #   in Loop: Header=BB20_4 Depth=1
	blt	$a7, $a6, .LBB20_2
	.p2align	4, , 16
.LBB20_10:                              # %land.rhs.i
                                        #   Parent Loop BB20_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB20_2
# %bb.11:                               # %while.body.i
                                        #   in Loop: Header=BB20_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB20_10
	b	.LBB20_3
	.p2align	4, , 16
.LBB20_12:                              #   in Loop: Header=BB20_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB20_8
	b	.LBB20_9
.LBB20_13:                              # %for.body11.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB20_16
	.p2align	4, , 16
.LBB20_14:                              #   in Loop: Header=BB20_16 Depth=1
	move	$a6, $zero
.LBB20_15:                              # %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit54
                                        #   in Loop: Header=BB20_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB20_25
.LBB20_16:                              # %for.body11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_18 Depth 2
                                        #     Child Loop BB20_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB20_21
# %bb.17:                               # %for.body.i42.preheader
                                        #   in Loop: Header=BB20_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB20_18:                              # %for.body.i42
                                        #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a6, $a7, $a0, 3
	slli.d	$t1, $a7, 3
	fld.d	$fa1, $a6, -8
	fldx.d	$fa2, $a0, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	slli.d	$t1, $a6, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB20_18
# %bb.19:                               # %for.end.i20
                                        #   in Loop: Header=BB20_16 Depth=1
	bne	$a7, $a1, .LBB20_22
.LBB20_20:                              # %if.end37.i24.thread
                                        #   in Loop: Header=BB20_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB20_23
	.p2align	4, , 16
.LBB20_21:                              #   in Loop: Header=BB20_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB20_20
.LBB20_22:                              # %if.end37.i24
                                        #   in Loop: Header=BB20_16 Depth=1
	blt	$a6, $a3, .LBB20_15
	.p2align	4, , 16
.LBB20_23:                              # %land.rhs.i29
                                        #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB20_15
# %bb.24:                               # %while.body.i35
                                        #   in Loop: Header=BB20_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB20_23
	b	.LBB20_14
.LBB20_25:                              # %for.end29
	ret
.Lfunc_end20:
	.size	_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_, .Lfunc_end20-_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_,"axG",@progbits,_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_,comdat
	.weak	_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_ # -- Begin function _ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_
	.p2align	5
	.type	_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_,@function
_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_: # @_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_
	.cfi_startproc
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sub.d	$a1, $a0, $a1
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB21_25
# %bb.1:                                # %for.body.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 1
	sub.d	$a5, $a4, $a1
	alsl.d	$a5, $a5, $a0, 3
	b	.LBB21_4
	.p2align	4, , 16
.LBB21_2:                               #   in Loop: Header=BB21_4 Depth=1
	move	$t0, $a7
.LBB21_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB21_4 Depth=1
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa0, $a7, -8
	bge	$a4, $a6, .LBB21_13
.LBB21_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_6 Depth 2
                                        #     Child Loop BB21_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	sub.d	$a7, $a4, $a6
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa0, $a7, -8
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB21_12
# %bb.5:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB21_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB21_6:                               # %for.body.i
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$a7, $a4, $t0
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa1, $a7, -8
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fld.d	$fa2, $a7, -8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	sub.d	$t2, $a4, $t0
	alsl.d	$t2, $t2, $a0, 3
	fld.d	$fa1, $t2, -8
	slli.d	$t1, $t1, 3
	sub.d	$t1, $a0, $t1
	slli.d	$t0, $t0, 1
	fst.d	$fa1, $t1, -8
	move	$t1, $a7
	blt	$t0, $a1, .LBB21_6
# %bb.7:                                # %for.end.i
                                        #   in Loop: Header=BB21_4 Depth=1
	bne	$t0, $a1, .LBB21_9
.LBB21_8:                               # %if.then12.i
                                        #   in Loop: Header=BB21_4 Depth=1
	fld.d	$fa1, $a5, -8
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, -8
	move	$a7, $a2
.LBB21_9:                               # %if.end19.i
                                        #   in Loop: Header=BB21_4 Depth=1
	blt	$a7, $a6, .LBB21_2
	.p2align	4, , 16
.LBB21_10:                              # %land.rhs.i
                                        #   Parent Loop BB21_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, -8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB21_2
# %bb.11:                               # %while.body.i
                                        #   in Loop: Header=BB21_10 Depth=2
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, -8
	move	$a7, $t0
	bge	$t0, $a6, .LBB21_10
	b	.LBB21_3
	.p2align	4, , 16
.LBB21_12:                              #   in Loop: Header=BB21_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB21_8
	b	.LBB21_9
.LBB21_13:
	ori	$a2, $zero, 1
	ori	$a3, $zero, 3
	ori	$a4, $zero, 2
	b	.LBB21_16
	.p2align	4, , 16
.LBB21_14:                              #   in Loop: Header=BB21_16 Depth=1
	move	$a6, $zero
.LBB21_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit77
                                        #   in Loop: Header=BB21_16 Depth=1
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa0, $a6, -8
	bge	$a4, $a5, .LBB21_25
.LBB21_16:                              # %for.body5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_18 Depth 2
                                        #     Child Loop BB21_23 Depth 2
	move	$a5, $a1
	sub.d	$a1, $a2, $a1
	alsl.d	$a6, $a1, $a0, 3
	fld.d	$fa1, $a0, -8
	fld.d	$fa0, $a6, -8
	addi.d	$a1, $a5, -1
	fst.d	$fa1, $a6, -8
	bltu	$a1, $a3, .LBB21_21
# %bb.17:                               # %for.body.i56.preheader
                                        #   in Loop: Header=BB21_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB21_18:                              # %for.body.i56
                                        #   Parent Loop BB21_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$a6, $a2, $a7
	alsl.d	$a6, $a6, $a0, 3
	fld.d	$fa1, $a6, -8
	slli.d	$a6, $a7, 3
	sub.d	$a6, $a0, $a6
	fld.d	$fa2, $a6, -8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	sub.d	$t1, $a2, $a7
	alsl.d	$t1, $t1, $a0, 3
	fld.d	$fa1, $t1, -8
	slli.d	$t0, $t0, 3
	sub.d	$t0, $a0, $t0
	slli.d	$a7, $a7, 1
	fst.d	$fa1, $t0, -8
	move	$t0, $a6
	blt	$a7, $a1, .LBB21_18
# %bb.19:                               # %for.end.i19
                                        #   in Loop: Header=BB21_16 Depth=1
	bne	$a7, $a1, .LBB21_22
.LBB21_20:                              # %if.end19.i23.thread
                                        #   in Loop: Header=BB21_16 Depth=1
	sub.d	$a7, $a4, $a5
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa1, $a7, -8
	slli.d	$a6, $a6, 3
	addi.d	$a7, $a5, -2
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, -8
	move	$a6, $a7
	b	.LBB21_23
	.p2align	4, , 16
.LBB21_21:                              #   in Loop: Header=BB21_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB21_20
.LBB21_22:                              # %if.end19.i23
                                        #   in Loop: Header=BB21_16 Depth=1
	blt	$a6, $a2, .LBB21_15
	.p2align	4, , 16
.LBB21_23:                              # %land.rhs.i31
                                        #   Parent Loop BB21_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, -8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB21_15
# %bb.24:                               # %while.body.i42
                                        #   in Loop: Header=BB21_23 Depth=2
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, -8
	move	$a6, $t0
	bltu	$a2, $a7, .LBB21_23
	b	.LBB21_14
.LBB21_25:                              # %for.end15
	ret
.Lfunc_end21:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_, .Lfunc_end21-_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,"axG",@progbits,_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,comdat
	.weak	_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_ # -- Begin function _ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.p2align	5
	.type	_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_,@function
_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_: # @_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.cfi_startproc
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sub.d	$a1, $a0, $a1
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB22_25
# %bb.1:                                # %for.body.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 1
	sub.d	$a5, $a4, $a1
	alsl.d	$a5, $a5, $a0, 3
	b	.LBB22_4
	.p2align	4, , 16
.LBB22_2:                               #   in Loop: Header=BB22_4 Depth=1
	move	$t0, $a7
.LBB22_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB22_4 Depth=1
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa0, $a7, -8
	bge	$a4, $a6, .LBB22_13
.LBB22_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_6 Depth 2
                                        #     Child Loop BB22_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	sub.d	$a7, $a4, $a6
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa0, $a7, -8
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB22_12
# %bb.5:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB22_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB22_6:                               # %for.body.i
                                        #   Parent Loop BB22_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$a7, $a4, $t0
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa1, $a7, -8
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fld.d	$fa2, $a7, -8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	sub.d	$t2, $a4, $t0
	alsl.d	$t2, $t2, $a0, 3
	fld.d	$fa1, $t2, -8
	slli.d	$t1, $t1, 3
	sub.d	$t1, $a0, $t1
	slli.d	$t0, $t0, 1
	fst.d	$fa1, $t1, -8
	move	$t1, $a7
	blt	$t0, $a1, .LBB22_6
# %bb.7:                                # %for.end.i
                                        #   in Loop: Header=BB22_4 Depth=1
	bne	$t0, $a1, .LBB22_9
.LBB22_8:                               # %if.then12.i
                                        #   in Loop: Header=BB22_4 Depth=1
	fld.d	$fa1, $a5, -8
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, -8
	move	$a7, $a2
.LBB22_9:                               # %if.end19.i
                                        #   in Loop: Header=BB22_4 Depth=1
	blt	$a7, $a6, .LBB22_2
	.p2align	4, , 16
.LBB22_10:                              # %land.rhs.i
                                        #   Parent Loop BB22_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, -8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB22_2
# %bb.11:                               # %while.body.i
                                        #   in Loop: Header=BB22_10 Depth=2
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, -8
	move	$a7, $t0
	bge	$t0, $a6, .LBB22_10
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_12:                              #   in Loop: Header=BB22_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB22_8
	b	.LBB22_9
.LBB22_13:
	ori	$a2, $zero, 1
	ori	$a3, $zero, 3
	ori	$a4, $zero, 2
	b	.LBB22_16
	.p2align	4, , 16
.LBB22_14:                              #   in Loop: Header=BB22_16 Depth=1
	move	$a6, $zero
.LBB22_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit77
                                        #   in Loop: Header=BB22_16 Depth=1
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa0, $a6, -8
	bge	$a4, $a5, .LBB22_25
.LBB22_16:                              # %for.body5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_18 Depth 2
                                        #     Child Loop BB22_23 Depth 2
	move	$a5, $a1
	sub.d	$a1, $a2, $a1
	alsl.d	$a6, $a1, $a0, 3
	fld.d	$fa1, $a0, -8
	fld.d	$fa0, $a6, -8
	addi.d	$a1, $a5, -1
	fst.d	$fa1, $a6, -8
	bltu	$a1, $a3, .LBB22_21
# %bb.17:                               # %for.body.i56.preheader
                                        #   in Loop: Header=BB22_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB22_18:                              # %for.body.i56
                                        #   Parent Loop BB22_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	sub.d	$a6, $a2, $a7
	alsl.d	$a6, $a6, $a0, 3
	fld.d	$fa1, $a6, -8
	slli.d	$a6, $a7, 3
	sub.d	$a6, $a0, $a6
	fld.d	$fa2, $a6, -8
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	sub.d	$t1, $a2, $a7
	alsl.d	$t1, $t1, $a0, 3
	fld.d	$fa1, $t1, -8
	slli.d	$t0, $t0, 3
	sub.d	$t0, $a0, $t0
	slli.d	$a7, $a7, 1
	fst.d	$fa1, $t0, -8
	move	$t0, $a6
	blt	$a7, $a1, .LBB22_18
# %bb.19:                               # %for.end.i19
                                        #   in Loop: Header=BB22_16 Depth=1
	bne	$a7, $a1, .LBB22_22
.LBB22_20:                              # %if.end19.i23.thread
                                        #   in Loop: Header=BB22_16 Depth=1
	sub.d	$a7, $a4, $a5
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa1, $a7, -8
	slli.d	$a6, $a6, 3
	addi.d	$a7, $a5, -2
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, -8
	move	$a6, $a7
	b	.LBB22_23
	.p2align	4, , 16
.LBB22_21:                              #   in Loop: Header=BB22_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB22_20
.LBB22_22:                              # %if.end19.i23
                                        #   in Loop: Header=BB22_16 Depth=1
	blt	$a6, $a2, .LBB22_15
	.p2align	4, , 16
.LBB22_23:                              # %land.rhs.i31
                                        #   Parent Loop BB22_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, -8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB22_15
# %bb.24:                               # %while.body.i42
                                        #   in Loop: Header=BB22_23 Depth=2
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, -8
	move	$a6, $t0
	bltu	$a2, $a7, .LBB22_23
	b	.LBB22_14
.LBB22_25:                              # %for.end15
	ret
.Lfunc_end22:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_, .Lfunc_end22-_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,"axG",@progbits,_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,comdat
	.weak	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_ # -- Begin function _ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.p2align	5
	.type	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_,@function
_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_: # @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.cfi_startproc
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a1, 8
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB23_25
# %bb.1:                                # %for.body.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB23_4
	.p2align	4, , 16
.LBB23_2:                               #   in Loop: Header=BB23_4 Depth=1
	move	$t0, $a7
.LBB23_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB23_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB23_13
.LBB23_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_6 Depth 2
                                        #     Child Loop BB23_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB23_12
# %bb.5:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB23_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB23_6:                               # %for.body.i
                                        #   Parent Loop BB23_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a7, $t0, $a0, 3
	slli.d	$t2, $t0, 3
	fld.d	$fa1, $a7, -8
	fldx.d	$fa2, $a0, $t2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a7, $fcc0
	add.d	$t0, $t0, $a7
	addi.d	$a7, $t0, -1
	slli.d	$t2, $a7, 3
	fldx.d	$fa1, $a0, $t2
	slli.d	$t1, $t1, 3
	slli.d	$t0, $t0, 1
	fstx.d	$fa1, $a0, $t1
	move	$t1, $a7
	blt	$t0, $a1, .LBB23_6
# %bb.7:                                # %for.end.i
                                        #   in Loop: Header=BB23_4 Depth=1
	bne	$t0, $a1, .LBB23_9
.LBB23_8:                               # %if.then12.i
                                        #   in Loop: Header=BB23_4 Depth=1
	fld.d	$fa1, $a4, 0
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $a2
.LBB23_9:                               # %if.end19.i
                                        #   in Loop: Header=BB23_4 Depth=1
	blt	$a7, $a6, .LBB23_2
	.p2align	4, , 16
.LBB23_10:                              # %land.rhs.i
                                        #   Parent Loop BB23_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB23_2
# %bb.11:                               # %while.body.i
                                        #   in Loop: Header=BB23_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB23_10
	b	.LBB23_3
	.p2align	4, , 16
.LBB23_12:                              #   in Loop: Header=BB23_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB23_8
	b	.LBB23_9
.LBB23_13:                              # %for.body5.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB23_16
	.p2align	4, , 16
.LBB23_14:                              #   in Loop: Header=BB23_16 Depth=1
	move	$a6, $zero
.LBB23_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit65
                                        #   in Loop: Header=BB23_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB23_25
.LBB23_16:                              # %for.body5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_18 Depth 2
                                        #     Child Loop BB23_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB23_21
# %bb.17:                               # %for.body.i53.preheader
                                        #   in Loop: Header=BB23_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB23_18:                              # %for.body.i53
                                        #   Parent Loop BB23_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a6, $a7, $a0, 3
	slli.d	$t1, $a7, 3
	fld.d	$fa1, $a6, -8
	fldx.d	$fa2, $a0, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	slli.d	$t1, $a6, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB23_18
# %bb.19:                               # %for.end.i27
                                        #   in Loop: Header=BB23_16 Depth=1
	bne	$a7, $a1, .LBB23_22
.LBB23_20:                              # %if.end19.i31.thread
                                        #   in Loop: Header=BB23_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB23_23
	.p2align	4, , 16
.LBB23_21:                              #   in Loop: Header=BB23_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB23_20
.LBB23_22:                              # %if.end19.i31
                                        #   in Loop: Header=BB23_16 Depth=1
	blt	$a6, $a3, .LBB23_15
	.p2align	4, , 16
.LBB23_23:                              # %land.rhs.i37
                                        #   Parent Loop BB23_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB23_15
# %bb.24:                               # %while.body.i43
                                        #   in Loop: Header=BB23_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB23_23
	b	.LBB23_14
.LBB23_25:                              # %for.end15
	ret
.Lfunc_end23:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_, .Lfunc_end23-_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,"axG",@progbits,_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,comdat
	.weak	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_ # -- Begin function _ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.p2align	5
	.type	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_,@function
_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_: # @_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.cfi_startproc
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 8
	ld.d	$a1, $a1, 8
	sub.d	$a1, $a1, $a2
	srai.d	$a1, $a1, 3
	ori	$a3, $zero, 2
	blt	$a1, $a3, .LBB24_25
# %bb.1:                                # %for.body.lr.ph
	srli.d	$a4, $a1, 1
	addi.d	$a3, $a1, -1
	alsl.d	$a5, $a3, $a2, 3
	ori	$a6, $zero, 1
	b	.LBB24_4
	.p2align	4, , 16
.LBB24_2:                               #   in Loop: Header=BB24_4 Depth=1
	move	$t1, $t0
.LBB24_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB24_4 Depth=1
	slli.d	$t0, $t1, 3
	fstx.d	$fa0, $a2, $t0
	bge	$a6, $a7, .LBB24_13
.LBB24_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_6 Depth 2
                                        #     Child Loop BB24_10 Depth 2
	move	$a7, $a4
	addi.d	$a4, $a4, -1
	slli.d	$t0, $a4, 3
	fldx.d	$fa0, $a2, $t0
	slli.d	$t0, $a4, 1
	addi.d	$t1, $t0, 2
	bge	$t1, $a1, .LBB24_12
# %bb.5:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB24_4 Depth=1
	move	$t2, $a4
	.p2align	4, , 16
.LBB24_6:                               # %for.body.i
                                        #   Parent Loop BB24_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$t0, $t1, $a2, 3
	slli.d	$t3, $t1, 3
	fld.d	$fa1, $t0, -8
	fldx.d	$fa2, $a2, $t3
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$t0, $fcc0
	add.d	$t1, $t1, $t0
	addi.d	$t0, $t1, -1
	slli.d	$t3, $t0, 3
	fldx.d	$fa1, $a2, $t3
	slli.d	$t2, $t2, 3
	slli.d	$t1, $t1, 1
	fstx.d	$fa1, $a2, $t2
	move	$t2, $t0
	blt	$t1, $a1, .LBB24_6
# %bb.7:                                # %for.end.i
                                        #   in Loop: Header=BB24_4 Depth=1
	bne	$t1, $a1, .LBB24_9
.LBB24_8:                               # %if.then12.i
                                        #   in Loop: Header=BB24_4 Depth=1
	fld.d	$fa1, $a5, 0
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a2, $t0
	move	$t0, $a3
.LBB24_9:                               # %if.end19.i
                                        #   in Loop: Header=BB24_4 Depth=1
	blt	$t0, $a7, .LBB24_2
	.p2align	4, , 16
.LBB24_10:                              # %land.rhs.i
                                        #   Parent Loop BB24_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 63
	add.d	$t1, $t1, $t2
	srai.d	$t1, $t1, 1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $a2, $t2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_2
# %bb.11:                               # %while.body.i
                                        #   in Loop: Header=BB24_10 Depth=2
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a2, $t0
	move	$t0, $t1
	bge	$t1, $a7, .LBB24_10
	b	.LBB24_3
	.p2align	4, , 16
.LBB24_12:                              #   in Loop: Header=BB24_4 Depth=1
	move	$t0, $a4
	beq	$t1, $a1, .LBB24_8
	b	.LBB24_9
.LBB24_13:                              # %for.body5.lr.ph
	ld.d	$a0, $a0, 8
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB24_16
	.p2align	4, , 16
.LBB24_14:                              #   in Loop: Header=BB24_16 Depth=1
	move	$a6, $zero
.LBB24_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit65
                                        #   in Loop: Header=BB24_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB24_25
.LBB24_16:                              # %for.body5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_18 Depth 2
                                        #     Child Loop BB24_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB24_21
# %bb.17:                               # %for.body.i53.preheader
                                        #   in Loop: Header=BB24_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB24_18:                              # %for.body.i53
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	alsl.d	$a6, $a7, $a0, 3
	slli.d	$t1, $a7, 3
	fld.d	$fa1, $a6, -8
	fldx.d	$fa2, $a0, $t1
	fcmp.clt.d	$fcc0, $fa1, $fa2
	movcf2gr	$a6, $fcc0
	or	$a7, $a7, $a6
	addi.d	$a6, $a7, -1
	slli.d	$t1, $a6, 3
	fldx.d	$fa1, $a0, $t1
	slli.d	$t0, $t0, 3
	slli.d	$a7, $a7, 1
	fstx.d	$fa1, $a0, $t0
	move	$t0, $a6
	blt	$a7, $a1, .LBB24_18
# %bb.19:                               # %for.end.i27
                                        #   in Loop: Header=BB24_16 Depth=1
	bne	$a7, $a1, .LBB24_22
.LBB24_20:                              # %if.end19.i31.thread
                                        #   in Loop: Header=BB24_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB24_23
	.p2align	4, , 16
.LBB24_21:                              #   in Loop: Header=BB24_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB24_20
.LBB24_22:                              # %if.end19.i31
                                        #   in Loop: Header=BB24_16 Depth=1
	blt	$a6, $a3, .LBB24_15
	.p2align	4, , 16
.LBB24_23:                              # %land.rhs.i37
                                        #   Parent Loop BB24_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB24_15
# %bb.24:                               # %while.body.i43
                                        #   in Loop: Header=BB24_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB24_23
	b	.LBB24_14
.LBB24_25:                              # %for.end15
	ret
.Lfunc_end24:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_, .Lfunc_end24-_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
	.cfi_endproc
                                        # -- End function
	.type	results,@object                 # @results
	.bss
	.globl	results
	.p2align	3, 0x0
results:
	.dword	0
	.size	results, 8

	.type	current_test,@object            # @current_test
	.globl	current_test
	.p2align	2, 0x0
current_test:
	.word	0                               # 0x0
	.size	current_test, 4

	.type	allocated_results,@object       # @allocated_results
	.globl	allocated_results
	.p2align	2, 0x0
allocated_results:
	.word	0                               # 0x0
	.size	allocated_results, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Could not allocate %d results\n"
	.size	.L.str, 31

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\ntest %*s description   absolute   operations   ratio with\n"
	.size	.L.str.1, 60

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	" "
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"number %*s time       per second   test0\n\n"
	.size	.L.str.3, 43

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%2i %*s\"%s\"  %5.2f sec   %5.2f M     %.2f\n"
	.size	.L.str.4, 43

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.space	1
	.size	.L.str.5, 1

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\nTotal absolute time for %s: %.2f sec\n"
	.size	.L.str.6, 39

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\n%s Penalty: %.2f\n\n"
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\ntest %*s description   absolute\n"
	.size	.L.str.8, 34

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"number %*s time\n\n"
	.size	.L.str.9, 18

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%2i %*s\"%s\"  %5.2f sec\n"
	.size	.L.str.10, 24

	.type	start_time,@object              # @start_time
	.bss
	.globl	start_time
	.p2align	3, 0x0
start_time:
	.dword	0                               # 0x0
	.size	start_time, 8

	.type	end_time,@object                # @end_time
	.globl	end_time
	.p2align	3, 0x0
end_time:
	.dword	0                               # 0x0
	.size	end_time, 8

	.type	iterations,@object              # @iterations
	.data
	.globl	iterations
	.p2align	2, 0x0
iterations:
	.word	60000                           # 0xea60
	.size	iterations, 4

	.type	init_value,@object              # @init_value
	.globl	init_value
	.p2align	3, 0x0
init_value:
	.dword	0x4008000000000000              # double 3
	.size	init_value, 8

	.type	data,@object                    # @data
	.bss
	.globl	data
	.p2align	3, 0x0
data:
	.space	16000
	.size	data, 16000

	.type	dataMaster,@object              # @dataMaster
	.globl	dataMaster
	.p2align	3, 0x0
dataMaster:
	.space	16000
	.size	dataMaster, 16000

	.type	dpb,@object                     # @dpb
	.data
	.globl	dpb
	.p2align	3, 0x0
dpb:
	.dword	data
	.size	dpb, 8

	.type	dpe,@object                     # @dpe
	.globl	dpe
	.p2align	3, 0x0
dpe:
	.dword	data+16000
	.size	dpe, 8

	.type	dMpb,@object                    # @dMpb
	.globl	dMpb
	.p2align	3, 0x0
dMpb:
	.dword	dataMaster
	.size	dMpb, 8

	.type	dMpe,@object                    # @dMpe
	.globl	dMpe
	.p2align	3, 0x0
dMpe:
	.dword	dataMaster+16000
	.size	dMpe, 8

	.type	rdpb,@object                    # @rdpb
	.globl	rdpb
	.p2align	3, 0x0
rdpb:
	.dword	data+16000
	.size	rdpb, 8

	.type	rdpe,@object                    # @rdpe
	.globl	rdpe
	.p2align	3, 0x0
rdpe:
	.dword	data
	.size	rdpe, 8

	.type	rdMpb,@object                   # @rdMpb
	.globl	rdMpb
	.p2align	3, 0x0
rdMpb:
	.dword	dataMaster+16000
	.size	rdMpb, 8

	.type	rdMpe,@object                   # @rdMpe
	.globl	rdMpe
	.p2align	3, 0x0
rdMpe:
	.dword	dataMaster
	.size	rdMpe, 8

	.type	rrdpb,@object                   # @rrdpb
	.globl	rrdpb
	.p2align	3, 0x0
rrdpb:
	.space	8
	.dword	data
	.size	rrdpb, 16

	.type	rrdpe,@object                   # @rrdpe
	.globl	rrdpe
	.p2align	3, 0x0
rrdpe:
	.space	8
	.dword	data+16000
	.size	rrdpe, 16

	.type	rrdMpb,@object                  # @rrdMpb
	.globl	rrdMpb
	.p2align	3, 0x0
rrdMpb:
	.space	8
	.dword	dataMaster
	.size	rrdMpb, 16

	.type	rrdMpe,@object                  # @rrdMpe
	.globl	rrdMpe
	.p2align	3, 0x0
rrdMpe:
	.space	8
	.dword	dataMaster+16000
	.size	rrdMpe, 16

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"insertion_sort double pointer verify2"
	.size	.L.str.26, 38

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"insertion_sort double vector iterator"
	.size	.L.str.27, 38

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"quicksort double pointer verify2"
	.size	.L.str.34, 33

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"quicksort double vector iterator"
	.size	.L.str.35, 33

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"heap_sort double pointer verify2"
	.size	.L.str.42, 33

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"heap_sort double vector iterator"
	.size	.L.str.43, 33

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"vector::_M_default_append"
	.size	.L.str.50, 26

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"test %i failed\n"
	.size	.L.str.51, 16

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"sort test %i failed\n"
	.size	.L.str.52, 21

	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym data
	.addrsig_sym dataMaster
