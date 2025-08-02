	.file	"z29.c"
	.text
	.globl	InitSym                         # -- Begin function InitSym
	.p2align	5
	.type	InitSym,@function
InitSym:                                # @InitSym
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(scope_top)
	st.w	$zero, $a0, %pc_lo12(scope_top)
	pcalau12i	$a0, %pc_hi20(suppress_scope)
	st.b	$zero, $a0, %pc_lo12(suppress_scope)
	pcalau12i	$a0, %pc_hi20(suppress_visible)
	st.w	$zero, $a0, %pc_lo12(suppress_visible)
	pcalau12i	$a0, %pc_hi20(symtab)
	addi.d	$a0, $a0, %pc_lo12(symtab)
	addi.d	$a1, $a0, 16
	ori	$a2, $zero, 1782
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a3, $a1, -16
	st.d	$a3, $a1, -8
	st.d	$a1, $a1, 8
	st.d	$a3, $a1, -16
	st.d	$a1, $a1, 0
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB0_1
# %bb.2:                                # %for.body
	lu12i.w	$a1, 6
	ori	$a1, $a1, 3936
	add.d	$a1, $a0, $a1
	stptr.d	$a1, $a0, 28520
	stptr.d	$a1, $a0, 28512
	ret
.Lfunc_end0:
	.size	InitSym, .Lfunc_end0-InitSym
                                        # -- End function
	.globl	PushScope                       # -- Begin function PushScope
	.p2align	5
	.type	PushScope,@function
PushScope:                              # @PushScope
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(suppress_scope)
	ld.bu	$a3, $a3, %pc_lo12(suppress_scope)
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	beqz	$a3, .LBB1_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %if.end
	pcalau12i	$s2, %pc_hi20(scope_top)
	ld.w	$a0, $s2, %pc_lo12(scope_top)
	ori	$a1, $zero, 300
	blt	$a0, $a1, .LBB1_4
# %bb.3:                                # %if.then2
	addi.d	$a4, $s1, 32
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(scope_top)
.LBB1_4:                                # %if.end4
	slli.d	$a1, $a0, 3
	pcalau12i	$a2, %pc_hi20(scope)
	addi.d	$a2, $a2, %pc_lo12(scope)
	stx.d	$s1, $a2, $a1
	slli.d	$a1, $a0, 2
	pcalau12i	$a2, %pc_hi20(npars_only)
	addi.d	$a2, $a2, %pc_lo12(npars_only)
	stx.w	$s0, $a2, $a1
	pcalau12i	$a2, %pc_hi20(vis_only)
	addi.d	$a2, $a2, %pc_lo12(vis_only)
	stx.w	$fp, $a2, $a1
	pcalau12i	$a2, %pc_hi20(body_ok)
	addi.d	$a2, $a2, %pc_lo12(body_ok)
	stx.w	$zero, $a2, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $s2, %pc_lo12(scope_top)
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	PushScope, .Lfunc_end1-PushScope
                                        # -- End function
	.globl	PopScope                        # -- Begin function PopScope
	.p2align	5
	.type	PopScope,@function
PopScope:                               # @PopScope
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(scope_top)
	ld.w	$a0, $fp, %pc_lo12(scope_top)
	blez	$a0, .LBB2_4
# %bb.1:                                # %if.end
	pcalau12i	$a0, %pc_hi20(suppress_scope)
	ld.bu	$a0, $a0, %pc_lo12(suppress_scope)
	beqz	$a0, .LBB2_3
.LBB2_2:                                # %if.then2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %if.end4
	ld.w	$a0, $fp, %pc_lo12(scope_top)
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, %pc_lo12(scope_top)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_4:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(suppress_scope)
	ld.bu	$a0, $a0, %pc_lo12(suppress_scope)
	bnez	$a0, .LBB2_2
	b	.LBB2_3
.Lfunc_end2:
	.size	PopScope, .Lfunc_end2-PopScope
                                        # -- End function
	.globl	SuppressVisible                 # -- Begin function SuppressVisible
	.p2align	5
	.type	SuppressVisible,@function
SuppressVisible:                        # @SuppressVisible
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(suppress_visible)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(suppress_visible)
	ret
.Lfunc_end3:
	.size	SuppressVisible, .Lfunc_end3-SuppressVisible
                                        # -- End function
	.globl	UnSuppressVisible               # -- Begin function UnSuppressVisible
	.p2align	5
	.type	UnSuppressVisible,@function
UnSuppressVisible:                      # @UnSuppressVisible
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(suppress_visible)
	st.w	$zero, $a0, %pc_lo12(suppress_visible)
	ret
.Lfunc_end4:
	.size	UnSuppressVisible, .Lfunc_end4-UnSuppressVisible
                                        # -- End function
	.globl	SuppressScope                   # -- Begin function SuppressScope
	.p2align	5
	.type	SuppressScope,@function
SuppressScope:                          # @SuppressScope
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(suppress_scope)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, %pc_lo12(suppress_scope)
	ret
.Lfunc_end5:
	.size	SuppressScope, .Lfunc_end5-SuppressScope
                                        # -- End function
	.globl	UnSuppressScope                 # -- Begin function UnSuppressScope
	.p2align	5
	.type	UnSuppressScope,@function
UnSuppressScope:                        # @UnSuppressScope
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(suppress_scope)
	st.b	$zero, $a0, %pc_lo12(suppress_scope)
	ret
.Lfunc_end6:
	.size	UnSuppressScope, .Lfunc_end6-UnSuppressScope
                                        # -- End function
	.globl	SwitchScope                     # -- Begin function SwitchScope
	.p2align	5
	.type	SwitchScope,@function
SwitchScope:                            # @SwitchScope
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -496
	pcalau12i	$a1, %got_pc_hi20(StartSym)
	ld.d	$a1, $a1, %got_pc_lo12(StartSym)
	ld.d	$fp, $a1, 0
	beqz	$a0, .LBB7_11
# %bb.1:                                # %while.cond.preheader
	beq	$a0, $fp, .LBB7_16
# %bb.2:                                # %while.body.preheader
	move	$a1, $zero
	ori	$s2, $zero, 1
	addi.d	$s3, $sp, 32
	.p2align	4, , 16
.LBB7_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 48
	st.d	$a0, $s3, 8
	addi.d	$s3, $s3, 8
	addi.d	$s2, $s2, 1
	addi.w	$a1, $a1, 1
	bne	$a0, $fp, .LBB7_3
# %bb.4:                                # %while.cond3.preheader
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB7_16
# %bb.5:
	pcalau12i	$s5, %pc_hi20(suppress_scope)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s7, %pc_hi20(scope_top)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s1, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(scope)
	addi.d	$s4, $a0, %pc_lo12(scope)
	pcalau12i	$a0, %pc_hi20(npars_only)
	addi.d	$s6, $a0, %pc_lo12(npars_only)
	pcalau12i	$a0, %pc_hi20(vis_only)
	addi.d	$fp, $a0, %pc_lo12(vis_only)
	pcalau12i	$a0, %pc_hi20(body_ok)
	addi.d	$s8, $a0, %pc_lo12(body_ok)
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_6:                                # %PushScope.exit21
                                        #   in Loop: Header=BB7_7 Depth=1
	slli.d	$a1, $a0, 3
	stx.d	$s0, $s4, $a1
	slli.d	$a1, $a0, 2
	stx.w	$zero, $s6, $a1
	stx.w	$zero, $fp, $a1
	stx.w	$zero, $s8, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $s7, %pc_lo12(scope_top)
	addi.d	$s2, $s2, -1
	addi.d	$s3, $s3, -8
	ori	$a0, $zero, 1
	bgeu	$a0, $s2, .LBB7_16
.LBB7_7:                                # %while.body5
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s5, %pc_lo12(suppress_scope)
	ld.d	$s0, $s3, 0
	beqz	$a0, .LBB7_9
# %bb.8:                                # %if.then.i19
                                        #   in Loop: Header=BB7_7 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %if.end.i7
                                        #   in Loop: Header=BB7_7 Depth=1
	ld.w	$a0, $s7, %pc_lo12(scope_top)
	ori	$a1, $zero, 300
	blt	$a0, $a1, .LBB7_6
# %bb.10:                               # %if.then2.i15
                                        #   in Loop: Header=BB7_7 Depth=1
	addi.d	$a4, $s0, 32
	ori	$a0, $zero, 29
	ori	$a1, $zero, 2
	move	$a2, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, %pc_lo12(scope_top)
	b	.LBB7_6
.LBB7_11:                               # %if.then
	pcalau12i	$a0, %pc_hi20(suppress_scope)
	ld.bu	$a0, $a0, %pc_lo12(suppress_scope)
	beqz	$a0, .LBB7_13
# %bb.12:                               # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_13:                               # %if.end.i
	pcalau12i	$s0, %pc_hi20(scope_top)
	ld.w	$a0, $s0, %pc_lo12(scope_top)
	ori	$a1, $zero, 300
	blt	$a0, $a1, .LBB7_15
# %bb.14:                               # %if.then2.i
	addi.d	$a4, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, %pc_lo12(scope_top)
.LBB7_15:                               # %PushScope.exit
	slli.d	$a1, $a0, 3
	pcalau12i	$a2, %pc_hi20(scope)
	addi.d	$a2, $a2, %pc_lo12(scope)
	stx.d	$fp, $a2, $a1
	slli.d	$a1, $a0, 2
	pcalau12i	$a2, %pc_hi20(npars_only)
	addi.d	$a2, $a2, %pc_lo12(npars_only)
	stx.w	$zero, $a2, $a1
	pcalau12i	$a2, %pc_hi20(vis_only)
	addi.d	$a2, $a2, %pc_lo12(vis_only)
	stx.w	$zero, $a2, $a1
	pcalau12i	$a2, %pc_hi20(body_ok)
	addi.d	$a2, $a2, %pc_lo12(body_ok)
	stx.w	$zero, $a2, $a1
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, %pc_lo12(scope_top)
.LBB7_16:                               # %if.end
	addi.d	$sp, $sp, 496
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end7:
	.size	SwitchScope, .Lfunc_end7-SwitchScope
                                        # -- End function
	.globl	UnSwitchScope                   # -- Begin function UnSwitchScope
	.p2align	5
	.type	UnSwitchScope,@function
UnSwitchScope:                          # @UnSwitchScope
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
	beqz	$a0, .LBB8_8
# %bb.1:                                # %while.cond.preheader
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$s3, $a0, %got_pc_lo12(StartSym)
	ld.d	$a0, $s3, 0
	beq	$fp, $a0, .LBB8_12
# %bb.2:                                # %while.body.preheader
	pcalau12i	$s4, %pc_hi20(scope_top)
	ld.w	$a0, $s4, %pc_lo12(scope_top)
	pcalau12i	$s5, %pc_hi20(suppress_scope)
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$s6, $a1, %got_pc_lo12(no_fpos)
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$s0, $a1, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$s1, $a1, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$s2, $a1, %pc_lo12(.L.str.3)
	b	.LBB8_4
	.p2align	4, , 16
.LBB8_3:                                # %PopScope.exit11
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.w	$a0, $s4, %pc_lo12(scope_top)
	ld.d	$fp, $fp, 48
	ld.d	$a1, $s3, 0
	addi.w	$a0, $a0, -1
	st.w	$a0, $s4, %pc_lo12(scope_top)
	beq	$fp, $a1, .LBB8_12
