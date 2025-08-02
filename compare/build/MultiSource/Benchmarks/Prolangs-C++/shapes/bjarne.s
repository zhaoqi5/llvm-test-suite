	.file	"bjarne.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_Z11screen_initv                # -- Begin function _Z11screen_initv
	.p2align	5
	.type	_Z11screen_initv,@function
_Z11screen_initv:                       # @_Z11screen_initv
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(screen)
	addi.d	$a0, $a0, %pc_lo12(screen)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 960
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end0:
	.size	_Z11screen_initv, .Lfunc_end0-_Z11screen_initv
                                        # -- End function
	.globl	_Z14screen_destroyv             # -- Begin function _Z14screen_destroyv
	.p2align	5
	.type	_Z14screen_destroyv,@function
_Z14screen_destroyv:                    # @_Z14screen_destroyv
# %bb.0:                                # %entry
	ret
.Lfunc_end1:
	.size	_Z14screen_destroyv, .Lfunc_end1-_Z14screen_destroyv
                                        # -- End function
	.globl	_Z9put_pointii                  # -- Begin function _Z9put_pointii
	.p2align	5
	.type	_Z9put_pointii,@function
_Z9put_pointii:                         # @_Z9put_pointii
# %bb.0:                                # %entry
	ori	$a2, $zero, 39
	bltu	$a2, $a0, .LBB2_3
# %bb.1:                                # %entry
	ori	$a2, $zero, 23
	bltu	$a2, $a1, .LBB2_3
# %bb.2:                                # %if.then
	slli.d	$a2, $a0, 4
	alsl.d	$a0, $a0, $a2, 3
	pcalau12i	$a2, %pc_hi20(screen)
	addi.d	$a2, $a2, %pc_lo12(screen)
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 42
	stx.b	$a2, $a0, $a1
.LBB2_3:                                # %if.end
	ret
.Lfunc_end2:
	.size	_Z9put_pointii, .Lfunc_end2-_Z9put_pointii
                                        # -- End function
	.globl	_Z8put_lineiiii                 # -- Begin function _Z8put_lineiiii
	.p2align	5
	.type	_Z8put_lineiiii,@function
_Z8put_lineiiii:                        # @_Z8put_lineiiii
# %bb.0:                                # %entry
	sub.w	$a4, $a2, $a0
	srai.d	$a5, $a4, 31
	xor	$a6, $a4, $a5
	sub.w	$a7, $a6, $a5
	slti	$a4, $a4, 0
	sub.d	$a4, $zero, $a4
	ori	$a4, $a4, 1
	sub.w	$t1, $a3, $a1
	srai.d	$a5, $t1, 31
	xor	$a6, $t1, $a5
	sub.w	$t2, $a6, $a5
	slli.d	$t0, $a7, 1
	slli.d	$a5, $t2, 1
	sub.w	$a6, $t0, $t2
	bgeu	$t2, $a7, .LBB3_8
# %bb.1:                                # %entry.split.us
	move	$a7, $zero
	pcalau12i	$t0, %pc_hi20(screen)
	addi.d	$t0, $t0, %pc_lo12(screen)
	add.d	$t0, $t0, $a1
	ori	$t1, $zero, 23
	ori	$t2, $zero, 39
	ori	$t3, $zero, 42
	b	.LBB3_3
	.p2align	4, , 16
.LBB3_2:                                # %if.end12.us
                                        #   in Loop: Header=BB3_3 Depth=1
	slt	$t4, $a6, $a7
	masknez	$t5, $a4, $t4
	add.w	$a0, $t5, $a0
	masknez	$t4, $a5, $t4
	add.w	$a7, $t4, $a7
.LBB3_3:                                # %for.cond.us
                                        # =>This Inner Loop Header: Depth=1
	bltu	$t1, $a1, .LBB3_6
# %bb.4:                                # %for.cond.us
                                        #   in Loop: Header=BB3_3 Depth=1
	bltu	$t2, $a0, .LBB3_6
# %bb.5:                                # %if.then.i.us
                                        #   in Loop: Header=BB3_3 Depth=1
	slli.d	$t4, $a0, 4
	alsl.d	$t4, $a0, $t4, 3
	stx.b	$t3, $t0, $t4
.LBB3_6:                                # %_Z9put_pointii.exit.us
                                        #   in Loop: Header=BB3_3 Depth=1
	bne	$a3, $a1, .LBB3_2
# %bb.7:                                # %_Z9put_pointii.exit.us
                                        #   in Loop: Header=BB3_3 Depth=1
	bne	$a0, $a2, .LBB3_2
	b	.LBB3_15
.LBB3_8:                                # %for.cond.preheader
	move	$t4, $zero
	slti	$t1, $t1, 0
	sub.d	$t1, $zero, $t1
	ori	$t1, $t1, 1
	ori	$t2, $zero, 23
	ori	$t3, $zero, 39
	ori	$t5, $zero, 42
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %if.end12
                                        #   in Loop: Header=BB3_10 Depth=1
	slt	$t6, $a6, $t4
	masknez	$t7, $a4, $t6
	add.w	$a0, $t7, $a0
	masknez	$t6, $a5, $t6
	add.w	$t4, $t6, $t4
	slt	$t6, $t4, $a7
	masknez	$t7, $t1, $t6
	add.w	$a1, $t7, $a1
	masknez	$t6, $t0, $t6
	sub.w	$t4, $t4, $t6
.LBB3_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	bltu	$t2, $a1, .LBB3_13
# %bb.11:                               # %for.cond
                                        #   in Loop: Header=BB3_10 Depth=1
	bltu	$t3, $a0, .LBB3_13
# %bb.12:                               # %if.then.i
                                        #   in Loop: Header=BB3_10 Depth=1
	slli.d	$t6, $a0, 4
	alsl.d	$t6, $a0, $t6, 3
	pcalau12i	$t7, %pc_hi20(screen)
	addi.d	$t7, $t7, %pc_lo12(screen)
	add.d	$t6, $t7, $t6
	stx.b	$t5, $t6, $a1
.LBB3_13:                               # %_Z9put_pointii.exit
                                        #   in Loop: Header=BB3_10 Depth=1
	bne	$a1, $a3, .LBB3_9
# %bb.14:                               # %_Z9put_pointii.exit
                                        #   in Loop: Header=BB3_10 Depth=1
	bne	$a0, $a2, .LBB3_9
.LBB3_15:                               # %for.end
	ret
.Lfunc_end3:
	.size	_Z8put_lineiiii, .Lfunc_end3-_Z8put_lineiiii
                                        # -- End function
	.globl	_Z12screen_clearv               # -- Begin function _Z12screen_clearv
	.p2align	5
	.type	_Z12screen_clearv,@function
_Z12screen_clearv:                      # @_Z12screen_clearv
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(screen)
	addi.d	$a0, $a0, %pc_lo12(screen)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 960
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end4:
	.size	_Z12screen_clearv, .Lfunc_end4-_Z12screen_clearv
                                        # -- End function
	.globl	_Z14screen_refreshv             # -- Begin function _Z14screen_refreshv
	.p2align	5
	.type	_Z14screen_refreshv,@function
_Z14screen_refreshv:                    # @_Z14screen_refreshv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	ori	$a0, $zero, 23
	pcalau12i	$a1, %pc_hi20(screen)
	pcalau12i	$a2, %got_pc_hi20(_ZSt4cout)
	ld.d	$fp, $a2, %got_pc_lo12(_ZSt4cout)
	addi.d	$s0, $a1, %pc_lo12(screen)
	ori	$s1, $zero, 983
	ori	$s2, $zero, 10
	b	.LBB5_2
	.p2align	4, , 16
.LBB5_1:                                # %if.end.i
                                        #   in Loop: Header=BB5_2 Depth=1
	ori	$a1, $zero, 10
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, -1
	addi.d	$s0, $s0, -1
	beqz	$s3, .LBB5_8
.LBB5_2:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
	move	$s3, $a0
	ori	$s4, $zero, 23
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_3:                                # %if.end.i15
                                        #   in Loop: Header=BB5_4 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 24
	beq	$s4, $s1, .LBB5_6
.LBB5_4:                                # %for.body4
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	ldx.b	$a1, $s0, $s4
	add.d	$a0, $fp, $a0
	ld.d	$a0, $a0, 16
	st.b	$a1, $sp, 23
	beqz	$a0, .LBB5_3
