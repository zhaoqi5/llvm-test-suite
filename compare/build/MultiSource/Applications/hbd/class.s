	.file	"class.cpp"
	.text
	.globl	_ZN9ClassfileC2EiPPc            # -- Begin function _ZN9ClassfileC2EiPPc
	.p2align	2
	.type	_ZN9ClassfileC2EiPPc,@function
_ZN9ClassfileC2EiPPc:                   # @_ZN9ClassfileC2EiPPc
	.cfi_startproc
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
	pcalau12i	$a3, %got_pc_hi20(stdout)
	ld.d	$a3, $a3, %got_pc_lo12(stdout)
	pcalau12i	$a4, %got_pc_hi20(stdin)
	ld.d	$a4, $a4, %got_pc_lo12(stdin)
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$a0, $a3, 0
	st.h	$zero, $fp, 48
	ld.d	$a1, $a4, 0
	st.d	$zero, $fp, 160
	st.d	$a0, $fp, 8
	ld.d	$s1, $a2, 0
	st.d	$a1, $fp, 0
	addi.d	$s5, $a2, 8
	pcalau12i	$a0, %pc_hi20(progname)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $a0, %pc_lo12(progname)
	st.w	$zero, $fp, 24
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $a0
	addi.d	$a0, $a0, -3
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s0, -1
	beqz	$a0, .LBB0_10
# %bb.1:                                # %for.cond44.preheader
	beqz	$a1, .LBB0_35
# %bb.2:                                # %land.rhs47.preheader
	ld.d	$s2, $s5, 0
	ld.bu	$a0, $s2, 0
	ori	$s6, $zero, 45
	bne	$a0, $s6, .LBB0_19
# %bb.3:                                # %for.body51.preheader
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$s7, $zero, 68
	ori	$a2, $zero, 1
	ori	$s4, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a3, $a0, %got_pc_lo12(stderr)
	ori	$s3, $zero, 79
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	.p2align	4, , 16
.LBB0_4:                                # %for.body51
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $fp, 24
	ld.b	$a0, $s2, 1
	ld.d	$a4, $s1, 0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a4, $a0
	beq	$a0, $s7, .LBB0_7
# %bb.5:                                # %for.body51
                                        #   in Loop: Header=BB0_4 Depth=1
	bne	$a0, $s3, .LBB0_9
# %bb.6:                                # %sw.bb56
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$s4, $fp, 24
	bne	$s0, $s4, .LBB0_8
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_7:                                # %sw.bb59
                                        #   in Loop: Header=BB0_4 Depth=1
	st.w	$a2, $fp, 24
	beq	$s0, $s4, .LBB0_35
.LBB0_8:                                # %land.rhs47
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$s2, $s5, 8
	ld.bu	$a0, $s2, 0
	addi.d	$s8, $s5, 8
	addi.w	$s0, $s0, -1
	move	$s5, $s8
	beq	$a0, $s6, .LBB0_4
	b	.LBB0_20
.LBB0_9:                                # %sw.default62
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $a3, 0
	ld.d	$a2, $s5, 8
	move	$s2, $a3
	move	$s8, $a1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(progname)
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(_Z10fatalerroriz)
	jirl	$ra, $ra, 0
	move	$a1, $s8
	move	$a3, $s2
	ori	$a2, $zero, 1
	bne	$s0, $s4, .LBB0_8
	b	.LBB0_35
.LBB0_10:                               # %for.cond.preheader
	beqz	$a1, .LBB0_27
# %bb.11:                               # %land.rhs.preheader
	ori	$a0, $zero, 2
	sub.w	$s3, $a0, $s0
	ori	$s6, $zero, 45
	ori	$s7, $zero, 73
	ori	$s4, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s8, $zero, 68
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s0, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_12:                               # %sw.bb9
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a0, $s1, 2
	st.d	$a0, $fp, 160
.LBB0_13:                               # %for.inc
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.w	$s3, $s3, 1
	addi.d	$s5, $s5, 8
	beq	$s3, $s4, .LBB0_27
.LBB0_14:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s5, 0
	ld.bu	$a0, $s1, 0
	bne	$a0, $s6, .LBB0_26
# %bb.15:                               # %for.body
                                        #   in Loop: Header=BB0_14 Depth=1
	st.w	$zero, $fp, 24
	ld.b	$s2, $s1, 1
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s2, 2
	ldx.w	$a0, $a0, $a1
	beq	$a0, $s7, .LBB0_12
# %bb.16:                               # %for.body
                                        #   in Loop: Header=BB0_14 Depth=1
	bne	$a0, $s8, .LBB0_18
# %bb.17:                               # %sw.bb
                                        #   in Loop: Header=BB0_14 Depth=1
	st.w	$s4, $fp, 24
	b	.LBB0_13
.LBB0_18:                               # %sw.default
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s5, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(progname)
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(_Z10fatalerroriz)
	jirl	$ra, $ra, 0
	b	.LBB0_13
.LBB0_19:
	move	$s8, $s5
.LBB0_20:                               # %for.end68
	ori	$a0, $zero, 2
	beq	$s0, $a0, .LBB0_24
# %bb.21:                               # %for.end68
	ori	$a0, $zero, 3
	bne	$s0, $a0, .LBB0_35
# %bb.22:                               # %sw.bb69
	ld.d	$a0, $s8, 8
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB0_33
# %bb.23:                               # %sw.bb69.sw.bb78_crit_edge
	ld.d	$s2, $s8, 0
.LBB0_24:                               # %sw.bb78
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	bnez	$a0, .LBB0_36
# %bb.25:                               # %if.then83
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s8, 0
	b	.LBB0_34
.LBB0_26:                               # %for.end
	beqz	$s3, .LBB0_30
.LBB0_27:                               # %defaultcase_hbt
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(progname)
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(_Z10fatalerroriz)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 160
	bnez	$a0, .LBB0_29
.LBB0_28:                               # %if.then42
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(progname)
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(_Z10fatalerroriz)
	jirl	$ra, $ra, 0
.LBB0_29:                               # %if.end43
	st.w	$zero, $fp, 20
	b	.LBB0_36
.LBB0_30:                               # %sw.bb15
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 5
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ld.w	$a2, $a1, 0
	ld.b	$a1, $a1, 4
	add.d	$a3, $s0, $a0
	stx.w	$a2, $s0, $a0
	st.b	$a1, $a3, 4
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(rename)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	beqz	$a0, .LBB0_37
# %bb.31:                               # %if.end
	ld.d	$a0, $s5, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB0_38
# %bb.32:                               # %delete.notnull
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 160
	bnez	$a0, .LBB0_29
	b	.LBB0_28
.LBB0_33:                               # %if.then74
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s8, 8
.LBB0_34:                               # %defaultcase_hbd
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_35:                               # %defaultcase_hbd
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a1, $a0, %pc_lo12(progname)
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(_Z10fatalerroriz)
	jirl	$ra, $ra, 0
.LBB0_36:                               # %if.end89
	st.w	$zero, $fp, 16
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
.LBB0_37:                               # %if.then27
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s5, 0
	b	.LBB0_39
.LBB0_38:                               # %if.then34
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s5, 8
.LBB0_39:                               # %defaultcase_hbt
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_27
.Lfunc_end0:
	.size	_ZN9ClassfileC2EiPPc, .Lfunc_end0-_ZN9ClassfileC2EiPPc
	.cfi_endproc
                                        # -- End function
	.globl	_ZN9Classfile4readEv            # -- Begin function _ZN9Classfile4readEv
	.p2align	2
	.type	_ZN9Classfile4readEv,@function