.LBB8_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	blez	$a0, .LBB8_6
# %bb.5:                                # %if.end.i6
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.bu	$a0, $s5, %pc_lo12(suppress_scope)
	beqz	$a0, .LBB8_3
	b	.LBB8_7
	.p2align	4, , 16
.LBB8_6:                                # %if.then.i4
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a4, $s6, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, %pc_lo12(suppress_scope)
	beqz	$a0, .LBB8_3
.LBB8_7:                                # %if.then2.i9
                                        #   in Loop: Header=BB8_4 Depth=1
	ld.d	$a4, $s6, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	move	$a5, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB8_3
.LBB8_8:                                # %if.then
	pcalau12i	$fp, %pc_hi20(scope_top)
	ld.w	$a0, $fp, %pc_lo12(scope_top)
	blez	$a0, .LBB8_13
# %bb.9:                                # %if.end.i
	pcalau12i	$a0, %pc_hi20(suppress_scope)
	ld.bu	$a0, $a0, %pc_lo12(suppress_scope)
	beqz	$a0, .LBB8_11
.LBB8_10:                               # %if.then2.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a5, $a0, %pc_lo12(.L.str.4)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB8_11:                               # %PopScope.exit
	ld.w	$a0, $fp, %pc_lo12(scope_top)
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, %pc_lo12(scope_top)
.LBB8_12:                               # %if.end
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
.LBB8_13:                               # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a5, $a0, %pc_lo12(.L.str.3)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(suppress_scope)
	ld.bu	$a0, $a0, %pc_lo12(suppress_scope)
	bnez	$a0, .LBB8_10
	b	.LBB8_11
.Lfunc_end8:
	.size	UnSwitchScope, .Lfunc_end8-UnSwitchScope
                                        # -- End function
	.globl	BodyParAllowed                  # -- Begin function BodyParAllowed
	.p2align	5
	.type	BodyParAllowed,@function
BodyParAllowed:                         # @BodyParAllowed
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(scope_top)
	ld.w	$a0, $a0, %pc_lo12(scope_top)
	pcalau12i	$a1, %pc_hi20(body_ok)
	addi.d	$a1, $a1, %pc_lo12(body_ok)
	alsl.d	$a0, $a0, $a1, 2
	ori	$a1, $zero, 1
	st.w	$a1, $a0, -4
	ret
.Lfunc_end9:
	.size	BodyParAllowed, .Lfunc_end9-BodyParAllowed
                                        # -- End function
	.globl	BodyParNotAllowed               # -- Begin function BodyParNotAllowed
	.p2align	5
	.type	BodyParNotAllowed,@function
BodyParNotAllowed:                      # @BodyParNotAllowed
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(scope_top)
	ld.w	$a0, $a0, %pc_lo12(scope_top)
	pcalau12i	$a1, %pc_hi20(body_ok)
	addi.d	$a1, $a1, %pc_lo12(body_ok)
	alsl.d	$a0, $a0, $a1, 2
	st.w	$zero, $a0, -4
	ret
.Lfunc_end10:
	.size	BodyParNotAllowed, .Lfunc_end10-BodyParNotAllowed
                                        # -- End function
	.globl	DebugScope                      # -- Begin function DebugScope
	.p2align	5
	.type	DebugScope,@function
DebugScope:                             # @DebugScope
# %bb.0:                                # %entry
	ret
.Lfunc_end11:
	.size	DebugScope, .Lfunc_end11-DebugScope
                                        # -- End function
	.globl	GetScopeSnapshot                # -- Begin function GetScopeSnapshot
	.p2align	5
	.type	GetScopeSnapshot,@function
GetScopeSnapshot:                       # @GetScopeSnapshot
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
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $a4, 17
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s2, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a5, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$a2, $s2, $a1
	st.w	$a0, $a5, 0
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	beqz	$a2, .LBB12_2
# %bb.1:                                # %if.else7
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a2, $a1, 0
	ld.d	$a1, $a2, 0
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a1, $a0, 0
	b	.LBB12_3
.LBB12_2:                               # %if.then5
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$a2, $a0
	st.d	$a0, $a1, 0
.LBB12_3:                               # %if.end13
	ori	$a0, $zero, 17
	st.b	$a0, $a2, 32
	st.d	$a2, $a2, 24
	st.d	$a2, $a2, 16
	st.d	$a2, $a2, 8
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $a2, 0
	pcalau12i	$a0, %pc_hi20(scope_top)
	ld.w	$a0, $a0, %pc_lo12(scope_top)
	pcalau12i	$a1, %pc_hi20(scope)
	pcalau12i	$a2, %got_pc_hi20(StartSym)
	ld.d	$a3, $a2, %got_pc_lo12(StartSym)
	addi.d	$a1, $a1, %pc_lo12(scope)
	alsl.d	$a1, $a0, $a1, 3
	ld.d	$a2, $a1, -8
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a3, $a3, 0
	beq	$a2, $a3, .LBB12_20
# %bb.4:                                # %for.body.preheader
	addi.d	$s5, $a1, -8
	slli.d	$a0, $a0, 2
	addi.d	$a0, $a0, -4
	pcalau12i	$a1, %pc_hi20(body_ok)
	addi.d	$a1, $a1, %pc_lo12(body_ok)
	add.d	$s6, $a1, $a0
	pcalau12i	$a1, %pc_hi20(vis_only)
	addi.d	$a1, $a1, %pc_lo12(vis_only)
	add.d	$s7, $a1, $a0
	pcalau12i	$a1, %pc_hi20(npars_only)
	addi.d	$a1, $a1, %pc_lo12(npars_only)
	add.d	$s8, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s4, $a0, %got_pc_lo12(zz_hold)
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s1, $a0, %got_pc_lo12(xx_link)
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s3, $a0, %got_pc_lo12(zz_res)
	pcalau12i	$a0, %got_pc_hi20(zz_tmp)
	ld.d	$fp, $a0, %got_pc_lo12(zz_tmp)
	lu12i.w	$a0, -2048
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB12_6
	.p2align	4, , 16
.LBB12_5:                               # %cond.end268
                                        #   in Loop: Header=BB12_6 Depth=1
	ld.wu	$a0, $s0, 40
	ld.wu	$a1, $s8, 0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	and	$a0, $a0, $a2
	ld.w	$a2, $s7, 0
	ld.w	$a3, $s6, 0
	srli.d	$a0, $a0, 12
	bstrins.d	$a1, $a0, 63, 12
	bstrins.d	$a1, $a2, 21, 12
	bstrins.d	$a1, $a3, 22, 22
	st.w	$a1, $s0, 40
	ld.d	$a0, $s5, -8
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$s5, $s5, -8
	addi.d	$s6, $s6, -4
	addi.d	$s7, $s7, -4
	addi.d	$s8, $s8, -4
	beq	$a0, $a1, .LBB12_20
.LBB12_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $a4, 149
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s2, $a1
	st.w	$a0, $a5, 0
	beqz	$s0, .LBB12_8
# %bb.7:                                # %if.else42
                                        #   in Loop: Header=BB12_6 Depth=1
	st.d	$s0, $s4, 0
	ld.d	$a1, $s0, 0
	alsl.d	$a0, $a0, $s2, 3
	st.d	$a1, $a0, 0
	b	.LBB12_9
	.p2align	4, , 16
.LBB12_8:                               # %if.then40
                                        #   in Loop: Header=BB12_6 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	move	$s0, $a0
	st.d	$a0, $s4, 0
.LBB12_9:                               # %if.end51
                                        #   in Loop: Header=BB12_6 Depth=1
	ori	$a0, $zero, 149
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 0
	ld.bu	$a2, $a4, 0
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $a5, 0
	beqz	$a0, .LBB12_11
# %bb.10:                               # %if.else79
                                        #   in Loop: Header=BB12_6 Depth=1
	st.d	$a0, $s4, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB12_12
	.p2align	4, , 16
.LBB12_11:                              # %if.then77
                                        #   in Loop: Header=BB12_6 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
.LBB12_12:                              # %cond.end130
                                        #   in Loop: Header=BB12_6 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	st.d	$a0, $s3, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.d	$a2, $s4, 0
	ld.d	$a1, $a2, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a2, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s3, 0
	ld.d	$a0, $s1, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s3, 0
	st.d	$s0, $s4, 0
	beqz	$a0, .LBB12_14
# %bb.13:                               # %cond.false139
                                        #   in Loop: Header=BB12_6 Depth=1
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $fp, 0
	st.d	$a2, $s0, 16
	st.d	$s0, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB12_14:                              # %cond.end163
                                        #   in Loop: Header=BB12_6 Depth=1
	ld.bu	$a2, $a4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s2, $a0
	st.w	$a2, $a5, 0
	beqz	$a0, .LBB12_16
# %bb.15:                               # %if.else178
                                        #   in Loop: Header=BB12_6 Depth=1
	st.d	$a0, $s4, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s2, 3
	st.d	$a1, $a2, 0
	b	.LBB12_17
	.p2align	4, , 16
.LBB12_16:                              # %if.then176
                                        #   in Loop: Header=BB12_6 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
.LBB12_17:                              # %cond.end233
                                        #   in Loop: Header=BB12_6 Depth=1
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	st.d	$a0, $s3, 0
	st.d	$s0, $s4, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $fp, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s3, 0
	st.d	$a0, $a3, 8
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s5, 0
	st.d	$a0, $s3, 0
	st.d	$a1, $s4, 0
	beqz	$a1, .LBB12_5
# %bb.18:                               # %cond.end233
                                        #   in Loop: Header=BB12_6 Depth=1
	beqz	$a0, .LBB12_5
# %bb.19:                               # %cond.false244
                                        #   in Loop: Header=BB12_6 Depth=1
	ld.d	$a2, $a1, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $fp, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
	b	.LBB12_5
.LBB12_20:                              # %for.end
	pcalau12i	$a0, %pc_hi20(suppress_visible)
	ld.w	$a2, $a0, %pc_lo12(suppress_visible)
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.wu	$a1, $a0, 40
	slli.d	$a3, $a2, 23
	lu12i.w	$a2, -129025
	ori	$a2, $a2, 4095
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	or	$a1, $a1, $a3
	st.w	$a1, $a0, 40
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
.Lfunc_end12:
	.size	GetScopeSnapshot, .Lfunc_end12-GetScopeSnapshot
                                        # -- End function
	.globl	LoadScopeSnapshot               # -- Begin function LoadScopeSnapshot
	.p2align	5
	.type	LoadScopeSnapshot,@function
LoadScopeSnapshot:                      # @LoadScopeSnapshot
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
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.bu	$a0, $a0, 32
	ori	$a1, $zero, 17
	beq	$a0, $a1, .LBB13_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a5, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB13_2:                               # %if.end
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$a0, $a0, %got_pc_lo12(StartSym)
	pcalau12i	$a1, %pc_hi20(suppress_scope)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.bu	$a1, $a1, %pc_lo12(suppress_scope)
	ld.d	$fp, $a0, 0
	beqz	$a1, .LBB13_4
# %bb.3:                                # %if.then.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a5, $a0, %pc_lo12(.L.str.1)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB13_4:                               # %if.end.i
	pcalau12i	$s5, %pc_hi20(scope_top)
	ld.w	$a0, $s5, %pc_lo12(scope_top)
	ori	$a1, $zero, 300
	blt	$a0, $a1, .LBB13_6
