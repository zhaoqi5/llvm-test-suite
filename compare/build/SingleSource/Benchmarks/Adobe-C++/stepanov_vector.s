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
	addi.d	$sp, $sp, -352
	.cfi_def_cfa_offset 352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 248                  # 8-byte Folded Spill
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
	ori	$s1, $zero, 2
	pcalau12i	$s7, %pc_hi20(iterations)
	pcalau12i	$s2, %pc_hi20(init_value)
	blt	$a0, $s1, .LBB5_3
# %bb.1:                                # %if.end
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(__isoc23_strtol)
	jirl	$ra, $ra, 0
	st.w	$a0, $s7, %pc_lo12(iterations)
	beq	$s0, $s1, .LBB5_3
# %bb.2:                                # %if.then2
	ld.d	$a0, $fp, 16
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	fst.d	$fa0, $s2, %pc_lo12(init_value)
.LBB5_3:                                # %if.end5
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	addi.w	$a0, $a0, 123
	pcaddu18i	$ra, %call36(srand)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(dpb)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s3, $a0, %pc_lo12(dpb)
	pcalau12i	$a0, %pc_hi20(dpe)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s4, $a0, %pc_lo12(dpe)
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	beq	$s3, $s4, .LBB5_10
# %bb.4:                                # %while.body.i.preheader
	sub.d	$a0, $s4, $s3
	addi.d	$a1, $a0, -8
	ori	$a2, $zero, 56
	move	$a0, $s3
	bltu	$a1, $a2, .LBB5_8
# %bb.5:                                # %vector.ph
	srli.d	$a0, $a1, 3
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 61, 3
	slli.d	$a2, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a0, $s3, $a0
	xvreplve0.d	$xr0, $xr1
	addi.d	$a3, $s3, 32
	move	$a4, $a2
	.p2align	4, , 16
.LBB5_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a3, -32
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 64
	bnez	$a4, .LBB5_6
# %bb.7:                                # %middle.block
	beq	$a1, $a2, .LBB5_9
	.p2align	4, , 16
.LBB5_8:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $a0, 8
	fst.d	$fa1, $a0, 0
	move	$a0, $a1
	bne	$a1, $s4, .LBB5_8
.LBB5_9:                                # %if.then.i.i.i23.i.loopexit
	fld.d	$fa0, $s2, %pc_lo12(init_value)
	xvst	$xr0, $sp, 176                  # 32-byte Folded Spill
	b	.LBB5_11
.LBB5_10:
	xvst	$xr1, $sp, 176                  # 32-byte Folded Spill
.LBB5_11:                               # %if.then.i.i.i23.i
	lu12i.w	$s1, 3
	ori	$fp, $s1, 3712
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	xvld	$xr1, $sp, 176                  # 32-byte Folded Reload
	xvreplve0.d	$xr0, $xr1
	lu12i.w	$a0, -4
	ori	$a0, $a0, 384
	ori	$a1, $s1, 3744
	.p2align	4, , 16
.LBB5_12:                               # %vector.body1290
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a2, $s0, $a0
	xvstx	$xr0, $a2, $fp
	addi.d	$a0, $a0, 64
	xvstx	$xr0, $a2, $a1
	bnez	$a0, .LBB5_12
# %bb.13:                               # %_ZN9benchmark4fillIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_T0_.exit
	ld.w	$a0, $s7, %pc_lo12(iterations)
	ori	$a1, $zero, 1
	pcalau12i	$s8, %pc_hi20(current_test)
	pcalau12i	$a2, %pc_hi20(rdpb)
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(rdpe)
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	blt	$a0, $a1, .LBB5_76
# %bb.14:                               # %for.body.lr.ph.i
	pcalau12i	$s5, %pc_hi20(.LCPI5_0)
	beq	$s3, $s4, .LBB5_21
# %bb.15:                               # %for.body.i.preheader
	move	$s6, $zero
	fld.d	$fs0, $s5, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$s1, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_17
	.p2align	4, , 16
.LBB5_16:                               # %_Z9check_sumd.exit.i
                                        #   in Loop: Header=BB5_17 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a0, .LBB5_25
.LBB5_17:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_18 Depth 2
	fmov.d	$fa0, $fs1
	move	$a1, $s3
	.p2align	4, , 16
.LBB5_18:                               # %while.body.i.i
                                        #   Parent Loop BB5_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s4, .LBB5_18
# %bb.19:                               # %_ZN9benchmark10accumulateIPddEET0_T_S3_S2_.exit.loopexit.i
                                        #   in Loop: Header=BB5_17 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_16
# %bb.20:                               # %if.then.i.i
                                        #   in Loop: Header=BB5_17 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, %pc_lo12(iterations)
	b	.LBB5_16
.LBB5_21:                               # %for.body.us.i.preheader
	move	$s3, $zero
	fld.d	$fs0, $s5, %pc_lo12(.LCPI5_0)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$s1, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_23
	.p2align	4, , 16
.LBB5_22:                               # %_Z9check_sumd.exit.us.i
                                        #   in Loop: Header=BB5_23 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB5_25
.LBB5_23:                               # %for.body.us.i
                                        # =>This Inner Loop Header: Depth=1
	fmul.d	$fa0, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fs1
	bcnez	$fcc0, .LBB5_22
# %bb.24:                               # %if.then.i.us.i
                                        #   in Loop: Header=BB5_23 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	ld.w	$a0, $s7, %pc_lo12(iterations)
	b	.LBB5_22
.LBB5_25:                               # %invoke.cont32
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_76
# %bb.26:                               # %for.body.i55.preheader
	move	$s3, $zero
	movgr2fr.d	$fs1, $zero
	fld.d	$fs0, $s5, %pc_lo12(.LCPI5_0)
	lu12i.w	$a1, -4
	ori	$s4, $a1, 384
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$s1, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_27:                               # %_Z9check_sumd.exit.i62
                                        #   in Loop: Header=BB5_28 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB5_32
.LBB5_28:                               # %for.body.i55
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_29 Depth 2
	move	$a1, $s4
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_29:                               # %while.body.i.i57
                                        #   Parent Loop BB5_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s0, $a1
	fldx.d	$fa1, $a2, $fp
	addi.d	$a1, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	bnez	$a1, .LBB5_29
# %bb.30:                               # %_ZN9benchmark10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEET0_T_S9_S8_.exit.loopexit.i
                                        #   in Loop: Header=BB5_28 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_27
# %bb.31:                               # %if.then.i.i65
                                        #   in Loop: Header=BB5_28 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, %pc_lo12(iterations)
	b	.LBB5_27
.LBB5_32:                               # %invoke.cont45
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_76
# %bb.33:                               # %for.body.i81.preheader
	move	$s3, $zero
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $a1, %pc_lo12(rdpb)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $a1, %pc_lo12(rdpe)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$s1, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_35
	.p2align	4, , 16
.LBB5_34:                               # %_Z9check_sumd.exit.i87
                                        #   in Loop: Header=BB5_35 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB5_40
.LBB5_35:                               # %for.body.i81
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_37 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s4, $s5, .LBB5_38
# %bb.36:                               # %while.body.i.i82.preheader
                                        #   in Loop: Header=BB5_35 Depth=1
	move	$a1, $s4
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_37:                               # %while.body.i.i82
                                        #   Parent Loop BB5_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a2, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s5, .LBB5_37
.LBB5_38:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIPdEdEET0_T_S5_S4_.exit.i
                                        #   in Loop: Header=BB5_35 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_34
# %bb.39:                               # %if.then.i.i90
                                        #   in Loop: Header=BB5_35 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, %pc_lo12(iterations)
	b	.LBB5_34
.LBB5_40:                               # %invoke.cont48
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_76
# %bb.41:                               # %for.body.i95.preheader
	move	$s3, $zero
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$s1, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_43
	.p2align	4, , 16
.LBB5_42:                               # %_Z9check_sumd.exit.i102
                                        #   in Loop: Header=BB5_43 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB5_47
.LBB5_43:                               # %for.body.i95
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_44 Depth 2
	move	$a1, $fp
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_44:                               # %while.body.i.i97
                                        #   Parent Loop BB5_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s0, $a1
	fld.d	$fa1, $a2, -8
	addi.d	$a1, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	bnez	$a1, .LBB5_44
# %bb.45:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEET0_T_SB_SA_.exit.i
                                        #   in Loop: Header=BB5_43 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_42
# %bb.46:                               # %if.then.i.i105
                                        #   in Loop: Header=BB5_43 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, %pc_lo12(iterations)
	b	.LBB5_42
.LBB5_47:                               # %invoke.cont51
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_76
# %bb.48:                               # %for.body.i109.preheader
	move	$s3, $zero
	movgr2fr.d	$fs1, $zero
	lu12i.w	$a1, 3
	ori	$s4, $a1, 3712
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$s1, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_50
	.p2align	4, , 16
.LBB5_49:                               # %_Z9check_sumd.exit.i123
                                        #   in Loop: Header=BB5_50 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB5_54
.LBB5_50:                               # %for.body.i109
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_51 Depth 2
	move	$a1, $s4
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_51:                               # %while.body.i.i113
                                        #   Parent Loop BB5_50 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s0, $a1
	fld.d	$fa1, $a2, -8
	addi.d	$a1, $a1, -8
	fadd.d	$fa0, $fa0, $fa1
	bnez	$a1, .LBB5_51
# %bb.52:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEET0_T_SB_SA_.exit.i119
                                        #   in Loop: Header=BB5_50 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_49
# %bb.53:                               # %if.then.i.i126
                                        #   in Loop: Header=BB5_50 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, %pc_lo12(iterations)
	b	.LBB5_49
.LBB5_54:                               # %invoke.cont54
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_76
# %bb.55:                               # %for.body.i133.preheader
	move	$s3, $zero
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$s4, $a1, %pc_lo12(rrdpb+8)
	pcalau12i	$a1, %pc_hi20(rrdpe+8)
	ld.d	$s5, $a1, %pc_lo12(rrdpe+8)
	movgr2fr.d	$fs1, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$s1, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_57
	.p2align	4, , 16
.LBB5_56:                               # %_Z9check_sumd.exit.i141
                                        #   in Loop: Header=BB5_57 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a0, .LBB5_62
.LBB5_57:                               # %for.body.i133
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_59 Depth 2
	fmov.d	$fa0, $fs1
	beq	$s4, $s5, .LBB5_60
# %bb.58:                               # %while.body.i.i134.preheader
                                        #   in Loop: Header=BB5_57 Depth=1
	move	$a1, $s4
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_59:                               # %while.body.i.i134
                                        #   Parent Loop BB5_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, 0
	addi.d	$a2, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	move	$a1, $a2
	bne	$a2, $s5, .LBB5_59
.LBB5_60:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IPdEEdEET0_T_S6_S5_.exit.i
                                        #   in Loop: Header=BB5_57 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_56
# %bb.61:                               # %if.then.i.i144
                                        #   in Loop: Header=BB5_57 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, %pc_lo12(iterations)
	b	.LBB5_56
.LBB5_62:                               # %invoke.cont57
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_76
# %bb.63:                               # %for.body.i154.preheader
	move	$s4, $zero
	movgr2fr.d	$fs1, $zero
	lu12i.w	$a1, -4
	ori	$s5, $a1, 384
	lu12i.w	$a1, 3
	ori	$s3, $a1, 3712
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$s1, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_65
	.p2align	4, , 16
.LBB5_64:                               # %_Z9check_sumd.exit.i163
                                        #   in Loop: Header=BB5_65 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB5_69
.LBB5_65:                               # %for.body.i154
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_66 Depth 2
	move	$a1, $s5
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_66:                               # %while.body.i.i157
                                        #   Parent Loop BB5_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s0, $a1
	fldx.d	$fa1, $a2, $s3
	addi.d	$a1, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	bnez	$a1, .LBB5_66
# %bb.67:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i
                                        #   in Loop: Header=BB5_65 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_64
# %bb.68:                               # %if.then.i.i166
                                        #   in Loop: Header=BB5_65 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, %pc_lo12(iterations)
	b	.LBB5_64