_ZN9Classfile4readEv:                   # @_ZN9Classfile4readEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
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
	move	$fp, $a0
	ld.d	$s0, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	andi	$a0, $s1, 255
	bstrins.d	$s2, $a0, 63, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a1, $s1, 255
	bstrins.d	$a0, $a1, 63, 8
	slli.d	$a1, $s2, 16
	or	$a0, $a0, $a1
	lu12i.w	$a1, -217109
	ori	$a1, $a1, 2750
	lu32i.d	$a1, 0
	beq	$a0, $a1, .LBB1_2
# %bb.1:                                # %if.then
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(_Z10fatalerroriz)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %if.end
	addi.d	$a0, $fp, 28
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN12ClassVersion4readEP9Classfile)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	ld.hu	$a2, $fp, 30
	ld.hu	$a3, $fp, 28
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $fp, 144
	st.h	$zero, $fp, 144
	addi.d	$a0, $fp, 32
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	move	$a1, $fp
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN9ConstPool4readEP9ClassfilePt)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	bstrins.d	$a0, $s1, 63, 8
	st.h	$a0, $fp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	bstrins.d	$a0, $s1, 63, 8
	st.h	$a0, $fp, 50
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	bstrins.d	$a0, $s1, 63, 8
	st.h	$a0, $fp, 72
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bstrins.d	$s1, $s3, 63, 8
	st.h	$s1, $fp, 88
	bstrpick.d	$s0, $s1, 15, 0
	slli.d	$a0, $s0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 96
	beqz	$s0, .LBB1_5
# %bb.3:                                # %for.body.preheader
	move	$s2, $zero
	.p2align	4, , 16
.LBB1_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $fp, 0
	addi.d	$s1, $s1, -1
	bstrpick.d	$s4, $s1, 15, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 96
	bstrins.d	$a0, $s3, 63, 8
	stx.h	$a0, $a1, $s2
	addi.d	$s2, $s2, 2
	bnez	$s4, .LBB1_4
.LBB1_5:                                # %for.end
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bstrins.d	$s1, $s3, 63, 8
	st.h	$s1, $fp, 104
	bstrpick.d	$s0, $s1, 15, 0
	slli.d	$a0, $s0, 3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 112
	beqz	$s0, .LBB1_15
# %bb.6:                                # %invoke.cont.lr.ph
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s3, $a0, %pc_lo12(.L.str.7)
	ori	$s4, $zero, 1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %for.cond43.loopexit
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s1, $s1, -1
	bstrpick.d	$a0, $s1, 15, 0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	beqz	$a0, .LBB1_15
.LBB1_8:                                # %invoke.cont
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #       Child Loop BB1_14 Depth 3
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 112
	move	$s5, $a0
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	stx.d	$s5, $a1, $a0
	ld.d	$s0, $fp, 0
	st.h	$zero, $s5, 0
	st.w	$zero, $s5, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	bstrins.d	$a0, $s6, 63, 8
	st.h	$a0, $s5, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	andi	$a0, $a0, 255
	slli.d	$a2, $s6, 12
	lu12i.w	$s1, 255
	and	$a2, $a2, $s1
	add.d	$a1, $a1, $a2
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a0, $a0, 8
	ld.d	$s0, $fp, 0
	st.d	$a0, $s5, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	andi	$a0, $a0, 255
	slli.d	$a2, $s6, 12
	and	$a2, $a2, $s1
	add.d	$a1, $a1, $a2
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a0, $a0, 8
	ld.d	$s0, $fp, 0
	st.d	$a0, $s5, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	andi	$a0, $s7, 255
	bstrins.d	$s6, $a0, 63, 8
	beqz	$s6, .LBB1_7
	.p2align	4, , 16
.LBB1_9:                                # %for.body76
                                        #   Parent Loop BB1_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_14 Depth 3
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	andi	$s1, $a0, 255
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	andi	$a0, $s8, 255
	bstrins.d	$s2, $a0, 63, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	andi	$a2, $s8, 255
	slli.d	$a3, $s7, 12
	lu12i.w	$a4, 255
	and	$a3, $a3, $a4
	add.d	$a1, $a1, $a3
	alsl.d	$a1, $s1, $a1, 4
	ld.d	$s7, $a1, 8
	bstrins.d	$a0, $a2, 63, 8
	slli.d	$a1, $s2, 16
	or	$s0, $a0, $a1
	move	$a0, $s7
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_13
# %bb.10:                               # %if.then87
                                        #   in Loop: Header=BB1_9 Depth=2
	ori	$a0, $zero, 2
	bne	$s0, $a0, .LBB1_151
# %bb.11:                               # %if.else
                                        #   in Loop: Header=BB1_9 Depth=2
	ld.d	$s0, $fp, 0
	st.w	$s4, $s5, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bstrins.d	$a0, $s2, 63, 8
	st.h	$a0, $s5, 28
.LBB1_12:                               # %if.end107
                                        #   in Loop: Header=BB1_9 Depth=2
	addi.w	$s6, $s6, -1
	bnez	$s6, .LBB1_9
	b	.LBB1_7
.LBB1_13:                               # %if.else96
                                        #   in Loop: Header=BB1_9 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	move	$a2, $s7
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB1_12
	.p2align	4, , 16
.LBB1_14:                               # %for.body102
                                        #   Parent Loop BB1_8 Depth=1
                                        #     Parent Loop BB1_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $fp, 0
	addi.d	$s0, $s0, -1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB1_14
	b	.LBB1_12
.LBB1_15:                               # %for.end109
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bstrins.d	$s0, $s1, 63, 8
	st.h	$s0, $fp, 120
	bstrpick.d	$a0, $s0, 15, 0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.h	$a1, $fp, 144
	st.d	$a0, $fp, 128
	add.d	$a0, $a1, $s0
	st.h	$a0, $fp, 144
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, 50
	ld.d	$s3, $fp, 40
	st.d	$a0, $fp, 152
	alsl.d	$s0, $a1, $s3, 4
	ld.d	$a0, $s0, 8
	alsl.d	$a0, $a0, $s3, 4
	ld.d	$s1, $a0, 8
	ori	$a1, $zero, 47
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_22
# %bb.16:                               # %while.body.preheader
	addi.d	$s4, $s0, 8
	.p2align	4, , 16
.LBB1_17:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	move	$s0, $a0
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 47
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_17
# %bb.18:                               # %while.end
	sub.w	$s0, $s0, $s1
	slli.d	$a0, $s0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$a0, $fp, 56
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s2, $s0
	add.d	$a0, $s1, $s0
	addi.d	$s0, $a0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	ld.d	$a1, $s4, 0
	alsl.d	$a1, $a1, $s3, 4
	st.d	$s0, $a1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 47
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_21
# %bb.19:                               # %while.body176.preheader
	ori	$s1, $zero, 46
	.p2align	4, , 16
.LBB1_20:                               # %while.body176
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a2, $a0, 1
	st.b	$s1, $a0, 0
	ori	$a1, $zero, 47
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_20
.LBB1_21:                               # %while.end177
	addi.w	$a0, $s0, 0
	b	.LBB1_23
.LBB1_22:                               # %if.else178
	st.d	$zero, $fp, 56
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 64
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB1_23:                               # %if.end189
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.h	$a0, $a0, 0
	addi.d	$a0, $a0, -1
	ext.w.h	$a0, $a0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	bltz	$a0, .LBB1_80
# %bb.24:                               # %for.body198.lr.ph
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	ori	$s8, $zero, 1
	ori	$s7, $zero, 76
	ori	$s1, $zero, 59
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ori	$s2, $zero, 46
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	b	.LBB1_27
	.p2align	4, , 16