# %bb.5:                                # %if.then2.i
	addi.d	$a4, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a2, $a0, %pc_lo12(.L.str.2)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(scope_top)
.LBB13_6:                               # %PushScope.exit
	slli.d	$a1, $a0, 3
	pcalau12i	$a2, %pc_hi20(scope)
	addi.d	$a2, $a2, %pc_lo12(scope)
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	stx.d	$fp, $a2, $a1
	slli.d	$a1, $a0, 2
	pcalau12i	$a2, %pc_hi20(npars_only)
	addi.d	$s7, $a2, %pc_lo12(npars_only)
	stx.w	$zero, $s7, $a1
	pcalau12i	$a2, %pc_hi20(vis_only)
	addi.d	$s8, $a2, %pc_lo12(vis_only)
	stx.w	$zero, $s8, $a1
	pcalau12i	$a2, %pc_hi20(body_ok)
	addi.d	$s1, $a2, %pc_lo12(body_ok)
	stx.w	$zero, $s1, $a1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $a1, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(scope_top)
	beq	$fp, $a1, .LBB13_19
# %bb.7:                                # %for.cond7.preheader.preheader
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s3, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB13_9
	.p2align	4, , 16
.LBB13_8:                               # %PushScope.exit30
                                        #   in Loop: Header=BB13_9 Depth=1
	andi	$a1, $s6, 4095
	bstrpick.d	$a2, $s6, 21, 12
	slli.d	$a3, $a0, 3
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	stx.d	$s4, $a4, $a3
	slli.d	$a3, $a0, 2
	stx.w	$a1, $s7, $a3
	stx.w	$a2, $s8, $a3
	stx.w	$zero, $s1, $a3
	ld.w	$a1, $s2, 40
	bstrpick.d	$a1, $a1, 22, 22
	stx.w	$a1, $s1, $a3
	ld.d	$fp, $fp, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(scope_top)
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB13_19
.LBB13_9:                               # %for.cond7.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_10 Depth 2
                                        #     Child Loop BB13_14 Depth 2
	move	$s2, $fp
	.p2align	4, , 16
.LBB13_10:                              # %for.cond7
                                        #   Parent Loop BB13_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s2, $s2, 16
	ld.bu	$a0, $s2, 32
	beqz	$a0, .LBB13_10
# %bb.11:                               # %for.cond7
                                        #   in Loop: Header=BB13_9 Depth=1
	ori	$a1, $zero, 149
	beq	$a0, $a1, .LBB13_13
# %bb.12:                               # %if.then22
                                        #   in Loop: Header=BB13_9 Depth=1
	ld.d	$a4, $s3, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB13_13:                              # %if.end24
                                        #   in Loop: Header=BB13_9 Depth=1
	ld.d	$s4, $s2, 8
	.p2align	4, , 16
.LBB13_14:                              # %for.cond30
                                        #   Parent Loop BB13_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $s4, 16
	ld.bu	$a0, $s4, 32
	beqz	$a0, .LBB13_14
# %bb.15:                               # %for.end41
                                        #   in Loop: Header=BB13_9 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, %pc_lo12(suppress_scope)
	ld.wu	$s6, $s2, 40
	beqz	$a0, .LBB13_17
# %bb.16:                               # %if.then.i28
                                        #   in Loop: Header=BB13_9 Depth=1
	ld.d	$a4, $s3, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a2, $s0
	move	$a3, $zero
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB13_17:                              # %if.end.i16
                                        #   in Loop: Header=BB13_9 Depth=1
	ld.w	$a0, $s5, %pc_lo12(scope_top)
	ori	$a1, $zero, 300
	blt	$a0, $a1, .LBB13_8
# %bb.18:                               # %if.then2.i24
                                        #   in Loop: Header=BB13_9 Depth=1
	addi.d	$a4, $s4, 32
	ori	$a0, $zero, 29
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(scope_top)
	b	.LBB13_8
.LBB13_19:                              # %for.end54
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.wu	$a0, $a4, 40
	pcalau12i	$a1, %pc_hi20(suppress_visible)
	ld.w	$a2, $a1, %pc_lo12(suppress_visible)
	bstrpick.d	$a3, $a0, 28, 23
	st.w	$a3, $a1, %pc_lo12(suppress_visible)
	slli.d	$a1, $a2, 23
	lu12i.w	$a2, -129025
	ori	$a2, $a2, 4095
	lu32i.d	$a2, 0
	and	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $a4, 40
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
.Lfunc_end13:
	.size	LoadScopeSnapshot, .Lfunc_end13-LoadScopeSnapshot
                                        # -- End function
	.globl	ClearScopeSnapshot              # -- Begin function ClearScopeSnapshot
	.p2align	5
	.type	ClearScopeSnapshot,@function
ClearScopeSnapshot:                     # @ClearScopeSnapshot
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(StartSym)
	ld.d	$a2, $a1, %got_pc_lo12(StartSym)
	pcalau12i	$a1, %pc_hi20(scope_top)
	ld.w	$a4, $a1, %pc_lo12(scope_top)
	ld.d	$a3, $a2, 0
	addi.w	$a2, $a4, -1
	slli.d	$a6, $a2, 3
	pcalau12i	$a5, %pc_hi20(scope)
	addi.d	$a5, $a5, %pc_lo12(scope)
	ldx.d	$a6, $a5, $a6
	beq	$a6, $a3, .LBB14_3
# %bb.1:                                # %while.body.preheader
	alsl.d	$a4, $a4, $a5, 3
	addi.d	$a4, $a4, -16
	.p2align	4, , 16
.LBB14_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a4, 0
	addi.d	$a2, $a2, -1
	addi.d	$a4, $a4, -8
	bne	$a5, $a3, .LBB14_2
.LBB14_3:                               # %while.end
	ld.w	$a0, $a0, 40
	st.w	$a2, $a1, %pc_lo12(scope_top)
	bstrpick.d	$a0, $a0, 28, 23
	pcalau12i	$a1, %pc_hi20(suppress_visible)
	st.w	$a0, $a1, %pc_lo12(suppress_visible)
	ret
.Lfunc_end14:
	.size	ClearScopeSnapshot, .Lfunc_end14-ClearScopeSnapshot
                                        # -- End function
	.globl	InsertSym                       # -- Begin function InsertSym
	.p2align	5
	.type	InsertSym,@function
InsertSym:                              # @InsertSym
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
	move	$s3, $a7
	move	$s4, $a6
	move	$s6, $a5
	move	$s5, $a4
	move	$s7, $a3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	move	$s2, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(LexLegalName)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 3
	ori	$a3, $zero, 2
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB15_2:                               # %if.end
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ldx.bu	$a0, $a0, $s2
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s8, $a1, %got_pc_lo12(zz_free)
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$a2, $a1, %got_pc_lo12(zz_size)
	slli.d	$a1, $a0, 3
	ldx.d	$fp, $s8, $a1
	ld.d	$s1, $sp, 144
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.w	$a0, $a2, 0
	beqz	$fp, .LBB15_4
# %bb.3:                                # %if.else13
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a1, 0
	ld.d	$a1, $fp, 0
	alsl.d	$a0, $a0, $s8, 3
	st.d	$a1, $a0, 0
	b	.LBB15_5
.LBB15_4:                               # %if.then11
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$fp, $a0
	st.d	$a0, $a1, 0
.LBB15_5:                               # %if.end20
	st.b	$s2, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	st.d	$fp, $fp, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.h	$a0, $a3, 2
	st.h	$a0, $fp, 34
	ld.wu	$a0, $a3, 4
	ld.wu	$a1, $fp, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $fp, 36
	ld.wu	$a1, $a3, 4
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $fp, 36
	ld.hu	$a0, $fp, 41
	st.d	$zero, $fp, 96
	vrepli.b	$vr1, 0
	vst	$vr1, $fp, 104
	ld.b	$a1, $fp, 43
	st.b	$s7, $fp, 40
	lu12i.w	$a2, 6
	ori	$a2, $a2, 239
	and	$a0, $a0, $a2
	slli.d	$a2, $s6, 10
	andi	$a2, $a2, 1024
	bstrins.d	$a2, $s5, 9, 9
	or	$a0, $a0, $a2
	ori	$a0, $a0, 16
	st.h	$s4, $fp, 120
	st.d	$s3, $fp, 48
	st.d	$s1, $fp, 56
	xvrepli.b	$xr0, 0
	xvst	$xr0, $fp, 64
	addi.d	$a2, $zero, -114
	and	$a1, $a1, $a2
	ld.bu	$a2, $fp, 126
	addi.d	$a1, $a1, 32
	st.b	$a1, $fp, 43
	st.h	$zero, $fp, 122
	andi	$a2, $a2, 191
	st.b	$a2, $fp, 126
	st.b	$zero, $fp, 124
	st.h	$a0, $fp, 41
	beqz	$s3, .LBB15_8
# %bb.6:                                # %land.lhs.true
	ld.bu	$a2, $s3, 32
	ori	$a3, $zero, 145
	bne	$a2, $a3, .LBB15_8
# %bb.7:                                # %if.then107
	ld.h	$a0, $s3, 41
	lu12i.w	$a1, 8
	or	$a0, $a0, $a1
	st.h	$a0, $s3, 41
	ld.h	$a0, $fp, 41
	ld.bu	$a1, $fp, 43
	ld.bu	$s2, $fp, 32
	lu12i.w	$a2, -8
	or	$a0, $a0, $a2
.LBB15_8:                               # %if.end119
	andi	$a1, $a1, 247
	st.b	$a1, $fp, 43
	lu12i.w	$s3, 15
	ori	$a1, $s3, 4083
	and	$a0, $a0, $a1
	addi.d	$a1, $s2, -144
	ori	$a2, $zero, 2
	st.h	$a0, $fp, 41
	bltu	$a2, $a1, .LBB15_21
# %bb.9:                                # %if.end150
	ld.d	$a0, $fp, 48
	ld.b	$a1, $a0, 43
	ori	$a1, $a1, 8
	st.b	$a1, $a0, 43
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 144
	beq	$a0, $a1, .LBB15_12
# %bb.10:                               # %if.end163
	ori	$a1, $zero, 146
	beq	$a0, $a1, .LBB15_13
.LBB15_11:                              # %if.end176
	ori	$a1, $zero, 145
	beq	$a0, $a1, .LBB15_14
	b	.LBB15_21
.LBB15_12:                              # %if.then156
	ld.d	$a0, $fp, 48
	ld.h	$a1, $a0, 41
	ori	$a1, $a1, 4
	st.h	$a1, $a0, 41
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 146
	bne	$a0, $a1, .LBB15_11
.LBB15_13:                              # %if.then169
	ld.d	$a0, $fp, 48
	ld.h	$a1, $a0, 41
	ori	$a1, $a1, 8
	st.h	$a1, $a0, 41
	ld.bu	$a0, $fp, 32
	ori	$a1, $zero, 145
	bne	$a0, $a1, .LBB15_21
.LBB15_14:                              # %if.then182
	ld.d	$a2, $fp, 48
	ld.d	$a1, $a2, 0
	ori	$a0, $zero, 97
	beq	$a1, $a2, .LBB15_20
	.p2align	4, , 16