# %bb.5:                                # %if.then.i12
                                        #   in Loop: Header=BB5_4 Depth=2
	addi.d	$a1, $sp, 23
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 24
	bne	$s4, $s1, .LBB5_4
.LBB5_6:                                # %for.cond.cleanup3
                                        #   in Loop: Header=BB5_2 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$a0, $a0, 16
	st.b	$s2, $sp, 22
	beqz	$a0, .LBB5_1
# %bb.7:                                # %if.then.i
                                        #   in Loop: Header=BB5_2 Depth=1
	addi.d	$a1, $sp, 22
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s3, -1
	addi.d	$s0, $s0, -1
	bnez	$s3, .LBB5_2
.LBB5_8:                                # %for.cond.cleanup
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
	.size	_Z14screen_refreshv, .Lfunc_end5-_Z14screen_refreshv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9rectangleC2EP5pointS1_      # -- Begin function _ZN9rectangleC2EP5pointS1_
	.p2align	2
	.type	_ZN9rectangleC2EP5pointS1_,@function
_ZN9rectangleC2EP5pointS1_:             # @_ZN9rectangleC2EP5pointS1_
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
	pcalau12i	$a3, %pc_hi20(_ZN5shape4listE)
	ld.d	$a4, $a3, %pc_lo12(_ZN5shape4listE)
	move	$fp, $a0
	st.d	$a4, $a0, 8
	st.d	$a0, $a3, %pc_lo12(_ZN5shape4listE)
	ld.w	$s0, $a1, 0
	ld.w	$s2, $a2, 0
	ld.w	$s1, $a1, 4
	ld.w	$s3, $a2, 4
	pcalau12i	$a0, %pc_hi20(_ZTV9rectangle+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV9rectangle+16)
	st.d	$a0, $fp, 0
	bge	$s2, $s0, .LBB6_3
# %bb.1:                                # %if.else15
	bge	$s3, $s1, .LBB6_5
# %bb.2:                                # %if.else32
	st.d	$a2, $fp, 16
	move	$a2, $a1
	b	.LBB6_7
.LBB6_3:                                # %if.then
	bge	$s3, $s1, .LBB6_6
# %bb.4:                                # %if.else
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.w	$s0, $a0, 0
	st.w	$s3, $a0, 4
	st.d	$a0, $fp, 16
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.w	$s2, $a0, 0
	st.w	$s1, $a0, 4
	b	.LBB6_7
.LBB6_5:                                # %if.then19
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	st.w	$s2, $a0, 0
	st.w	$s1, $a0, 4
	st.d	$a0, $fp, 16
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.w	$s0, $a0, 0
	st.w	$s3, $a0, 4
	b	.LBB6_7
.LBB6_6:                                # %if.then5
	st.d	$a1, $fp, 16
.LBB6_7:                                # %if.end36
	st.d	$a2, $fp, 24
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	_ZN9rectangleC2EP5pointS1_, .Lfunc_end6-_ZN9rectangleC2EP5pointS1_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9rectangle4drawEv            # -- Begin function _ZN9rectangle4drawEv
	.p2align	2
	.type	_ZN9rectangle4drawEv,@function
_ZN9rectangle4drawEv:                   # @_ZN9rectangle4drawEv
# %bb.0:                                # %entry
	ld.d	$a3, $a0, 16
	ld.d	$a2, $a0, 24
	ld.w	$a1, $a3, 0
	ld.w	$a4, $a2, 0
	ld.w	$a2, $a2, 4
	ld.w	$a5, $a3, 4
	sub.w	$t0, $a4, $a1
	slti	$a3, $t0, 0
	sub.d	$a3, $zero, $a3
	ori	$a6, $a3, 1
	pcalau12i	$a3, %pc_hi20(screen)
	addi.d	$a3, $a3, %pc_lo12(screen)
	beq	$a4, $a1, .LBB7_6
# %bb.1:                                # %entry.split.us.i.i
	add.d	$a7, $a3, $a2
	add.w	$t0, $a6, $a4
	ori	$t1, $zero, 23
	ori	$t2, $zero, 39
	ori	$t3, $zero, 42
	move	$t4, $a1
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_2:                                # %_Z9put_pointii.exit.us.i.i
                                        #   in Loop: Header=BB7_3 Depth=1
	add.w	$t4, $t4, $a6
	beq	$t0, $t4, .LBB7_13
.LBB7_3:                                # %for.cond.us.i.i
                                        # =>This Inner Loop Header: Depth=1
	bltu	$t1, $a2, .LBB7_2
# %bb.4:                                # %for.cond.us.i.i
                                        #   in Loop: Header=BB7_3 Depth=1
	bltu	$t2, $t4, .LBB7_2
# %bb.5:                                # %if.then.i.us.i.i
                                        #   in Loop: Header=BB7_3 Depth=1
	slli.d	$t5, $t4, 4
	alsl.d	$t5, $t4, $t5, 3
	stx.b	$t3, $a7, $t5
	b	.LBB7_2
.LBB7_6:                                # %for.cond.i.i.preheader
	move	$a7, $zero
	srai.d	$t1, $t0, 31
	xor	$t0, $t0, $t1
	sub.w	$t0, $t0, $t1
	slli.d	$t1, $t0, 1
	ori	$t2, $zero, 23
	ori	$t3, $zero, 39
	ori	$t4, $zero, 42
	move	$t5, $a1
	move	$t6, $a2
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %if.end12.i.i
                                        #   in Loop: Header=BB7_8 Depth=1
	slt	$t7, $a7, $t0
	xori	$t7, $t7, 1
	add.w	$t6, $t6, $t7
	maskeqz	$t7, $t1, $t7
	sub.w	$a7, $a7, $t7
	add.w	$t5, $t5, $a6
.LBB7_8:                                # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	bltu	$t2, $t6, .LBB7_11
# %bb.9:                                # %for.cond.i.i
                                        #   in Loop: Header=BB7_8 Depth=1
	bltu	$t3, $t5, .LBB7_11
# %bb.10:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB7_8 Depth=1
	slli.d	$t7, $t5, 4
	alsl.d	$t7, $t5, $t7, 3
	add.d	$t7, $a3, $t7
	stx.b	$t4, $t7, $t6
.LBB7_11:                               # %_Z9put_pointii.exit.i.i
                                        #   in Loop: Header=BB7_8 Depth=1
	bne	$t6, $a2, .LBB7_7
# %bb.12:                               # %_Z9put_pointii.exit.i.i
                                        #   in Loop: Header=BB7_8 Depth=1
	bne	$a4, $t5, .LBB7_7
.LBB7_13:                               # %_Z8put_lineP5pointS0_.exit
	addi.d	$sp, $sp, -32
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a7, $a0, 24
	ld.w	$a6, $a7, 0
	ld.w	$a7, $a7, 4
	sub.w	$t0, $a4, $a6
	srai.d	$t1, $t0, 31
	xor	$t2, $t0, $t1
	sub.w	$t3, $t2, $t1
	slti	$t0, $t0, 0
	sub.d	$t0, $zero, $t0
	ori	$t0, $t0, 1
	sub.w	$t5, $a5, $a7
	srai.d	$t1, $t5, 31
	xor	$t2, $t5, $t1
	sub.w	$t6, $t2, $t1
	slli.d	$t4, $t3, 1
	slli.d	$t1, $t6, 1
	sub.w	$t2, $t4, $t6
	bgeu	$t6, $t3, .LBB7_21
# %bb.14:                               # %entry.split.us.i.i45
	move	$t3, $zero
	add.d	$t4, $a3, $a7
	ori	$t5, $zero, 23
	ori	$t6, $zero, 39
	ori	$t7, $zero, 42
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_15:                               # %if.end12.us.i.i61
                                        #   in Loop: Header=BB7_16 Depth=1
	slt	$t8, $t2, $t3
	masknez	$fp, $t0, $t8
	add.w	$a6, $fp, $a6
	masknez	$t8, $t1, $t8
	add.w	$t3, $t8, $t3
.LBB7_16:                               # %for.cond.us.i.i50
                                        # =>This Inner Loop Header: Depth=1
	bltu	$t5, $a7, .LBB7_19
# %bb.17:                               # %for.cond.us.i.i50
                                        #   in Loop: Header=BB7_16 Depth=1
	bltu	$t6, $a6, .LBB7_19
# %bb.18:                               # %if.then.i.us.i.i55
                                        #   in Loop: Header=BB7_16 Depth=1
	slli.d	$t8, $a6, 4
	alsl.d	$t8, $a6, $t8, 3
	stx.b	$t7, $t4, $t8