.LBB1_25:                               #   in Loop: Header=BB1_27 Depth=1
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
.LBB1_26:                               # %if.end374
                                        #   in Loop: Header=BB1_27 Depth=1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a0, $a1, -1
	blez	$a1, .LBB1_81
.LBB1_27:                               # %for.body198
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_31 Depth 2
                                        #     Child Loop BB1_44 Depth 2
                                        #     Child Loop BB1_48 Depth 2
                                        #       Child Loop BB1_54 Depth 3
                                        #       Child Loop BB1_64 Depth 3
                                        #       Child Loop BB1_68 Depth 3
                                        #       Child Loop BB1_76 Depth 3
	ld.d	$a1, $fp, 40
	move	$s4, $a0
	slli.d	$a0, $a0, 4
	ldx.bu	$a2, $a1, $a0
	alsl.d	$a0, $s4, $a1, 4
	ori	$a3, $zero, 12
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	beq	$a2, $a3, .LBB1_34
# %bb.28:                               # %for.body198
                                        #   in Loop: Header=BB1_27 Depth=1
	ori	$a3, $zero, 7
	bne	$a2, $a3, .LBB1_26
# %bb.29:                               # %if.then203
                                        #   in Loop: Header=BB1_27 Depth=1
	ld.d	$a0, $a0, 8
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$s3, $a0, 8
	addi.d	$s0, $a0, 8
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 10
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_36
# %bb.30:                               # %while.cond211.preheader
                                        #   in Loop: Header=BB1_27 Depth=1
	ori	$a1, $zero, 47
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_33
	.p2align	4, , 16
.LBB1_31:                               # %while.body214
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a2, $a0, 1
	st.b	$s2, $a0, 0
	ori	$a1, $zero, 47
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_31
# %bb.32:                               # %if.end217.loopexit
                                        #   in Loop: Header=BB1_27 Depth=1
	ld.d	$s3, $s0, 0
.LBB1_33:                               # %if.end217
                                        #   in Loop: Header=BB1_27 Depth=1
	ld.d	$a1, $fp, 56
	bnez	$a1, .LBB1_37
	b	.LBB1_40
	.p2align	4, , 16
.LBB1_34:                               # %if.then263
                                        #   in Loop: Header=BB1_27 Depth=1
	ld.d	$a0, $a0, 8
	ld.hu	$a0, $a0, 2
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$s3, $a0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	beqz	$a0, .LBB1_46
# %bb.35:                               # %if.end269
                                        #   in Loop: Header=BB1_27 Depth=1
	ld.bu	$a0, $s6, 0
	st.b	$a0, $s3, 0
	bnez	$a0, .LBB1_48
	b	.LBB1_26
.LBB1_36:                               # %if.then208
                                        #   in Loop: Header=BB1_27 Depth=1
	addi.d	$s3, $s3, 10
	st.d	$s3, $s0, 0
	ld.d	$a1, $fp, 56
	beqz	$a1, .LBB1_40
.LBB1_37:                               # %land.lhs.true220
                                        #   in Loop: Header=BB1_27 Depth=1
	move	$a0, $s3
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_39
# %bb.38:                               # %if.then225
                                        #   in Loop: Header=BB1_27 Depth=1
	add.d	$a0, $s3, $s2
	addi.d	$s3, $a0, 1
	st.d	$s3, $s0, 0
.LBB1_39:                               # %if.end229
                                        #   in Loop: Header=BB1_27 Depth=1
	ori	$s2, $zero, 46
.LBB1_40:                               # %if.end229
                                        #   in Loop: Header=BB1_27 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$s4, $a1, 15, 0
	beq	$s4, $a0, .LBB1_25
# %bb.41:                               # %land.lhs.true234
                                        #   in Loop: Header=BB1_27 Depth=1
	ori	$a1, $zero, 46
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_25
# %bb.42:                               # %if.then237
                                        #   in Loop: Header=BB1_27 Depth=1
	ld.d	$a1, $fp, 152
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	addi.d	$s2, $a2, 1
	bstrpick.d	$a2, $s2, 15, 0
	slli.d	$a3, $s4, 3
	stx.d	$s3, $a1, $a3
	ori	$a3, $zero, 2
	bltu	$a2, $a3, .LBB1_79
# %bb.43:                               # %for.body246.preheader
                                        #   in Loop: Header=BB1_27 Depth=1
	move	$s4, $a0
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 0
	add.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s5, $a0, 1
	alsl.d	$s6, $a0, $a1, 3
	.p2align	4, , 16
.LBB1_44:                               # %for.body246
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_77
# %bb.45:                               # %for.cond243
                                        #   in Loop: Header=BB1_44 Depth=2
	addi.d	$s5, $s5, -1
	addi.d	$s6, $s6, -8
	bge	$s5, $s8, .LBB1_44
	b	.LBB1_78
.LBB1_46:                               # %if.then268
                                        #   in Loop: Header=BB1_27 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(_Z10fatalerroriz)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 0
	st.b	$a0, $s3, 0
	bnez	$a0, .LBB1_48
	b	.LBB1_26
	.p2align	4, , 16
.LBB1_47:                               # %if.end371
                                        #   in Loop: Header=BB1_48 Depth=2
	ld.bu	$a0, $s4, 0
	st.b	$a0, $s3, 0
	move	$s6, $s4
	beqz	$a0, .LBB1_26
.LBB1_48:                               # %while.body275
                                        #   Parent Loop BB1_27 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_54 Depth 3
                                        #       Child Loop BB1_64 Depth 3
                                        #       Child Loop BB1_68 Depth 3
                                        #       Child Loop BB1_76 Depth 3
	addi.d	$s4, $s6, 1
	addi.d	$s3, $s3, 1
	bne	$a0, $s7, .LBB1_47
# %bb.49:                               # %if.then279
                                        #   in Loop: Header=BB1_48 Depth=2
	ori	$a1, $zero, 59
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bnez	$a0, .LBB1_51
# %bb.50:                               # %if.then282
                                        #   in Loop: Header=BB1_48 Depth=2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z10fatalerroriz)
	jirl	$ra, $ra, 0
.LBB1_51:                               # %if.end283
                                        #   in Loop: Header=BB1_48 Depth=2
	ori	$a2, $zero, 10
	move	$a0, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_57
# %bb.52:                               # %while.cond289.preheader
                                        #   in Loop: Header=BB1_48 Depth=2
	ori	$a1, $zero, 47
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_56
# %bb.53:                               # %while.cond289.preheader
                                        #   in Loop: Header=BB1_48 Depth=2
	bgeu	$a0, $s5, .LBB1_56
	.p2align	4, , 16
.LBB1_54:                               # %while.body293
                                        #   Parent Loop BB1_27 Depth=1
                                        #     Parent Loop BB1_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a2, $a0, 1
	st.b	$s2, $a0, 0
	ori	$a1, $zero, 47
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_56
# %bb.55:                               # %while.body293
                                        #   in Loop: Header=BB1_54 Depth=3
	bltu	$a0, $s5, .LBB1_54
	.p2align	4, , 16
.LBB1_56:                               # %if.end296
                                        #   in Loop: Header=BB1_48 Depth=2
	ld.d	$a1, $fp, 56
	bnez	$a1, .LBB1_58
	b	.LBB1_59
.LBB1_57:                               # %if.then286
                                        #   in Loop: Header=BB1_48 Depth=2
	addi.d	$s4, $s6, 11
	ld.d	$a1, $fp, 56
	beqz	$a1, .LBB1_59