.LBB15_15:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB15_15
# %bb.16:                               # %for.cond
	ori	$a3, $zero, 145
	bne	$a2, $a3, .LBB15_20
# %bb.17:                               # %if.then211
	ld.bu	$a1, $a1, 125
	ori	$a0, $zero, 32
	beq	$a1, $a0, .LBB15_20
# %bb.18:                               # %if.then211
	ori	$a2, $zero, 122
	beq	$a1, $a2, .LBB15_20
# %bb.19:                               # %if.else221
	addi.d	$a0, $a1, 1
.LBB15_20:                              # %if.end233.sink.split
	st.b	$a0, $fp, 125
.LBB15_21:                              # %if.end233
	vst	$vr1, $sp, 16                   # 16-byte Folded Spill
	ld.hu	$s2, $fp, 41
	ori	$a0, $s3, 3903
	and	$a0, $s2, $a0
	st.h	$a0, $fp, 41
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_39
# %bb.22:                               # %if.then245
	ori	$a0, $s3, 3871
	and	$a0, $s2, $a0
.LBB15_23:                              # %if.end331
	lu12i.w	$a1, 9
	ori	$a1, $a1, 4092
	ld.bu	$a2, $fp, 126
	ld.d	$s1, $fp, 48
	and	$a0, $a0, $a1
	st.h	$a0, $fp, 41
	andi	$a0, $a2, 192
	st.b	$a0, $fp, 126
	beqz	$s1, .LBB15_34
# %bb.24:                               # %land.lhs.true370
	ld.bu	$a0, $s1, 32
	ori	$a1, $zero, 143
	bne	$a0, $a1, .LBB15_34
# %bb.25:                               # %if.then377
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_27
# %bb.26:                               # %if.then381
	ld.h	$a0, $s1, 41
	lu12i.w	$a1, 8
	or	$a0, $a0, $a1
	st.h	$a0, $s1, 41
	ld.d	$a0, $fp, 48
	ld.h	$a1, $a0, 41
	ori	$a1, $a1, 2
	st.h	$a1, $a0, 41
	ld.h	$a0, $fp, 41
	ori	$a0, $a0, 1
	st.h	$a0, $fp, 41
.LBB15_27:                              # %if.end399
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_29
# %bb.28:                               # %if.then403
	ld.d	$a0, $fp, 48
	ld.b	$a1, $a0, 126
	ori	$a1, $a1, 2
	st.b	$a1, $a0, 126
	ld.b	$a0, $fp, 126
	ori	$a0, $a0, 1
	st.b	$a0, $fp, 126
.LBB15_29:                              # %if.end413
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_107
.LBB15_30:                              # %if.end530
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_32
# %bb.31:                               # %if.then534
	ld.d	$a0, $fp, 48
	ld.b	$a1, $a0, 126
	ori	$a1, $a1, 8
	st.b	$a1, $a0, 126
	ld.b	$a0, $fp, 126
	ori	$a0, $a0, 4
	st.b	$a0, $fp, 126
.LBB15_32:                              # %if.end544
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_34
# %bb.33:                               # %if.then548
	ld.d	$a0, $fp, 48
	ld.b	$a1, $a0, 126
	ori	$a1, $a1, 32
	st.b	$a1, $a0, 126
	ld.b	$a0, $fp, 126
	ori	$a0, $a0, 16
	st.b	$a0, $fp, 126
.LBB15_34:                              # %if.end559
	addi.d	$s2, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_47
# %bb.35:                               # %if.then563
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 143
	bne	$a0, $a1, .LBB15_46
# %bb.36:                               # %lor.lhs.false569
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$a1, $a0, %got_pc_lo12(StartSym)
	ld.d	$a0, $fp, 48
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB15_46
# %bb.37:                               # %if.else576
	ld.hu	$a1, $a0, 41
	andi	$a1, $a1, 8
	bnez	$a1, .LBB15_119
# %bb.38:                               # %if.then585
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a2, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a5, $a0, %pc_lo12(.L.str.15)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 14
	ori	$a3, $zero, 2
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 146
	beq	$a0, $a1, .LBB15_48
	b	.LBB15_56
.LBB15_39:                              # %if.else250
	ld.d	$a0, $fp, 48
	ld.h	$a1, $a0, 41
	ori	$a1, $a1, 64
	st.h	$a1, $a0, 41
	ld.h	$a0, $fp, 41
	ori	$a0, $a0, 32
	st.h	$a0, $fp, 41
	beqz	$s1, .LBB15_23
# %bb.40:                               # %if.else250
	ld.d	$a1, $fp, 48
	ld.hu	$a1, $a1, 41
	lu12i.w	$a2, 4
	and	$a1, $a1, $a2
	beqz	$a1, .LBB15_23
# %bb.41:                               # %land.lhs.true271
	ld.bu	$a1, $s1, 32
	andi	$a1, $a1, 254
	ori	$a2, $zero, 6
	bne	$a1, $a2, .LBB15_23
# %bb.42:                               # %if.then283
	ld.d	$a2, $s1, 0
	ld.d	$a1, $s1, 8
	beq	$a2, $a1, .LBB15_23
	.p2align	4, , 16
.LBB15_43:                              # %for.cond299
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB15_43
# %bb.44:                               # %for.cond299
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB15_23
# %bb.45:                               # %if.then316
	ld.d	$a0, $a1, 80
	ld.h	$a2, $a0, 41
	lu12i.w	$a3, 1
	or	$a2, $a2, $a3
	st.h	$a2, $a0, 41
	ld.d	$a0, $a1, 80
	ld.h	$a1, $a0, 41
	ori	$a1, $a1, 2048
	st.h	$a1, $a0, 41
	ld.hu	$a0, $fp, 41
	b	.LBB15_23
.LBB15_46:                              # %if.then573
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a2, $a0, %pc_lo12(.L.str.16)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 4
	ori	$a3, $zero, 2
	move	$a4, $s2
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB15_47:                              # %if.end596
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 146
	bne	$a0, $a1, .LBB15_56
.LBB15_48:                              # %land.lhs.true602
	ld.d	$a0, $fp, 48
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 256
	beqz	$a0, .LBB15_52
# %bb.49:                               # %land.lhs.true611
	ld.hu	$a0, $fp, 41
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1
	and	$a0, $a0, $a1
	bnez	$a0, .LBB15_51
# %bb.50:                               # %lor.lhs.false626
	ld.bu	$a0, $fp, 126
	andi	$a0, $a0, 1
	beqz	$a0, .LBB15_52
.LBB15_51:                              # %if.end635
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a2, $a0, %pc_lo12(.L.str.18)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 5
	ori	$a3, $zero, 2
	move	$a4, $s2
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 146
	bne	$a0, $a1, .LBB15_56
.LBB15_52:                              # %land.lhs.true641
	ld.d	$a0, $fp, 48
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 64
	beqz	$a0, .LBB15_56
# %bb.53:                               # %land.lhs.true650
	ld.hu	$a0, $fp, 41
	lu12i.w	$a1, 2
	ori	$a1, $a1, 1
	and	$a0, $a0, $a1
	bnez	$a0, .LBB15_55
# %bb.54:                               # %lor.lhs.false665
	ld.bu	$a0, $fp, 126
	andi	$a0, $a0, 1
	beqz	$a0, .LBB15_56
.LBB15_55:                              # %if.then671
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 6
	ori	$a3, $zero, 2
	move	$a4, $s2
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB15_56:                              # %if.end674
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 0
	move	$s4, $a0
	addi.w	$a0, $a0, -1
	beqz	$a0, .LBB15_65
# %bb.57:                               # %while.body.preheader
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB15_59
# %bb.58:
	move	$a2, $s0
	b	.LBB15_62
.LBB15_59:                              # %vector.ph
	bstrpick.d	$a3, $a0, 31, 0
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a4, $a2, 3
	sub.d	$a0, $a0, $a4
	alsl.d	$a2, $a2, $s0, 3
	vld	$vr4, $sp, 16                   # 16-byte Folded Reload
	vori.b	$vr0, $vr4, 0
	vinsgr2vr.w	$vr0, $a1, 0
	addi.d	$a1, $s0, 5
	move	$a5, $a4
	vori.b	$vr1, $vr4, 0
	.p2align	4, , 16
.LBB15_60:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, -4
	ld.w	$a7, $a1, 0
	vinsgr2vr.w	$vr2, $a6, 0
	vinsgr2vr.w	$vr3, $a7, 0
	vilvl.b	$vr2, $vr4, $vr2
	vilvl.h	$vr2, $vr4, $vr2
	vilvl.b	$vr3, $vr4, $vr3
	vilvl.h	$vr3, $vr4, $vr3
	vadd.w	$vr0, $vr0, $vr2
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, 8
	bnez	$a5, .LBB15_60
# %bb.61:                               # %middle.block
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	beq	$a4, $a3, .LBB15_64
.LBB15_62:                              # %while.body.preheader266
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB15_63:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	add.w	$a1, $a1, $a3
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB15_63
.LBB15_64:                              # %while.end.loopexit
	bstrpick.d	$a0, $a1, 31, 0
	lu12i.w	$a2, 155845
	ori	$a2, $a2, 2309
	mul.d	$a0, $a0, $a2
	srli.d	$a0, $a0, 32
	sub.d	$a2, $a1, $a0
	bstrpick.d	$a2, $a2, 31, 1
	add.d	$a0, $a2, $a0
	srli.d	$a0, $a0, 10
	ori	$a2, $zero, 1783
	mul.d	$a0, $a0, $a2
	sub.w	$a1, $a1, $a0
.LBB15_65:                              # %while.end
	pcalau12i	$a0, %pc_hi20(symtab)
	addi.d	$a0, $a0, %pc_lo12(symtab)
	alsl.d	$s1, $a1, $a0, 4
	ld.d	$s5, $s1, 8
	beq	$s5, $s1, .LBB15_79
# %bb.66:                               # %for.cond694.preheader.preheader
	addi.w	$s6, $s4, 0
	b	.LBB15_68
	.p2align	4, , 16
.LBB15_67:                              # %for.inc759
                                        #   in Loop: Header=BB15_68 Depth=1
	ld.d	$s5, $s5, 8
	beq	$s5, $s1, .LBB15_79
.LBB15_68:                              # %for.cond694.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_69 Depth 2
	move	$s3, $s5
	.p2align	4, , 16
.LBB15_69:                              # %for.cond694
                                        #   Parent Loop BB15_68 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s3, $s3, 16
	ld.bu	$a0, $s3, 32
	beqz	$a0, .LBB15_69
# %bb.70:                               # %for.end705
                                        #   in Loop: Header=BB15_68 Depth=1
	ld.wu	$a0, $s3, 40
	andi	$a0, $a0, 4095
	bne	$a0, $s6, .LBB15_67
# %bb.71:                               # %land.lhs.true711
                                        #   in Loop: Header=BB15_68 Depth=1
	addi.d	$a1, $s3, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB15_67
# %bb.72:                               # %for.cond719.preheader
	move	$a0, $s3
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB15_73:                              # %for.cond719
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_75 Depth 2
	ld.d	$a0, $a0, 8
	beq	$a0, $s3, .LBB15_89
# %bb.74:                               # %for.cond726.preheader
                                        #   in Loop: Header=BB15_73 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB15_75:                              # %for.cond726
                                        #   Parent Loop BB15_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB15_75