.LBB7_19:                               # %_Z9put_pointii.exit.us.i.i58
                                        #   in Loop: Header=BB7_16 Depth=1
	bne	$a5, $a7, .LBB7_15
# %bb.20:                               # %_Z9put_pointii.exit.us.i.i58
                                        #   in Loop: Header=BB7_16 Depth=1
	bne	$a6, $a4, .LBB7_15
	b	.LBB7_28
.LBB7_21:                               # %for.cond.i.i18.preheader
	move	$t8, $zero
	slti	$t5, $t5, 0
	sub.d	$t5, $zero, $t5
	ori	$t5, $t5, 1
	ori	$t6, $zero, 23
	ori	$t7, $zero, 39
	ori	$fp, $zero, 42
	b	.LBB7_23
	.p2align	4, , 16
.LBB7_22:                               # %if.end12.i.i34
                                        #   in Loop: Header=BB7_23 Depth=1
	slt	$s0, $t2, $t8
	masknez	$s1, $t0, $s0
	add.w	$a6, $s1, $a6
	masknez	$s0, $t1, $s0
	add.w	$t8, $s0, $t8
	slt	$s0, $t8, $t3
	masknez	$s1, $t5, $s0
	add.w	$a7, $s1, $a7
	masknez	$s0, $t4, $s0
	sub.w	$t8, $t8, $s0
.LBB7_23:                               # %for.cond.i.i18
                                        # =>This Inner Loop Header: Depth=1
	bltu	$t6, $a7, .LBB7_26
# %bb.24:                               # %for.cond.i.i18
                                        #   in Loop: Header=BB7_23 Depth=1
	bltu	$t7, $a6, .LBB7_26
# %bb.25:                               # %if.then.i.i.i25
                                        #   in Loop: Header=BB7_23 Depth=1
	slli.d	$s0, $a6, 4
	alsl.d	$s0, $a6, $s0, 3
	add.d	$s0, $a3, $s0
	stx.b	$fp, $s0, $a7
.LBB7_26:                               # %_Z9put_pointii.exit.i.i30
                                        #   in Loop: Header=BB7_23 Depth=1
	bne	$a7, $a5, .LBB7_22
# %bb.27:                               # %_Z9put_pointii.exit.i.i30
                                        #   in Loop: Header=BB7_23 Depth=1
	bne	$a6, $a4, .LBB7_22
.LBB7_28:                               # %_Z8put_lineP5pointS0_.exit67
	ld.d	$a7, $a0, 16
	ld.w	$a6, $a7, 0
	ld.w	$a7, $a7, 4
	sub.w	$t0, $a6, $a4
	srai.d	$t1, $t0, 31
	xor	$t2, $t0, $t1
	sub.w	$t3, $t2, $t1
	slti	$t0, $t0, 0
	sub.d	$t0, $zero, $t0
	ori	$t0, $t0, 1
	sub.w	$t5, $a7, $a5
	srai.d	$t1, $t5, 31
	xor	$t2, $t5, $t1
	sub.w	$t6, $t2, $t1
	slli.d	$t4, $t3, 1
	slli.d	$t1, $t6, 1
	sub.w	$t2, $t4, $t6
	bgeu	$t6, $t3, .LBB7_36
# %bb.29:                               # %entry.split.us.i.i110
	move	$t3, $zero
	add.d	$t4, $a3, $a5
	ori	$t5, $zero, 23
	ori	$t6, $zero, 39
	ori	$t7, $zero, 42
	b	.LBB7_31
	.p2align	4, , 16
.LBB7_30:                               # %if.end12.us.i.i126
                                        #   in Loop: Header=BB7_31 Depth=1
	slt	$t8, $t2, $t3
	masknez	$fp, $t0, $t8
	add.w	$a4, $fp, $a4
	masknez	$t8, $t1, $t8
	add.w	$t3, $t8, $t3
.LBB7_31:                               # %for.cond.us.i.i115
                                        # =>This Inner Loop Header: Depth=1
	bltu	$t5, $a5, .LBB7_34
# %bb.32:                               # %for.cond.us.i.i115
                                        #   in Loop: Header=BB7_31 Depth=1
	bltu	$t6, $a4, .LBB7_34
# %bb.33:                               # %if.then.i.us.i.i120
                                        #   in Loop: Header=BB7_31 Depth=1
	slli.d	$t8, $a4, 4
	alsl.d	$t8, $a4, $t8, 3
	stx.b	$t7, $t4, $t8
.LBB7_34:                               # %_Z9put_pointii.exit.us.i.i123
                                        #   in Loop: Header=BB7_31 Depth=1
	bne	$a7, $a5, .LBB7_30
# %bb.35:                               # %_Z9put_pointii.exit.us.i.i123
                                        #   in Loop: Header=BB7_31 Depth=1
	bne	$a4, $a6, .LBB7_30
	b	.LBB7_43
.LBB7_36:                               # %for.cond.i.i83.preheader
	move	$t8, $zero
	slti	$t5, $t5, 0
	sub.d	$t5, $zero, $t5
	ori	$t5, $t5, 1
	ori	$t6, $zero, 23
	ori	$t7, $zero, 39
	ori	$fp, $zero, 42
	b	.LBB7_38
	.p2align	4, , 16
.LBB7_37:                               # %if.end12.i.i99
                                        #   in Loop: Header=BB7_38 Depth=1
	slt	$s0, $t2, $t8
	masknez	$s1, $t0, $s0
	add.w	$a4, $s1, $a4
	masknez	$s0, $t1, $s0
	add.w	$t8, $s0, $t8
	slt	$s0, $t8, $t3
	masknez	$s1, $t5, $s0
	add.w	$a5, $s1, $a5
	masknez	$s0, $t4, $s0
	sub.w	$t8, $t8, $s0
.LBB7_38:                               # %for.cond.i.i83
                                        # =>This Inner Loop Header: Depth=1
	bltu	$t6, $a5, .LBB7_41
# %bb.39:                               # %for.cond.i.i83
                                        #   in Loop: Header=BB7_38 Depth=1
	bltu	$t7, $a4, .LBB7_41
# %bb.40:                               # %if.then.i.i.i90
                                        #   in Loop: Header=BB7_38 Depth=1
	slli.d	$s0, $a4, 4
	alsl.d	$s0, $a4, $s0, 3
	add.d	$s0, $a3, $s0
	stx.b	$fp, $s0, $a5
.LBB7_41:                               # %_Z9put_pointii.exit.i.i95
                                        #   in Loop: Header=BB7_38 Depth=1
	bne	$a5, $a7, .LBB7_37
# %bb.42:                               # %_Z9put_pointii.exit.i.i95
                                        #   in Loop: Header=BB7_38 Depth=1
	bne	$a4, $a6, .LBB7_37
.LBB7_43:                               # %_Z8put_lineP5pointS0_.exit132
	ld.d	$a4, $a0, 16
	ld.w	$a0, $a4, 0
	ld.w	$a4, $a4, 4
	sub.w	$a5, $a1, $a0
	srai.d	$a6, $a5, 31
	xor	$a7, $a5, $a6
	sub.w	$t0, $a7, $a6
	slti	$a5, $a5, 0
	sub.d	$a5, $zero, $a5
	ori	$a5, $a5, 1
	sub.w	$t2, $a2, $a4
	srai.d	$a6, $t2, 31
	xor	$a7, $t2, $a6
	sub.w	$t3, $a7, $a6
	slli.d	$t1, $t0, 1
	slli.d	$a6, $t3, 1
	sub.w	$a7, $t1, $t3
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	bgeu	$t3, $t0, .LBB7_51
# %bb.44:                               # %entry.split.us.i.i175
	move	$t0, $zero
	add.d	$a3, $a3, $a4
	ori	$t1, $zero, 23
	ori	$t2, $zero, 39
	ori	$t3, $zero, 42
	b	.LBB7_46
	.p2align	4, , 16
.LBB7_45:                               # %if.end12.us.i.i191
                                        #   in Loop: Header=BB7_46 Depth=1
	slt	$t4, $a7, $t0
	masknez	$t5, $a5, $t4
	add.w	$a0, $t5, $a0
	masknez	$t4, $a6, $t4
	add.w	$t0, $t4, $t0
.LBB7_46:                               # %for.cond.us.i.i180
                                        # =>This Inner Loop Header: Depth=1
	bltu	$t1, $a4, .LBB7_49
# %bb.47:                               # %for.cond.us.i.i180
                                        #   in Loop: Header=BB7_46 Depth=1
	bltu	$t2, $a0, .LBB7_49