.LBB5_69:                               # %invoke.cont60
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_76
# %bb.70:                               # %for.body.i177.preheader
	move	$s4, $zero
	movgr2fr.d	$fs1, $zero
	lu12i.w	$a1, -4
	ori	$s5, $a1, 384
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$s1, $a1, %pc_lo12(.L.str.51)
	b	.LBB5_72
	.p2align	4, , 16
.LBB5_71:                               # %_Z9check_sumd.exit.i192
                                        #   in Loop: Header=BB5_72 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a0, .LBB5_76
.LBB5_72:                               # %for.body.i177
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_73 Depth 2
	move	$a1, $s5
	fmov.d	$fa0, $fs1
	.p2align	4, , 16
.LBB5_73:                               # %while.body.i.i181
                                        #   Parent Loop BB5_72 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s0, $a1
	fldx.d	$fa1, $a2, $s3
	addi.d	$a1, $a1, 8
	fadd.d	$fa0, $fa0, $fa1
	bnez	$a1, .LBB5_73
# %bb.74:                               # %_ZN9benchmark10accumulateISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEET0_T_SC_SB_.exit.i188
                                        #   in Loop: Header=BB5_72 Depth=1
	fld.d	$fa1, $s2, %pc_lo12(init_value)
	fmul.d	$fa1, $fa1, $fs0
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB5_71
# %bb.75:                               # %if.then.i.i195
                                        #   in Loop: Header=BB5_72 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, %pc_lo12(iterations)
	b	.LBB5_71
.LBB5_76:                               # %if.then.i.i.i23.i921
	lu12i.w	$a1, 67108
	ori	$a1, $a1, 3539
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 63
	srai.d	$a0, $a0, 38
	add.d	$a0, $a0, $a1
	st.w	$a0, $s7, %pc_lo12(iterations)
.Ltmp0:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.77:                               # %invoke.cont65
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	move	$a1, $zero
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$s6, %pc_hi20(dMpb)
	ld.d	$s2, $s6, %pc_lo12(dMpb)
	pcalau12i	$a0, %pc_hi20(dMpe)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s3, $a0, %pc_lo12(dMpe)
	beq	$s2, $s3, .LBB5_80
	.p2align	4, , 16
.LBB5_78:                               # %while.body.i217
                                        # =>This Inner Loop Header: Depth=1
	pcaddu18i	$ra, %call36(rand)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.d	$a0, $s2, 8
	fst.d	$fa0, $s2, 0
	move	$s2, $a0
	bne	$a0, $s3, .LBB5_78
# %bb.79:                               # %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit.loopexit
	ld.d	$s2, $s6, %pc_lo12(dMpb)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(dMpe)
.LBB5_80:                               # %_ZN9benchmark11fill_randomIPddEEvT_S2_.exit
	beq	$s2, $s3, .LBB5_87
# %bb.81:                               # %while.body.i226.preheader
	sub.d	$a0, $s3, $s2
	addi.d	$a2, $a0, -8
	ori	$a3, $zero, 56
	move	$a0, $s2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bltu	$a2, $a3, .LBB5_86
# %bb.82:                               # %while.body.i226.preheader
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a3, $a1, $s2
	ori	$a4, $zero, 64
	move	$a0, $s2
	bltu	$a3, $a4, .LBB5_86
# %bb.83:                               # %vector.ph1298
	srli.d	$a0, $a2, 3
	addi.d	$a2, $a0, 1
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$a3, $a0, 3
	slli.d	$a1, $a0, 6
	add.d	$a0, $s2, $a1
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a4, $a1
	addi.d	$a4, $a4, 32
	addi.d	$a5, $s2, 32
	move	$a6, $a3
	.p2align	4, , 16
.LBB5_84:                               # %vector.body1301
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a5, -32
	xvld	$xr1, $a5, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB5_84
# %bb.85:                               # %middle.block1309
	beq	$a2, $a3, .LBB5_87
	.p2align	4, , 16
.LBB5_86:                               # %while.body.i226
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s3, .LBB5_86
.LBB5_87:                               # %_ZN9benchmark4copyIPdN9__gnu_cxx17__normal_iteratorIS1_St6vectorIdSaIdEEEEEEvT_S8_T0_.exit
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a0, %pc_lo12(dpb)
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a0, %pc_lo12(dpe)
.Ltmp3:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a4, $a0, %pc_lo12(.L.str.26)
	movgr2fr.d	$fa0, $zero
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.88:                               # %invoke.cont91
.Ltmp5:                                 # EH_LABEL
	add.d	$s2, $s0, $fp
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $a0, $fp
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a4, $a2, %pc_lo12(.L.str.27)
	movgr2fr.d	$fa0, $zero
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp6:                                 # EH_LABEL
# %bb.89:                               # %invoke.cont116
	st.d	$s8, $sp, 160                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	ld.w	$s3, $s7, %pc_lo12(iterations)
	pcalau12i	$a1, %pc_hi20(rdMpb)
	ori	$a0, $zero, 1
	pcalau12i	$a2, %pc_hi20(rdMpe)
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	blt	$s3, $a0, .LBB5_157
# %bb.90:                               # %for.body.i244.preheader
	move	$s1, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(rdpb)
	ld.d	$s6, $a1, %pc_lo12(rdMpb)
	ld.d	$s7, $a2, %pc_lo12(rdMpe)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $a0, %pc_lo12(rdpe)
	addi.d	$s4, $s5, -8
	sub.d	$a0, $s6, $s5
	sub.d	$a1, $s6, $s7
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$a1, $a0, 2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 5
	sub.d	$a1, $s5, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	sub.d	$a0, $s6, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s6, -32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $s5, -32
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB5_93
	.p2align	4, , 16
.LBB5_91:                               # %if.then.i.i249
                                        #   in Loop: Header=BB5_93 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(iterations)
.LBB5_92:                               # %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i
                                        #   in Loop: Header=BB5_93 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $s3, .LBB5_110
.LBB5_93:                               # %for.body.i244
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_96 Depth 2
                                        #     Child Loop BB5_99 Depth 2
                                        #     Child Loop BB5_103 Depth 2
                                        #       Child Loop BB5_104 Depth 3
                                        #     Child Loop BB5_108 Depth 2
	beq	$s6, $s7, .LBB5_100
# %bb.94:                               # %while.body.i.i245.preheader
                                        #   in Loop: Header=BB5_93 Depth=1
	move	$a1, $s5
	move	$a0, $s6
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_98
# %bb.95:                               # %vector.body1320.preheader
                                        #   in Loop: Header=BB5_93 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_96:                               # %vector.body1320
                                        #   Parent Loop BB5_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -32
	addi.d	$a0, $a0, -32
	bnez	$a2, .LBB5_96
# %bb.97:                               # %middle.block1329
                                        #   in Loop: Header=BB5_93 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB5_100
.LBB5_98:                               # %while.body.i.i245.preheader1462
                                        #   in Loop: Header=BB5_93 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB5_99:                               # %while.body.i.i245
                                        #   Parent Loop BB5_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, -8
	addi.d	$a2, $a0, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a0, $a2
	bne	$a2, $s7, .LBB5_99
.LBB5_100:                              # %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i
                                        #   in Loop: Header=BB5_93 Depth=1
	beq	$s4, $s8, .LBB5_107
# %bb.101:                              # %while.body.i3.i.preheader
                                        #   in Loop: Header=BB5_93 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a1, $s4
	b	.LBB5_103
	.p2align	4, , 16
.LBB5_102:                              # %land.rhs.i.i.for.end.i.i_crit_edge
                                        #   in Loop: Header=BB5_103 Depth=2
	add.d	$a2, $s5, $a2
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	beq	$a1, $s8, .LBB5_107
.LBB5_103:                              # %while.body.i3.i
                                        #   Parent Loop BB5_93 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_104 Depth 3
	fld.d	$fa0, $a1, -8
	addi.d	$a1, $a1, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_104:                              # %land.rhs.i.i
                                        #   Parent Loop BB5_93 Depth=1
                                        #     Parent Loop BB5_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s5, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_102
# %bb.105:                              # %for.body.i.i
                                        #   in Loop: Header=BB5_104 Depth=3
	add.d	$a3, $s5, $a2
	addi.d	$a2, $a2, 8
	fst.d	$fa1, $a3, -8
	bnez	$a2, .LBB5_104
# %bb.106:                              #   in Loop: Header=BB5_103 Depth=2
	move	$a2, $s5
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	bne	$a1, $s8, .LBB5_103
.LBB5_107:                              # %while.cond.i.i.i.preheader
                                        #   in Loop: Header=BB5_93 Depth=1
	move	$a0, $s4
	.p2align	4, , 16
.LBB5_108:                              # %while.cond.i.i.i
                                        #   Parent Loop BB5_93 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s8, .LBB5_92
# %bb.109:                              # %while.body.i.i.i
                                        #   in Loop: Header=BB5_108 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_108
	b	.LBB5_91
.LBB5_110:                              # %invoke.cont121
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB5_156
# %bb.111:                              # %for.body.i256.preheader
	move	$s1, $zero
	lu12i.w	$a0, 3
	ori	$s7, $a0, 3704
	add.d	$s5, $s0, $s7
	ori	$s8, $a0, 3696
	ori	$s6, $zero, 8
	lu12i.w	$a0, -4
	ori	$s4, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB5_114
	.p2align	4, , 16
.LBB5_112:                              # %if.then.i.i272
                                        #   in Loop: Header=BB5_114 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(iterations)
.LBB5_113:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i
                                        #   in Loop: Header=BB5_114 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $s3, .LBB5_123
.LBB5_114:                              # %for.body.i256
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_116 Depth 2
                                        #       Child Loop BB5_117 Depth 3
                                        #     Child Loop BB5_121 Depth 2
	move	$a0, $s0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB5_116
	.p2align	4, , 16
.LBB5_115:                              # %land.rhs.i.i264.for.end.i.i267_crit_edge
                                        #   in Loop: Header=BB5_116 Depth=2
	add.d	$a2, $s5, $a2
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	beq	$a1, $s0, .LBB5_120
.LBB5_116:                              # %land.rhs.preheader.i.i
                                        #   Parent Loop BB5_114 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_117 Depth 3
	fld.d	$fa0, $a1, -8
	addi.d	$a1, $a1, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_117:                              # %land.rhs.i.i264
                                        #   Parent Loop BB5_114 Depth=1
                                        #     Parent Loop BB5_116 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s5, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_115
# %bb.118:                              # %for.body.i.i277
                                        #   in Loop: Header=BB5_117 Depth=3
	add.d	$a3, $s0, $a2
	addi.d	$a2, $a2, 8
	fstx.d	$fa1, $a3, $s8
	bne	$a2, $s6, .LBB5_117
# %bb.119:                              #   in Loop: Header=BB5_116 Depth=2
	move	$a2, $s2
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	bne	$a1, $s0, .LBB5_116
.LBB5_120:                              # %while.cond.i.i.i268.preheader
                                        #   in Loop: Header=BB5_114 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s2
	.p2align	4, , 16
.LBB5_121:                              # %while.cond.i.i.i268
                                        #   Parent Loop BB5_114 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_113
# %bb.122:                              # %while.body.i.i.i270
                                        #   in Loop: Header=BB5_121 Depth=2
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a2, -8
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_121
	b	.LBB5_112
.LBB5_123:                              # %invoke.cont126
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB5_156
# %bb.124:                              # %for.body.i279.preheader
	move	$s1, $zero
	add.d	$s5, $s0, $s7
	ori	$s6, $zero, 8
	lu12i.w	$a0, -4
	ori	$s4, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB5_127
	.p2align	4, , 16
.LBB5_125:                              # %if.then.i.i311
                                        #   in Loop: Header=BB5_127 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(iterations)
.LBB5_126:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i314
                                        #   in Loop: Header=BB5_127 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $s3, .LBB5_136
.LBB5_127:                              # %for.body.i279
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_129 Depth 2
                                        #       Child Loop BB5_130 Depth 3
                                        #     Child Loop BB5_134 Depth 2
	move	$a0, $s0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB5_129
	.p2align	4, , 16