# %bb.76:                               # %for.end737
                                        #   in Loop: Header=BB15_73 Depth=1
	ld.d	$a2, $fp, 48
	ld.d	$a3, $a1, 48
	bne	$a2, $a3, .LBB15_73
# %bb.77:                               # %if.then742
	addi.d	$s1, $a1, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(EchoFilePos)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 7
	ori	$a3, $zero, 2
	move	$a4, $s2
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(AltErrorFormat)
	ld.d	$a0, $a0, %got_pc_lo12(AltErrorFormat)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB15_89
# %bb.78:                               # %if.then748
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a2, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 13
	ori	$a3, $zero, 2
	move	$a4, $s1
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB15_89
.LBB15_79:                              # %for.end763
	slli.d	$a0, $s4, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 68
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 35
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 265
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $s5, 0
	bltu	$a0, $a1, .LBB15_81
# %bb.80:                               # %if.then774
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$s3, $a0, 0
	b	.LBB15_84
.LBB15_81:                              # %if.else776
	slli.d	$a1, $a0, 3
	ldx.d	$s3, $s8, $a1
	beqz	$s3, .LBB15_83
# %bb.82:                               # %if.else783
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s3, $a1, 0
	ld.d	$a1, $s3, 0
	alsl.d	$a0, $a0, $s8, 3
	st.d	$a1, $a0, 0
	b	.LBB15_84
.LBB15_83:                              # %if.then781
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s3, $a0
	st.d	$a0, $a1, 0
.LBB15_84:                              # %if.end792
	ld.b	$a0, $s5, 0
	st.b	$a0, $s3, 33
	ori	$a0, $zero, 11
	st.b	$a0, $s3, 32
	st.d	$s3, $s3, 24
	ld.wu	$a0, $s3, 40
	st.d	$s3, $s3, 16
	st.d	$s3, $s3, 8
	st.d	$s3, $s3, 0
	srli.d	$a0, $a0, 12
	bstrins.d	$s4, $a0, 63, 12
	st.w	$s4, $s3, 40
	addi.d	$a0, $s3, 64
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a2, $s4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB15_86
# %bb.85:                               # %if.else830
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s8, 3
	st.d	$a1, $a2, 0
	b	.LBB15_87
.LBB15_86:                              # %if.then828
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB15_87:                              # %cond.false886
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a5, $s1, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a0, $a2, 0
	st.d	$a0, $a3, 0
	st.d	$s1, $a4, 0
	st.d	$a5, $a1, 0
	ld.d	$a6, $a0, 0
	st.d	$a6, $s1, 0
	st.d	$s1, $a6, 8
	st.d	$a5, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a1, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a6, 8
	st.d	$a0, $a3, 0
	st.d	$s3, $a4, 0
	beqz	$a0, .LBB15_89
# %bb.88:                               # %cond.false890
	ld.d	$a2, $s3, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s3, 16
	st.d	$s3, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB15_89:                              # %wrapup
	ld.bu	$a2, $s4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB15_91
# %bb.90:                               # %if.else929
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s8, 3
	st.d	$a1, $a2, 0
	b	.LBB15_92
.LBB15_91:                              # %if.then927
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB15_92:                              # %if.end938
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$s0, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$s1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$s2, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	st.d	$a0, $s1, 0
	st.d	$s3, $s2, 0
	beqz	$s3, .LBB15_95
# %bb.93:                               # %cond.end984
	ld.d	$a1, $s3, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s3, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a3, $a0, 0
	ld.d	$a2, $a2, 0
	st.d	$a1, $a3, 8
	st.d	$a2, $a0, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $a2, 8
	st.d	$a1, $s1, 0
	st.d	$fp, $s2, 0
	beqz	$a1, .LBB15_97
# %bb.94:                               # %cond.end984.cond.false993_crit_edge
	ld.d	$a0, $a1, 16
	b	.LBB15_96
.LBB15_95:                              # %cond.end984.thread
	st.d	$fp, $s2, 0
	move	$a1, $a0
.LBB15_96:                              # %cond.false993
	ld.d	$a2, $fp, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $fp, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $a3, 0
	st.d	$fp, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB15_97:                              # %cond.end1017
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB15_106
# %bb.98:                               # %if.then1022
	ld.bu	$a2, $s4, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s8, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB15_100
# %bb.99:                               # %if.else1036
	st.d	$a0, $s2, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s8, 3
	st.d	$a1, $a2, 0
	b	.LBB15_101
.LBB15_100:                             # %if.then1034
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB15_101:                             # %if.end1045
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	ld.d	$a1, $fp, 48
	st.d	$a0, $s0, 0
	st.d	$a0, $s1, 0
	st.d	$a1, $s2, 0
	beqz	$a1, .LBB15_104
# %bb.102:                              # %cond.end1092
	ld.d	$a2, $a1, 0
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s2, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $a3, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $s0, 0
	st.d	$a0, $a3, 8
	st.d	$a1, $s1, 0
	st.d	$fp, $s2, 0
	beqz	$a1, .LBB15_106
# %bb.103:                              # %cond.end1092.cond.false1101_crit_edge
	ld.d	$a0, $a1, 16
	b	.LBB15_105
.LBB15_104:                             # %cond.end1092.thread
	st.d	$fp, $s2, 0
	move	$a1, $a0
.LBB15_105:                             # %cond.false1101
	ld.d	$a2, $fp, 16
	pcalau12i	$a3, %got_pc_hi20(zz_tmp)
	ld.d	$a3, $a3, %got_pc_lo12(zz_tmp)
	st.d	$a0, $fp, 16
	ld.d	$a0, $a1, 16
	st.d	$a2, $a3, 0
	st.d	$fp, $a0, 24
	st.d	$a2, $a1, 16
	st.d	$a1, $a2, 24
.LBB15_106:                             # %if.end1127
	move	$a0, $fp
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
.LBB15_107:                             # %if.then417
	ld.d	$a0, $fp, 48
	ld.h	$a1, $a0, 41
	lu12i.w	$a2, 8
	or	$a1, $a1, $a2
	st.h	$a1, $a0, 41
	ld.d	$a0, $fp, 48
	ld.h	$a1, $a0, 41
	lu12i.w	$a2, 4
	or	$a1, $a1, $a2
	st.h	$a1, $a0, 41
	ld.h	$a0, $fp, 41
	ld.d	$a3, $fp, 48
	lu12i.w	$a1, 2
	or	$a0, $a0, $a1
	st.h	$a0, $fp, 41
	ld.d	$a0, $a3, 8
	beq	$a0, $a3, .LBB15_30
# %bb.108:                              # %for.cond447.preheader.preheader
	ori	$a1, $zero, 6
	ori	$a2, $zero, 2
	lu12i.w	$a4, 1
	b	.LBB15_110
	.p2align	4, , 16
.LBB15_109:                             # %for.inc525
                                        #   in Loop: Header=BB15_110 Depth=1
	ld.d	$a0, $a0, 8
	beq	$a0, $a3, .LBB15_30
.LBB15_110:                             # %for.cond447.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_111 Depth 2
                                        #     Child Loop BB15_116 Depth 2
	move	$a5, $a0
	.p2align	4, , 16
.LBB15_111:                             # %for.cond447
                                        #   Parent Loop BB15_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a5, 16
	ld.bu	$a6, $a5, 32
	beqz	$a6, .LBB15_111
# %bb.112:                              # %for.end458
                                        #   in Loop: Header=BB15_110 Depth=1
	ld.hu	$a6, $a5, 41
	andi	$a6, $a6, 32
	beqz	$a6, .LBB15_109
# %bb.113:                              # %land.lhs.true466
                                        #   in Loop: Header=BB15_110 Depth=1
	ld.d	$a5, $a5, 56
	beqz	$a5, .LBB15_109
# %bb.114:                              # %land.lhs.true470
                                        #   in Loop: Header=BB15_110 Depth=1
	ld.bu	$a6, $a5, 32
	andi	$a6, $a6, 254
	bne	$a6, $a1, .LBB15_109
# %bb.115:                              # %if.then484
                                        #   in Loop: Header=BB15_110 Depth=1
	ld.d	$a5, $a5, 8
	.p2align	4, , 16
.LBB15_116:                             # %for.cond493
                                        #   Parent Loop BB15_110 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a5, 16
	ld.bu	$a6, $a5, 32
	beqz	$a6, .LBB15_116
# %bb.117:                              # %for.cond493
                                        #   in Loop: Header=BB15_110 Depth=1
	bne	$a6, $a2, .LBB15_109
# %bb.118:                              # %if.then510
                                        #   in Loop: Header=BB15_110 Depth=1
	ld.d	$a3, $a5, 80
	ld.h	$a6, $a3, 41
	or	$a6, $a6, $a4
	st.h	$a6, $a3, 41
	ld.d	$a3, $a5, 80
	ld.h	$a5, $a3, 41
	ori	$a5, $a5, 2048
	st.h	$a5, $a3, 41
	ld.d	$a3, $fp, 48
	b	.LBB15_109
.LBB15_119:                             # %if.else588
	st.d	$fp, $a0, 104
	ld.d	$a0, $fp, 48
	ori	$a1, $zero, 104
	st.b	$a1, $a0, 40
	ld.bu	$a0, $s2, 0
	ori	$a1, $zero, 146
	beq	$a0, $a1, .LBB15_48
	b	.LBB15_56
.Lfunc_end15:
	.size	InsertSym, .Lfunc_end15-InsertSym
                                        # -- End function
	.globl	InsertAlternativeName           # -- Begin function InsertAlternativeName
	.p2align	5
	.type	InsertAlternativeName,@function
InsertAlternativeName:                  # @InsertAlternativeName
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
	move	$s3, $a2
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $s0, 0
	move	$s2, $a0
	addi.w	$a0, $a0, -1
	beqz	$a0, .LBB16_9
# %bb.1:                                # %while.body.preheader
	ori	$a2, $zero, 8
	bgeu	$a0, $a2, .LBB16_3
# %bb.2:
	move	$a2, $s0
	b	.LBB16_6
.LBB16_3:                               # %vector.ph
	bstrpick.d	$a3, $a0, 31, 0
	bstrpick.d	$a2, $a3, 31, 3
	slli.d	$a4, $a2, 3
	sub.d	$a0, $a0, $a4
	vrepli.b	$vr0, 0
	alsl.d	$a2, $a2, $s0, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a1, 0
	addi.d	$a1, $s0, 5
	move	$a5, $a4
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB16_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a1, -4
	ld.w	$a7, $a1, 0
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$a5, $a5, -8
	addi.d	$a1, $a1, 8
	bnez	$a5, .LBB16_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	beq	$a4, $a3, .LBB16_8
.LBB16_6:                               # %while.body.preheader56
	addi.d	$a2, $a2, 1
	.p2align	4, , 16
.LBB16_7:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a2, 0
	add.w	$a1, $a1, $a3
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 1
	bnez	$a0, .LBB16_7