# %bb.48:                               # %if.then.i.us.i.i185
                                        #   in Loop: Header=BB7_46 Depth=1
	slli.d	$t4, $a0, 4
	alsl.d	$t4, $a0, $t4, 3
	stx.b	$t3, $a3, $t4
.LBB7_49:                               # %_Z9put_pointii.exit.us.i.i188
                                        #   in Loop: Header=BB7_46 Depth=1
	bne	$a2, $a4, .LBB7_45
# %bb.50:                               # %_Z9put_pointii.exit.us.i.i188
                                        #   in Loop: Header=BB7_46 Depth=1
	bne	$a0, $a1, .LBB7_45
	b	.LBB7_58
.LBB7_51:                               # %for.cond.i.i148.preheader
	move	$t5, $zero
	slti	$t2, $t2, 0
	sub.d	$t2, $zero, $t2
	ori	$t2, $t2, 1
	ori	$t3, $zero, 23
	ori	$t4, $zero, 39
	ori	$t6, $zero, 42
	b	.LBB7_53
	.p2align	4, , 16
.LBB7_52:                               # %if.end12.i.i164
                                        #   in Loop: Header=BB7_53 Depth=1
	slt	$t7, $a7, $t5
	masknez	$t8, $a5, $t7
	add.w	$a0, $t8, $a0
	masknez	$t7, $a6, $t7
	add.w	$t5, $t7, $t5
	slt	$t7, $t5, $t0
	masknez	$t8, $t2, $t7
	add.w	$a4, $t8, $a4
	masknez	$t7, $t1, $t7
	sub.w	$t5, $t5, $t7
.LBB7_53:                               # %for.cond.i.i148
                                        # =>This Inner Loop Header: Depth=1
	bltu	$t3, $a4, .LBB7_56
# %bb.54:                               # %for.cond.i.i148
                                        #   in Loop: Header=BB7_53 Depth=1
	bltu	$t4, $a0, .LBB7_56
# %bb.55:                               # %if.then.i.i.i155
                                        #   in Loop: Header=BB7_53 Depth=1
	slli.d	$t7, $a0, 4
	alsl.d	$t7, $a0, $t7, 3
	add.d	$t7, $a3, $t7
	stx.b	$t6, $t7, $a4
.LBB7_56:                               # %_Z9put_pointii.exit.i.i160
                                        #   in Loop: Header=BB7_53 Depth=1
	bne	$a4, $a2, .LBB7_52
# %bb.57:                               # %_Z9put_pointii.exit.i.i160
                                        #   in Loop: Header=BB7_53 Depth=1
	bne	$a0, $a1, .LBB7_52
.LBB7_58:                               # %_Z8put_lineP5pointS0_.exit197
	ret
.Lfunc_end7:
	.size	_ZN9rectangle4drawEv, .Lfunc_end7-_ZN9rectangle4drawEv
                                        # -- End function
	.globl	_Z13shape_refreshv              # -- Begin function _Z13shape_refreshv
	.p2align	5
	.type	_Z13shape_refreshv,@function
_Z13shape_refreshv:                     # @_Z13shape_refreshv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcalau12i	$a0, %pc_hi20(screen)
	addi.d	$a0, $a0, %pc_lo12(screen)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 960
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN5shape4listE)
	ld.d	$fp, $a0, %pc_lo12(_ZN5shape4listE)
	beqz	$fp, .LBB8_2
	.p2align	4, , 16
.LBB8_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 64
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$fp, $fp, 8
	bnez	$fp, .LBB8_1
.LBB8_2:                                # %for.cond.cleanup
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_Z14screen_refreshv)
	jr	$t8
.Lfunc_end8:
	.size	_Z13shape_refreshv, .Lfunc_end8-_Z13shape_refreshv
	.cfi_endproc
                                        # -- End function
	.globl	_Z5stackP5shapePKS_             # -- Begin function _Z5stackP5shapePKS_
	.p2align	5
	.type	_Z5stackP5shapePKS_,@function
_Z5stackP5shapePKS_:                    # @_Z5stackP5shapePKS_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	ld.d	$a2, $a1, 0
	ld.d	$a2, $a2, 0
	move	$fp, $a0
	move	$a0, $a1
	jirl	$ra, $a2, 0
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 8
	move	$s0, $a0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	ld.w	$a4, $s0, 4
	ld.w	$a0, $a0, 4
	ld.d	$a3, $a3, 72
	sub.w	$a1, $a1, $a2
	sub.d	$a0, $a4, $a0
	addi.w	$a2, $a0, 1
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a3
.Lfunc_end9:
	.size	_Z5stackP5shapePKS_, .Lfunc_end9-_Z5stackP5shapePKS_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7myshape4drawEv              # -- Begin function _ZN7myshape4drawEv
	.p2align	2
	.type	_ZN7myshape4drawEv,@function
_ZN7myshape4drawEv:                     # @_ZN7myshape4drawEv
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
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9rectangle4drawEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 56
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a1, $fp, 0
	ld.w	$s0, $a0, 0
	ld.d	$a1, $a1, 32
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $a0, 0
	ld.d	$a1, $fp, 0
	add.d	$a0, $a0, $s0
	ld.d	$a1, $a1, 56
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a0, $a0, $a2
	srai.d	$s0, $a0, 1
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a1, $fp, 0
	ld.w	$s1, $a0, 4
	ld.d	$a1, $a1, 32
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 39
	bltu	$a1, $s0, .LBB10_3
# %bb.1:                                # %entry
	ld.w	$a0, $a0, 4
	add.d	$a0, $a0, $s1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	ori	$a1, $zero, 23
	bltu	$a1, $a0, .LBB10_3
# %bb.2:                                # %if.then.i.i
	slli.d	$a1, $s0, 4
	alsl.d	$a1, $s0, $a1, 3
	pcalau12i	$a2, %pc_hi20(screen)
	addi.d	$a2, $a2, %pc_lo12(screen)
	add.d	$a1, $a2, $a1
	ori	$a2, $zero, 42
	stx.b	$a2, $a1, $a0
.LBB10_3:                               # %_Z9put_pointP5point.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	_ZN7myshape4drawEv, .Lfunc_end10-_ZN7myshape4drawEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7myshape4moveEii             # -- Begin function _ZN7myshape4moveEii
	.p2align	2
	.type	_ZN7myshape4moveEii,@function
_ZN7myshape4moveEii:                    # @_ZN7myshape4moveEii
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
	move	$fp, $a0
	ld.d	$a3, $a0, 16
	ld.w	$a0, $a3, 0
	move	$s0, $a2
	move	$s1, $a1
	ld.w	$a1, $a3, 4
	ld.d	$a2, $fp, 24
	add.d	$a0, $a0, $s1
	st.w	$a0, $a3, 0
	add.d	$a1, $a1, $s0
	ld.w	$a4, $a2, 0
	ld.d	$a0, $fp, 32
	st.w	$a1, $a3, 4
	ld.w	$a1, $a2, 4
	add.d	$a3, $a4, $s1
	ld.d	$a4, $a0, 0
	st.w	$a3, $a2, 0
	add.d	$a1, $a1, $s0
	st.w	$a1, $a2, 4
	ld.d	$a3, $a4, 72
	move	$a1, $s1
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.d	$a0, $fp, 40
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 72
	move	$a1, $s1
	move	$a2, $s0
	jirl	$ra, $a3, 0
	ld.d	$a0, $fp, 48
	ld.d	$a1, $a0, 0
	ld.d	$a3, $a1, 72
	move	$a1, $s1
	move	$a2, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a3
.Lfunc_end11:
	.size	_ZN7myshape4moveEii, .Lfunc_end11-_ZN7myshape4moveEii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9rectangle4moveEii,"axG",@progbits,_ZN9rectangle4moveEii,comdat
	.weak	_ZN9rectangle4moveEii           # -- Begin function _ZN9rectangle4moveEii
	.p2align	2
	.type	_ZN9rectangle4moveEii,@function
_ZN9rectangle4moveEii:                  # @_ZN9rectangle4moveEii
# %bb.0:                                # %entry
	ld.d	$a3, $a0, 16
	ld.w	$a4, $a3, 0
	ld.w	$a5, $a3, 4
	ld.d	$a0, $a0, 24
	add.d	$a4, $a4, $a1
	st.w	$a4, $a3, 0
	add.d	$a4, $a5, $a2
	ld.w	$a5, $a0, 0
	st.w	$a4, $a3, 4
	ld.w	$a3, $a0, 4
	add.d	$a1, $a5, $a1
	st.w	$a1, $a0, 0
	add.d	$a1, $a3, $a2
	st.w	$a1, $a0, 4
	ret