.LBB5_128:                              # %land.rhs.i.i295.for.end.i.i298_crit_edge
                                        #   in Loop: Header=BB5_129 Depth=2
	add.d	$a2, $s5, $a2
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	beq	$a1, $s0, .LBB5_133
.LBB5_129:                              # %land.rhs.preheader.i.i292
                                        #   Parent Loop BB5_127 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_130 Depth 3
	fld.d	$fa0, $a1, -8
	addi.d	$a1, $a1, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_130:                              # %land.rhs.i.i295
                                        #   Parent Loop BB5_127 Depth=1
                                        #     Parent Loop BB5_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s5, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_128
# %bb.131:                              # %for.body.i.i317
                                        #   in Loop: Header=BB5_130 Depth=3
	add.d	$a3, $s0, $a2
	addi.d	$a2, $a2, 8
	fstx.d	$fa1, $a3, $s8
	bne	$a2, $s6, .LBB5_130
# %bb.132:                              #   in Loop: Header=BB5_129 Depth=2
	move	$a2, $s2
	fst.d	$fa0, $a2, -8
	addi.d	$a0, $a0, -8
	bne	$a1, $s0, .LBB5_129
.LBB5_133:                              # %while.cond.i.i.i303.preheader
                                        #   in Loop: Header=BB5_127 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s2
	.p2align	4, , 16
.LBB5_134:                              # %while.cond.i.i.i303
                                        #   Parent Loop BB5_127 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_126
# %bb.135:                              # %while.body.i.i.i307
                                        #   in Loop: Header=BB5_134 Depth=2
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a2, -8
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_134
	b	.LBB5_125
.LBB5_136:                              # %invoke.cont131
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB5_156
# %bb.137:                              # %for.body.i329.preheader
	move	$s4, $zero
	pcalau12i	$a0, %pc_hi20(rrdMpb+8)
	ld.d	$a4, $a0, %pc_lo12(rrdMpb+8)
	pcalau12i	$a0, %pc_hi20(rrdMpe+8)
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$s6, $a1, %pc_lo12(rrdpb+8)
	ld.d	$s1, $a0, %pc_lo12(rrdMpe+8)
	pcalau12i	$a0, %pc_hi20(rrdpe+8)
	ld.d	$s5, $a0, %pc_lo12(rrdpe+8)
	addi.d	$a5, $s6, 8
	sub.d	$a0, $s6, $a4
	sub.d	$a1, $s1, $a4
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$a1, $a0, 3
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 6
	add.d	$a1, $s6, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	add.d	$a0, $a4, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a0, $s6, 32
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.w	$s8, $zero, -8
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	b	.LBB5_140
	.p2align	4, , 16
.LBB5_138:                              # %if.then.i.i343
                                        #   in Loop: Header=BB5_140 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	move	$s3, $a4
	move	$s7, $a5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a5, $s7
	move	$a4, $s3
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(iterations)
.LBB5_139:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i
                                        #   in Loop: Header=BB5_140 Depth=1
	addi.w	$s4, $s4, 1
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	bge	$s4, $s3, .LBB5_204
.LBB5_140:                              # %for.body.i329
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_143 Depth 2
                                        #     Child Loop BB5_145 Depth 2
                                        #     Child Loop BB5_149 Depth 2
                                        #       Child Loop BB5_150 Depth 3
                                        #     Child Loop BB5_154 Depth 2
	beq	$a4, $s1, .LBB5_146
# %bb.141:                              # %while.body.i.i331.preheader
                                        #   in Loop: Header=BB5_140 Depth=1
	move	$a0, $s6
	move	$a1, $a4
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_145
# %bb.142:                              # %vector.body1340.preheader
                                        #   in Loop: Header=BB5_140 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_143:                              # %vector.body1340
                                        #   Parent Loop BB5_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_143
# %bb.144:                              # %middle.block1349
                                        #   in Loop: Header=BB5_140 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB5_146
	.p2align	4, , 16
.LBB5_145:                              # %while.body.i.i331
                                        #   Parent Loop BB5_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB5_145
.LBB5_146:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i
                                        #   in Loop: Header=BB5_140 Depth=1
	beq	$a5, $s5, .LBB5_153
# %bb.147:                              # %while.body.i11.i.preheader
                                        #   in Loop: Header=BB5_140 Depth=1
	move	$a0, $zero
	move	$a1, $a5
	b	.LBB5_149
	.p2align	4, , 16
.LBB5_148:                              # %land.rhs.i.i336.for.end.i.i338_crit_edge
                                        #   in Loop: Header=BB5_149 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $s5, .LBB5_153
.LBB5_149:                              # %while.body.i11.i
                                        #   Parent Loop BB5_140 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_150 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_150:                              # %land.rhs.i.i336
                                        #   Parent Loop BB5_140 Depth=1
                                        #     Parent Loop BB5_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s6, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s6, $a2
	bcnez	$fcc0, .LBB5_148
# %bb.151:                              # %for.body.i.i348
                                        #   in Loop: Header=BB5_150 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s8, .LBB5_150
# %bb.152:                              #   in Loop: Header=BB5_149 Depth=2
	move	$a2, $s6
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $s5, .LBB5_149
.LBB5_153:                              # %while.cond.i.i.i339.preheader
                                        #   in Loop: Header=BB5_140 Depth=1
	move	$a0, $a5
	.p2align	4, , 16
.LBB5_154:                              # %while.cond.i.i.i339
                                        #   Parent Loop BB5_140 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s5, .LBB5_139
# %bb.155:                              # %while.body.i.i.i341
                                        #   in Loop: Header=BB5_154 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_154
	b	.LBB5_138
.LBB5_156:
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
.LBB5_157:                              # %invoke.cont146
	ld.d	$a0, $s6, %pc_lo12(dMpb)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(dMpe)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(dpb)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(dpe)
	slli.d	$a4, $s3, 3
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	st.w	$a4, $s7, %pc_lo12(iterations)
.Ltmp7:                                 # EH_LABEL
	pcalau12i	$a4, %pc_hi20(.L.str.34)
	addi.d	$a4, $a4, %pc_lo12(.L.str.34)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp8:                                 # EH_LABEL
# %bb.158:                              # %invoke.cont147
.Ltmp9:                                 # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a4, $a0, %pc_lo12(.L.str.35)
	movgr2fr.d	$fa0, $zero
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp10:                                # EH_LABEL
# %bb.159:                              # %invoke.cont172
	ld.w	$a0, $s7, %pc_lo12(iterations)
	blez	$a0, .LBB5_246
# %bb.160:                              # %for.body.i449.preheader
	move	$s1, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $a0, %pc_lo12(rdpb)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(rdMpb)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(rdMpe)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(rdpe)
	addi.d	$s8, $s3, -8
	sub.d	$a0, $s5, $s3
	sub.d	$a1, $s5, $s6
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s4, $a0, 2
	slli.d	$a0, $a0, 5
	sub.d	$a1, $s3, $a0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	sub.d	$a0, $s5, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $s5, -32
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s3, -32
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB5_163
	.p2align	4, , 16
.LBB5_161:                              # %if.then.i.i465
                                        #   in Loop: Header=BB5_163 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_162:                              # %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i467
                                        #   in Loop: Header=BB5_163 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_174
.LBB5_163:                              # %for.body.i449
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_166 Depth 2
                                        #     Child Loop BB5_169 Depth 2
                                        #     Child Loop BB5_172 Depth 2
	beq	$s5, $s6, .LBB5_170
# %bb.164:                              # %while.body.i.i451.preheader
                                        #   in Loop: Header=BB5_163 Depth=1
	move	$a1, $s3
	move	$a0, $s5
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_168
# %bb.165:                              # %vector.body1360.preheader
                                        #   in Loop: Header=BB5_163 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	move	$a2, $s4
	.p2align	4, , 16
.LBB5_166:                              # %vector.body1360
                                        #   Parent Loop BB5_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -32
	addi.d	$a0, $a0, -32
	bnez	$a2, .LBB5_166
# %bb.167:                              # %middle.block1370
                                        #   in Loop: Header=BB5_163 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	beq	$a2, $s4, .LBB5_170
.LBB5_168:                              # %while.body.i.i451.preheader1454
                                        #   in Loop: Header=BB5_163 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB5_169:                              # %while.body.i.i451
                                        #   Parent Loop BB5_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, -8
	addi.d	$a2, $a0, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a0, $a2
	bne	$a2, $s6, .LBB5_169
.LBB5_170:                              # %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i456
                                        #   in Loop: Header=BB5_163 Depth=1
	st.d	$s3, $sp, 232
	st.d	$s7, $sp, 216
.Ltmp11:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
.Ltmp12:                                # EH_LABEL
# %bb.171:                              # %while.cond.i.i.i458.preheader
                                        #   in Loop: Header=BB5_163 Depth=1
	move	$a0, $s8
	.p2align	4, , 16
.LBB5_172:                              # %while.cond.i.i.i458
                                        #   Parent Loop BB5_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s7, .LBB5_162
# %bb.173:                              # %while.body.i.i.i461
                                        #   in Loop: Header=BB5_172 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_172
	b	.LBB5_161
.LBB5_174:                              # %invoke.cont177
	ori	$a1, $zero, 1
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB5_246
# %bb.175:                              # %for.body.i476.preheader
	move	$s5, $zero
	lu12i.w	$a0, 3
	ori	$s3, $a0, 3704
	add.d	$s1, $s0, $s3
	lu12i.w	$a0, -4
	ori	$s6, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s4, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_178
	.p2align	4, , 16
.LBB5_176:                              # %if.then.i.i496
                                        #   in Loop: Header=BB5_178 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_177:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i498
                                        #   in Loop: Header=BB5_178 Depth=1
	ld.w	$a0, $s7, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB5_182
.LBB5_178:                              # %for.body.i476
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_180 Depth 2
	move	$a0, $s0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 232
	st.d	$s0, $sp, 216
.Ltmp14:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp15:                                # EH_LABEL
# %bb.179:                              # %while.cond.i.i.i488.preheader
                                        #   in Loop: Header=BB5_178 Depth=1
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s2
	.p2align	4, , 16
.LBB5_180:                              # %while.cond.i.i.i488
                                        #   Parent Loop BB5_178 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_177
# %bb.181:                              # %while.body.i.i.i492
                                        #   in Loop: Header=BB5_180 Depth=2
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a2, -8
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_180
	b	.LBB5_176
.LBB5_182:                              # %invoke.cont182
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_246
# %bb.183:                              # %for.body.i505.preheader
	move	$s5, $zero
	lu12i.w	$a0, -4
	ori	$s6, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s4, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_186
	.p2align	4, , 16
.LBB5_184:                              # %if.then.i.i525
                                        #   in Loop: Header=BB5_186 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_185:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i527
                                        #   in Loop: Header=BB5_186 Depth=1
	ld.w	$a0, $s7, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB5_190
.LBB5_186:                              # %for.body.i505
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_188 Depth 2
	move	$a0, $s0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 232
	st.d	$s0, $sp, 216
.Ltmp17:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp18:                                # EH_LABEL
# %bb.187:                              # %while.cond.i.i.i517.preheader
                                        #   in Loop: Header=BB5_186 Depth=1
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s2
	.p2align	4, , 16
.LBB5_188:                              # %while.cond.i.i.i517
                                        #   Parent Loop BB5_186 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_185
# %bb.189:                              # %while.body.i.i.i521
                                        #   in Loop: Header=BB5_188 Depth=2
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a2, -8
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_188
	b	.LBB5_184
.LBB5_190:                              # %invoke.cont187
	blez	$a0, .LBB5_246
# %bb.191:                              # %for.body.lr.ph.i538
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(rrdMpb+8)
	ld.d	$s5, $a0, %pc_lo12(rrdMpb+8)
	pcalau12i	$a0, %pc_hi20(rrdMpe+8)
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$s6, $a1, %pc_lo12(rrdpb+8)
	ld.d	$s7, $a0, %pc_lo12(rrdMpe+8)
	pcalau12i	$a0, %pc_hi20(rrdpe+8)
	ld.d	$s8, $a0, %pc_lo12(rrdpe+8)
	sub.d	$a0, $s6, $s5
	sub.d	$a1, $s7, $s5
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$a1, $a0, 3
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 6
	add.d	$a1, $s6, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s5, 32
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s6, 32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$s4, $s6, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB5_194
	.p2align	4, , 16
.LBB5_192:                              # %if.then.i.i556
                                        #   in Loop: Header=BB5_194 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_193:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i558
                                        #   in Loop: Header=BB5_194 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_217