.LBB16_8:                               # %while.end.loopexit
	bstrpick.d	$a0, $a1, 31, 0
	lu12i.w	$a2, 155845
	ori	$a2, $a2, 2309
	mul.d	$a0, $a0, $a2
	srli.d	$a0, $a0, 32
	sub.d	$a2, $a1, $a0
	bstrpick.d	$a2, $a2, 31, 1
	add.d	$a0, $a2, $a0
	srli.d	$a0, $a0, 10
	ori	$a2, $zero, 1783
	mul.d	$a0, $a0, $a2
	sub.w	$a1, $a1, $a0
.LBB16_9:                               # %while.end
	pcalau12i	$a0, %pc_hi20(symtab)
	addi.d	$a0, $a0, %pc_lo12(symtab)
	alsl.d	$s4, $a1, $a0, 4
	ld.d	$s5, $s4, 8
	beq	$s5, $s4, .LBB16_22
# %bb.10:                               # %for.cond9.preheader.preheader
	addi.w	$s6, $s2, 0
	b	.LBB16_12
	.p2align	4, , 16
.LBB16_11:                              # %for.inc58
                                        #   in Loop: Header=BB16_12 Depth=1
	ld.d	$s5, $s5, 8
	beq	$s5, $s4, .LBB16_22
.LBB16_12:                              # %for.cond9.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_13 Depth 2
	move	$s1, $s5
	.p2align	4, , 16
.LBB16_13:                              # %for.cond9
                                        #   Parent Loop BB16_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $s1, 16
	ld.bu	$a0, $s1, 32
	beqz	$a0, .LBB16_13
# %bb.14:                               # %for.end
                                        #   in Loop: Header=BB16_12 Depth=1
	ld.wu	$a0, $s1, 40
	andi	$a0, $a0, 4095
	bne	$a0, $s6, .LBB16_11
# %bb.15:                               # %land.lhs.true
                                        #   in Loop: Header=BB16_12 Depth=1
	addi.d	$a1, $s1, 64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB16_11
# %bb.16:                               # %for.cond25.preheader
	move	$a0, $s1
	.p2align	4, , 16
.LBB16_17:                              # %for.cond25
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_19 Depth 2
	ld.d	$a0, $a0, 8
	beq	$a0, $s1, .LBB16_32
# %bb.18:                               # %for.cond32.preheader
                                        #   in Loop: Header=BB16_17 Depth=1
	move	$a1, $a0
	.p2align	4, , 16
.LBB16_19:                              # %for.cond32
                                        #   Parent Loop BB16_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $a1, 16
	ld.bu	$a2, $a1, 32
	beqz	$a2, .LBB16_19
# %bb.20:                               # %for.end43
                                        #   in Loop: Header=BB16_17 Depth=1
	ld.d	$a2, $fp, 48
	ld.d	$a3, $a1, 48
	bne	$a2, $a3, .LBB16_17
# %bb.21:                               # %if.then47
	addi.d	$a0, $a1, 32
	addi.d	$s2, $fp, 32
	pcaddu18i	$ra, %call36(EchoFilePos)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 12
	ori	$a3, $zero, 2
	move	$a4, $s2
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB16_32
.LBB16_22:                              # %for.end62
	slli.d	$a0, $s2, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 68
	add.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s5, $a1, %got_pc_lo12(zz_size)
	srai.d	$a0, $a0, 35
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 265
	st.w	$a0, $s5, 0
	bltu	$a0, $a1, .LBB16_24
# %bb.23:                               # %if.then73
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	move	$a4, $s3
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$s1, $a0, 0
	b	.LBB16_27
.LBB16_24:                              # %if.else
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a1, $a1, %got_pc_lo12(zz_free)
	slli.d	$a2, $a0, 3
	ldx.d	$s1, $a1, $a2
	beqz	$s1, .LBB16_26
# %bb.25:                               # %if.else81
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$s1, $a2, 0
	ld.d	$a2, $s1, 0
	alsl.d	$a0, $a0, $a1, 3
	st.d	$a2, $a0, 0
	b	.LBB16_27
.LBB16_26:                              # %if.then79
	move	$a1, $s3
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	move	$s1, $a0
	st.d	$a0, $a1, 0
.LBB16_27:                              # %if.end90
	ld.b	$a0, $s5, 0
	st.b	$a0, $s1, 33
	ori	$a0, $zero, 11
	st.b	$a0, $s1, 32
	st.d	$s1, $s1, 24
	ld.wu	$a0, $s1, 40
	st.d	$s1, $s1, 16
	st.d	$s1, $s1, 8
	st.d	$s1, $s1, 0
	srli.d	$a0, $a0, 12
	bstrins.d	$s2, $a0, 63, 12
	st.w	$s2, $s1, 40
	addi.d	$a0, $s1, 64
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $s5, 0
	beqz	$a0, .LBB16_29
# %bb.28:                               # %if.else126
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB16_30
.LBB16_29:                              # %if.then124
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB16_30:                              # %cond.false182
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a5, $s4, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a0, $a2, 0
	st.d	$a0, $a3, 0
	st.d	$s4, $a4, 0
	st.d	$a5, $a1, 0
	ld.d	$a6, $a0, 0
	st.d	$a6, $s4, 0
	st.d	$s4, $a6, 8
	st.d	$a5, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a1, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a6, 8
	st.d	$a0, $a3, 0
	st.d	$s1, $a4, 0
	beqz	$a0, .LBB16_32
# %bb.31:                               # %cond.false186
	ld.d	$a2, $s1, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s1, 16
	st.d	$s1, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB16_32:                              # %wrapup
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$a0, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$a3, $a0, %got_pc_lo12(zz_size)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB16_34
# %bb.33:                               # %if.else225
	pcalau12i	$a3, %got_pc_hi20(zz_hold)
	ld.d	$a3, $a3, %got_pc_lo12(zz_hold)
	st.d	$a0, $a3, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB16_35
.LBB16_34:                              # %if.then223
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB16_35:                              # %if.end234
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a3, $a1, %got_pc_lo12(xx_link)
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a1, $a1, %got_pc_lo12(zz_res)
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	st.d	$a0, $a1, 0
	st.d	$s1, $a2, 0
	beqz	$s1, .LBB16_37
# %bb.36:                               # %cond.false256
	ld.d	$a4, $s1, 0
	pcalau12i	$a5, %got_pc_hi20(zz_tmp)
	ld.d	$a5, $a5, %got_pc_lo12(zz_tmp)
	st.d	$a4, $a5, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $a1, 0
	ld.d	$a4, $a2, 0
	ld.d	$a6, $a0, 0
	ld.d	$a5, $a5, 0
	st.d	$a4, $a6, 8
	st.d	$a5, $a0, 0
	ld.d	$a4, $a1, 0
	ld.d	$a0, $a3, 0
	st.d	$a4, $a5, 8
.LBB16_37:                              # %cond.end280
	st.d	$a0, $a1, 0
	st.d	$fp, $a2, 0
	beqz	$fp, .LBB16_40
# %bb.38:                               # %cond.end280
	beqz	$a0, .LBB16_40
# %bb.39:                               # %cond.false289
	ld.d	$a1, $fp, 16
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$a2, $a2, %got_pc_lo12(zz_tmp)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $fp, 16
	st.d	$fp, $a3, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB16_40:                              # %cond.end313
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
.Lfunc_end16:
	.size	InsertAlternativeName, .Lfunc_end16-InsertAlternativeName
                                        # -- End function
	.globl	SearchSym                       # -- Begin function SearchSym
	.p2align	5
	.type	SearchSym,@function
SearchSym:                              # @SearchSym
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	move	$t0, $a0
	ld.bu	$a2, $a0, 0
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.w	$a0, $a1, -1
	beqz	$a0, .LBB17_9
# %bb.1:                                # %while.body.preheader
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB17_3
# %bb.2:
	move	$a1, $t0
	b	.LBB17_6
.LBB17_3:                               # %vector.ph
	bstrpick.d	$a3, $a0, 31, 0
	bstrpick.d	$a1, $a3, 31, 3
	slli.d	$a4, $a1, 3
	sub.d	$a0, $a0, $a4
	vrepli.b	$vr0, 0
	alsl.d	$a1, $a1, $t0, 3
	vori.b	$vr1, $vr0, 0
	vinsgr2vr.w	$vr1, $a2, 0
	addi.d	$a2, $t0, 5
	move	$a5, $a4
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB17_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a2, -4
	ld.w	$a7, $a2, 0
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	vadd.w	$vr2, $vr2, $vr4
	addi.d	$a5, $a5, -8
	addi.d	$a2, $a2, 8
	bnez	$a5, .LBB17_4
# %bb.5:                                # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a4, $a3, .LBB17_8
.LBB17_6:                               # %while.body.preheader90
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB17_7:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	add.w	$a2, $a2, $a3
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bnez	$a0, .LBB17_7
.LBB17_8:                               # %while.end.loopexit
	bstrpick.d	$a0, $a2, 31, 0
	lu12i.w	$a1, 155845
	ori	$a1, $a1, 2309
	mul.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 32
	sub.d	$a1, $a2, $a0
	bstrpick.d	$a1, $a1, 31, 1
	add.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 10
	ori	$a1, $zero, 1783
	mul.d	$a0, $a0, $a1
	sub.w	$a2, $a2, $a0
.LBB17_9:                               # %while.end
	pcalau12i	$a0, %pc_hi20(symtab)
	addi.d	$a0, $a0, %pc_lo12(symtab)
	alsl.d	$a0, $a2, $a0, 4
	ld.d	$s6, $a0, 8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	beq	$s6, $a0, .LBB17_52
# %bb.10:                               # %for.cond8.preheader.lr.ph
	pcalau12i	$a0, %pc_hi20(scope_top)
	ld.w	$a0, $a0, %pc_lo12(scope_top)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(suppress_visible)
	pcalau12i	$a1, %got_pc_hi20(StartSym)
	ld.d	$a1, $a1, %got_pc_lo12(StartSym)
	ld.w	$fp, $a0, %pc_lo12(suppress_visible)
	pcalau12i	$a0, %pc_hi20(suppress_scope)
	ld.b	$a0, $a0, %pc_lo12(suppress_scope)
	ld.d	$a1, $a1, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(scope)
	addi.d	$a1, $a1, %pc_lo12(scope)
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(npars_only)
	addi.d	$a1, $a1, %pc_lo12(npars_only)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(vis_only)
	addi.d	$a1, $a1, %pc_lo12(vis_only)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(body_ok)
	addi.d	$a1, $a1, %pc_lo12(body_ok)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	andi	$a0, $a0, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a5, $zero, 145
	ori	$a6, $zero, 146
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB17_13
	.p2align	4, , 16
.LBB17_11:                              # %do.end
                                        #   in Loop: Header=BB17_13 Depth=1
	beqz	$a1, .LBB17_19
	.p2align	4, , 16
.LBB17_12:                              # %if.end121
                                        #   in Loop: Header=BB17_13 Depth=1
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $s6, 8
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s6, $a0, .LBB17_52
.LBB17_13:                              # %for.cond8.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_14 Depth 2
                                        #     Child Loop BB17_17 Depth 2
                                        #     Child Loop BB17_22 Depth 2
                                        #       Child Loop BB17_40 Depth 3
                                        #         Child Loop BB17_41 Depth 4
                                        #       Child Loop BB17_25 Depth 3
                                        #         Child Loop BB17_26 Depth 4
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB17_14:                              # %for.cond8
                                        #   Parent Loop BB17_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 16
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB17_14
# %bb.15:                               # %for.end
                                        #   in Loop: Header=BB17_13 Depth=1
	ld.wu	$a0, $s6, 40
	andi	$a0, $a0, 4095
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB17_12
# %bb.16:                               # %if.then
                                        #   in Loop: Header=BB17_13 Depth=1
	move	$a0, $zero
	addi.d	$s8, $s6, 64
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB17_17:                              # %do.body
                                        #   Parent Loop BB17_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a2, $s6, $a0
	ldx.bu	$a3, $t0, $a0
	ld.bu	$a2, $a2, 64
	bne	$a3, $a2, .LBB17_11