.LBB1_58:                               # %land.lhs.true299
                                        #   in Loop: Header=BB1_48 Depth=2
	move	$a0, $s4
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	move	$a2, $s2
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_61
.LBB1_59:                               # %if.end308
                                        #   in Loop: Header=BB1_48 Depth=2
	ld.hu	$a0, $s0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$s2, $a1, 15, 0
	bne	$s2, $a0, .LBB1_62
.LBB1_60:                               #   in Loop: Header=BB1_48 Depth=2
	move	$s6, $s4
	b	.LBB1_75
.LBB1_61:                               # %if.then304
                                        #   in Loop: Header=BB1_48 Depth=2
	add.d	$a0, $s4, $s2
	addi.d	$s4, $a0, 1
	ld.hu	$a0, $s0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$s2, $a1, 15, 0
	beq	$s2, $a0, .LBB1_60
.LBB1_62:                               # %land.lhs.true313
                                        #   in Loop: Header=BB1_48 Depth=2
	ori	$a1, $zero, 46
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_60
# %bb.63:                               # %land.lhs.true313
                                        #   in Loop: Header=BB1_48 Depth=2
	bgeu	$a0, $s5, .LBB1_60
	.p2align	4, , 16
.LBB1_64:                               # %while.body324
                                        #   Parent Loop BB1_27 Depth=1
                                        #     Parent Loop BB1_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$s6, $a0, 1
	ori	$a1, $zero, 46
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_66
# %bb.65:                               # %while.body324
                                        #   in Loop: Header=BB1_64 Depth=3
	bltu	$a0, $s5, .LBB1_64
.LBB1_66:                               # %while.end327
                                        #   in Loop: Header=BB1_48 Depth=2
	sub.w	$s0, $s5, $s4
	slli.d	$a0, $s0, 32
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	ld.d	$a1, $fp, 152
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$s7, $a0, 1
	bstrpick.d	$s8, $s7, 15, 0
	slli.d	$a0, $s2, 3
	move	$s2, $a1
	stx.d	$s5, $a1, $a0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s5, $s0
	ori	$a0, $zero, 2
	bltu	$s8, $a0, .LBB1_71
# %bb.67:                               # %for.body351.preheader
                                        #   in Loop: Header=BB1_48 Depth=2
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 0
	add.d	$a0, $s8, $a0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s0, $a0, 1
	alsl.d	$s2, $a0, $s2, 3
	ori	$s8, $zero, 1
	.p2align	4, , 16
.LBB1_68:                               # %for.body351
                                        #   Parent Loop BB1_27 Depth=1
                                        #     Parent Loop BB1_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s2, 0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_72
# %bb.69:                               # %for.cond349
                                        #   in Loop: Header=BB1_68 Depth=3
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, -8
	bge	$s0, $s8, .LBB1_68
# %bb.70:                               #   in Loop: Header=BB1_48 Depth=2
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	b	.LBB1_73
.LBB1_71:                               #   in Loop: Header=BB1_48 Depth=2
	st.d	$s7, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ori	$s8, $zero, 1
	b	.LBB1_74
.LBB1_72:                               # %delete.notnull
                                        #   in Loop: Header=BB1_48 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_73:                               # %if.end363
                                        #   in Loop: Header=BB1_48 Depth=2
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
.LBB1_74:                               # %if.end363
                                        #   in Loop: Header=BB1_48 Depth=2
	ori	$s7, $zero, 76
.LBB1_75:                               # %if.end363
                                        #   in Loop: Header=BB1_48 Depth=2
	move	$s4, $s6
	ori	$s2, $zero, 46
	.p2align	4, , 16
.LBB1_76:                               # %while.cond364
                                        #   Parent Loop BB1_27 Depth=1
                                        #     Parent Loop BB1_48 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s4, 0
	addi.d	$s4, $s4, 1
	st.b	$a0, $s3, 0
	addi.d	$s3, $s3, 1
	bne	$a0, $s1, .LBB1_76
	b	.LBB1_47
.LBB1_77:                               #   in Loop: Header=BB1_27 Depth=1
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
.LBB1_78:                               # %cleanup
                                        #   in Loop: Header=BB1_27 Depth=1
	move	$a0, $s4
.LBB1_79:                               # %cleanup
                                        #   in Loop: Header=BB1_27 Depth=1
	addi.d	$a0, $a0, 1
	st.d	$a0, $s0, 0
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ori	$s2, $zero, 46
	b	.LBB1_26
.LBB1_80:
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
.LBB1_81:                               # %for.cond.cleanup197
	ld.hu	$a1, $fp, 120
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	beqz	$a1, .LBB1_142
# %bb.82:                               # %invoke.cont384.lr.ph
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB1_84
	.p2align	4, , 16
.LBB1_83:                               # %for.cond378.loopexit
                                        #   in Loop: Header=BB1_84 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	bstrpick.d	$a0, $a1, 15, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s0, $s0, 1
	beqz	$a0, .LBB1_142
.LBB1_84:                               # %invoke.cont384
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_89 Depth 2
                                        #       Child Loop BB1_95 Depth 3
                                        #       Child Loop BB1_103 Depth 3
                                        #       Child Loop BB1_107 Depth 3
                                        #     Child Loop BB1_118 Depth 2
                                        #       Child Loop BB1_141 Depth 3
                                        #       Child Loop BB1_122 Depth 3
                                        #       Child Loop BB1_125 Depth 3
                                        #       Child Loop BB1_129 Depth 3
                                        #         Child Loop BB1_138 Depth 4
                                        #         Child Loop BB1_133 Depth 4
                                        #         Child Loop BB1_135 Depth 4
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 144
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 128
	move	$s3, $a0
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a0, $s0, 3
	stx.d	$s3, $a1, $a0
	ld.d	$s0, $fp, 0
	st.h	$zero, $s3, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	bstrins.d	$a0, $s1, 63, 8
	st.h	$a0, $s3, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	andi	$a0, $a0, 255
	slli.d	$a2, $s1, 12
	lu12i.w	$s2, 255
	and	$a2, $a2, $s2
	add.d	$a1, $a1, $a2
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a0, $a0, 8
	ld.d	$s0, $fp, 0
	st.d	$a0, $s3, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	andi	$a0, $a0, 255
	slli.d	$a2, $s1, 12
	and	$a2, $a2, $s2
	add.d	$a1, $a1, $a2
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$s4, $a0, 8
	st.d	$s4, $s3, 16
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strdup)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bnez	$a0, .LBB1_86
# %bb.85:                               # %if.then413
                                        #   in Loop: Header=BB1_84 Depth=1
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(_Z10fatalerroriz)
	jirl	$ra, $ra, 0
.LBB1_86:                               # %if.end414
                                        #   in Loop: Header=BB1_84 Depth=1
	ld.bu	$a0, $s5, 0
	st.b	$a0, $s4, 0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_115
# %bb.87:                               # %while.body424.preheader
                                        #   in Loop: Header=BB1_84 Depth=1
	ori	$s2, $zero, 76
	b	.LBB1_89
	.p2align	4, , 16
.LBB1_88:                               #   in Loop: Header=BB1_89 Depth=2
	move	$s5, $s6
	ld.bu	$a0, $s5, 0
	addi.d	$s4, $s4, 1
	st.b	$a0, $s4, 0
	beqz	$a0, .LBB1_115
.LBB1_89:                               # %while.body424
                                        #   Parent Loop BB1_84 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_95 Depth 3
                                        #       Child Loop BB1_103 Depth 3
                                        #       Child Loop BB1_107 Depth 3
	addi.d	$s6, $s5, 1
	bne	$a0, $s2, .LBB1_88