.Lfunc_end12:
	.size	_ZN9rectangle4moveEii, .Lfunc_end12-_ZN9rectangle4moveEii
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %invoke.cont15
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	pcalau12i	$a0, %pc_hi20(screen)
	addi.d	$a0, $a0, %pc_lo12(screen)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 960
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 10
	lu32i.d	$a0, 10
	st.d	$a0, $s4, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 15
	st.d	$a0, $s2, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 15
	lu32i.d	$a0, 10
	st.d	$a0, $s1, 0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 27
	lu32i.d	$a0, 18
	st.d	$a0, $s3, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$s5, %pc_hi20(_ZN5shape4listE)
	ld.d	$a1, $s5, %pc_lo12(_ZN5shape4listE)
	move	$fp, $a0
	st.d	$a1, $a0, 8
	st.d	$a0, $s5, %pc_lo12(_ZN5shape4listE)
	pcalau12i	$a0, %pc_hi20(_ZTV9rectangle+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV9rectangle+16)
	st.d	$a0, $fp, 0
	st.d	$s0, $fp, 16
	st.d	$s4, $fp, 24
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$fp, $a0, 8
	st.d	$a0, $s5, %pc_lo12(_ZN5shape4listE)
	pcalau12i	$a0, %pc_hi20(_ZTV4line+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV4line+16)
	st.d	$a0, $s0, 0
.Ltmp0:                                 # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %invoke.cont18
	ori	$a1, $zero, 16
	lu32i.d	$a1, 15
	st.d	$a1, $a0, 0
	st.d	$a0, $s0, 16
	st.d	$s2, $s0, 24
	ori	$a0, $zero, 56
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
.Ltmp3:                                 # EH_LABEL
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN7myshapeC2EP5pointS1_)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.2:                                # %invoke.cont21
	pcalau12i	$a0, %pc_hi20(screen)
	addi.d	$a0, $a0, %pc_lo12(screen)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 960
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s5, %pc_lo12(_ZN5shape4listE)
	beqz	$s1, .LBB13_4
	.p2align	4, , 16
.LBB13_3:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 64
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$s1, $s1, 8
	bnez	$s1, .LBB13_3
.LBB13_4:                               # %_Z13shape_refreshv.exit
	pcaddu18i	$ra, %call36(_Z14screen_refreshv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ld.d	$a3, $a0, 72
	addi.w	$a1, $zero, -10
	move	$a0, $s2
	move	$a2, $a1
	jirl	$ra, $a3, 0
	ld.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	jirl	$ra, $a1, 0
	ld.d	$a1, $s0, 0
	ld.d	$a1, $a1, 8
	move	$s1, $a0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.w	$a1, $s1, 0
	ld.w	$a2, $a0, 0
	ld.d	$a3, $s0, 0
	ld.w	$a4, $s1, 4
	ld.w	$a0, $a0, 4
	ld.d	$a3, $a3, 72
	sub.w	$a1, $a1, $a2
	sub.d	$a0, $a4, $a0
	addi.w	$a2, $a0, 1
	move	$a0, $s0
	jirl	$ra, $a3, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 8
	move	$s0, $a0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a1, $s0, 0
	ld.w	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	ld.w	$a4, $s0, 4
	ld.w	$a0, $a0, 4
	ld.d	$a3, $a3, 72
	sub.w	$a1, $a1, $a2
	sub.d	$a0, $a4, $a0
	addi.w	$a2, $a0, 1
	move	$a0, $fp
	jirl	$ra, $a3, 0
	pcalau12i	$a0, %pc_hi20(screen)
	addi.d	$a0, $a0, %pc_lo12(screen)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 960
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s5, %pc_lo12(_ZN5shape4listE)
	beqz	$fp, .LBB13_6
	.p2align	4, , 16
.LBB13_5:                               # %for.body.i35
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 64
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$fp, $fp, 8
	bnez	$fp, .LBB13_5
.LBB13_6:                               # %_Z13shape_refreshv.exit42
	pcaddu18i	$ra, %call36(_Z14screen_refreshv)
	jirl	$ra, $ra, 0
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
.LBB13_7:                               # %lpad20
.Ltmp5:                                 # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 56
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB13_8:                               # %lpad17
.Ltmp2:                                 # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	main, .Lfunc_end13-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table13:
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
	.uleb128 .Lfunc_end13-.Ltmp4            #   Call between .Ltmp4 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7myshapeC2EP5pointS1_,"axG",@progbits,_ZN7myshapeC2EP5pointS1_,comdat
	.weak	_ZN7myshapeC2EP5pointS1_        # -- Begin function _ZN7myshapeC2EP5pointS1_
	.p2align	2
	.type	_ZN7myshapeC2EP5pointS1_,@function
_ZN7myshapeC2EP5pointS1_:               # @_ZN7myshapeC2EP5pointS1_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
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
	pcalau12i	$s4, %pc_hi20(_ZN5shape4listE)
	ld.d	$a3, $s4, %pc_lo12(_ZN5shape4listE)
	move	$fp, $a0
	st.d	$a3, $a0, 8
	st.d	$a0, $s4, %pc_lo12(_ZN5shape4listE)
	ld.w	$s3, $a1, 0
	ld.w	$s2, $a2, 0
	ld.w	$s5, $a1, 4
	ld.w	$s1, $a2, 4
	pcalau12i	$a0, %pc_hi20(_ZTV9rectangle+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTV9rectangle+16)
	st.d	$a0, $fp, 0
	bge	$s2, $s3, .LBB14_3
# %bb.1:                                # %if.else15.i
	bge	$s1, $s5, .LBB14_5
# %bb.2:                                # %if.else32.i
	st.d	$a2, $fp, 16
	move	$s0, $a2
	move	$a0, $s1
	move	$s1, $s5
	move	$s5, $s2
	move	$s2, $s3
	move	$a2, $a1
	b	.LBB14_8
.LBB14_3:                               # %if.then.i
	bge	$s1, $s5, .LBB14_6
# %bb.4:                                # %if.else.i
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$s3, $a0, 0
	st.w	$s1, $a0, 4
	st.d	$a0, $fp, 16
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.w	$s2, $a0, 0
	st.w	$s5, $a0, 4
	move	$a0, $s1
	move	$s1, $s5
	b	.LBB14_7
.LBB14_5:                               # %if.then19.i
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.w	$s2, $a0, 0
	st.w	$s5, $a0, 4
	st.d	$a0, $fp, 16
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.w	$s3, $a0, 0
	st.w	$s1, $a0, 4
	move	$a0, $s5
	move	$s5, $s2
	move	$s2, $s3
	b	.LBB14_8
.LBB14_6:                               # %if.then5.i
	st.d	$a1, $fp, 16
	move	$s0, $a1
	move	$a0, $s5
.LBB14_7:                               # %_ZN9rectangleC2EP5pointS1_.exit
	move	$s5, $s3
.LBB14_8:                               # %_ZN9rectangleC2EP5pointS1_.exit
	st.d	$a2, $fp, 24
	pcalau12i	$a1, %pc_hi20(_ZTV7myshape+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTV7myshape+16)
	st.d	$a1, $fp, 0
	sub.d	$a0, $s1, $a0
	addi.w	$s3, $a0, 1
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s0, 0
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNK9rectangle5swestEv)
	jirl	$ra, $ra, 0
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $s0, 2
	ld.w	$a0, $a0, 4
	alsl.d	$a2, $s3, $s3, 1
	alsl.w	$a3, $s3, $s3, 1
	bstrpick.d	$a3, $a3, 62, 61
	add.w	$a2, $a2, $a3
	srai.d	$s6, $a2, 2
	add.d	$s7, $a0, $s6
	st.w	$a1, $s1, 0
	st.w	$s7, $s1, 4
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 56
	move	$s0, $a0
.Ltmp6:                                 # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp7:                                 # EH_LABEL
# %bb.9:                                # %invoke.cont32
	ld.d	$a1, $fp, 0
	ld.w	$s8, $a0, 0
	ld.d	$a1, $a1, 56