.LBB5_194:                              # %for.body.i543
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_197 Depth 2
                                        #     Child Loop BB5_199 Depth 2
                                        #     Child Loop BB5_202 Depth 2
	beq	$s5, $s7, .LBB5_200
# %bb.195:                              # %while.body.i.i545.preheader
                                        #   in Loop: Header=BB5_194 Depth=1
	move	$a0, $s6
	move	$a1, $s5
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_199
# %bb.196:                              # %vector.body1381.preheader
                                        #   in Loop: Header=BB5_194 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_197:                              # %vector.body1381
                                        #   Parent Loop BB5_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_197
# %bb.198:                              # %middle.block1390
                                        #   in Loop: Header=BB5_194 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB5_200
	.p2align	4, , 16
.LBB5_199:                              # %while.body.i.i545
                                        #   Parent Loop BB5_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s7, .LBB5_199
.LBB5_200:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i550
                                        #   in Loop: Header=BB5_194 Depth=1
	st.d	$s6, $sp, 240
	st.d	$s8, $sp, 224
.Ltmp20:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
.Ltmp21:                                # EH_LABEL
# %bb.201:                              # %while.cond.i.i.i551.preheader
                                        #   in Loop: Header=BB5_194 Depth=1
	move	$a0, $s4
	.p2align	4, , 16
.LBB5_202:                              # %while.cond.i.i.i551
                                        #   Parent Loop BB5_194 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s8, .LBB5_193
# %bb.203:                              # %while.body.i.i.i554
                                        #   in Loop: Header=BB5_202 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_202
	b	.LBB5_192
.LBB5_204:                              # %invoke.cont136
	ori	$a0, $zero, 1
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	blt	$s3, $a0, .LBB5_157
# %bb.205:                              # %for.body.i363.preheader
	move	$s1, $zero
	lu12i.w	$a0, -4
	ori	$s5, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s4, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_208
	.p2align	4, , 16
.LBB5_206:                              # %if.then.i.i382
                                        #   in Loop: Header=BB5_208 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(iterations)
.LBB5_207:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i
                                        #   in Loop: Header=BB5_208 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $s3, .LBB5_225
.LBB5_208:                              # %for.body.i363
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_210 Depth 2
                                        #       Child Loop BB5_211 Depth 3
                                        #     Child Loop BB5_215 Depth 2
	move	$a0, $s0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$a1, $zero, 8
	b	.LBB5_210
	.p2align	4, , 16
.LBB5_209:                              # %land.rhs.i.i372.for.end.i.i375_crit_edge
                                        #   in Loop: Header=BB5_210 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB5_214
.LBB5_210:                              # %while.body.i11.i371
                                        #   Parent Loop BB5_208 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_211 Depth 3
	fldx.d	$fa0, $s0, $a1
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_211:                              # %land.rhs.i.i372
                                        #   Parent Loop BB5_208 Depth=1
                                        #     Parent Loop BB5_210 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB5_209
# %bb.212:                              # %for.body.i.i387
                                        #   in Loop: Header=BB5_211 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s8, .LBB5_211
# %bb.213:                              #   in Loop: Header=BB5_210 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB5_210
.LBB5_214:                              # %while.cond.i.i.i378.preheader
                                        #   in Loop: Header=BB5_208 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB5_215:                              # %while.cond.i.i.i378
                                        #   Parent Loop BB5_208 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_207
# %bb.216:                              # %while.body.i.i.i380
                                        #   in Loop: Header=BB5_215 Depth=2
	add.d	$a1, $s0, $a0
	fldx.d	$fa0, $a1, $fp
	fldx.d	$fa1, $a1, $s7
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_215
	b	.LBB5_206
.LBB5_217:                              # %invoke.cont192
	ori	$a1, $zero, 1
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB5_246
# %bb.218:                              # %for.body.lr.ph.i573
	move	$s1, $zero
	lu12i.w	$a0, -4
	ori	$s5, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s4, $a0, %pc_lo12(.L.str.52)
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	b	.LBB5_221
	.p2align	4, , 16
.LBB5_219:                              # %if.then.i.i597
                                        #   in Loop: Header=BB5_221 Depth=1
	ld.w	$a1, $s6, %pc_lo12(current_test)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_220:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i599
                                        #   in Loop: Header=BB5_221 Depth=1
	ld.w	$a0, $s7, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_238
.LBB5_221:                              # %for.body.i580
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_223 Depth 2
	move	$a0, $s0
	move	$a1, $s8
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 240
	st.d	$s2, $sp, 224
.Ltmp23:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp24:                                # EH_LABEL
# %bb.222:                              # %while.cond.i.i.i591.preheader
                                        #   in Loop: Header=BB5_221 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB5_223:                              # %while.cond.i.i.i591
                                        #   Parent Loop BB5_221 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_220
# %bb.224:                              # %while.body.i.i.i595
                                        #   in Loop: Header=BB5_223 Depth=2
	add.d	$a1, $s0, $a0
	fldx.d	$fa0, $a1, $fp
	fldx.d	$fa1, $a1, $s3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_223
	b	.LBB5_219
.LBB5_225:                              # %invoke.cont141
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB5_157
# %bb.226:                              # %for.body.i402.preheader
	move	$s1, $zero
	lu12i.w	$a0, -4
	ori	$s5, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s4, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_229
	.p2align	4, , 16
.LBB5_227:                              # %if.then.i.i433
                                        #   in Loop: Header=BB5_229 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$s3, $a0, %pc_lo12(iterations)
.LBB5_228:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i436
                                        #   in Loop: Header=BB5_229 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $s3, .LBB5_157
.LBB5_229:                              # %for.body.i402
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_231 Depth 2
                                        #       Child Loop BB5_232 Depth 3
                                        #     Child Loop BB5_236 Depth 2
	move	$a0, $s0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$a1, $zero, 8
	b	.LBB5_231
	.p2align	4, , 16
.LBB5_230:                              # %land.rhs.i.i418.for.end.i.i422_crit_edge
                                        #   in Loop: Header=BB5_231 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB5_235
.LBB5_231:                              # %while.body.i11.i415
                                        #   Parent Loop BB5_229 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_232 Depth 3
	fldx.d	$fa0, $s0, $a1
	move	$a2, $a0
	.p2align	4, , 16
.LBB5_232:                              # %land.rhs.i.i418
                                        #   Parent Loop BB5_229 Depth=1
                                        #     Parent Loop BB5_231 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB5_230
# %bb.233:                              # %for.body.i.i439
                                        #   in Loop: Header=BB5_232 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s8, .LBB5_232
# %bb.234:                              #   in Loop: Header=BB5_231 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB5_231
.LBB5_235:                              # %while.cond.i.i.i427.preheader
                                        #   in Loop: Header=BB5_229 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB5_236:                              # %while.cond.i.i.i427
                                        #   Parent Loop BB5_229 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_228
# %bb.237:                              # %while.body.i.i.i431
                                        #   in Loop: Header=BB5_236 Depth=2
	add.d	$a1, $s0, $a0
	fldx.d	$fa0, $a1, $fp
	fldx.d	$fa1, $a1, $s7
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_236
	b	.LBB5_227
.LBB5_238:                              # %invoke.cont197
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_246
# %bb.239:                              # %for.body.lr.ph.i614
	move	$s1, $zero
	lu12i.w	$a0, -4
	ori	$s5, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s4, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_242
	.p2align	4, , 16
.LBB5_240:                              # %if.then.i.i638
                                        #   in Loop: Header=BB5_242 Depth=1
	ld.w	$a1, $s6, %pc_lo12(current_test)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_241:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i640
                                        #   in Loop: Header=BB5_242 Depth=1
	ld.w	$a0, $s7, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_246
.LBB5_242:                              # %for.body.i621
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_244 Depth 2
	move	$a0, $s0
	move	$a1, $s8
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 240
	st.d	$s2, $sp, 224
.Ltmp26:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp27:                                # EH_LABEL
# %bb.243:                              # %while.cond.i.i.i632.preheader
                                        #   in Loop: Header=BB5_242 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB5_244:                              # %while.cond.i.i.i632
                                        #   Parent Loop BB5_242 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_241
# %bb.245:                              # %while.body.i.i.i636
                                        #   in Loop: Header=BB5_244 Depth=2
	add.d	$a1, $s0, $a0
	fldx.d	$fa0, $a1, $fp
	fldx.d	$fa1, $a1, $s3
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_244
	b	.LBB5_240
.LBB5_246:                              # %invoke.cont202
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(dMpb)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(dMpe)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(dpb)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(dpe)
.Ltmp29:                                # EH_LABEL
	pcalau12i	$a4, %pc_hi20(.L.str.42)
	addi.d	$a4, $a4, %pc_lo12(.L.str.42)
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp30:                                # EH_LABEL
# %bb.247:                              # %invoke.cont203
.Ltmp31:                                # EH_LABEL
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a4, $a0, %pc_lo12(.L.str.43)
	movgr2fr.d	$fa0, $zero
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc)
	jirl	$ra, $ra, 0
.Ltmp32:                                # EH_LABEL
# %bb.248:                              # %invoke.cont228
	ld.w	$a0, $s7, %pc_lo12(iterations)
	blez	$a0, .LBB5_301
# %bb.249:                              # %for.body.i654.preheader
	move	$s1, $zero
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $a0, %pc_lo12(rdpb)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $a0, %pc_lo12(rdMpb)
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $a0, %pc_lo12(rdMpe)
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $a0, %pc_lo12(rdpe)
	addi.d	$s8, $s4, -8
	sub.d	$a0, $s5, $s4
	sub.d	$a1, $s5, $s6
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 24
	sltui	$a0, $a0, 32
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 2
	slli.d	$s3, $a0, 2
	slli.d	$a0, $a0, 5
	sub.d	$a1, $s4, $a0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	sub.d	$a0, $s5, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a0, $s5, -32
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s4, -32
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB5_252
	.p2align	4, , 16
.LBB5_250:                              # %if.then.i.i671
                                        #   in Loop: Header=BB5_252 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_251:                              # %_Z13verify_sortedISt16reverse_iteratorIPdEEvT_S3_.exit.i673
                                        #   in Loop: Header=BB5_252 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_263
.LBB5_252:                              # %for.body.i654
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_255 Depth 2
                                        #     Child Loop BB5_258 Depth 2
                                        #     Child Loop BB5_261 Depth 2
	beq	$s5, $s6, .LBB5_259
# %bb.253:                              # %while.body.i.i657.preheader
                                        #   in Loop: Header=BB5_252 Depth=1
	move	$a1, $s4
	move	$a0, $s5
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_257
# %bb.254:                              # %vector.body1401.preheader
                                        #   in Loop: Header=BB5_252 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	move	$a2, $s3
	.p2align	4, , 16
.LBB5_255:                              # %vector.body1401
                                        #   Parent Loop BB5_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, 0
	xvst	$xr0, $a0, 0
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, -32
	addi.d	$a0, $a0, -32
	bnez	$a2, .LBB5_255
# %bb.256:                              # %middle.block1411
                                        #   in Loop: Header=BB5_252 Depth=1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	beq	$a2, $s3, .LBB5_259
.LBB5_257:                              # %while.body.i.i657.preheader1445
                                        #   in Loop: Header=BB5_252 Depth=1
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB5_258:                              # %while.body.i.i657
                                        #   Parent Loop BB5_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, -8
	addi.d	$a2, $a0, -8
	fst.d	$fa0, $a1, 0
	addi.d	$a1, $a1, -8
	move	$a0, $a2
	bne	$a2, $s6, .LBB5_258
.LBB5_259:                              # %_ZN9benchmark4copyISt16reverse_iteratorIPdES3_EEvT_S4_T0_.exit.i662
                                        #   in Loop: Header=BB5_252 Depth=1
	st.d	$s4, $sp, 232
	st.d	$s7, $sp, 216
.Ltmp34:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_)
	jirl	$ra, $ra, 0
.Ltmp35:                                # EH_LABEL
# %bb.260:                              # %while.cond.i.i.i664.preheader
                                        #   in Loop: Header=BB5_252 Depth=1
	move	$a0, $s8
	.p2align	4, , 16