# %bb.90:                               # %if.then428
                                        #   in Loop: Header=BB1_89 Depth=2
	ori	$a1, $zero, 59
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	bnez	$a0, .LBB1_92
# %bb.91:                               # %if.then431
                                        #   in Loop: Header=BB1_89 Depth=2
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z10fatalerroriz)
	jirl	$ra, $ra, 0
.LBB1_92:                               # %if.end432
                                        #   in Loop: Header=BB1_89 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 10
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_98
# %bb.93:                               # %while.cond438.preheader
                                        #   in Loop: Header=BB1_89 Depth=2
	ori	$a1, $zero, 47
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 46
	beqz	$a0, .LBB1_97
# %bb.94:                               # %while.cond438.preheader
                                        #   in Loop: Header=BB1_89 Depth=2
	bgeu	$a0, $s7, .LBB1_97
	.p2align	4, , 16
.LBB1_95:                               # %while.body444
                                        #   Parent Loop BB1_84 Depth=1
                                        #     Parent Loop BB1_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a2, $a0, 1
	st.b	$s5, $a0, 0
	ori	$a1, $zero, 47
	move	$a0, $a2
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_97
# %bb.96:                               # %while.body444
                                        #   in Loop: Header=BB1_95 Depth=3
	bltu	$a0, $s7, .LBB1_95
	.p2align	4, , 16
.LBB1_97:                               # %if.end447
                                        #   in Loop: Header=BB1_89 Depth=2
	ld.d	$a1, $fp, 56
	bnez	$a1, .LBB1_99
	b	.LBB1_100
.LBB1_98:                               # %if.then435
                                        #   in Loop: Header=BB1_89 Depth=2
	addi.d	$s6, $s5, 11
	ld.d	$a1, $fp, 56
	beqz	$a1, .LBB1_100
.LBB1_99:                               # %land.lhs.true450
                                        #   in Loop: Header=BB1_89 Depth=2
	move	$a0, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_110
.LBB1_100:                              # %if.end459
                                        #   in Loop: Header=BB1_89 Depth=2
	ld.hu	$a0, $s0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$s8, $a1, 15, 0
	beq	$s8, $a0, .LBB1_88
.LBB1_101:                              # %land.lhs.true464
                                        #   in Loop: Header=BB1_89 Depth=2
	ori	$a1, $zero, 46
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_88
# %bb.102:                              # %land.lhs.true464
                                        #   in Loop: Header=BB1_89 Depth=2
	bgeu	$a0, $s7, .LBB1_88
	.p2align	4, , 16
.LBB1_103:                              # %while.body475
                                        #   Parent Loop BB1_84 Depth=1
                                        #     Parent Loop BB1_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$s5, $a0, 1
	ori	$a1, $zero, 46
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_105
# %bb.104:                              # %while.body475
                                        #   in Loop: Header=BB1_103 Depth=3
	bltu	$a0, $s7, .LBB1_103
.LBB1_105:                              # %while.end478
                                        #   in Loop: Header=BB1_89 Depth=2
	sub.w	$s0, $s7, $s6
	slli.d	$a0, $s0, 32
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 32
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$s2, $fp, 152
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$s1, $a0, 15, 0
	slli.d	$a0, $s8, 3
	stx.d	$s7, $s2, $a0
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s7, $s0
	ori	$a0, $zero, 2
	bltu	$s1, $a0, .LBB1_111
# %bb.106:                              # %for.body503.preheader
                                        #   in Loop: Header=BB1_89 Depth=2
	addi.w	$a0, $zero, -2
	lu32i.d	$a0, 0
	add.d	$a0, $s1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s0, $a0, 1
	alsl.d	$s2, $a0, $s2, 3
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ori	$s6, $zero, 1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_107:                              # %for.body503
                                        #   Parent Loop BB1_84 Depth=1
                                        #     Parent Loop BB1_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s2, 0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_112
# %bb.108:                              # %for.cond501
                                        #   in Loop: Header=BB1_107 Depth=3
	addi.d	$s0, $s0, -1
	addi.d	$s2, $s2, -8
	bge	$s0, $s6, .LBB1_107
# %bb.109:                              #   in Loop: Header=BB1_89 Depth=2
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	b	.LBB1_113
.LBB1_110:                              # %if.then455
                                        #   in Loop: Header=BB1_89 Depth=2
	add.d	$a0, $s6, $s1
	addi.d	$s6, $a0, 1
	ld.hu	$a0, $s0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$s8, $a1, 15, 0
	beq	$s8, $a0, .LBB1_88
	b	.LBB1_101
.LBB1_111:                              #   in Loop: Header=BB1_89 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	b	.LBB1_114
.LBB1_112:                              # %delete.notnull512
                                        #   in Loop: Header=BB1_89 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB1_113:                              # %if.end519
                                        #   in Loop: Header=BB1_89 Depth=2
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
.LBB1_114:                              # %if.end519
                                        #   in Loop: Header=BB1_89 Depth=2
	ori	$s2, $zero, 76
	ld.bu	$a0, $s5, 0
	addi.d	$s4, $s4, 1
	st.b	$a0, $s4, 0
	bnez	$a0, .LBB1_89
	.p2align	4, , 16
.LBB1_115:                              # %while.end520
                                        #   in Loop: Header=BB1_84 Depth=1
	ld.d	$s0, $fp, 0
	st.w	$zero, $s3, 132
	st.h	$zero, $s3, 72
	st.h	$zero, $s3, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a1, $s1, 255
	bstrins.d	$a0, $a1, 63, 8
	bnez	$a0, .LBB1_118
	b	.LBB1_83
.LBB1_116:                              # %for.cond.cleanup821
                                        #   in Loop: Header=BB1_118 Depth=2
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB1_117:                              # %if.end837
                                        #   in Loop: Header=BB1_118 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	beqz	$a0, .LBB1_83
.LBB1_118:                              # %for.body530
                                        #   Parent Loop BB1_84 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_141 Depth 3
                                        #       Child Loop BB1_122 Depth 3
                                        #       Child Loop BB1_125 Depth 3
                                        #       Child Loop BB1_129 Depth 3
                                        #         Child Loop BB1_138 Depth 4
                                        #         Child Loop BB1_133 Depth 4
                                        #         Child Loop BB1_135 Depth 4
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$s7, $fp, 0
	andi	$s2, $a0, 255
	move	$a0, $s7
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	slli.d	$a2, $s1, 12
	lu12i.w	$a3, 255
	and	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	alsl.d	$a1, $s2, $a1, 4
	ld.d	$s7, $a1, 8
	move	$s1, $a0
	move	$a0, $s7
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_123
# %bb.119:                              # %if.else786
                                        #   in Loop: Header=BB1_118 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_139
# %bb.120:                              # %if.then789
                                        #   in Loop: Header=BB1_118 Depth=2
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bstrins.d	$a0, $s1, 63, 8
	bstrpick.d	$s6, $a0, 15, 0
	st.w	$s6, $s3, 132
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 136
	beqz	$s6, .LBB1_117
# %bb.121:                              # %for.body806.preheader
                                        #   in Loop: Header=BB1_118 Depth=2
	move	$s0, $a0
	.p2align	4, , 16
.LBB1_122:                              # %for.body806
                                        #   Parent Loop BB1_84 Depth=1
                                        #     Parent Loop BB1_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s1, $fp, 0
	addi.w	$s6, $s6, -1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a1, $s5, 255
	bstrins.d	$a0, $a1, 63, 8
	addi.d	$a1, $s0, 4
	st.w	$a0, $s0, 0
	move	$s0, $a1
	bnez	$s6, .LBB1_122
	b	.LBB1_117
	.p2align	4, , 16