.Ltmp8:                                 # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp9:                                 # EH_LABEL
# %bb.10:                               # %invoke.cont39
	ld.w	$a0, $a0, 4
	sub.d	$a1, $s2, $s5
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	add.d	$a1, $a1, $s8
	addi.d	$a1, $a1, -3
	add.d	$a0, $a0, $s6
	st.w	$a1, $s0, 0
	st.w	$a0, $s0, 4
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 56
	move	$s2, $a0
.Ltmp11:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp12:                                # EH_LABEL
# %bb.11:                               # %invoke.cont50
	ld.d	$a1, $fp, 0
	ld.w	$s5, $a0, 0
	ld.d	$a1, $a1, 56
.Ltmp13:                                # EH_LABEL
	move	$a0, $fp
	jirl	$ra, $a1, 0
.Ltmp14:                                # EH_LABEL
# %bb.12:                               # %invoke.cont56
	addi.d	$s8, $s5, 2
	ld.w	$a0, $a0, 4
	bstrpick.d	$a1, $s3, 62, 61
	add.w	$a1, $s3, $a1
	srli.d	$a1, $a1, 2
	add.d	$s5, $a0, $a1
	st.w	$s8, $s2, 0
	st.w	$s5, $s2, 4
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, %pc_lo12(_ZN5shape4listE)
	move	$s3, $a0
	st.d	$a1, $a0, 8
	st.d	$a0, $s4, %pc_lo12(_ZN5shape4listE)
	pcalau12i	$a0, %pc_hi20(_ZTV4line+16)
	addi.d	$s6, $a0, %pc_lo12(_ZTV4line+16)
	st.d	$s6, $s3, 0
.Ltmp16:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp17:                                # EH_LABEL
# %bb.13:                               # %invoke.cont64
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 3
	st.w	$a1, $a0, 0
	st.w	$s7, $a0, 4
	st.d	$a0, $s3, 16
	st.d	$s1, $s3, 24
	st.d	$s3, $fp, 32
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s3, $a0, 8
	st.d	$a0, $s4, %pc_lo12(_ZN5shape4listE)
	st.d	$s6, $a0, 0
.Ltmp19:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp20:                                # EH_LABEL
# %bb.14:                               # %invoke.cont67
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s0, 4
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	st.w	$a2, $a0, 4
	st.d	$a0, $s1, 16
	st.d	$s0, $s1, 24
	st.d	$s1, $fp, 40
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s1, $a0, 8
	st.d	$a0, $s4, %pc_lo12(_ZN5shape4listE)
	st.d	$s6, $a0, 0
.Ltmp22:                                # EH_LABEL
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp23:                                # EH_LABEL
# %bb.15:                               # %invoke.cont71
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$a1, $a1, $s8
	addi.d	$a1, $a1, -4
	st.w	$a1, $a0, 0
	st.w	$s5, $a0, 4
	st.d	$a0, $s0, 16
	st.d	$s2, $s0, 24
	st.d	$s0, $fp, 48
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
.LBB14_16:                              # %lpad70
.Ltmp24:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_17:                              # %lpad66
.Ltmp21:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_18:                              # %lpad63
.Ltmp18:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 32
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_19:                              # %lpad49
.Ltmp15:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB14_20:                              # %lpad31
.Ltmp10:                                # EH_LABEL
	move	$fp, $a0
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end14:
	.size	_ZN7myshapeC2EP5pointS1_, .Lfunc_end14-_ZN7myshapeC2EP5pointS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN7myshapeC2EP5pointS1_,"aG",@progbits,_ZN7myshapeC2EP5pointS1_,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin1          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp11-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp14-.Ltmp11                #   Call between .Ltmp11 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp14                #   Call between .Ltmp14 and .Ltmp16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp17                #   Call between .Ltmp17 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp22-.Ltmp20                #   Call between .Ltmp20 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin1          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Lfunc_end14-.Ltmp23           #   Call between .Ltmp23 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNK9rectangle5northEv,"axG",@progbits,_ZNK9rectangle5northEv,comdat
	.weak	_ZNK9rectangle5northEv          # -- Begin function _ZNK9rectangle5northEv
	.p2align	2
	.type	_ZNK9rectangle5northEv,@function
_ZNK9rectangle5northEv:                 # @_ZNK9rectangle5northEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 24
	ld.w	$a1, $a1, 0
	ld.w	$a3, $a2, 0
	add.d	$a1, $a3, $a1
	bstrpick.d	$a3, $a1, 31, 31
	ld.w	$a2, $a2, 4
	add.w	$a1, $a1, $a3
	srli.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	st.w	$a2, $a0, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end15:
	.size	_ZNK9rectangle5northEv, .Lfunc_end15-_ZNK9rectangle5northEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9rectangle5southEv,"axG",@progbits,_ZNK9rectangle5southEv,comdat
	.weak	_ZNK9rectangle5southEv          # -- Begin function _ZNK9rectangle5southEv
	.p2align	2
	.type	_ZNK9rectangle5southEv,@function
_ZNK9rectangle5southEv:                 # @_ZNK9rectangle5southEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 24
	ld.w	$a3, $a1, 0
	ld.w	$a2, $a2, 0
	add.d	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 31, 31
	ld.w	$a1, $a1, 4
	add.w	$a2, $a2, $a3
	srli.d	$a2, $a2, 1
	st.w	$a2, $a0, 0
	st.w	$a1, $a0, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end16:
	.size	_ZNK9rectangle5southEv, .Lfunc_end16-_ZNK9rectangle5southEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9rectangle4eastEv,"axG",@progbits,_ZNK9rectangle4eastEv,comdat
	.weak	_ZNK9rectangle4eastEv           # -- Begin function _ZNK9rectangle4eastEv
	.p2align	2
	.type	_ZNK9rectangle4eastEv,@function
_ZNK9rectangle4eastEv:                  # @_ZNK9rectangle4eastEv
# %bb.0:                                # %entry
.Lfunc_end17:
	.size	_ZNK9rectangle4eastEv, .Lfunc_end17-_ZNK9rectangle4eastEv
                                        # -- End function
	.section	.text._ZNK9rectangle4westEv,"axG",@progbits,_ZNK9rectangle4westEv,comdat
	.weak	_ZNK9rectangle4westEv           # -- Begin function _ZNK9rectangle4westEv
	.p2align	2
	.type	_ZNK9rectangle4westEv,@function
_ZNK9rectangle4westEv:                  # @_ZNK9rectangle4westEv
# %bb.0:                                # %entry
.Lfunc_end18:
	.size	_ZNK9rectangle4westEv, .Lfunc_end18-_ZNK9rectangle4westEv
                                        # -- End function
	.section	.text._ZNK9rectangle5neastEv,"axG",@progbits,_ZNK9rectangle5neastEv,comdat
	.weak	_ZNK9rectangle5neastEv          # -- Begin function _ZNK9rectangle5neastEv
	.p2align	2
	.type	_ZNK9rectangle5neastEv,@function
_ZNK9rectangle5neastEv:                 # @_ZNK9rectangle5neastEv
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 24
	ret
.Lfunc_end19:
	.size	_ZNK9rectangle5neastEv, .Lfunc_end19-_ZNK9rectangle5neastEv
                                        # -- End function
	.section	.text._ZNK9rectangle5seastEv,"axG",@progbits,_ZNK9rectangle5seastEv,comdat
	.weak	_ZNK9rectangle5seastEv          # -- Begin function _ZNK9rectangle5seastEv
	.p2align	2
	.type	_ZNK9rectangle5seastEv,@function
_ZNK9rectangle5seastEv:                 # @_ZNK9rectangle5seastEv
# %bb.0:                                # %entry
.Lfunc_end20:
	.size	_ZNK9rectangle5seastEv, .Lfunc_end20-_ZNK9rectangle5seastEv
                                        # -- End function
	.section	.text._ZNK9rectangle5nwestEv,"axG",@progbits,_ZNK9rectangle5nwestEv,comdat
	.weak	_ZNK9rectangle5nwestEv          # -- Begin function _ZNK9rectangle5nwestEv
	.p2align	2
	.type	_ZNK9rectangle5nwestEv,@function
_ZNK9rectangle5nwestEv:                 # @_ZNK9rectangle5nwestEv
# %bb.0:                                # %entry
.Lfunc_end21:
	.size	_ZNK9rectangle5nwestEv, .Lfunc_end21-_ZNK9rectangle5nwestEv
                                        # -- End function
	.section	.text._ZNK9rectangle5swestEv,"axG",@progbits,_ZNK9rectangle5swestEv,comdat
	.weak	_ZNK9rectangle5swestEv          # -- Begin function _ZNK9rectangle5swestEv
	.p2align	2
	.type	_ZNK9rectangle5swestEv,@function