# %bb.18:                               # %land.rhs
                                        #   in Loop: Header=BB17_17 Depth=2
	addi.w	$a1, $a1, -1
	addi.d	$a0, $a0, 1
	bnez	$a1, .LBB17_17
.LBB17_19:                              # %if.then28
                                        #   in Loop: Header=BB17_13 Depth=1
	ld.d	$a0, $s6, 8
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	beq	$a0, $s6, .LBB17_12
# %bb.20:                               # %do.body29.preheader
                                        #   in Loop: Header=BB17_13 Depth=1
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	b	.LBB17_22
	.p2align	4, , 16
.LBB17_21:                              # %for.cond34.do.cond114_crit_edge
                                        #   in Loop: Header=BB17_22 Depth=2
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB17_12
.LBB17_22:                              # %do.body29
                                        #   Parent Loop BB17_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_40 Depth 3
                                        #         Child Loop BB17_41 Depth 4
                                        #       Child Loop BB17_25 Depth 3
                                        #         Child Loop BB17_26 Depth 4
	addi.d	$s5, $s5, -1
	slli.d	$a0, $s5, 3
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$s0, $a1, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	alsl.d	$s1, $s5, $a0, 2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	alsl.d	$s3, $s5, $a0, 2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$s2, $s5, $a0, 2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beqz	$a1, .LBB17_40
# %bb.23:                               # %for.cond41.preheader.us.preheader
                                        #   in Loop: Header=BB17_22 Depth=2
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	b	.LBB17_25
	.p2align	4, , 16
.LBB17_24:                              # %for.inc109.us
                                        #   in Loop: Header=BB17_25 Depth=3
	ld.d	$s7, $s7, 8
	beq	$s7, $s6, .LBB17_21
.LBB17_25:                              # %for.cond41.preheader.us
                                        #   Parent Loop BB17_13 Depth=1
                                        #     Parent Loop BB17_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_26 Depth 4
	move	$s4, $s7
	.p2align	4, , 16
.LBB17_26:                              # %for.cond41.us
                                        #   Parent Loop BB17_13 Depth=1
                                        #     Parent Loop BB17_22 Depth=2
                                        #       Parent Loop BB17_25 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$s4, $s4, 16
	ld.bu	$a1, $s4, 32
	beqz	$a1, .LBB17_26
# %bb.27:                               # %for.end52.us
                                        #   in Loop: Header=BB17_25 Depth=3
	ld.d	$a0, $s4, 48
	bne	$a0, $s0, .LBB17_24
# %bb.28:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB17_25 Depth=3
	beq	$a1, $a5, .LBB17_30
# %bb.29:                               # %land.lhs.true.us
                                        #   in Loop: Header=BB17_25 Depth=3
	ld.w	$a2, $s1, 0
	bnez	$a2, .LBB17_24
.LBB17_30:                              # %land.lhs.true65.us
                                        #   in Loop: Header=BB17_25 Depth=3
	ld.w	$a2, $s3, 0
	beqz	$a2, .LBB17_33
# %bb.31:                               # %lor.lhs.false69.us
                                        #   in Loop: Header=BB17_25 Depth=3
	ld.bu	$a2, $s4, 43
	andi	$a2, $a2, 1
	bnez	$a2, .LBB17_33
# %bb.32:                               # %lor.lhs.false69.us
                                        #   in Loop: Header=BB17_25 Depth=3
	beqz	$fp, .LBB17_24
.LBB17_33:                              # %land.lhs.true76.us
                                        #   in Loop: Header=BB17_25 Depth=3
	bne	$a1, $a6, .LBB17_37
# %bb.34:                               # %land.lhs.true76.us
                                        #   in Loop: Header=BB17_25 Depth=3
	ld.w	$a1, $s2, 0
	bnez	$a1, .LBB17_37
# %bb.35:                               # %lor.lhs.false86.us
                                        #   in Loop: Header=BB17_25 Depth=3
	ld.hu	$a0, $a0, 41
	andi	$a0, $a0, 256
	beqz	$a0, .LBB17_37
# %bb.36:                               # %lor.lhs.false86.us
                                        #   in Loop: Header=BB17_25 Depth=3
	beqz	$fp, .LBB17_24
.LBB17_37:                              # %land.lhs.true95.us
                                        #   in Loop: Header=BB17_25 Depth=3
	move	$a0, $s8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB17_53
# %bb.38:                               # %lor.lhs.false102.us
                                        #   in Loop: Header=BB17_25 Depth=3
	move	$a0, $s8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 145
	ori	$a6, $zero, 146
	bnez	$a0, .LBB17_24
	b	.LBB17_53
	.p2align	4, , 16
.LBB17_39:                              # %for.inc109
                                        #   in Loop: Header=BB17_40 Depth=3
	ld.d	$a0, $a0, 8
	beq	$a0, $s6, .LBB17_21
.LBB17_40:                              # %for.cond41.preheader
                                        #   Parent Loop BB17_13 Depth=1
                                        #     Parent Loop BB17_22 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_41 Depth 4
	move	$s4, $a0
	.p2align	4, , 16
.LBB17_41:                              # %for.cond41
                                        #   Parent Loop BB17_13 Depth=1
                                        #     Parent Loop BB17_22 Depth=2
                                        #       Parent Loop BB17_40 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$s4, $s4, 16
	ld.bu	$a1, $s4, 32
	beqz	$a1, .LBB17_41
# %bb.42:                               # %for.end52
                                        #   in Loop: Header=BB17_40 Depth=3
	ld.d	$a2, $s4, 48
	bne	$a2, $s0, .LBB17_39
# %bb.43:                               # %land.lhs.true
                                        #   in Loop: Header=BB17_40 Depth=3
	beq	$a1, $a5, .LBB17_45
# %bb.44:                               # %land.lhs.true
                                        #   in Loop: Header=BB17_40 Depth=3
	ld.w	$a3, $s1, 0
	bnez	$a3, .LBB17_39
.LBB17_45:                              # %land.lhs.true65
                                        #   in Loop: Header=BB17_40 Depth=3
	ld.w	$a3, $s3, 0
	beqz	$a3, .LBB17_48
# %bb.46:                               # %lor.lhs.false69
                                        #   in Loop: Header=BB17_40 Depth=3
	ld.bu	$a3, $s4, 43
	andi	$a3, $a3, 1
	bnez	$a3, .LBB17_48
# %bb.47:                               # %lor.lhs.false69
                                        #   in Loop: Header=BB17_40 Depth=3
	beqz	$fp, .LBB17_39
.LBB17_48:                              # %land.lhs.true76
                                        #   in Loop: Header=BB17_40 Depth=3
	bne	$a1, $a6, .LBB17_53
# %bb.49:                               # %land.lhs.true76
                                        #   in Loop: Header=BB17_40 Depth=3
	ld.w	$a1, $s2, 0
	bnez	$a1, .LBB17_53
# %bb.50:                               # %lor.lhs.false86
                                        #   in Loop: Header=BB17_40 Depth=3
	ld.hu	$a1, $a2, 41
	andi	$a1, $a1, 256
	beqz	$a1, .LBB17_53
# %bb.51:                               # %lor.lhs.false86
                                        #   in Loop: Header=BB17_40 Depth=3
	beqz	$fp, .LBB17_39
	b	.LBB17_53
.LBB17_52:
	move	$s4, $zero
.LBB17_53:                              # %cleanup
	move	$a0, $s4
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end17:
	.size	SearchSym, .Lfunc_end17-SearchSym
                                        # -- End function
	.globl	SymName                         # -- Begin function SymName
	.p2align	5
	.type	SymName,@function
SymName:                                # @SymName
# %bb.0:                                # %entry
	beqz	$a0, .LBB18_6
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$fp, $a0, 24
	.p2align	4, , 16
.LBB18_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 0
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB18_2
# %bb.3:                                # %for.cond
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB18_5
# %bb.4:                                # %if.then18
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB18_5:                               # %if.end19
	addi.d	$a0, $fp, 64
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB18_6:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ret
.Lfunc_end18:
	.size	SymName, .Lfunc_end18-SymName
                                        # -- End function
	.globl	FullSymName                     # -- Begin function FullSymName
	.p2align	5
	.type	FullSymName,@function
FullSymName:                            # @FullSymName
# %bb.0:                                # %entry
	beqz	$a0, .LBB19_17
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a0, $a0, 48
	pcalau12i	$s8, %pc_hi20(FullSymName.sname)
	bnez	$a0, .LBB19_3
# %bb.2:                                # %if.end3
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a5, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	beqz	$a0, .LBB19_18
.LBB19_3:                               # %for.body.preheader
	move	$s5, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$s4, $a1, %pc_lo12(.L.str.25)
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 19
	.p2align	4, , 16
.LBB19_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$fp, $a1, 0
	move	$fp, $a0
	ld.d	$a0, $a0, 48
	move	$a3, $s5
	addi.d	$s5, $s5, 1
	beqz	$a0, .LBB19_6
# %bb.5:                                # %for.body
                                        #   in Loop: Header=BB19_4 Depth=1
	addi.d	$a1, $a1, 8
	bltu	$a3, $a2, .LBB19_4
.LBB19_6:                               # %for.end
	pcalau12i	$a0, %pc_hi20(FullSymName.buff)
	ori	$a1, $zero, 1
	st.b	$zero, $a0, %pc_lo12(FullSymName.buff)
	beq	$s5, $a1, .LBB19_19
# %bb.7:                                # %for.body11.lr.ph
	addi.d	$a0, $fp, 32
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(FullSymName.buff)
	addi.d	$s2, $a0, %pc_lo12(FullSymName.buff)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$s1, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB19_9
	.p2align	4, , 16
.LBB19_8:                               # %if.end22
                                        #   in Loop: Header=BB19_9 Depth=1
	move	$a0, $s2
	move	$a1, $s6
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	bgeu	$s1, $s3, .LBB19_19
.LBB19_9:                               # %for.body11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_11 Depth 2
	move	$s3, $s5
	addi.d	$s5, $s5, -1
	slli.d	$a0, $s5, 3
	addi.d	$a1, $sp, 56
	ldx.d	$a0, $a0, $a1
	move	$s6, $s4
	beqz	$a0, .LBB19_15
# %bb.10:                               # %if.end.i
                                        #   in Loop: Header=BB19_9 Depth=1
	ld.d	$s6, $a0, 24
	.p2align	4, , 16
.LBB19_11:                              # %for.cond.i
                                        #   Parent Loop BB19_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s6, $s6, 0
	ld.bu	$a0, $s6, 32
	beqz	$a0, .LBB19_11
# %bb.12:                               # %for.cond.i
                                        #   in Loop: Header=BB19_9 Depth=1
	addi.d	$a0, $a0, -11
	bltu	$a0, $s1, .LBB19_14