.LBB5_261:                              # %while.cond.i.i.i664
                                        #   Parent Loop BB5_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s7, .LBB5_251
# %bb.262:                              # %while.body.i.i.i667
                                        #   in Loop: Header=BB5_261 Depth=2
	fld.d	$fa0, $a0, -8
	fld.d	$fa1, $a0, 0
	addi.d	$a0, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB5_261
	b	.LBB5_250
.LBB5_263:                              # %invoke.cont233
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_301
# %bb.264:                              # %for.body.i682.preheader
	move	$s5, $zero
	lu12i.w	$a0, 3
	ori	$s4, $a0, 3704
	add.d	$s1, $s0, $s4
	lu12i.w	$a0, -4
	ori	$s6, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 160                   # 8-byte Folded Reload
	b	.LBB5_267
	.p2align	4, , 16
.LBB5_265:                              # %if.then.i.i702
                                        #   in Loop: Header=BB5_267 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_266:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i704
                                        #   in Loop: Header=BB5_267 Depth=1
	ld.w	$a0, $s7, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB5_271
.LBB5_267:                              # %for.body.i682
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_269 Depth 2
	move	$a0, $s0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 232
	st.d	$s0, $sp, 216
.Ltmp37:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp38:                                # EH_LABEL
# %bb.268:                              # %while.cond.i.i.i694.preheader
                                        #   in Loop: Header=BB5_267 Depth=1
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s2
	.p2align	4, , 16
.LBB5_269:                              # %while.cond.i.i.i694
                                        #   Parent Loop BB5_267 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_266
# %bb.270:                              # %while.body.i.i.i698
                                        #   in Loop: Header=BB5_269 Depth=2
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a2, -8
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_269
	b	.LBB5_265
.LBB5_271:                              # %invoke.cont238
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_301
# %bb.272:                              # %for.body.i711.preheader
	move	$s5, $zero
	lu12i.w	$a0, -4
	ori	$s6, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_275
	.p2align	4, , 16
.LBB5_273:                              # %if.then.i.i731
                                        #   in Loop: Header=BB5_275 Depth=1
	ld.w	$a1, $s8, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_274:                              # %_Z13verify_sortedISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEvT_S9_.exit.i733
                                        #   in Loop: Header=BB5_275 Depth=1
	ld.w	$a0, $s7, %pc_lo12(iterations)
	addi.w	$s5, $s5, 1
	bge	$s5, $a0, .LBB5_279
.LBB5_275:                              # %for.body.i711
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_277 Depth 2
	move	$a0, $s0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 232
	st.d	$s0, $sp, 216
.Ltmp40:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.Ltmp41:                                # EH_LABEL
# %bb.276:                              # %while.cond.i.i.i723.preheader
                                        #   in Loop: Header=BB5_275 Depth=1
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s2
	.p2align	4, , 16
.LBB5_277:                              # %while.cond.i.i.i723
                                        #   Parent Loop BB5_275 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_274
# %bb.278:                              # %while.body.i.i.i727
                                        #   in Loop: Header=BB5_277 Depth=2
	fld.d	$fa0, $a1, -8
	fld.d	$fa1, $a2, -8
	addi.d	$a1, $a1, -8
	addi.d	$a2, $a2, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_277
	b	.LBB5_273
.LBB5_279:                              # %invoke.cont243
	blez	$a0, .LBB5_301
# %bb.280:                              # %for.body.lr.ph.i745
	move	$s1, $zero
	pcalau12i	$a0, %pc_hi20(rrdMpb+8)
	ld.d	$s5, $a0, %pc_lo12(rrdMpb+8)
	pcalau12i	$a0, %pc_hi20(rrdMpe+8)
	pcalau12i	$a1, %pc_hi20(rrdpb+8)
	ld.d	$s6, $a1, %pc_lo12(rrdpb+8)
	ld.d	$s7, $a0, %pc_lo12(rrdMpe+8)
	pcalau12i	$a0, %pc_hi20(rrdpe+8)
	ld.d	$s8, $a0, %pc_lo12(rrdpe+8)
	sub.d	$a0, $s6, $s5
	sub.d	$a1, $s7, $s5
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$a1, $a0, 3
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 6
	add.d	$a1, $s6, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	add.d	$a0, $s5, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s5, 32
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $s6, 32
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	addi.d	$s3, $s6, 8
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	b	.LBB5_283
	.p2align	4, , 16
.LBB5_281:                              # %if.then.i.i766
                                        #   in Loop: Header=BB5_283 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_282:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IPdEEEvT_S4_.exit.i768
                                        #   in Loop: Header=BB5_283 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.w	$a0, $a0, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_293
.LBB5_283:                              # %for.body.i752
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_286 Depth 2
                                        #     Child Loop BB5_288 Depth 2
                                        #     Child Loop BB5_291 Depth 2
	beq	$s5, $s7, .LBB5_289
# %bb.284:                              # %while.body.i.i755.preheader
                                        #   in Loop: Header=BB5_283 Depth=1
	move	$a0, $s6
	move	$a1, $s5
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_288
# %bb.285:                              # %vector.body1422.preheader
                                        #   in Loop: Header=BB5_283 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_286:                              # %vector.body1422
                                        #   Parent Loop BB5_283 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB5_286
# %bb.287:                              # %middle.block1431
                                        #   in Loop: Header=BB5_283 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $a3, .LBB5_289
	.p2align	4, , 16
.LBB5_288:                              # %while.body.i.i755
                                        #   Parent Loop BB5_283 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s7, .LBB5_288
.LBB5_289:                              # %_ZN9benchmark4copyISt16reverse_iteratorIS1_IPdEES4_EEvT_S5_T0_.exit.i760
                                        #   in Loop: Header=BB5_283 Depth=1
	st.d	$s6, $sp, 240
	st.d	$s8, $sp, 224
.Ltmp43:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_)
	jirl	$ra, $ra, 0
.Ltmp44:                                # EH_LABEL
# %bb.290:                              # %while.cond.i.i.i761.preheader
                                        #   in Loop: Header=BB5_283 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB5_291:                              # %while.cond.i.i.i761
                                        #   Parent Loop BB5_283 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $s8, .LBB5_282
# %bb.292:                              # %while.body.i.i.i764
                                        #   in Loop: Header=BB5_291 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_291
	b	.LBB5_281
.LBB5_293:                              # %invoke.cont248
	ori	$a1, $zero, 1
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB5_301
# %bb.294:                              # %for.body.lr.ph.i783
	move	$s1, $zero
	lu12i.w	$a0, -4
	ori	$s5, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	b	.LBB5_297
	.p2align	4, , 16
.LBB5_295:                              # %if.then.i.i807
                                        #   in Loop: Header=BB5_297 Depth=1
	ld.w	$a1, $s7, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_296:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i809
                                        #   in Loop: Header=BB5_297 Depth=1
	ld.w	$a0, $s6, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_303
.LBB5_297:                              # %for.body.i790
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_299 Depth 2
	move	$a0, $s0
	move	$a1, $s8
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 240
	st.d	$s2, $sp, 224
.Ltmp46:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp47:                                # EH_LABEL
# %bb.298:                              # %while.cond.i.i.i801.preheader
                                        #   in Loop: Header=BB5_297 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB5_299:                              # %while.cond.i.i.i801
                                        #   Parent Loop BB5_297 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_296
# %bb.300:                              # %while.body.i.i.i805
                                        #   in Loop: Header=BB5_299 Depth=2
	add.d	$a1, $s0, $a0
	fldx.d	$fa0, $a1, $fp
	fldx.d	$fa1, $a1, $s4
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_299
	b	.LBB5_295
.LBB5_301:                              # %invoke.cont253.thread
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
.LBB5_302:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit864
	move	$a0, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	fld.d	$fs1, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 256                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB5_303:                              # %invoke.cont253
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_302
# %bb.304:                              # %for.body.lr.ph.i824
	move	$s1, $zero
	lu12i.w	$a0, -4
	ori	$s5, $a0, 392
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB5_307
	.p2align	4, , 16
.LBB5_305:                              # %if.then.i.i848
                                        #   in Loop: Header=BB5_307 Depth=1
	ld.w	$a1, $s7, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB5_306:                              # %_Z13verify_sortedISt16reverse_iteratorIS0_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEEvT_SA_.exit.i850
                                        #   in Loop: Header=BB5_307 Depth=1
	ld.w	$a0, $s6, %pc_lo12(iterations)
	addi.w	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_302
.LBB5_307:                              # %for.body.i831
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_309 Depth 2
	move	$a0, $s0
	move	$a1, $s8
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 240
	st.d	$s2, $sp, 224
.Ltmp49:                                # EH_LABEL
	addi.d	$a0, $sp, 232
	addi.d	$a1, $sp, 216
	pcaddu18i	$ra, %call36(_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_)
	jirl	$ra, $ra, 0
.Ltmp50:                                # EH_LABEL
# %bb.308:                              # %while.cond.i.i.i842.preheader
                                        #   in Loop: Header=BB5_307 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB5_309:                              # %while.cond.i.i.i842
                                        #   Parent Loop BB5_307 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$a0, .LBB5_306
# %bb.310:                              # %while.body.i.i.i846
                                        #   in Loop: Header=BB5_309 Depth=2
	add.d	$a1, $s0, $a0
	fldx.d	$fa0, $a1, $fp
	fldx.d	$fa1, $a1, $s4
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB5_309
	b	.LBB5_305
.LBB5_311:                              # %ehcleanup.thread
.Ltmp2:                                 # EH_LABEL
	move	$s2, $a0
	b	.LBB5_326
.LBB5_312:                              # %if.then.i.i.i866.loopexit
.Ltmp51:                                # EH_LABEL
	b	.LBB5_325
.LBB5_313:                              # %if.then.i.i.i866.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp28:                                # EH_LABEL
	b	.LBB5_325
.LBB5_314:                              # %if.then.i.i.i866.loopexit.split-lp.loopexit
.Ltmp48:                                # EH_LABEL
	b	.LBB5_325
.LBB5_315:                              # %if.then.i.i.i866.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp25:                                # EH_LABEL
	b	.LBB5_325
.LBB5_316:                              # %if.then.i.i.i866.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp45:                                # EH_LABEL
	b	.LBB5_325
.LBB5_317:                              # %if.then.i.i.i866.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp22:                                # EH_LABEL
	b	.LBB5_325
.LBB5_318:                              # %if.then.i.i.i866.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
.Ltmp33:                                # EH_LABEL
	b	.LBB5_325
.LBB5_319:                              # %if.then.i.i.i866.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp42:                                # EH_LABEL
	b	.LBB5_325
.LBB5_320:                              # %if.then.i.i.i866.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp19:                                # EH_LABEL
	b	.LBB5_325
.LBB5_321:                              # %if.then.i.i.i866.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp39:                                # EH_LABEL
	b	.LBB5_325
.LBB5_322:                              # %if.then.i.i.i866.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp16:                                # EH_LABEL
	b	.LBB5_325
.LBB5_323:                              # %if.then.i.i.i866.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp36:                                # EH_LABEL
	b	.LBB5_325
.LBB5_324:                              # %if.then.i.i.i866.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit
.Ltmp13:                                # EH_LABEL
.LBB5_325:                              # %if.then.i.i.i866
	move	$s2, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_326:                              # %if.then.i.i.i873
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s2
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
	.uleb128 .Ltmp6-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp6
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp7                 #   Call between .Ltmp7 and .Ltmp10
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp14-.Ltmp12                #   Call between .Ltmp12 and .Ltmp14
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
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp32-.Ltmp29                #   Call between .Ltmp29 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp34-.Ltmp32                #   Call between .Ltmp32 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
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
	.uleb128 .Lfunc_end5-.Ltmp50            #   Call between .Ltmp50 and .Lfunc_end5
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
	blt	$a4, $a5, .LBB6_50
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
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$s8, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s4, $s0, 32
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
	bge	$s3, $a4, .LBB6_50
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
	move	$a1, $s4
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
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
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB6_11
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
.LBB6_20:                               # %for.body.lr.ph.split.us
	beq	$s2, $s1, .LBB6_44
# %bb.21:                               # %for.body.us.preheader
	move	$s4, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s7, $a1, $a0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$s8, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$s6, $s0, 32
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB6_24
	.p2align	4, , 16