.LBB1_123:                              # %if.then544
                                        #   in Loop: Header=BB1_118 Depth=2
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	st.b	$a0, $s3, 24
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	st.b	$a0, $s3, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	andi	$a0, $s1, 255
	bstrins.d	$s5, $a0, 63, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a1, $s1, 255
	bstrins.d	$a0, $a1, 63, 8
	slli.d	$a1, $s5, 16
	or	$s0, $a0, $a1
	st.w	$s0, $s3, 28
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	ld.d	$a3, $fp, 0
	st.d	$a0, $s3, 32
	add.d	$a1, $a1, $s0
	st.w	$a1, $fp, 16
	ori	$a2, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	bstrins.d	$s5, $s1, 63, 8
	st.h	$s5, $s3, 40
	bstrpick.d	$s0, $s5, 15, 0
	ori	$a0, $zero, 24
	mul.d	$a0, $s0, $a0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 48
	beqz	$s0, .LBB1_126
# %bb.124:                              # %for.body587.preheader
                                        #   in Loop: Header=BB1_118 Depth=2
	move	$a1, $a0
	move	$s6, $zero
	.p2align	4, , 16
.LBB1_125:                              # %for.body587
                                        #   Parent Loop BB1_84 Depth=1
                                        #     Parent Loop BB1_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s0, $fp, 0
	addi.d	$s5, $s5, -1
	bstrpick.d	$s7, $s5, 15, 0
	stx.w	$zero, $a1, $s6
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 48
	ld.d	$s0, $fp, 0
	bstrins.d	$a0, $s1, 63, 8
	add.d	$a1, $a1, $s6
	st.h	$a0, $a1, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 48
	ld.d	$s0, $fp, 0
	bstrins.d	$a0, $s1, 63, 8
	add.d	$a1, $a1, $s6
	st.h	$a0, $a1, 6
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 48
	bstrins.d	$a0, $s1, 63, 8
	add.d	$a1, $a1, $s6
	st.h	$a0, $a1, 8
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 48
	bstrins.d	$a0, $s1, 63, 8
	add.d	$a2, $a1, $s6
	st.h	$a0, $a2, 12
	addi.d	$s6, $s6, 24
	bnez	$s7, .LBB1_125
.LBB1_126:                              # %for.cond.cleanup586
                                        #   in Loop: Header=BB1_118 Depth=2
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	andi	$a0, $s1, 255
	bstrins.d	$s5, $a0, 63, 8
	bnez	$s5, .LBB1_129
	b	.LBB1_117
	.p2align	4, , 16
.LBB1_127:                              # %if.then639
                                        #   in Loop: Header=BB1_129 Depth=3
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bstrins.d	$a0, $s1, 63, 8
	st.h	$a0, $s3, 56
	bstrpick.d	$s1, $a0, 15, 0
	slli.d	$s0, $s1, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	ld.d	$a3, $fp, 0
	st.d	$a0, $s3, 64
	alsl.d	$a1, $s1, $a1, 2
	st.w	$a1, $fp, 16
	ori	$a2, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
.LBB1_128:                              # %if.end783
                                        #   in Loop: Header=BB1_129 Depth=3
	addi.w	$s5, $s5, -1
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	beqz	$s5, .LBB1_117
.LBB1_129:                              # %for.body628
                                        #   Parent Loop BB1_84 Depth=1
                                        #     Parent Loop BB1_118 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_138 Depth 4
                                        #         Child Loop BB1_133 Depth 4
                                        #         Child Loop BB1_135 Depth 4
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$s8, $fp, 0
	andi	$s2, $a0, 255
	move	$a0, $s8
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	slli.d	$a2, $s1, 12
	lu12i.w	$a3, 255
	and	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	alsl.d	$a1, $s2, $a1, 4
	ld.d	$s8, $a1, 8
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_127
# %bb.130:                              # %if.else660
                                        #   in Loop: Header=BB1_129 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_137
# %bb.131:                              # %if.then663
                                        #   in Loop: Header=BB1_129 Depth=3
	ld.d	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bstrins.d	$a0, $s1, 63, 8
	st.h	$a0, $s3, 72
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a1, $a0, 3
	alsl.d	$s0, $a0, $a1, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	ld.d	$a3, $fp, 0
	st.d	$a0, $s3, 80
	add.d	$a1, $s0, $a1
	st.w	$a1, $fp, 16
	ori	$a2, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	ld.hu	$s0, $s3, 72
	slli.d	$s6, $s0, 4
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 88
	beqz	$s0, .LBB1_136
# %bb.132:                              # %for.body697.lr.ph
                                        #   in Loop: Header=BB1_129 Depth=3
	move	$s7, $a0
	ld.d	$s1, $s3, 80
	ld.d	$s2, $fp, 40
	slli.d	$a0, $s0, 3
	alsl.d	$s4, $s0, $a0, 1
	move	$s8, $s4
	.p2align	4, , 16
.LBB1_133:                              # %for.body697
                                        #   Parent Loop BB1_84 Depth=1
                                        #     Parent Loop BB1_118 Depth=2
                                        #       Parent Loop BB1_129 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$fp, $s1, $s8
	ld.hu	$a0, $fp, -6
	alsl.d	$a0, $a0, $s2, 4
	ld.d	$s0, $a0, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, -2
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s7, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, -10
	bnez	$s8, .LBB1_133
# %bb.134:                              # %for.body738.lr.ph
                                        #   in Loop: Header=BB1_129 Depth=3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.d	$s6, $s3, 80
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $a1, 40
	move	$s0, $a0
	st.d	$a0, $s3, 96
	.p2align	4, , 16
.LBB1_135:                              # %for.body738
                                        #   Parent Loop BB1_84 Depth=1
                                        #     Parent Loop BB1_118 Depth=2
                                        #       Parent Loop BB1_129 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$fp, $s6, $s4
	ld.hu	$a0, $fp, -4
	alsl.d	$a0, $a0, $s2, 4
	ld.d	$s1, $a0, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $fp, -2
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, -10
	bnez	$s4, .LBB1_135
	b	.LBB1_128
	.p2align	4, , 16
.LBB1_136:                              # %for.end724.thread
                                        #   in Loop: Header=BB1_129 Depth=3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 96
	b	.LBB1_128
.LBB1_137:                              # %if.else768
                                        #   in Loop: Header=BB1_129 Depth=3
	andi	$a0, $s7, 255
	bstrins.d	$s6, $a0, 63, 8
	andi	$a1, $s0, 255
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bstrins.d	$s1, $a1, 63, 8
	slli.d	$a1, $s6, 16
	or	$s0, $s1, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a1, $a1, %pc_lo12(.L.str.14)
	move	$a2, $s8
	move	$a3, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB1_128
	.p2align	4, , 16
.LBB1_138:                              # %for.body776
                                        #   Parent Loop BB1_84 Depth=1
                                        #     Parent Loop BB1_118 Depth=2
                                        #       Parent Loop BB1_129 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.w	$s0, $s0, -1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB1_138
	b	.LBB1_128
.LBB1_139:                              # %if.else814
                                        #   in Loop: Header=BB1_118 Depth=2
	andi	$a0, $s6, 255
	bstrins.d	$s5, $a0, 63, 8
	andi	$a1, $s0, 255
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bstrins.d	$s1, $a1, 63, 8
	slli.d	$a1, $s5, 16
	or	$s5, $s1, $a1
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a1, $a1, %pc_lo12(.L.str.16)
	move	$a2, $s7
	move	$a3, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 10
	ori	$s2, $zero, 32
	beqz	$s5, .LBB1_116