# %bb.13:                               # %if.then18.i
                                        #   in Loop: Header=BB19_9 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB19_14:                              # %if.end19.i
                                        #   in Loop: Header=BB19_9 Depth=1
	addi.d	$s6, $s6, 64
.LBB19_15:                              # %SymName.exit
                                        #   in Loop: Header=BB19_9 Depth=1
	st.d	$s6, $s8, %pc_lo12(FullSymName.sname)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s7, $a0, $s7
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s7, $a0
	ori	$a1, $zero, 512
	bltu	$a0, $a1, .LBB19_8
# %bb.16:                               # %if.then20
                                        #   in Loop: Header=BB19_9 Depth=1
	ori	$a0, $zero, 29
	ori	$a1, $zero, 8
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s8, %pc_lo12(FullSymName.sname)
	b	.LBB19_8
.LBB19_17:                              # %cleanup
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ret
.LBB19_18:                              # %for.end.thread
	pcalau12i	$a0, %pc_hi20(FullSymName.buff)
	st.b	$zero, $a0, %pc_lo12(FullSymName.buff)
.LBB19_19:                              # %for.end27
	ld.d	$a0, $sp, 56
	beqz	$a0, .LBB19_25
# %bb.20:                               # %if.end.i15
	ld.d	$s0, $a0, 24
	.p2align	4, , 16
.LBB19_21:                              # %for.cond.i17
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB19_21
# %bb.22:                               # %for.cond.i17
	addi.d	$a0, $a0, -11
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB19_24
# %bb.23:                               # %if.then18.i24
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB19_24:                              # %if.end19.i21
	addi.d	$s0, $s0, 64
	b	.LBB19_26
.LBB19_25:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s0, $a0, %pc_lo12(.L.str.25)
.LBB19_26:                              # %SymName.exit26
	st.d	$s0, $s8, %pc_lo12(FullSymName.sname)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(FullSymName.buff)
	addi.d	$a0, $a0, %pc_lo12(FullSymName.buff)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s1
	ori	$a1, $zero, 512
	bltu	$a0, $a1, .LBB19_28
# %bb.27:                               # %if.then34
	addi.d	$a4, $fp, 32
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a2, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 9
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s8, %pc_lo12(FullSymName.sname)
.LBB19_28:                              # %if.end37
	pcalau12i	$a0, %pc_hi20(FullSymName.buff)
	addi.d	$a0, $a0, %pc_lo12(FullSymName.buff)
	move	$a1, $s0
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	pcaddu18i	$t8, %call36(strcat)
	jr	$t8
.Lfunc_end19:
	.size	FullSymName, .Lfunc_end19-FullSymName
                                        # -- End function
	.globl	ChildSym                        # -- Begin function ChildSym
	.p2align	5
	.type	ChildSym,@function
ChildSym:                               # @ChildSym
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a3, $a0, 8
	bne	$a3, $a0, .LBB20_3
# %bb.1:                                # %for.end21.thread
	addi.d	$fp, $a0, 32
	b	.LBB20_8
	.p2align	4, , 16
.LBB20_2:                               # %for.inc17
                                        #   in Loop: Header=BB20_3 Depth=1
	ld.d	$a3, $a3, 8
	beq	$a3, $a0, .LBB20_7
.LBB20_3:                               # %for.cond3.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_4 Depth 2
	move	$a2, $a3
	.p2align	4, , 16
.LBB20_4:                               # %for.cond3
                                        #   Parent Loop BB20_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a2, 16
	ld.bu	$a4, $a2, 32
	beqz	$a4, .LBB20_4
# %bb.5:                                # %for.end
                                        #   in Loop: Header=BB20_3 Depth=1
	bne	$a1, $a4, .LBB20_2
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB20_3 Depth=1
	ld.d	$a4, $a2, 48
	bne	$a4, $a0, .LBB20_2
	b	.LBB20_14
.LBB20_7:                               # %for.end21
	addi.d	$fp, $a0, 32
	beqz	$a0, .LBB20_15
.LBB20_8:                               # %if.end.i
	ld.d	$s0, $a0, 24
	.p2align	4, , 16
.LBB20_9:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	ld.bu	$a0, $s0, 32
	beqz	$a0, .LBB20_9
# %bb.10:                               # %for.cond.i
	addi.d	$a0, $a0, -11
	ori	$a2, $zero, 2
	bltu	$a0, $a2, .LBB20_12
# %bb.11:                               # %if.then18.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	move	$s1, $a1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a1, $s1
.LBB20_12:                              # %if.end19.i
	addi.d	$s0, $s0, 64
.LBB20_13:                              # %SymName.exit
	move	$a0, $a1
	pcaddu18i	$ra, %call36(Image)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a2, $a0, %pc_lo12(.L.str.30)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 10
	ori	$a3, $zero, 1
	move	$a4, $fp
	move	$a5, $s0
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $zero
.LBB20_14:                              # %cleanup
	move	$a0, $a2
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB20_15:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s0, $a0, %pc_lo12(.L.str.25)
	b	.LBB20_13
.Lfunc_end20:
	.size	ChildSym, .Lfunc_end20-ChildSym
                                        # -- End function
	.globl	ChildSymWithCode                # -- Begin function ChildSymWithCode
	.p2align	5
	.type	ChildSymWithCode,@function
ChildSymWithCode:                       # @ChildSymWithCode
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a3, $a0, 80
	ld.d	$a4, $a3, 8
	beq	$a4, $a3, .LBB21_10
# %bb.1:
	ori	$a5, $zero, 145
	b	.LBB21_3
	.p2align	4, , 16
.LBB21_2:                               # %for.inc24
                                        #   in Loop: Header=BB21_3 Depth=1
	ld.d	$a4, $a4, 8
	beq	$a4, $a3, .LBB21_8
.LBB21_3:                               # %for.cond4.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_4 Depth 2
	move	$a2, $a4
	.p2align	4, , 16
.LBB21_4:                               # %for.cond4
                                        #   Parent Loop BB21_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $a2, 16
	ld.bu	$a6, $a2, 32
	beqz	$a6, .LBB21_4
# %bb.5:                                # %for.cond4
                                        #   in Loop: Header=BB21_3 Depth=1
	bne	$a6, $a5, .LBB21_2
# %bb.6:                                # %land.lhs.true
                                        #   in Loop: Header=BB21_3 Depth=1
	ld.d	$a6, $a2, 48
	bne	$a6, $a3, .LBB21_2
# %bb.7:                                # %land.lhs.true19
                                        #   in Loop: Header=BB21_3 Depth=1
	ld.bu	$a6, $a2, 125
	bne	$a6, $a1, .LBB21_2
	b	.LBB21_17
.LBB21_8:                               # %for.end28
	addi.d	$a4, $a0, 32
	bnez	$a3, .LBB21_11
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	b	.LBB21_16
.LBB21_10:                              # %for.end28.thread
	addi.d	$a4, $a0, 32
.LBB21_11:                              # %if.end.i
	ld.d	$fp, $a3, 24
	.p2align	4, , 16
.LBB21_12:                              # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $fp, 0
	ld.bu	$a0, $fp, 32
	beqz	$a0, .LBB21_12
# %bb.13:                               # %for.cond.i
	addi.d	$a0, $a0, -11
	ori	$a2, $zero, 2
	bltu	$a0, $a2, .LBB21_15
# %bb.14:                               # %if.then18.i
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a6, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a5, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 1
	move	$s0, $a1
	ori	$a1, $zero, 2
	move	$a3, $zero
	move	$s1, $a4
	move	$a4, $a6
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a4, $s1
	move	$a1, $s0
.LBB21_15:                              # %if.end19.i
	addi.d	$a5, $fp, 64
.LBB21_16:                              # %SymName.exit
	ext.w.b	$a6, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a2, $a0, %pc_lo12(.L.str.31)
	ori	$a0, $zero, 29
	ori	$a1, $zero, 11
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a2, $zero
.LBB21_17:                              # %cleanup
	move	$a0, $a2
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end21:
	.size	ChildSymWithCode, .Lfunc_end21-ChildSymWithCode
                                        # -- End function
	.type	scope_top,@object               # @scope_top
	.local	scope_top
	.comm	scope_top,4,4
	.type	suppress_scope,@object          # @suppress_scope
	.local	suppress_scope
	.comm	suppress_scope,1,4
	.type	suppress_visible,@object        # @suppress_visible
	.local	suppress_visible
	.comm	suppress_visible,4,4
	.type	symtab,@object                  # @symtab
	.local	symtab
	.comm	symtab,28528,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"PushScope: suppress_scope!"
	.size	.L.str.1, 27

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"scope depth limit exceeded"
	.size	.L.str.2, 27

	.type	scope,@object                   # @scope
	.local	scope
	.comm	scope,2400,8
	.type	npars_only,@object              # @npars_only
	.local	npars_only
	.comm	npars_only,1200,4
	.type	vis_only,@object                # @vis_only
	.local	vis_only
	.comm	vis_only,1200,4
	.type	body_ok,@object                 # @body_ok
	.local	body_ok
	.comm	body_ok,1200,4
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"PopScope: tried to pop empty scope stack"
	.size	.L.str.3, 41

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"PopScope: suppress_scope!"
	.size	.L.str.4, 26

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"word is too long"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"LoadScopeSnapshot: type(ss)!"
	.size	.L.str.6, 29

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"LoadScopeSnapshot: type(x)!"
	.size	.L.str.7, 28

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"invalid symbol name %s"
	.size	.L.str.8, 23

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"@Target"
	.size	.L.str.9, 8

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"@Tag"
	.size	.L.str.10, 5

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"@Optimize"
	.size	.L.str.11, 10

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"@Key"
	.size	.L.str.12, 5

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"@Merge"
	.size	.L.str.13, 7

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"@Enclose"
	.size	.L.str.14, 9

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"@Filter"
	.size	.L.str.15, 8

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"%s must be a local definition"
	.size	.L.str.16, 30

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%s must lie within a symbol with a right parameter"
	.size	.L.str.17, 51

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"a body parameter may not be named %s"
	.size	.L.str.18, 37

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"the right parameter of a galley may not be called %s"
	.size	.L.str.19, 53

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"symbol %s previously defined at%s"
	.size	.L.str.20, 34

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"symbol %s previously defined here"
	.size	.L.str.21, 34

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"symbol name %s previously defined at%s"
	.size	.L.str.22, 39

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"@Include"
	.size	.L.str.23, 9

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"@SysInclude"
	.size	.L.str.24, 12

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"<nilobj>"
	.size	.L.str.25, 9

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"SymName: !is_word(type(p))!"
	.size	.L.str.26, 28

	.type	FullSymName.buff,@object        # @FullSymName.buff
	.local	FullSymName.buff
	.comm	FullSymName.buff,512,1
	.type	FullSymName.sname,@object       # @FullSymName.sname
	.local	FullSymName.sname
	.comm	FullSymName.sname,8,8
	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"FullSymName: enclosing(x) == nilobj!"
	.size	.L.str.27, 37

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"full name of symbol is too long"
	.size	.L.str.29, 32

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"symbol %s has missing %s"
	.size	.L.str.30, 25

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"symbol %s has erroneous code %c (database out of date?)"
	.size	.L.str.31, 56

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym symtab
	.addrsig_sym FullSymName.buff