.LBB6_22:                               # %if.then.i.us
                                        #   in Loop: Header=BB6_24 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_23:                               # %_Z13verify_sortedIPdEvT_S1_.exit.us
                                        #   in Loop: Header=BB6_24 Depth=1
	addi.w	$s4, $s4, 1
	bge	$s4, $a4, .LBB6_50
.LBB6_24:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_26 Depth 2
                                        #     Child Loop BB6_28 Depth 2
                                        #     Child Loop BB6_30 Depth 2
	move	$a0, $s0
	move	$a1, $s2
	bnez	$s7, .LBB6_28
# %bb.25:                               # %vector.body58.preheader
                                        #   in Loop: Header=BB6_24 Depth=1
	move	$a0, $s8
	move	$a1, $s6
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_26:                               # %vector.body58
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a2, -32
	xvld	$xr1, $a2, 0
	xvst	$xr0, $a1, -32
	xvst	$xr1, $a1, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB6_26
# %bb.27:                               # %middle.block67
                                        #   in Loop: Header=BB6_24 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB6_29
	.p2align	4, , 16
.LBB6_28:                               # %while.body.i.us
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a1, 0
	addi.d	$a2, $a1, 8
	addi.d	$a1, $a0, 8
	fst.d	$fa0, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	bne	$a2, $s1, .LBB6_28
.LBB6_29:                               # %while.cond.i.i.us.preheader
                                        #   in Loop: Header=BB6_24 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_30:                               # %while.cond.i.i.us
                                        #   Parent Loop BB6_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_23
# %bb.31:                               # %while.body.i.i.us
                                        #   in Loop: Header=BB6_30 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_30
	b	.LBB6_22
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
	bge	$s2, $a4, .LBB6_50
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
.LBB6_44:                               # %for.body.us.us.preheader
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s0, $a0, %pc_lo12(.L.str.52)
	b	.LBB6_47
	.p2align	4, , 16
.LBB6_45:                               # %if.then.i.us.us
                                        #   in Loop: Header=BB6_47 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a4, $a0, %pc_lo12(iterations)
.LBB6_46:                               # %_Z13verify_sortedIPdEvT_S1_.exit.us.us
                                        #   in Loop: Header=BB6_47 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a4, .LBB6_50
.LBB6_47:                               # %for.body.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_48 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB6_48:                               # %while.cond.i.i.us.us
                                        #   Parent Loop BB6_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB6_46
# %bb.49:                               # %while.body.i.i.us.us
                                        #   in Loop: Header=BB6_48 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB6_48
	b	.LBB6_45
.LBB6_50:                               # %for.end
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
	pcalau12i	$s4, %pc_hi20(iterations)
	ld.w	$a4, $s4, %pc_lo12(iterations)
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB7_52
# %bb.1:                                # %for.body.lr.ph
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$s5, $a2, 8
	beq	$s5, $a3, .LBB7_15
# %bb.2:                                # %for.body.lr.ph.split
	bne	$s2, $s1, .LBB7_22
# %bb.3:                                # %for.body.us8.preheader
	move	$s2, $zero
	addi.w	$s3, $zero, -8
	pcalau12i	$s6, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s1, $a0, %pc_lo12(.L.str.52)
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_4:                                # %if.then.i.us17
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a1, $s6, %pc_lo12(current_test)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB7_5:                                # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us19
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.w	$s2, $s2, 1
	bge	$s2, $a4, .LBB7_52
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
.LBB7_15:                               # %for.body.lr.ph.split.us
	bne	$s2, $s1, .LBB7_40
# %bb.16:                               # %for.body.us.us.preheader
	move	$s1, $zero
	pcalau12i	$s2, %pc_hi20(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s0, $a0, %pc_lo12(.L.str.52)
	b	.LBB7_19
	.p2align	4, , 16
.LBB7_17:                               # %if.then.i.us.us
                                        #   in Loop: Header=BB7_19 Depth=1
	ld.w	$a1, $s2, %pc_lo12(current_test)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB7_18:                               # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us.us
                                        #   in Loop: Header=BB7_19 Depth=1
	addi.w	$s1, $s1, 1
	bge	$s1, $a4, .LBB7_52
.LBB7_19:                               # %for.body.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_20 Depth 2
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_20:                               # %while.cond.i.i.us.us
                                        #   Parent Loop BB7_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_18
# %bb.21:                               # %while.body.i.i.us.us
                                        #   in Loop: Header=BB7_20 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_20
	b	.LBB7_17
.LBB7_22:                               # %for.body.preheader
	move	$s3, $zero
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
	addi.w	$s6, $zero, -8
	b	.LBB7_25
	.p2align	4, , 16
.LBB7_23:                               # %if.then.i
                                        #   in Loop: Header=BB7_25 Depth=1
	pcalau12i	$a0, %pc_hi20(current_test)
	ld.w	$a1, $a0, %pc_lo12(current_test)
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB7_24:                               # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
                                        #   in Loop: Header=BB7_25 Depth=1
	addi.w	$s3, $s3, 1
	bge	$s3, $a4, .LBB7_52
.LBB7_25:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_28 Depth 2
                                        #     Child Loop BB7_30 Depth 2
                                        #     Child Loop BB7_33 Depth 2
                                        #       Child Loop BB7_34 Depth 3
                                        #     Child Loop BB7_38 Depth 2
	beqz	$s7, .LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_25 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB7_30
	.p2align	4, , 16
.LBB7_27:                               # %vector.body.preheader
                                        #   in Loop: Header=BB7_25 Depth=1
	move	$a0, $s8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_28:                               # %vector.body
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB7_28
# %bb.29:                               # %middle.block
                                        #   in Loop: Header=BB7_25 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s8, .LBB7_31
	.p2align	4, , 16
.LBB7_30:                               # %while.body.i
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB7_30
.LBB7_31:                               # %while.body.i4.preheader
                                        #   in Loop: Header=BB7_25 Depth=1
	move	$a0, $zero
	move	$a1, $s5
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_32:                               # %land.rhs.i.for.end.i_crit_edge
                                        #   in Loop: Header=BB7_33 Depth=2
	addi.d	$a2, $a3, 8
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	beq	$a1, $fp, .LBB7_37
.LBB7_33:                               # %while.body.i4
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_34 Depth 3
	fld.d	$fa0, $a1, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB7_34:                               # %land.rhs.i
                                        #   Parent Loop BB7_25 Depth=1
                                        #     Parent Loop BB7_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa1, $s0, $a2
	fcmp.cule.d	$fcc0, $fa1, $fa0
	add.d	$a3, $s0, $a2
	bcnez	$fcc0, .LBB7_32
# %bb.35:                               # %for.body.i
                                        #   in Loop: Header=BB7_34 Depth=3
	addi.d	$a2, $a2, -8
	fst.d	$fa1, $a3, 8
	bne	$a2, $s6, .LBB7_34
# %bb.36:                               #   in Loop: Header=BB7_33 Depth=2
	move	$a2, $s0
	fst.d	$fa0, $a2, 0
	addi.d	$a1, $a1, 8
	addi.d	$a0, $a0, 8
	bne	$a1, $fp, .LBB7_33
.LBB7_37:                               # %while.cond.i.i.preheader
                                        #   in Loop: Header=BB7_25 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_38:                               # %while.cond.i.i
                                        #   Parent Loop BB7_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_24
# %bb.39:                               # %while.body.i.i
                                        #   in Loop: Header=BB7_38 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_38
	b	.LBB7_23
.LBB7_40:                               # %for.body.us.preheader
	move	$s6, $zero
	sub.d	$a0, $s0, $s2
	sub.d	$a1, $s1, $s2
	addi.d	$a1, $a1, -8
	srli.d	$a2, $a1, 3
	addi.d	$a2, $a2, 1
	sltui	$a1, $a1, 56
	sltui	$a0, $a0, 64
	or	$s8, $a1, $a0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a2, 61, 3
	slli.d	$s7, $a0, 3
	slli.d	$a0, $a0, 6
	add.d	$a1, $s2, $a0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a0, $s0, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 32
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a0, $s2, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(current_test)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$s3, $a0, %pc_lo12(.L.str.52)
	b	.LBB7_43
	.p2align	4, , 16
.LBB7_41:                               # %if.then.i.us
                                        #   in Loop: Header=BB7_43 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(current_test)
	move	$a0, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a4, $s4, %pc_lo12(iterations)
.LBB7_42:                               # %_Z13verify_sortedIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit.us
                                        #   in Loop: Header=BB7_43 Depth=1
	addi.w	$s6, $s6, 1
	bge	$s6, $a4, .LBB7_52
.LBB7_43:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_46 Depth 2
                                        #     Child Loop BB7_48 Depth 2
                                        #     Child Loop BB7_50 Depth 2
	beqz	$s8, .LBB7_45
# %bb.44:                               #   in Loop: Header=BB7_43 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	b	.LBB7_48
	.p2align	4, , 16
.LBB7_45:                               # %vector.body52.preheader
                                        #   in Loop: Header=BB7_43 Depth=1
	move	$a0, $s7
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB7_46:                               # %vector.body52
                                        #   Parent Loop BB7_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a1, -32
	xvld	$xr1, $a1, 0
	xvst	$xr0, $a2, -32
	xvst	$xr1, $a2, 0
	addi.d	$a2, $a2, 64
	addi.d	$a0, $a0, -8
	addi.d	$a1, $a1, 64
	bnez	$a0, .LBB7_46
# %bb.47:                               # %middle.block61
                                        #   in Loop: Header=BB7_43 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beq	$a2, $s7, .LBB7_49
	.p2align	4, , 16
.LBB7_48:                               # %while.body.i.us
                                        #   Parent Loop BB7_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a0, 0
	addi.d	$a2, $a0, 8
	addi.d	$a3, $a1, 8
	fst.d	$fa0, $a1, 0
	move	$a0, $a2
	move	$a1, $a3
	bne	$a2, $s1, .LBB7_48
.LBB7_49:                               # %while.cond.i.i.us.preheader
                                        #   in Loop: Header=BB7_43 Depth=1
	move	$a0, $s5
	.p2align	4, , 16
.LBB7_50:                               # %while.cond.i.i.us
                                        #   Parent Loop BB7_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a0, $fp, .LBB7_42
# %bb.51:                               # %while.body.i.i.us
                                        #   in Loop: Header=BB7_50 Depth=2
	fld.d	$fa0, $a0, 0
	fld.d	$fa1, $a0, -8
	fcmp.cule.d	$fcc0, $fa1, $fa0
	addi.d	$a0, $a0, 8
	bcnez	$fcc0, .LBB7_50
	b	.LBB7_41
.LBB7_52:                               # %for.end
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
	blt	$a1, $a2, .LBB12_11
# %bb.1:                                # %if.then.preheader
	addi.d	$s1, $fp, -8
	ori	$s2, $zero, 8
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_2:                               # %for.end
                                        #   in Loop: Header=BB12_3 Depth=1
	addi.d	$s0, $a1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIPddEEvT_S2_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	bge	$s2, $s3, .LBB12_11
.LBB12_3:                               # %if.then
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
                                        #       Child Loop BB12_5 Depth 3
                                        #       Child Loop BB12_8 Depth 3
	fld.d	$fa0, $a0, 0
	move	$a1, $fp
	move	$a2, $a0
	.p2align	4, , 16
.LBB12_4:                               # %for.cond
                                        #   Parent Loop BB12_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_5 Depth 3
                                        #       Child Loop BB12_8 Depth 3
	sub.d	$s3, $s1, $a1
	.p2align	4, , 16
.LBB12_5:                               # %while.cond
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s3, $s3, 8
	bcnez	$fcc0, .LBB12_5
# %bb.6:                                # %while.end
                                        #   in Loop: Header=BB12_4 Depth=2
	bgeu	$a2, $a1, .LBB12_2
# %bb.7:                                # %while.cond4.preheader
                                        #   in Loop: Header=BB12_4 Depth=2
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB12_8:                               # %while.cond4
                                        #   Parent Loop BB12_3 Depth=1
                                        #     Parent Loop BB12_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB12_8
# %bb.9:                                # %while.end8
                                        #   in Loop: Header=BB12_4 Depth=2
	bgeu	$a2, $a1, .LBB12_2
# %bb.10:                               # %if.end11
                                        #   in Loop: Header=BB12_4 Depth=2
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB12_4
.LBB12_11:                              # %if.end13
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	_ZN9benchmark9quicksortIPddEEvT_S2_, .Lfunc_end12-_ZN9benchmark9quicksortIPddEEvT_S2_
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
	blt	$a0, $a1, .LBB13_11
# %bb.1:                                # %if.then.lr.ph
	ori	$s1, $zero, 8
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %for.end
                                        #   in Loop: Header=BB13_3 Depth=1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_)
	jirl	$ra, $ra, 0
	sub.d	$a0, $fp, $s0
	bge	$s1, $a0, .LBB13_11
.LBB13_3:                               # %if.then
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_4 Depth 2
                                        #       Child Loop BB13_5 Depth 3
                                        #       Child Loop BB13_8 Depth 3
	move	$a0, $s0
	fld.d	$fa0, $s0, 0
	move	$a1, $s0
	move	$a2, $fp
	.p2align	4, , 16
.LBB13_4:                               # %for.cond
                                        #   Parent Loop BB13_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_5 Depth 3
                                        #       Child Loop BB13_8 Depth 3
	addi.d	$s0, $a2, 8
	.p2align	4, , 16
.LBB13_5:                               # %while.cond
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa1, $a2, -8
	addi.d	$a2, $a2, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s0, $s0, -8
	bcnez	$fcc0, .LBB13_5
# %bb.6:                                # %while.end
                                        #   in Loop: Header=BB13_4 Depth=2
	bgeu	$a1, $a2, .LBB13_2
# %bb.7:                                # %while.cond9.preheader
                                        #   in Loop: Header=BB13_4 Depth=2
	addi.d	$a1, $a1, -8
	.p2align	4, , 16
.LBB13_8:                               # %while.cond9
                                        #   Parent Loop BB13_3 Depth=1
                                        #     Parent Loop BB13_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa2, $a1, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB13_8
# %bb.9:                                # %while.end14
                                        #   in Loop: Header=BB13_4 Depth=2
	bgeu	$a1, $a2, .LBB13_2
# %bb.10:                               # %if.end17
                                        #   in Loop: Header=BB13_4 Depth=2
	fst.d	$fa2, $a2, 0
	fst.d	$fa1, $a1, 0
	b	.LBB13_4
.LBB13_11:                              # %if.end38
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end13:
	.size	_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_, .Lfunc_end13-_ZN9benchmark9quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
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
	blt	$a2, $a3, .LBB14_9
# %bb.1:                                # %if.then
	fld.d	$fa0, $a0, -8
	move	$a2, $a0
	.p2align	4, , 16
.LBB14_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_5 Depth 2
	fld.d	$fa1, $a1, 0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, 8
	bcnez	$fcc0, .LBB14_2
# %bb.3:                                # %while.end
                                        #   in Loop: Header=BB14_2 Depth=1
	bgeu	$a1, $a2, .LBB14_8
# %bb.4:                                # %while.cond7.preheader
                                        #   in Loop: Header=BB14_2 Depth=1
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB14_5:                               # %while.cond7
                                        #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, -16
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, -8
	bcnez	$fcc0, .LBB14_5
# %bb.6:                                # %while.end12
                                        #   in Loop: Header=BB14_2 Depth=1
	bgeu	$a1, $a2, .LBB14_8
# %bb.7:                                # %if.end15
                                        #   in Loop: Header=BB14_2 Depth=1
	fst.d	$fa2, $a1, -8
	fst.d	$fa1, $a2, -8
	b	.LBB14_2
.LBB14_8:                               # %for.end
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
.LBB14_9:                               # %if.end23
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end14:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_, .Lfunc_end14-_ZN9benchmark9quicksortISt16reverse_iteratorIPdEdEEvT_S4_
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
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	st.d	$s0, $sp, 16
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_)
	jirl	$ra, $ra, 0