_ZNK9rectangle5swestEv:                 # @_ZNK9rectangle5swestEv
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 16
	ret
.Lfunc_end22:
	.size	_ZNK9rectangle5swestEv, .Lfunc_end22-_ZNK9rectangle5swestEv
                                        # -- End function
	.section	.text._ZNK4line5northEv,"axG",@progbits,_ZNK4line5northEv,comdat
	.weak	_ZNK4line5northEv               # -- Begin function _ZNK4line5northEv
	.p2align	2
	.type	_ZNK4line5northEv,@function
_ZNK4line5northEv:                      # @_ZNK4line5northEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	ld.d	$a2, $fp, 16
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a2, 4
	ld.w	$a2, $a2, 0
	ld.w	$a1, $a1, 0
	slt	$a5, $a4, $a3
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	add.d	$a1, $a1, $a2
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	st.w	$a3, $a0, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end23:
	.size	_ZNK4line5northEv, .Lfunc_end23-_ZNK4line5northEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK4line5southEv,"axG",@progbits,_ZNK4line5southEv,comdat
	.weak	_ZNK4line5southEv               # -- Begin function _ZNK4line5southEv
	.p2align	2
	.type	_ZNK4line5southEv,@function
_ZNK4line5southEv:                      # @_ZNK4line5southEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	ld.d	$a2, $fp, 16
	ld.w	$a3, $a1, 4
	ld.w	$a4, $a2, 4
	ld.w	$a2, $a2, 0
	ld.w	$a1, $a1, 0
	slt	$a5, $a3, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a3, $a3, $a5
	or	$a3, $a3, $a4
	add.d	$a1, $a1, $a2
	bstrpick.d	$a2, $a1, 31, 31
	add.w	$a1, $a1, $a2
	srli.d	$a1, $a1, 1
	st.w	$a1, $a0, 0
	st.w	$a3, $a0, 4
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end24:
	.size	_ZNK4line5southEv, .Lfunc_end24-_ZNK4line5southEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK4line4eastEv,"axG",@progbits,_ZNK4line4eastEv,comdat
	.weak	_ZNK4line4eastEv                # -- Begin function _ZNK4line4eastEv
	.p2align	2
	.type	_ZNK4line4eastEv,@function
_ZNK4line4eastEv:                       # @_ZNK4line4eastEv
# %bb.0:                                # %entry
.Lfunc_end25:
	.size	_ZNK4line4eastEv, .Lfunc_end25-_ZNK4line4eastEv
                                        # -- End function
	.section	.text._ZNK4line4westEv,"axG",@progbits,_ZNK4line4westEv,comdat
	.weak	_ZNK4line4westEv                # -- Begin function _ZNK4line4westEv
	.p2align	2
	.type	_ZNK4line4westEv,@function
_ZNK4line4westEv:                       # @_ZNK4line4westEv
# %bb.0:                                # %entry
.Lfunc_end26:
	.size	_ZNK4line4westEv, .Lfunc_end26-_ZNK4line4westEv
                                        # -- End function
	.section	.text._ZNK4line5neastEv,"axG",@progbits,_ZNK4line5neastEv,comdat
	.weak	_ZNK4line5neastEv               # -- Begin function _ZNK4line5neastEv
	.p2align	2
	.type	_ZNK4line5neastEv,@function
_ZNK4line5neastEv:                      # @_ZNK4line5neastEv
# %bb.0:                                # %entry
.Lfunc_end27:
	.size	_ZNK4line5neastEv, .Lfunc_end27-_ZNK4line5neastEv
                                        # -- End function
	.section	.text._ZNK4line5seastEv,"axG",@progbits,_ZNK4line5seastEv,comdat
	.weak	_ZNK4line5seastEv               # -- Begin function _ZNK4line5seastEv
	.p2align	2
	.type	_ZNK4line5seastEv,@function
_ZNK4line5seastEv:                      # @_ZNK4line5seastEv
# %bb.0:                                # %entry
.Lfunc_end28:
	.size	_ZNK4line5seastEv, .Lfunc_end28-_ZNK4line5seastEv
                                        # -- End function
	.section	.text._ZNK4line5nwestEv,"axG",@progbits,_ZNK4line5nwestEv,comdat
	.weak	_ZNK4line5nwestEv               # -- Begin function _ZNK4line5nwestEv
	.p2align	2
	.type	_ZNK4line5nwestEv,@function
_ZNK4line5nwestEv:                      # @_ZNK4line5nwestEv
# %bb.0:                                # %entry
.Lfunc_end29:
	.size	_ZNK4line5nwestEv, .Lfunc_end29-_ZNK4line5nwestEv
                                        # -- End function
	.section	.text._ZNK4line5swestEv,"axG",@progbits,_ZNK4line5swestEv,comdat
	.weak	_ZNK4line5swestEv               # -- Begin function _ZNK4line5swestEv
	.p2align	2
	.type	_ZNK4line5swestEv,@function
_ZNK4line5swestEv:                      # @_ZNK4line5swestEv
# %bb.0:                                # %entry
.Lfunc_end30:
	.size	_ZNK4line5swestEv, .Lfunc_end30-_ZNK4line5swestEv
                                        # -- End function
	.section	.text._ZN4line4drawEv,"axG",@progbits,_ZN4line4drawEv,comdat
	.weak	_ZN4line4drawEv                 # -- Begin function _ZN4line4drawEv
	.p2align	2
	.type	_ZN4line4drawEv,@function
_ZN4line4drawEv:                        # @_ZN4line4drawEv
	.cfi_startproc
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 16
	ld.d	$a3, $a0, 24
	ld.w	$a0, $a2, 0
	ld.w	$a1, $a3, 0
	ld.w	$a2, $a2, 4
	ld.w	$a3, $a3, 4
	sub.w	$a4, $a1, $a0
	srai.d	$a5, $a4, 31
	xor	$a6, $a4, $a5
	sub.w	$a7, $a6, $a5
	slti	$a4, $a4, 0
	sub.d	$a4, $zero, $a4
	ori	$a4, $a4, 1
	sub.w	$t1, $a3, $a2
	srai.d	$a5, $t1, 31
	xor	$a6, $t1, $a5
	sub.w	$t2, $a6, $a5
	slli.d	$t0, $a7, 1
	slli.d	$a5, $t2, 1
	sub.w	$a6, $t0, $t2
	bgeu	$t2, $a7, .LBB31_8
# %bb.1:                                # %entry.split.us.i.i
	move	$a7, $zero
	pcalau12i	$t0, %pc_hi20(screen)
	addi.d	$t0, $t0, %pc_lo12(screen)
	add.d	$t0, $t0, $a2
	ori	$t1, $zero, 23
	ori	$t2, $zero, 39
	ori	$t3, $zero, 42
	b	.LBB31_3
	.p2align	4, , 16
.LBB31_2:                               # %if.end12.us.i.i
                                        #   in Loop: Header=BB31_3 Depth=1
	slt	$t4, $a6, $a7
	masknez	$t5, $a4, $t4
	add.w	$a0, $t5, $a0
	masknez	$t4, $a5, $t4
	add.w	$a7, $t4, $a7
.LBB31_3:                               # %for.cond.us.i.i
                                        # =>This Inner Loop Header: Depth=1
	bltu	$t1, $a2, .LBB31_6
# %bb.4:                                # %for.cond.us.i.i
                                        #   in Loop: Header=BB31_3 Depth=1
	bltu	$t2, $a0, .LBB31_6
# %bb.5:                                # %if.then.i.us.i.i
                                        #   in Loop: Header=BB31_3 Depth=1
	slli.d	$t4, $a0, 4
	alsl.d	$t4, $a0, $t4, 3
	stx.b	$t3, $t0, $t4
.LBB31_6:                               # %_Z9put_pointii.exit.us.i.i
                                        #   in Loop: Header=BB31_3 Depth=1
	bne	$a3, $a2, .LBB31_2
# %bb.7:                                # %_Z9put_pointii.exit.us.i.i
                                        #   in Loop: Header=BB31_3 Depth=1
	bne	$a0, $a1, .LBB31_2
	b	.LBB31_15
.LBB31_8:                               # %for.cond.i.i.preheader
	move	$t4, $zero
	slti	$t1, $t1, 0
	sub.d	$t1, $zero, $t1
	ori	$t1, $t1, 1
	ori	$t2, $zero, 23
	ori	$t3, $zero, 39
	ori	$t5, $zero, 42
	b	.LBB31_10
	.p2align	4, , 16