# %bb.140:                              # %for.body822.preheader
                                        #   in Loop: Header=BB1_118 Depth=2
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB1_141:                              # %for.body822
                                        #   Parent Loop BB1_84 Depth=1
                                        #     Parent Loop BB1_118 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	andi	$a1, $a0, 255
	andi	$a0, $s0, 7
	sltui	$a0, $a0, 1
	andi	$a2, $s0, 8
	sltui	$a2, $a2, 1
	sub.d	$a2, $s1, $a2
	masknez	$a3, $s2, $a0
	maskeqz	$a0, $a2, $a0
	or	$a2, $a0, $a3
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s0, 31, 0
	addi.w	$s0, $s0, 1
	bne	$s5, $a0, .LBB1_141
	b	.LBB1_116
.LBB1_142:                              # %for.end840
	ld.d	$s0, $fp, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.h	$a0, $fp, 144
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bstrins.d	$s0, $s1, 63, 8
	bstrpick.d	$a0, $s0, 15, 0
	beqz	$a0, .LBB1_150
# %bb.143:                              # %for.body848.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$s1, $a0, %pc_lo12(.L.str.19)
	ori	$s7, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s2, $a0, %pc_lo12(.L.str.21)
	.p2align	4, , 16
.LBB1_144:                              # %for.body848
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_149 Depth 2
	ld.d	$s3, $fp, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 0
	move	$s8, $fp
	andi	$fp, $a0, 255
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	andi	$a0, $s5, 255
	bstrins.d	$s6, $a0, 63, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 40
	andi	$a2, $s5, 255
	slli.d	$a3, $s4, 12
	lu12i.w	$a4, 255
	and	$a3, $a3, $a4
	add.d	$a1, $a1, $a3
	alsl.d	$a1, $fp, $a1, 4
	ld.d	$s4, $a1, 8
	bstrins.d	$a0, $a2, 63, 8
	slli.d	$a1, $s6, 16
	or	$s3, $a0, $a1
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_148
# %bb.145:                              # %if.then862
                                        #   in Loop: Header=BB1_144 Depth=1
	bne	$s3, $s7, .LBB1_152
# %bb.146:                              # %if.else866
                                        #   in Loop: Header=BB1_144 Depth=1
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s3, $fp, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	andi	$a0, $a0, 255
	slli.d	$a2, $s4, 12
	lu12i.w	$a3, 255
	and	$a2, $a2, $a3
	add.d	$a1, $a1, $a2
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$s3, $a0, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 136
	move	$a1, $s3
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
.LBB1_147:                              # %if.end894
                                        #   in Loop: Header=BB1_144 Depth=1
	addi.d	$s0, $s0, -1
	bstrpick.d	$a0, $s0, 15, 0
	bnez	$a0, .LBB1_144
	b	.LBB1_150
.LBB1_148:                              # %if.else882
                                        #   in Loop: Header=BB1_144 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	move	$a1, $s2
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	beqz	$s3, .LBB1_147
	.p2align	4, , 16
.LBB1_149:                              # %for.body888
                                        #   Parent Loop BB1_144 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 0
	addi.d	$s3, $s3, -1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB1_149
	b	.LBB1_147
.LBB1_150:                              # %for.end895
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB1_151:                              # %if.then89
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 51
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB1_152:                              # %if.then864
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 48
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZN9Classfile4readEv, .Lfunc_end1-_ZN9Classfile4readEv
	.cfi_endproc
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	_ZN9Classfile5printEv           # -- Begin function _ZN9Classfile5printEv
	.p2align	2
	.type	_ZN9Classfile5printEv,@function
_ZN9Classfile5printEv:                  # @_ZN9Classfile5printEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
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
	pcalau12i	$a1, %got_pc_hi20(stderr)
	ld.d	$a1, $a1, %got_pc_lo12(stderr)
	move	$fp, $a0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $a1, 0
	ld.d	$a2, $fp, 136
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	ld.d	$a2, $fp, 136
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 56
	beqz	$a2, .LBB2_2
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a1, $a1, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %if.end
	ld.hu	$s1, $fp, 144
	beqz	$s1, .LBB2_5
# %bb.3:                                # %for.body.preheader
	ld.d	$a1, $fp, 152
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$s0, $a0, %pc_lo12(.L.str.25)
	.p2align	4, , 16
.LBB2_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a2, $a1, 0
	addi.w	$s1, $s1, -1
	addi.d	$s2, $a1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a1, $s2
	bnez	$s1, .LBB2_4
.LBB2_5:                                # %delete.end
	ld.d	$a1, $fp, 8
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s0, $fp, 48
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN11AccessFlags6strlenEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 8
	move	$s2, $a0
	st.d	$a0, $sp, 64
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN11AccessFlags8toStringEPc)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 64
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $fp, 72
	beqz	$a0, .LBB2_8
# %bb.6:                                # %if.then21
	ld.d	$a1, $fp, 40
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a0, $a0, 8
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$s0, $a0, 8
	st.d	$s0, $sp, 64
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$s1, $a0, %pc_lo12(.L.str.27)
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_35
# %bb.7:                                # %if.else
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$a0, $fp, 80
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %if.end39
	ld.hu	$a0, $fp, 88
	beqz	$a0, .LBB2_13
.LBB2_9:                                # %if.then41
	ld.d	$a3, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 11
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $fp, 88
	addi.d	$s1, $a0, -1
	beqz	$s1, .LBB2_12
# %bb.10:                               # %for.body49.lr.ph
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s0, $a0, %pc_lo12(.L.str.30)
	.p2align	4, , 16
.LBB2_11:                               # %for.body49
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 96
	ld.hu	$a0, $a0, 0
	ld.d	$a1, $fp, 40
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a2, $a0, 8
	ld.d	$a0, $fp, 8
	alsl.d	$a1, $a2, $a1, 4
	ld.d	$a2, $a1, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, -1
	bnez	$s1, .LBB2_11
.LBB2_12:                               # %for.end54
	ld.d	$a0, $fp, 96
	ld.hu	$a0, $a0, 0
	ld.d	$a1, $fp, 40
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a2, $a0, 8
	ld.d	$a0, $fp, 8
	alsl.d	$a1, $a2, $a1, 4
	ld.d	$a2, $a1, 8
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_13:                               # %if.end62
	ld.d	$a1, $fp, 8
	ori	$a0, $zero, 123
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.hu	$s6, $fp, 104
	beqz	$s6, .LBB2_29
# %bb.14:                               # %for.body69.lr.ph
	move	$s7, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s0, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$s1, $a0, %pc_lo12(.L.str.34)
	ori	$s3, $zero, 6
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI2_0)
	addi.d	$s4, $a0, %pc_lo12(.LJTI2_0)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$s5, $a0, %pc_lo12(.L.str.35)
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB2_18
.LBB2_15:                               # %sw.bb
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.hu	$a1, $s8, 28
	ld.d	$a2, $fp, 40
	ld.d	$a0, $fp, 8
	alsl.d	$a1, $a1, $a2, 4
	ld.d	$a2, $a1, 8
	move	$a1, $s5
.LBB2_16:                               # %if.end141
                                        #   in Loop: Header=BB2_18 Depth=1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB2_17:                               # %if.end141
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $fp, 8
	addi.w	$s6, $s6, -1
	ori	$a0, $zero, 59
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 8
	beqz	$s6, .LBB2_29