.LBB15_9:                               # %if.end23
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end15:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_, .Lfunc_end15-_ZN9benchmark9quicksortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
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
	blt	$a2, $a3, .LBB16_9
# %bb.1:                                # %if.then
	fld.d	$fa0, $a0, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB16_2:                               # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
	fld.d	$fa1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$a1, $a1, -8
	bcnez	$fcc0, .LBB16_2
# %bb.3:                                # %while.end
                                        #   in Loop: Header=BB16_2 Depth=1
	bgeu	$a2, $a1, .LBB16_8
# %bb.4:                                # %while.cond7.preheader
                                        #   in Loop: Header=BB16_2 Depth=1
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB16_5:                               # %while.cond7
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB16_5
# %bb.6:                                # %while.end12
                                        #   in Loop: Header=BB16_2 Depth=1
	bgeu	$a2, $a1, .LBB16_8
# %bb.7:                                # %if.end15
                                        #   in Loop: Header=BB16_2 Depth=1
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB16_2
.LBB16_8:                               # %for.end
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
.LBB16_9:                               # %if.end23
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end16:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_, .Lfunc_end16-_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
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
	blt	$a2, $a3, .LBB17_10
# %bb.1:                                # %if.then
	fld.d	$fa0, $a0, 0
	move	$a2, $a0
	.p2align	4, , 16
.LBB17_2:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
                                        #     Child Loop BB17_6 Depth 2
	addi.d	$s0, $a1, 8
	.p2align	4, , 16
.LBB17_3:                               # %while.cond
                                        #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a1, -8
	addi.d	$a1, $a1, -8
	fcmp.clt.d	$fcc0, $fa0, $fa1
	addi.d	$s0, $s0, -8
	bcnez	$fcc0, .LBB17_3
# %bb.4:                                # %while.end
                                        #   in Loop: Header=BB17_2 Depth=1
	bgeu	$a2, $a1, .LBB17_9
# %bb.5:                                # %while.cond7.preheader
                                        #   in Loop: Header=BB17_2 Depth=1
	addi.d	$a2, $a2, -8
	.p2align	4, , 16
.LBB17_6:                               # %while.cond7
                                        #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a2, 8
	fcmp.clt.d	$fcc0, $fa2, $fa0
	addi.d	$a2, $a2, 8
	bcnez	$fcc0, .LBB17_6
# %bb.7:                                # %while.end12
                                        #   in Loop: Header=BB17_2 Depth=1
	bgeu	$a2, $a1, .LBB17_9
# %bb.8:                                # %if.end15
                                        #   in Loop: Header=BB17_2 Depth=1
	fst.d	$fa2, $a1, 0
	fst.d	$fa1, $a2, 0
	b	.LBB17_2
.LBB17_9:                               # %for.end
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
.LBB17_10:                              # %if.end23
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end17:
	.size	_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_, .Lfunc_end17-_ZN9benchmark9quicksortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
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
	blt	$a1, $a2, .LBB18_25
# %bb.1:                                # %for.body.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB18_4
	.p2align	4, , 16
.LBB18_2:                               #   in Loop: Header=BB18_4 Depth=1
	move	$t0, $a7
.LBB18_3:                               # %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit
                                        #   in Loop: Header=BB18_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB18_13
.LBB18_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_6 Depth 2
                                        #     Child Loop BB18_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
	slli.d	$a7, $a3, 1
	addi.d	$t0, $a7, 2
	bge	$t0, $a1, .LBB18_12
# %bb.5:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB18_4 Depth=1
	move	$t1, $a3
	.p2align	4, , 16
.LBB18_6:                               # %for.body.i
                                        #   Parent Loop BB18_4 Depth=1
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
	blt	$t0, $a1, .LBB18_6
# %bb.7:                                # %for.end.i
                                        #   in Loop: Header=BB18_4 Depth=1
	bne	$t0, $a1, .LBB18_9
.LBB18_8:                               # %if.then9.i
                                        #   in Loop: Header=BB18_4 Depth=1
	fld.d	$fa1, $a4, 0
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $a2
.LBB18_9:                               # %if.end14.i
                                        #   in Loop: Header=BB18_4 Depth=1
	blt	$a7, $a6, .LBB18_2
	.p2align	4, , 16
.LBB18_10:                              # %land.rhs.i
                                        #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t0, $a7, -1
	srli.d	$t1, $t0, 63
	add.d	$t0, $t0, $t1
	srai.d	$t0, $t0, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_2
# %bb.11:                               # %while.body.i
                                        #   in Loop: Header=BB18_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB18_10
	b	.LBB18_3
	.p2align	4, , 16
.LBB18_12:                              #   in Loop: Header=BB18_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB18_8
	b	.LBB18_9
.LBB18_13:                              # %for.body4.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB18_16
	.p2align	4, , 16
.LBB18_14:                              #   in Loop: Header=BB18_16 Depth=1
	move	$a6, $zero
.LBB18_15:                              # %_ZN9benchmark7sift_inIPddEEvlT_lT0_.exit52
                                        #   in Loop: Header=BB18_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB18_25
.LBB18_16:                              # %for.body4
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_18 Depth 2
                                        #     Child Loop BB18_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB18_21
# %bb.17:                               # %for.body.i40.preheader
                                        #   in Loop: Header=BB18_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB18_18:                              # %for.body.i40
                                        #   Parent Loop BB18_16 Depth=1
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
	blt	$a7, $a1, .LBB18_18
# %bb.19:                               # %for.end.i18
                                        #   in Loop: Header=BB18_16 Depth=1
	bne	$a7, $a1, .LBB18_22
.LBB18_20:                              # %if.end14.i22.thread
                                        #   in Loop: Header=BB18_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB18_23
	.p2align	4, , 16
.LBB18_21:                              #   in Loop: Header=BB18_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB18_20
.LBB18_22:                              # %if.end14.i22
                                        #   in Loop: Header=BB18_16 Depth=1
	blt	$a6, $a3, .LBB18_15
	.p2align	4, , 16
.LBB18_23:                              # %land.rhs.i27
                                        #   Parent Loop BB18_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB18_15
# %bb.24:                               # %while.body.i33
                                        #   in Loop: Header=BB18_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB18_23
	b	.LBB18_14
.LBB18_25:                              # %for.end10
	ret
.Lfunc_end18:
	.size	_ZN9benchmark8heapsortIPddEEvT_S2_, .Lfunc_end18-_ZN9benchmark8heapsortIPddEEvT_S2_
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
.LBB19_3:                               # %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit
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
.LBB19_8:                               # %if.then24.i
                                        #   in Loop: Header=BB19_4 Depth=1
	fld.d	$fa1, $a4, 0
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $a2
.LBB19_9:                               # %if.end37.i
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
.LBB19_13:                              # %for.body11.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB19_16
	.p2align	4, , 16
.LBB19_14:                              #   in Loop: Header=BB19_16 Depth=1
	move	$a6, $zero
.LBB19_15:                              # %_ZN9benchmark7sift_inIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvlT_lT0_.exit54
                                        #   in Loop: Header=BB19_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB19_25
.LBB19_16:                              # %for.body11
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
# %bb.17:                               # %for.body.i42.preheader
                                        #   in Loop: Header=BB19_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB19_18:                              # %for.body.i42
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
# %bb.19:                               # %for.end.i20
                                        #   in Loop: Header=BB19_16 Depth=1
	bne	$a7, $a1, .LBB19_22
.LBB19_20:                              # %if.end37.i24.thread
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
.LBB19_22:                              # %if.end37.i24
                                        #   in Loop: Header=BB19_16 Depth=1
	blt	$a6, $a3, .LBB19_15
	.p2align	4, , 16
.LBB19_23:                              # %land.rhs.i29
                                        #   Parent Loop BB19_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB19_15
# %bb.24:                               # %while.body.i35
                                        #   in Loop: Header=BB19_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB19_23
	b	.LBB19_14
.LBB19_25:                              # %for.end29
	ret
.Lfunc_end19:
	.size	_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_, .Lfunc_end19-_ZN9benchmark8heapsortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEEvT_S8_
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
	blt	$a1, $a2, .LBB20_25
# %bb.1:                                # %for.body.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	ori	$a4, $zero, 1
	sub.d	$a5, $a4, $a1
	alsl.d	$a5, $a5, $a0, 3
	b	.LBB20_4
	.p2align	4, , 16