.LBB31_9:                               # %if.end12.i.i
                                        #   in Loop: Header=BB31_10 Depth=1
	slt	$t6, $a6, $t4
	masknez	$t7, $a4, $t6
	add.w	$a0, $t7, $a0
	masknez	$t6, $a5, $t6
	add.w	$t4, $t6, $t4
	slt	$t6, $t4, $a7
	masknez	$t7, $t1, $t6
	add.w	$a2, $t7, $a2
	masknez	$t6, $t0, $t6
	sub.w	$t4, $t4, $t6
.LBB31_10:                              # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	bltu	$t2, $a2, .LBB31_13
# %bb.11:                               # %for.cond.i.i
                                        #   in Loop: Header=BB31_10 Depth=1
	bltu	$t3, $a0, .LBB31_13
# %bb.12:                               # %if.then.i.i.i
                                        #   in Loop: Header=BB31_10 Depth=1
	slli.d	$t6, $a0, 4
	alsl.d	$t6, $a0, $t6, 3
	pcalau12i	$t7, %pc_hi20(screen)
	addi.d	$t7, $t7, %pc_lo12(screen)
	add.d	$t6, $t7, $t6
	stx.b	$t5, $t6, $a2
.LBB31_13:                              # %_Z9put_pointii.exit.i.i
                                        #   in Loop: Header=BB31_10 Depth=1
	bne	$a2, $a3, .LBB31_9
# %bb.14:                               # %_Z9put_pointii.exit.i.i
                                        #   in Loop: Header=BB31_10 Depth=1
	bne	$a0, $a1, .LBB31_9
.LBB31_15:                              # %_Z8put_lineP5pointS0_.exit
	ret
.Lfunc_end31:
	.size	_ZN4line4drawEv, .Lfunc_end31-_ZN4line4drawEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4line4moveEii,"axG",@progbits,_ZN4line4moveEii,comdat
	.weak	_ZN4line4moveEii                # -- Begin function _ZN4line4moveEii
	.p2align	2
	.type	_ZN4line4moveEii,@function
_ZN4line4moveEii:                       # @_ZN4line4moveEii
# %bb.0:                                # %entry
	ld.d	$a3, $a0, 16
	ld.w	$a4, $a3, 0
	ld.w	$a5, $a3, 4
	ld.d	$a0, $a0, 24
	add.d	$a4, $a4, $a1
	st.w	$a4, $a3, 0
	add.d	$a4, $a5, $a2
	ld.w	$a5, $a0, 0
	st.w	$a4, $a3, 4
	ld.w	$a3, $a0, 4
	add.d	$a1, $a5, $a1
	st.w	$a1, $a0, 0
	add.d	$a1, $a3, $a2
	st.w	$a1, $a0, 4
	ret
.Lfunc_end32:
	.size	_ZN4line4moveEii, .Lfunc_end32-_ZN4line4moveEii
                                        # -- End function
	.type	screen,@object                  # @screen
	.bss
	.globl	screen
	.p2align	3, 0x0
screen:
	.space	960
	.size	screen, 960

	.type	_ZTV9rectangle,@object          # @_ZTV9rectangle
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV9rectangle
	.p2align	3, 0x0
_ZTV9rectangle:
	.dword	0
	.dword	_ZTI9rectangle
	.dword	_ZNK9rectangle5northEv
	.dword	_ZNK9rectangle5southEv
	.dword	_ZNK9rectangle4eastEv
	.dword	_ZNK9rectangle4westEv
	.dword	_ZNK9rectangle5neastEv
	.dword	_ZNK9rectangle5seastEv
	.dword	_ZNK9rectangle5nwestEv
	.dword	_ZNK9rectangle5swestEv
	.dword	_ZN9rectangle4drawEv
	.dword	_ZN9rectangle4moveEii
	.size	_ZTV9rectangle, 96

	.type	_ZN5shape4listE,@object         # @_ZN5shape4listE
	.bss
	.globl	_ZN5shape4listE
	.p2align	3, 0x0
_ZN5shape4listE:
	.dword	0
	.size	_ZN5shape4listE, 8

	.type	_ZTI9rectangle,@object          # @_ZTI9rectangle
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTI9rectangle
	.p2align	3, 0x0
_ZTI9rectangle:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS9rectangle
	.dword	_ZTI5shape
	.size	_ZTI9rectangle, 24

	.type	_ZTS9rectangle,@object          # @_ZTS9rectangle
	.section	.rodata,"a",@progbits
	.globl	_ZTS9rectangle
_ZTS9rectangle:
	.asciz	"9rectangle"
	.size	_ZTS9rectangle, 11

	.type	_ZTI5shape,@object              # @_ZTI5shape
	.section	.data.rel.ro._ZTI5shape,"awG",@progbits,_ZTI5shape,comdat
	.weak	_ZTI5shape
	.p2align	3, 0x0
_ZTI5shape:
	.dword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.dword	_ZTS5shape
	.size	_ZTI5shape, 16

	.type	_ZTS5shape,@object              # @_ZTS5shape
	.section	.rodata._ZTS5shape,"aG",@progbits,_ZTS5shape,comdat
	.weak	_ZTS5shape
_ZTS5shape:
	.asciz	"5shape"
	.size	_ZTS5shape, 7

	.type	_ZTV7myshape,@object            # @_ZTV7myshape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV7myshape
	.p2align	3, 0x0
_ZTV7myshape:
	.dword	0
	.dword	_ZTI7myshape
	.dword	_ZNK9rectangle5northEv
	.dword	_ZNK9rectangle5southEv
	.dword	_ZNK9rectangle4eastEv
	.dword	_ZNK9rectangle4westEv
	.dword	_ZNK9rectangle5neastEv
	.dword	_ZNK9rectangle5seastEv
	.dword	_ZNK9rectangle5nwestEv
	.dword	_ZNK9rectangle5swestEv
	.dword	_ZN7myshape4drawEv
	.dword	_ZN7myshape4moveEii
	.size	_ZTV7myshape, 96

	.type	_ZTI7myshape,@object            # @_ZTI7myshape
	.globl	_ZTI7myshape
	.p2align	3, 0x0
_ZTI7myshape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS7myshape
	.dword	_ZTI9rectangle
	.size	_ZTI7myshape, 24

	.type	_ZTS7myshape,@object            # @_ZTS7myshape
	.section	.rodata,"a",@progbits
	.globl	_ZTS7myshape
_ZTS7myshape:
	.asciz	"7myshape"
	.size	_ZTS7myshape, 9

	.type	_ZTV4line,@object               # @_ZTV4line
	.section	.data.rel.ro._ZTV4line,"awG",@progbits,_ZTV4line,comdat
	.weak	_ZTV4line
	.p2align	3, 0x0
_ZTV4line:
	.dword	0
	.dword	_ZTI4line
	.dword	_ZNK4line5northEv
	.dword	_ZNK4line5southEv
	.dword	_ZNK4line4eastEv
	.dword	_ZNK4line4westEv
	.dword	_ZNK4line5neastEv
	.dword	_ZNK4line5seastEv
	.dword	_ZNK4line5nwestEv
	.dword	_ZNK4line5swestEv
	.dword	_ZN4line4drawEv
	.dword	_ZN4line4moveEii
	.size	_ZTV4line, 96

	.type	_ZTI4line,@object               # @_ZTI4line
	.section	.data.rel.ro._ZTI4line,"awG",@progbits,_ZTI4line,comdat
	.weak	_ZTI4line
	.p2align	3, 0x0
_ZTI4line:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS4line
	.dword	_ZTI5shape
	.size	_ZTI4line, 24

	.type	_ZTS4line,@object               # @_ZTS4line
	.section	.rodata._ZTS4line,"aG",@progbits,_ZTS4line,comdat
	.weak	_ZTS4line
_ZTS4line:
	.asciz	"4line"
	.size	_ZTS4line, 6

	.globl	_ZN9rectangleC1EP5pointS1_
	.type	_ZN9rectangleC1EP5pointS1_,@function
_ZN9rectangleC1EP5pointS1_ = _ZN9rectangleC2EP5pointS1_
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
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZTI9rectangle
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS9rectangle
	.addrsig_sym _ZTI5shape
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS5shape
	.addrsig_sym _ZTI7myshape
	.addrsig_sym _ZTS7myshape
	.addrsig_sym _ZTI4line
	.addrsig_sym _ZTS4line