.LBB2_18:                               # %for.body69
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 112
	ldx.d	$s8, $a0, $s7
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN11AccessFlags6strlenEv)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 8
	move	$a1, $a0
	st.d	$a0, $sp, 64
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZN11AccessFlags8toStringEPc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64
	beqz	$a0, .LBB2_20
# %bb.19:                               # %delete.notnull83
                                        #   in Loop: Header=BB2_18 Depth=1
	pcaddu18i	$ra, %call36(_ZdaPv)
	jirl	$ra, $ra, 0
.LBB2_20:                               # %delete.end84
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $s8, 16
	ld.d	$a1, $fp, 8
	ld.d	$a3, $s8, 8
	st.d	$a0, $sp, 64
	addi.d	$a2, $sp, 64
	move	$a0, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_Z12printsignameP9ClassfileP8_IO_FILERPcS3_Pv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 24
	beqz	$a0, .LBB2_17
# %bb.21:                               # %if.then88
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a3, $fp, 8
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 16
	ld.bu	$a0, $a0, 0
	addi.d	$a0, $a0, -68
	bltu	$s3, $a0, .LBB2_28
# %bb.22:                               # %if.then88
                                        #   in Loop: Header=BB2_18 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	add.d	$a0, $s4, $a0
	jr	$a0
.LBB2_23:                               # %sw.bb132
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.hu	$a0, $s8, 28
	ld.d	$a1, $fp, 40
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a0, $a0, 8
	fld.d	$fa0, $a0, 0
	ld.d	$a0, $fp, 8
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB2_16
.LBB2_24:                               # %sw.bb98
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.hu	$a1, $s8, 28
	ld.d	$a3, $fp, 40
	alsl.d	$a0, $a1, $a3, 4
	ld.d	$a2, $a0, 8
	ld.d	$a0, $fp, 8
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 15, 0
	alsl.d	$a1, $a1, $a3, 4
	ld.d	$a3, $a1, 8
	beqz	$a2, .LBB2_27
# %bb.25:                               # %if.then103
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB2_17
.LBB2_26:                               # %sw.bb125
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.hu	$a0, $s8, 28
	ld.d	$a1, $fp, 40
	alsl.d	$a0, $a0, $a1, 4
	fld.s	$fa0, $a0, 8
	ld.d	$a0, $fp, 8
	fcvt.d.s	$fa0, $fa0
	movfr2gr.d	$a2, $fa0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_16
.LBB2_27:                               # %if.else115
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $a3
	b	.LBB2_16
.LBB2_28:                               # %sw.default
                                        #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB2_17
.LBB2_29:                               # %for.end144
	ld.hu	$s1, $fp, 120
	beqz	$s1, .LBB2_34
# %bb.30:                               # %for.body149.lr.ph
	move	$s2, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$s0, $a0, %pc_lo12(.L.str.42)
	b	.LBB2_32
	.p2align	4, , 16
.LBB2_31:                               # %if.end158
                                        #   in Loop: Header=BB2_32 Depth=1
	addi.w	$s1, $s1, -1
	addi.d	$s2, $s2, 8
	beqz	$s1, .LBB2_34
.LBB2_32:                               # %for.body149
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 128
	ldx.d	$a1, $a0, $s2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z14decompileblockP9ClassfileP11method_info)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_31
# %bb.33:                               # %if.then155
                                        #   in Loop: Header=BB2_32 Depth=1
	ld.d	$a3, $fp, 8
	ori	$a1, $zero, 41
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB2_31
.LBB2_34:                               # %for.end159
	ld.d	$a3, $fp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
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
.LBB2_35:                               # %if.then26
	st.d	$s1, $fp, 80
	ld.hu	$a0, $fp, 88
	bnez	$a0, .LBB2_9
	b	.LBB2_13
.Lfunc_end2:
	.size	_ZN9Classfile5printEv, .Lfunc_end2-_ZN9Classfile5printEv
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI2_0:
	.word	.LBB2_23-.LJTI2_0
	.word	.LBB2_28-.LJTI2_0
	.word	.LBB2_26-.LJTI2_0
	.word	.LBB2_28-.LJTI2_0
	.word	.LBB2_28-.LJTI2_0
	.word	.LBB2_15-.LJTI2_0
	.word	.LBB2_24-.LJTI2_0
                                        # -- End function
	.type	progname,@object                # @progname
	.bss
	.globl	progname
	.p2align	3, 0x0
progname:
	.dword	0
	.size	progname, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"hbt"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Unknown flag: %s\n"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	".bak"
	.size	.L.str.2, 5

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"rb"
	.size	.L.str.3, 3

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Could not open file %s\n"
	.size	.L.str.4, 24

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"wb"
	.size	.L.str.5, 3

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Classfile version %d.%d\n"
	.size	.L.str.6, 25

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"ConstantValue"
	.size	.L.str.7, 14

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Bad size on ConstantValue Attribute - should be 2!\n"
	.size	.L.str.8, 52

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Skipping Unknown Field Attribute: %s (size %ld)\n"
	.size	.L.str.9, 49

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"java/lang/"
	.size	.L.str.10, 11

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Code"
	.size	.L.str.11, 5

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"LineNumberTable"
	.size	.L.str.12, 16

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"LocalVariableTable"
	.size	.L.str.13, 19

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Skipping Unknown Code Attribute: %s (size %ld)\n"
	.size	.L.str.14, 48

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Exceptions"
	.size	.L.str.15, 11

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Skipping Unknown Method Attribute: %s (size %ld)\n"
	.size	.L.str.16, 50

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"%02x%c"
	.size	.L.str.17, 7

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"SourceFile"
	.size	.L.str.19, 11

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Bad size on SourceFile Attribute - should be 2!\n"
	.size	.L.str.20, 49

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Skipping Unknown Attribute: %s (size %ld)\n"
	.size	.L.str.21, 43

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Compiled from %s\n"
	.size	.L.str.22, 18

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"/*\n** Compiled from %s - COPYRIGHT UNKNOWN.\n**\n** Decompiled using the HomeBrew Decompiler\n** Copyright (c) 1994-2003 Widget (aka Pete Ryland).\n** Available under GPL from http://pdr.cx/hbd/\n*/\n\n"
	.size	.L.str.23, 196

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"package %s;\n\n"
	.size	.L.str.24, 14

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"import %s;\n"
	.size	.L.str.25, 12

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"%sclass %s "
	.size	.L.str.26, 12

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Object"
	.size	.L.str.27, 7

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"extends %s "
	.size	.L.str.28, 12

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"implements "
	.size	.L.str.29, 12

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"%s, "
	.size	.L.str.30, 5

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"%s "
	.size	.L.str.31, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"\n  %s"
	.size	.L.str.33, 6

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	" = "
	.size	.L.str.34, 4

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"0x%lX"
	.size	.L.str.35, 6

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"0x%lX%08lXL"
	.size	.L.str.36, 12

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"0x%lXL"
	.size	.L.str.37, 7

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"%#.100Gf"
	.size	.L.str.38, 9

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"%#.100Gd"
	.size	.L.str.39, 9

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Bad type for constant\n"
	.size	.L.str.40, 23

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"/* Decompilation Error.  Continuing... */"
	.size	.L.str.42, 42

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"\n}"
	.size	.L.str.43, 3

	.globl	_ZN9ClassfileC1EiPPc
	.type	_ZN9ClassfileC1EiPPc,@function
_ZN9ClassfileC1EiPPc = _ZN9ClassfileC2EiPPc
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