.LBB20_2:                               #   in Loop: Header=BB20_4 Depth=1
	move	$t0, $a7
.LBB20_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB20_4 Depth=1
	slli.d	$a7, $t0, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa0, $a7, -8
	bge	$a4, $a6, .LBB20_13
.LBB20_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_6 Depth 2
                                        #     Child Loop BB20_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	sub.d	$a7, $a4, $a6
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa0, $a7, -8
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
	blt	$t0, $a1, .LBB20_6
# %bb.7:                                # %for.end.i
                                        #   in Loop: Header=BB20_4 Depth=1
	bne	$t0, $a1, .LBB20_9
.LBB20_8:                               # %if.then12.i
                                        #   in Loop: Header=BB20_4 Depth=1
	fld.d	$fa1, $a5, -8
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, -8
	move	$a7, $a2
.LBB20_9:                               # %if.end19.i
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
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, -8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB20_2
# %bb.11:                               # %while.body.i
                                        #   in Loop: Header=BB20_10 Depth=2
	slli.d	$a7, $a7, 3
	sub.d	$a7, $a0, $a7
	fst.d	$fa1, $a7, -8
	move	$a7, $t0
	bge	$t0, $a6, .LBB20_10
	b	.LBB20_3
	.p2align	4, , 16
.LBB20_12:                              #   in Loop: Header=BB20_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB20_8
	b	.LBB20_9
.LBB20_13:
	ori	$a2, $zero, 1
	ori	$a3, $zero, 3
	ori	$a4, $zero, 2
	b	.LBB20_16
	.p2align	4, , 16
.LBB20_14:                              #   in Loop: Header=BB20_16 Depth=1
	move	$a6, $zero
.LBB20_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIPdEdEEvlT_lT0_.exit77
                                        #   in Loop: Header=BB20_16 Depth=1
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa0, $a6, -8
	bge	$a4, $a5, .LBB20_25
.LBB20_16:                              # %for.body5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_18 Depth 2
                                        #     Child Loop BB20_23 Depth 2
	move	$a5, $a1
	sub.d	$a1, $a2, $a1
	alsl.d	$a6, $a1, $a0, 3
	fld.d	$fa1, $a0, -8
	fld.d	$fa0, $a6, -8
	addi.d	$a1, $a5, -1
	fst.d	$fa1, $a6, -8
	bltu	$a1, $a3, .LBB20_21
# %bb.17:                               # %for.body.i56.preheader
                                        #   in Loop: Header=BB20_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB20_18:                              # %for.body.i56
                                        #   Parent Loop BB20_16 Depth=1
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
	blt	$a7, $a1, .LBB20_18
# %bb.19:                               # %for.end.i19
                                        #   in Loop: Header=BB20_16 Depth=1
	bne	$a7, $a1, .LBB20_22
.LBB20_20:                              # %if.end19.i23.thread
                                        #   in Loop: Header=BB20_16 Depth=1
	sub.d	$a7, $a4, $a5
	alsl.d	$a7, $a7, $a0, 3
	fld.d	$fa1, $a7, -8
	slli.d	$a6, $a6, 3
	addi.d	$a7, $a5, -2
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, -8
	move	$a6, $a7
	b	.LBB20_23
	.p2align	4, , 16
.LBB20_21:                              #   in Loop: Header=BB20_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB20_20
.LBB20_22:                              # %if.end19.i23
                                        #   in Loop: Header=BB20_16 Depth=1
	blt	$a6, $a2, .LBB20_15
	.p2align	4, , 16
.LBB20_23:                              # %land.rhs.i31
                                        #   Parent Loop BB20_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	sub.d	$t1, $a0, $t1
	fld.d	$fa1, $t1, -8
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB20_15
# %bb.24:                               # %while.body.i42
                                        #   in Loop: Header=BB20_23 Depth=2
	slli.d	$a6, $a6, 3
	sub.d	$a6, $a0, $a6
	fst.d	$fa1, $a6, -8
	move	$a6, $t0
	bltu	$a2, $a7, .LBB20_23
	b	.LBB20_14
.LBB20_25:                              # %for.end15
	ret
.Lfunc_end20:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_, .Lfunc_end20-_ZN9benchmark8heapsortISt16reverse_iteratorIPdEdEEvT_S4_
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
.LBB21_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit
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
.LBB21_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvlT_lT0_.exit77
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
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_, .Lfunc_end21-_ZN9benchmark8heapsortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEdEEvT_SA_
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
	blt	$a1, $a2, .LBB22_25
# %bb.1:                                # %for.body.lr.ph
	srli.d	$a3, $a1, 1
	addi.d	$a2, $a1, -1
	alsl.d	$a4, $a2, $a0, 3
	ori	$a5, $zero, 1
	b	.LBB22_4
	.p2align	4, , 16
.LBB22_2:                               #   in Loop: Header=BB22_4 Depth=1
	move	$t0, $a7
.LBB22_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB22_4 Depth=1
	slli.d	$a7, $t0, 3
	fstx.d	$fa0, $a0, $a7
	bge	$a5, $a6, .LBB22_13
.LBB22_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_6 Depth 2
                                        #     Child Loop BB22_10 Depth 2
	move	$a6, $a3
	addi.d	$a3, $a3, -1
	slli.d	$a7, $a3, 3
	fldx.d	$fa0, $a0, $a7
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
	blt	$t0, $a1, .LBB22_6
# %bb.7:                                # %for.end.i
                                        #   in Loop: Header=BB22_4 Depth=1
	bne	$t0, $a1, .LBB22_9
.LBB22_8:                               # %if.then12.i
                                        #   in Loop: Header=BB22_4 Depth=1
	fld.d	$fa1, $a4, 0
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
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
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB22_2
# %bb.11:                               # %while.body.i
                                        #   in Loop: Header=BB22_10 Depth=2
	slli.d	$a7, $a7, 3
	fstx.d	$fa1, $a0, $a7
	move	$a7, $t0
	bge	$t0, $a6, .LBB22_10
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_12:                              #   in Loop: Header=BB22_4 Depth=1
	move	$a7, $a3
	beq	$t0, $a1, .LBB22_8
	b	.LBB22_9
.LBB22_13:                              # %for.body5.preheader
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB22_16
	.p2align	4, , 16
.LBB22_14:                              #   in Loop: Header=BB22_16 Depth=1
	move	$a6, $zero
.LBB22_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IPdEEdEEvlT_lT0_.exit65
                                        #   in Loop: Header=BB22_16 Depth=1
	slli.d	$a6, $a6, 3
	fstx.d	$fa0, $a0, $a6
	bge	$a4, $a5, .LBB22_25
.LBB22_16:                              # %for.body5
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_18 Depth 2
                                        #     Child Loop BB22_23 Depth 2
	move	$a5, $a1
	addi.d	$a1, $a1, -1
	slli.d	$a6, $a1, 3
	fld.d	$fa1, $a0, 0
	fldx.d	$fa0, $a0, $a6
	fstx.d	$fa1, $a0, $a6
	bltu	$a1, $a2, .LBB22_21
# %bb.17:                               # %for.body.i53.preheader
                                        #   in Loop: Header=BB22_16 Depth=1
	move	$t0, $zero
	ori	$a7, $zero, 2
	.p2align	4, , 16
.LBB22_18:                              # %for.body.i53
                                        #   Parent Loop BB22_16 Depth=1
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
	blt	$a7, $a1, .LBB22_18
# %bb.19:                               # %for.end.i27
                                        #   in Loop: Header=BB22_16 Depth=1
	bne	$a7, $a1, .LBB22_22
.LBB22_20:                              # %if.end19.i31.thread
                                        #   in Loop: Header=BB22_16 Depth=1
	addi.d	$a7, $a5, -2
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $a0, $t0
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $a7
	b	.LBB22_23
	.p2align	4, , 16
.LBB22_21:                              #   in Loop: Header=BB22_16 Depth=1
	move	$a6, $zero
	ori	$a7, $zero, 2
	beq	$a7, $a1, .LBB22_20
.LBB22_22:                              # %if.end19.i31
                                        #   in Loop: Header=BB22_16 Depth=1
	blt	$a6, $a3, .LBB22_15
	.p2align	4, , 16
.LBB22_23:                              # %land.rhs.i37
                                        #   Parent Loop BB22_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a7, $a6, -1
	srli.d	$t0, $a7, 1
	slli.d	$t1, $t0, 3
	fldx.d	$fa1, $a0, $t1
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB22_15
# %bb.24:                               # %while.body.i43
                                        #   in Loop: Header=BB22_23 Depth=2
	slli.d	$a6, $a6, 3
	fstx.d	$fa1, $a0, $a6
	move	$a6, $t0
	bltu	$a3, $a7, .LBB22_23
	b	.LBB22_14
.LBB22_25:                              # %for.end15
	ret
.Lfunc_end22:
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_, .Lfunc_end22-_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IPdEEdEEvT_S5_
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
	blt	$a1, $a3, .LBB23_25
# %bb.1:                                # %for.body.lr.ph
	srli.d	$a4, $a1, 1
	addi.d	$a3, $a1, -1
	alsl.d	$a5, $a3, $a2, 3
	ori	$a6, $zero, 1
	b	.LBB23_4
	.p2align	4, , 16
.LBB23_2:                               #   in Loop: Header=BB23_4 Depth=1
	move	$t1, $t0
.LBB23_3:                               # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit
                                        #   in Loop: Header=BB23_4 Depth=1
	slli.d	$t0, $t1, 3
	fstx.d	$fa0, $a2, $t0
	bge	$a6, $a7, .LBB23_13
.LBB23_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_6 Depth 2
                                        #     Child Loop BB23_10 Depth 2
	move	$a7, $a4
	addi.d	$a4, $a4, -1
	slli.d	$t0, $a4, 3
	fldx.d	$fa0, $a2, $t0
	slli.d	$t0, $a4, 1
	addi.d	$t1, $t0, 2
	bge	$t1, $a1, .LBB23_12
# %bb.5:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB23_4 Depth=1
	move	$t2, $a4
	.p2align	4, , 16
.LBB23_6:                               # %for.body.i
                                        #   Parent Loop BB23_4 Depth=1
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
	blt	$t1, $a1, .LBB23_6
# %bb.7:                                # %for.end.i
                                        #   in Loop: Header=BB23_4 Depth=1
	bne	$t1, $a1, .LBB23_9
.LBB23_8:                               # %if.then12.i
                                        #   in Loop: Header=BB23_4 Depth=1
	fld.d	$fa1, $a5, 0
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a2, $t0
	move	$t0, $a3
.LBB23_9:                               # %if.end19.i
                                        #   in Loop: Header=BB23_4 Depth=1
	blt	$t0, $a7, .LBB23_2
	.p2align	4, , 16
.LBB23_10:                              # %land.rhs.i
                                        #   Parent Loop BB23_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$t1, $t0, -1
	srli.d	$t2, $t1, 63
	add.d	$t1, $t1, $t2
	srai.d	$t1, $t1, 1
	slli.d	$t2, $t1, 3
	fldx.d	$fa1, $a2, $t2
	fcmp.cule.d	$fcc0, $fa0, $fa1
	bcnez	$fcc0, .LBB23_2
# %bb.11:                               # %while.body.i
                                        #   in Loop: Header=BB23_10 Depth=2
	slli.d	$t0, $t0, 3
	fstx.d	$fa1, $a2, $t0
	move	$t0, $t1
	bge	$t1, $a7, .LBB23_10
	b	.LBB23_3
	.p2align	4, , 16
.LBB23_12:                              #   in Loop: Header=BB23_4 Depth=1
	move	$t0, $a4
	beq	$t1, $a1, .LBB23_8
	b	.LBB23_9
.LBB23_13:                              # %for.body5.lr.ph
	ld.d	$a0, $a0, 8
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2
	b	.LBB23_16
	.p2align	4, , 16
.LBB23_14:                              #   in Loop: Header=BB23_16 Depth=1
	move	$a6, $zero
.LBB23_15:                              # %_ZN9benchmark7sift_inISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvlT_lT0_.exit65
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
	.size	_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_, .Lfunc_end23-_ZN9benchmark8heapsortISt16reverse_iteratorIS1_IN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEEdEEvT_SB_
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
