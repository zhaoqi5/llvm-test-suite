	.file	"strlen-5.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	pcalau12i	$s6, %pc_hi20(idx)
	ld.w	$s0, $s6, %pc_lo12(idx)
	pcalau12i	$a0, %pc_hi20(ca)
	addi.d	$s7, $a0, %pc_lo12(ca)
	alsl.d	$fp, $s0, $s7, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	pcalau12i	$s5, %pc_hi20(nfails)
	beq	$a0, $a1, .LBB0_2
# %bb.1:                                # %cond.false183.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a2, $a1, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 51
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_2:                                # %cond.end186.i
	alsl.d	$a0, $s0, $s7, 2
	addi.d	$fp, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_4
# %bb.3:                                # %cond.false203.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a2, $a1, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 52
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_4:                                # %cond.end206.i
	alsl.d	$a0, $s0, $s7, 2
	addi.d	$fp, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_6
# %bb.5:                                # %cond.false223.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.14)
	addi.d	$a2, $a1, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 53
	ori	$a4, $zero, 3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_6:                                # %cond.end226.i
	alsl.d	$a0, $s0, $s7, 2
	add.d	$fp, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_8
# %bb.7:                                # %cond.false242.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a2, $a1, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 55
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_8:                                # %cond.end245.i
	alsl.d	$a0, $s0, $s7, 2
	addi.w	$a1, $s0, 1
	add.d	$fp, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_10
# %bb.9:                                # %cond.false262.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.16)
	addi.d	$a2, $a1, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 56
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_10:                               # %cond.end265.i
	alsl.d	$a0, $s0, $s7, 2
	addi.w	$a1, $s0, 2
	add.d	$fp, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_12
# %bb.11:                               # %cond.false282.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a2, $a1, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 57
	ori	$a4, $zero, 3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_12:                               # %test_const_global_arrays.exit
	ld.w	$a0, $s7, 32
	xvld	$xr0, $s7, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.w	$a0, $sp, 56
	xvst	$xr0, $sp, 24
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$fp, $zero, 5
	beq	$a0, $fp, .LBB0_14
# %bb.13:                               # %cond.false.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a2, $a1, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 78
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_14:                               # %cond.end.i
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $fp, .LBB0_16
# %bb.15:                               # %cond.false13.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a2, $a1, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 79
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_16:                               # %cond.end16.i
	addi.d	$s0, $sp, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_18
# %bb.17:                               # %cond.false30.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a2, $a1, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 80
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_18:                               # %cond.end33.i
	addi.d	$fp, $sp, 27
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_20
# %bb.19:                               # %cond.false47.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 81
	ori	$a4, $zero, 2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_20:                               # %cond.end50.i
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s1, $zero, 5
	beq	$a0, $s1, .LBB0_22
# %bb.21:                               # %cond.false64.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a2, $a1, %pc_lo12(.L.str.23)
	ori	$a1, $zero, 84
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_22:                               # %cond.end67.i
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s1, .LBB0_24
# %bb.23:                               # %cond.false82.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a2, $a1, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 85
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_24:                               # %cond.end85.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_26
# %bb.25:                               # %cond.false100.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a2, $a1, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 86
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_26:                               # %cond.end103.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_28
# %bb.27:                               # %cond.false118.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a2, $a1, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 87
	ori	$a4, $zero, 2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_28:                               # %cond.end121.i
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_30
# %bb.29:                               # %cond.false137.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a2, $a1, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 90
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_30:                               # %cond.end140.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_32
# %bb.31:                               # %cond.false156.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a2, $a1, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 91
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_32:                               # %cond.end159.i
	addi.d	$s1, $sp, 26
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_34
# %bb.33:                               # %cond.false176.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a2, $a1, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 92
	ori	$a4, $zero, 3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_34:                               # %cond.end179.i
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$s4, $sp, 24
	alsl.d	$s2, $s3, $s4, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_36
# %bb.35:                               # %cond.false195.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a2, $a1, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 94
	ori	$a4, $zero, 5
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_36:                               # %cond.end198.i
	alsl.d	$a0, $s3, $s4, 2
	addi.d	$s2, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_38
# %bb.37:                               # %cond.false215.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a2, $a1, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 95
	ori	$a4, $zero, 4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_38:                               # %cond.end218.i
	addi.d	$s4, $sp, 24
	alsl.d	$a0, $s3, $s4, 2
	addi.d	$s2, $a0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_40
# %bb.39:                               # %cond.false235.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a2, $a1, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 96
	ori	$a4, $zero, 3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_40:                               # %cond.end238.i
	alsl.d	$a0, $s3, $s4, 2
	add.d	$s2, $a0, $s3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_42
# %bb.41:                               # %cond.false254.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a2, $a1, %pc_lo12(.L.str.33)
	ori	$a1, $zero, 98
	ori	$a4, $zero, 5
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_42:                               # %cond.end257.i
	addi.d	$s4, $sp, 24
	alsl.d	$a0, $s3, $s4, 2
	addi.w	$a1, $s3, 1
	add.d	$s2, $a0, $a1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_44
# %bb.43:                               # %cond.false274.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a2, $a1, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 99
	ori	$a4, $zero, 4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_44:                               # %cond.end277.i
	alsl.d	$a0, $s3, $s4, 2
	addi.w	$a1, $s3, 2
	add.d	$s2, $a0, $a1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_46
# %bb.45:                               # %cond.false294.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a2, $a1, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 100
	ori	$a4, $zero, 3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_46:                               # %cond.end297.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_48
# %bb.47:                               # %cond.false313.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a2, $a1, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 102
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_48:                               # %cond.end316.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_50
# %bb.49:                               # %cond.false332.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a2, $a1, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 103
	ori	$a4, $zero, 3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_50:                               # %cond.end335.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_52
# %bb.51:                               # %cond.false351.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a2, $a1, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 104
	ori	$a4, $zero, 2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_52:                               # %test_const_local_arrays.exit
	pcalau12i	$a0, %pc_hi20(va)
	addi.d	$a0, $a0, %pc_lo12(va)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s0, $zero, 5
	beq	$a0, $s0, .LBB0_54
# %bb.53:                               # %cond.false.i13
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.37)
	addi.d	$a2, $a1, %pc_lo12(.L.str.37)
	pcalau12i	$a1, %pc_hi20(va)
	addi.d	$a3, $a1, %pc_lo12(va)
	ori	$a1, $zero, 122
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_54:                               # %cond.end.i16
	pcalau12i	$a0, %pc_hi20(va)
	addi.d	$fp, $a0, %pc_lo12(va)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s0, .LBB0_56
# %bb.55:                               # %cond.false11.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a2, $a1, %pc_lo12(.L.str.38)
	pcalau12i	$a1, %pc_hi20(va)
	addi.d	$a3, $a1, %pc_lo12(va)
	ori	$a1, $zero, 123
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_56:                               # %cond.end14.i
	addi.d	$s0, $fp, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_58
# %bb.57:                               # %cond.false25.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.39)
	addi.d	$a2, $a1, %pc_lo12(.L.str.39)
	ori	$a1, $zero, 124
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_58:                               # %cond.end28.i
	addi.d	$fp, $fp, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_60
# %bb.59:                               # %cond.false39.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a2, $a1, %pc_lo12(.L.str.40)
	ori	$a1, $zero, 125
	ori	$a4, $zero, 2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_60:                               # %cond.end42.i
	pcalau12i	$a0, %pc_hi20(va)
	addi.d	$a0, $a0, %pc_lo12(va)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s0, $zero, 5
	beq	$a0, $s0, .LBB0_62
# %bb.61:                               # %cond.false53.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a2, $a1, %pc_lo12(.L.str.41)
	pcalau12i	$a1, %pc_hi20(va)
	addi.d	$a3, $a1, %pc_lo12(va)
	ori	$a1, $zero, 128
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_62:                               # %cond.end56.i
	pcalau12i	$a0, %pc_hi20(va)
	addi.d	$fp, $a0, %pc_lo12(va)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s0, .LBB0_64
# %bb.63:                               # %cond.false70.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a2, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a1, %pc_hi20(va)
	addi.d	$a3, $a1, %pc_lo12(va)
	ori	$a1, $zero, 129
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_64:                               # %cond.end73.i
	addi.d	$s0, $fp, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_66
# %bb.65:                               # %cond.false88.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a2, $a1, %pc_lo12(.L.str.43)
	ori	$a1, $zero, 130
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_66:                               # %cond.end91.i
	addi.d	$fp, $fp, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_68
# %bb.67:                               # %cond.false106.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a2, $a1, %pc_lo12(.L.str.44)
	ori	$a1, $zero, 131
	ori	$a4, $zero, 2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_68:                               # %cond.end109.i
	pcalau12i	$a0, %pc_hi20(va)
	addi.d	$fp, $a0, %pc_lo12(va)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_70
# %bb.69:                               # %cond.false125.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.45)
	addi.d	$a2, $a1, %pc_lo12(.L.str.45)
	pcalau12i	$a1, %pc_hi20(va)
	addi.d	$a3, $a1, %pc_lo12(va)
	ori	$a1, $zero, 134
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_70:                               # %cond.end128.i
	addi.d	$s0, $fp, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_72
# %bb.71:                               # %cond.false144.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a2, $a1, %pc_lo12(.L.str.46)
	ori	$a1, $zero, 135
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_72:                               # %cond.end147.i
	addi.d	$s1, $fp, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_74
# %bb.73:                               # %cond.false164.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a2, $a1, %pc_lo12(.L.str.47)
	ori	$a1, $zero, 136
	ori	$a4, $zero, 3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_74:                               # %cond.end167.i
	ld.w	$s3, $s6, %pc_lo12(idx)
	alsl.d	$s2, $s3, $fp, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_76
# %bb.75:                               # %cond.false183.i25
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a2, $a1, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 138
	ori	$a4, $zero, 5
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_76:                               # %cond.end186.i29
	alsl.d	$a0, $s3, $fp, 2
	addi.d	$s2, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_78
# %bb.77:                               # %cond.false203.i34
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.49)
	addi.d	$a2, $a1, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 139
	ori	$a4, $zero, 4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_78:                               # %cond.end206.i37
	alsl.d	$a0, $s3, $fp, 2
	addi.d	$s2, $a0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_80
# %bb.79:                               # %cond.false223.i42
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.50)
	addi.d	$a2, $a1, %pc_lo12(.L.str.50)
	ori	$a1, $zero, 140
	ori	$a4, $zero, 3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_80:                               # %cond.end226.i45
	alsl.d	$a0, $s3, $fp, 2
	add.d	$s2, $a0, $s3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_82
# %bb.81:                               # %cond.false242.i51
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.51)
	addi.d	$a2, $a1, %pc_lo12(.L.str.51)
	ori	$a1, $zero, 142
	ori	$a4, $zero, 5
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_82:                               # %cond.end245.i54
	alsl.d	$a0, $s3, $fp, 2
	addi.w	$a1, $s3, 1
	add.d	$s2, $a0, $a1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_84
# %bb.83:                               # %cond.false262.i62
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a2, $a1, %pc_lo12(.L.str.52)
	ori	$a1, $zero, 143
	ori	$a4, $zero, 4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_84:                               # %cond.end265.i65
	alsl.d	$a0, $s3, $fp, 2
	addi.w	$a1, $s3, 2
	add.d	$s2, $a0, $a1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_86
# %bb.85:                               # %cond.false282.i73
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.53)
	addi.d	$a2, $a1, %pc_lo12(.L.str.53)
	ori	$a1, $zero, 144
	ori	$a4, $zero, 3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_86:                               # %cond.end285.i
	addi.d	$s2, $fp, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s3, $zero, 6
	beq	$a0, $s3, .LBB0_88
# %bb.87:                               # %cond.false297.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.54)
	addi.d	$a2, $a1, %pc_lo12(.L.str.54)
	ori	$a1, $zero, 148
	ori	$a4, $zero, 6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_88:                               # %cond.end300.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s3, .LBB0_90
# %bb.89:                               # %cond.false312.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a2, $a1, %pc_lo12(.L.str.55)
	ori	$a1, $zero, 149
	ori	$a4, $zero, 6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_90:                               # %cond.end315.i
	addi.d	$s3, $fp, 9
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_92
# %bb.91:                               # %cond.false327.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.56)
	addi.d	$a2, $a1, %pc_lo12(.L.str.56)
	ori	$a1, $zero, 150
	ori	$a4, $zero, 5
	move	$a3, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_92:                               # %cond.end330.i
	addi.d	$s4, $fp, 11
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_94
# %bb.93:                               # %cond.false342.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a2, $a1, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 151
	ori	$a4, $zero, 3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_94:                               # %cond.end345.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s8, $zero, 6
	beq	$a0, $s8, .LBB0_96
# %bb.95:                               # %cond.false361.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a2, $a1, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 154
	ori	$a4, $zero, 6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_96:                               # %cond.end364.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s8, .LBB0_98
# %bb.97:                               # %cond.false379.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a2, $a1, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 155
	ori	$a4, $zero, 6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_98:                               # %cond.end382.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_100
# %bb.99:                               # %cond.false397.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.43)
	addi.d	$a2, $a1, %pc_lo12(.L.str.43)
	ori	$a1, $zero, 156
	ori	$a4, $zero, 5
	move	$a3, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_100:                              # %cond.end400.i
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_102
# %bb.101:                              # %cond.false415.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.44)
	addi.d	$a2, $a1, %pc_lo12(.L.str.44)
	ori	$a1, $zero, 157
	ori	$a4, $zero, 3
	move	$a3, $s4
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_102:                              # %cond.end418.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_104
# %bb.103:                              # %cond.false436.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a2, $a1, %pc_lo12(.L.str.58)
	ori	$a1, $zero, 160
	ori	$a4, $zero, 6
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_104:                              # %cond.end439.i
	move	$a0, $s3
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_106
# %bb.105:                              # %cond.false455.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.59)
	addi.d	$a2, $a1, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 161
	ori	$a4, $zero, 5
	move	$a3, $s3
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_106:                              # %cond.end458.i
	addi.d	$s2, $fp, 10
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_108
# %bb.107:                              # %cond.false475.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.46)
	addi.d	$a2, $a1, %pc_lo12(.L.str.46)
	ori	$a1, $zero, 162
	ori	$a4, $zero, 4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_108:                              # %cond.end478.i
	ld.w	$a0, $s6, %pc_lo12(idx)
	addi.w	$s4, $a0, 2
	alsl.d	$a0, $s4, $fp, 2
	addi.d	$s2, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s3, $zero, 5
	beq	$a0, $s3, .LBB0_110
# %bb.109:                              # %cond.false496.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.60)
	addi.d	$a2, $a1, %pc_lo12(.L.str.60)
	ori	$a1, $zero, 164
	ori	$a4, $zero, 5
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$a1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s4, $a1, 2
.LBB0_110:                              # %cond.end499.i
	alsl.d	$a0, $s4, $fp, 2
	addi.d	$s2, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s3, .LBB0_112
# %bb.111:                              # %cond.false516.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.61)
	addi.d	$a2, $a1, %pc_lo12(.L.str.61)
	ori	$a1, $zero, 165
	ori	$a4, $zero, 5
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$a1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s4, $a1, 2
.LBB0_112:                              # %cond.end519.i
	alsl.d	$a0, $s4, $fp, 2
	addi.d	$s2, $a0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s3, $zero, 4
	beq	$a0, $s3, .LBB0_114
# %bb.113:                              # %cond.false537.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a2, $a1, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 166
	ori	$a4, $zero, 4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_114:                              # %cond.end540.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s3, .LBB0_116
# %bb.115:                              # %cond.false556.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a2, $a1, %pc_lo12(.L.str.63)
	ori	$a1, $zero, 171
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_116:                              # %cond.end559.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_118
# %bb.117:                              # %cond.false574.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a2, $a1, %pc_lo12(.L.str.63)
	ori	$a1, $zero, 172
	ori	$a4, $zero, 3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_118:                              # %cond.end577.i
	addi.d	$fp, $fp, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_120
# %bb.119:                              # %cond.false592.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a2, $a1, %pc_lo12(.L.str.63)
	ori	$a1, $zero, 173
	ori	$a4, $zero, 2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_120:                              # %test_nonconst_global_arrays.exit
	xvld	$xr0, $s7, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $sp, 56
	xvst	$xr0, $sp, 24
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$fp, $zero, 5
	beq	$a0, $fp, .LBB0_122
# %bb.121:                              # %cond.false.i79
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a2, $a1, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 190
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_122:                              # %cond.end.i82
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $fp, .LBB0_124
# %bb.123:                              # %cond.false13.i85
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.20)
	addi.d	$a2, $a1, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 191
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_124:                              # %cond.end16.i88
	addi.d	$s0, $sp, 25
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_126
# %bb.125:                              # %cond.false30.i92
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.21)
	addi.d	$a2, $a1, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 192
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_126:                              # %cond.end33.i95
	addi.d	$fp, $sp, 27
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_128
# %bb.127:                              # %cond.false47.i99
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a2, $a1, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 193
	ori	$a4, $zero, 2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_128:                              # %cond.end50.i102
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s1, $zero, 5
	beq	$a0, $s1, .LBB0_130
# %bb.129:                              # %cond.false64.i105
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a2, $a1, %pc_lo12(.L.str.23)
	ori	$a1, $zero, 196
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_130:                              # %cond.end67.i108
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s1, .LBB0_132
# %bb.131:                              # %cond.false82.i111
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.24)
	addi.d	$a2, $a1, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 197
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_132:                              # %cond.end85.i114
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_134
# %bb.133:                              # %cond.false100.i117
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a2, $a1, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 198
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_134:                              # %cond.end103.i120
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_136
# %bb.135:                              # %cond.false118.i123
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a2, $a1, %pc_lo12(.L.str.26)
	ori	$a1, $zero, 199
	ori	$a4, $zero, 2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_136:                              # %cond.end121.i126
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_138
# %bb.137:                              # %cond.false137.i129
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a2, $a1, %pc_lo12(.L.str.27)
	ori	$a1, $zero, 202
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_138:                              # %cond.end140.i132
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_140
# %bb.139:                              # %cond.false156.i135
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a2, $a1, %pc_lo12(.L.str.28)
	ori	$a1, $zero, 203
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_140:                              # %cond.end159.i138
	addi.d	$s1, $sp, 26
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_142
# %bb.141:                              # %cond.false176.i142
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a2, $a1, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 204
	ori	$a4, $zero, 3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_142:                              # %cond.end179.i145
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$s4, $sp, 24
	alsl.d	$s2, $s3, $s4, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_144
# %bb.143:                              # %cond.false195.i150
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.30)
	addi.d	$a2, $a1, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 206
	ori	$a4, $zero, 5
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_144:                              # %cond.end198.i155
	alsl.d	$a0, $s3, $s4, 2
	addi.d	$s2, $a0, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_146
# %bb.145:                              # %cond.false215.i160
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a2, $a1, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 207
	ori	$a4, $zero, 4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_146:                              # %cond.end218.i165
	addi.d	$s4, $sp, 24
	alsl.d	$a0, $s3, $s4, 2
	addi.d	$s2, $a0, 2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_148
# %bb.147:                              # %cond.false235.i170
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a2, $a1, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 208
	ori	$a4, $zero, 3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_148:                              # %cond.end238.i175
	alsl.d	$a0, $s3, $s4, 2
	add.d	$s2, $a0, $s3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_150
# %bb.149:                              # %cond.false254.i181
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.33)
	addi.d	$a2, $a1, %pc_lo12(.L.str.33)
	ori	$a1, $zero, 210
	ori	$a4, $zero, 5
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_150:                              # %cond.end257.i186
	addi.d	$s4, $sp, 24
	alsl.d	$a0, $s3, $s4, 2
	addi.w	$a1, $s3, 1
	add.d	$s2, $a0, $a1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_152
# %bb.151:                              # %cond.false274.i194
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a2, $a1, %pc_lo12(.L.str.34)
	ori	$a1, $zero, 211
	ori	$a4, $zero, 4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s3, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_152:                              # %cond.end277.i199
	alsl.d	$a0, $s3, $s4, 2
	addi.w	$a1, $s3, 2
	add.d	$s2, $a0, $a1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_154
# %bb.153:                              # %cond.false294.i207
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a2, $a1, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 212
	ori	$a4, $zero, 3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_154:                              # %cond.end297.i210
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_156
# %bb.155:                              # %cond.false313.i213
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a2, $a1, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 214
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_156:                              # %cond.end316.i216
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_158
# %bb.157:                              # %cond.false332.i219
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a2, $a1, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 215
	ori	$a4, $zero, 3
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_158:                              # %cond.end335.i222
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_160
# %bb.159:                              # %cond.false351.i225
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a2, $a1, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 216
	ori	$a4, $zero, 2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_160:                              # %test_nonconst_local_arrays.exit
	ld.w	$s0, $s6, %pc_lo12(idx)
	pcalau12i	$a0, %pc_hi20(cma)
	addi.d	$s3, $a0, %pc_lo12(cma)
	alsl.d	$fp, $s0, $s3, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_162
# %bb.161:                              # %cond.false190.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.75)
	addi.d	$a2, $a1, %pc_lo12(.L.str.75)
	ori	$a1, $zero, 253
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_162:                              # %cond.end193.i
	alsl.d	$a0, $s0, $s3, 3
	addi.d	$fp, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_164
# %bb.163:                              # %cond.false211.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.76)
	addi.d	$a2, $a1, %pc_lo12(.L.str.76)
	ori	$a1, $zero, 254
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_164:                              # %cond.end214.i
	alsl.d	$a0, $s0, $s3, 3
	addi.d	$fp, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_166
# %bb.165:                              # %cond.false232.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.77)
	addi.d	$a2, $a1, %pc_lo12(.L.str.77)
	ori	$a1, $zero, 255
	ori	$a4, $zero, 3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_166:                              # %cond.end235.i
	alsl.d	$a0, $s0, $s3, 3
	add.d	$fp, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_168
# %bb.167:                              # %cond.false252.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.78)
	addi.d	$a2, $a1, %pc_lo12(.L.str.78)
	ori	$a1, $zero, 257
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_168:                              # %cond.end255.i
	alsl.d	$a0, $s0, $s3, 3
	addi.w	$a1, $s0, 1
	add.d	$fp, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_170
# %bb.169:                              # %cond.false273.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.79)
	addi.d	$a2, $a1, %pc_lo12(.L.str.79)
	ori	$a1, $zero, 258
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_170:                              # %cond.end276.i
	alsl.d	$a0, $s0, $s3, 3
	addi.w	$a1, $s0, 2
	add.d	$fp, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_172
# %bb.171:                              # %cond.false294.i235
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.80)
	addi.d	$a2, $a1, %pc_lo12(.L.str.80)
	ori	$a1, $zero, 259
	ori	$a4, $zero, 3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_172:                              # %cond.end497.i
	addi.w	$s1, $s0, 1
	alsl.d	$fp, $s1, $s3, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_174
# %bb.173:                              # %cond.false515.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.85)
	addi.d	$a2, $a1, %pc_lo12(.L.str.85)
	ori	$a1, $zero, 279
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_174:                              # %cond.end518.i
	alsl.d	$a0, $s1, $s3, 3
	addi.d	$fp, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_176
# %bb.175:                              # %cond.false537.i241
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.86)
	addi.d	$a2, $a1, %pc_lo12(.L.str.86)
	ori	$a1, $zero, 280
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_176:                              # %cond.end540.i244
	alsl.d	$a0, $s1, $s3, 3
	addi.d	$fp, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_178
# %bb.177:                              # %cond.false559.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.87)
	addi.d	$a2, $a1, %pc_lo12(.L.str.87)
	ori	$a1, $zero, 281
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_178:                              # %cond.end562.i
	alsl.d	$a0, $s1, $s3, 3
	add.d	$fp, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_180
# %bb.179:                              # %cond.false580.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.88)
	addi.d	$a2, $a1, %pc_lo12(.L.str.88)
	ori	$a1, $zero, 283
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_180:                              # %cond.end583.i
	alsl.d	$a0, $s1, $s3, 3
	add.d	$fp, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_182
# %bb.181:                              # %cond.false602.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.89)
	addi.d	$a2, $a1, %pc_lo12(.L.str.89)
	ori	$a1, $zero, 284
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_182:                              # %cond.end605.i
	alsl.d	$a0, $s1, $s3, 3
	addi.w	$a1, $s0, 2
	add.d	$fp, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_184
# %bb.183:                              # %cond.false624.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.90)
	addi.d	$a2, $a1, %pc_lo12(.L.str.90)
	ori	$a1, $zero, 285
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_184:                              # %cond.end827.i
	addi.w	$s1, $s0, 4
	alsl.d	$a0, $s1, $s3, 3
	addi.d	$fp, $a0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_186
# %bb.185:                              # %cond.false845.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.97)
	addi.d	$a2, $a1, %pc_lo12(.L.str.97)
	ori	$a1, $zero, 305
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 4
.LBB0_186:                              # %cond.end848.i
	alsl.d	$a0, $s1, $s3, 3
	addi.d	$fp, $a0, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_188
# %bb.187:                              # %cond.false867.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.98)
	addi.d	$a2, $a1, %pc_lo12(.L.str.98)
	ori	$a1, $zero, 306
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 4
.LBB0_188:                              # %cond.end870.i
	alsl.d	$a0, $s1, $s3, 3
	addi.d	$fp, $a0, 5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_190
# %bb.189:                              # %cond.false889.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.99)
	addi.d	$a2, $a1, %pc_lo12(.L.str.99)
	ori	$a1, $zero, 307
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 4
.LBB0_190:                              # %cond.end892.i
	alsl.d	$a0, $s1, $s3, 3
	add.d	$fp, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 9
	beq	$a0, $a1, .LBB0_192
# %bb.191:                              # %cond.false910.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.100)
	addi.d	$a2, $a1, %pc_lo12(.L.str.100)
	ori	$a1, $zero, 309
	ori	$a4, $zero, 9
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 4
.LBB0_192:                              # %cond.end913.i
	alsl.d	$a0, $s1, $s3, 3
	addi.w	$s0, $s0, 1
	add.d	$fp, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_194
# %bb.193:                              # %cond.false932.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.101)
	addi.d	$a2, $a1, %pc_lo12(.L.str.101)
	ori	$a1, $zero, 310
	ori	$a4, $zero, 8
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$a1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $a1, 4
	addi.w	$s0, $a1, 1
.LBB0_194:                              # %cond.end935.i
	alsl.d	$a0, $s1, $s3, 3
	add.d	$a0, $a0, $s0
	addi.d	$fp, $a0, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_196
# %bb.195:                              # %cond.false954.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.102)
	addi.d	$a2, $a1, %pc_lo12(.L.str.102)
	ori	$a1, $zero, 311
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_196:                              # %test_const_global_member_arrays.exit
	vld	$vr0, $s3, 32
	xvld	$xr1, $s3, 0
	vst	$vr0, $sp, 56
	xvst	$xr1, $sp, 24
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$fp, $zero, 5
	beq	$a0, $fp, .LBB0_198
# %bb.197:                              # %cond.false.i248
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.103)
	addi.d	$a2, $a1, %pc_lo12(.L.str.103)
	ori	$a1, $zero, 328
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_198:                              # %cond.end.i251
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $fp, .LBB0_200
# %bb.199:                              # %cond.false14.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.104)
	addi.d	$a2, $a1, %pc_lo12(.L.str.104)
	ori	$a1, $zero, 329
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_200:                              # %cond.end17.i
	addi.d	$fp, $sp, 25
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_202
# %bb.201:                              # %cond.false32.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.105)
	addi.d	$a2, $a1, %pc_lo12(.L.str.105)
	ori	$a1, $zero, 330
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_202:                              # %cond.end35.i
	addi.d	$s0, $sp, 26
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_204
# %bb.203:                              # %cond.false50.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.106)
	addi.d	$a2, $a1, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 331
	ori	$a4, $zero, 3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_204:                              # %cond.end53.i
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s1, $zero, 5
	beq	$a0, $s1, .LBB0_206
# %bb.205:                              # %cond.false68.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a2, $a1, %pc_lo12(.L.str.107)
	ori	$a1, $zero, 334
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_206:                              # %cond.end71.i
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s1, .LBB0_208
# %bb.207:                              # %cond.false87.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.108)
	addi.d	$a2, $a1, %pc_lo12(.L.str.108)
	ori	$a1, $zero, 335
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_208:                              # %cond.end90.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_210
# %bb.209:                              # %cond.false106.i254
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.109)
	addi.d	$a2, $a1, %pc_lo12(.L.str.109)
	ori	$a1, $zero, 336
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_210:                              # %cond.end109.i257
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_212
# %bb.211:                              # %cond.false125.i260
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.110)
	addi.d	$a2, $a1, %pc_lo12(.L.str.110)
	ori	$a1, $zero, 337
	ori	$a4, $zero, 3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_212:                              # %cond.end128.i263
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_214
# %bb.213:                              # %cond.false145.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.111)
	addi.d	$a2, $a1, %pc_lo12(.L.str.111)
	ori	$a1, $zero, 340
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_214:                              # %cond.end148.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_216
# %bb.215:                              # %cond.false165.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.112)
	addi.d	$a2, $a1, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 341
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_216:                              # %cond.end168.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_218
# %bb.217:                              # %cond.false186.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.113)
	addi.d	$a2, $a1, %pc_lo12(.L.str.113)
	ori	$a1, $zero, 342
	ori	$a4, $zero, 3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_218:                              # %cond.end189.i
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$s1, $sp, 24
	alsl.d	$fp, $s0, $s1, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_220
# %bb.219:                              # %cond.false206.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.114)
	addi.d	$a2, $a1, %pc_lo12(.L.str.114)
	ori	$a1, $zero, 344
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_220:                              # %cond.end209.i
	alsl.d	$a0, $s0, $s1, 3
	addi.d	$fp, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_222
# %bb.221:                              # %cond.false227.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.115)
	addi.d	$a2, $a1, %pc_lo12(.L.str.115)
	ori	$a1, $zero, 345
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_222:                              # %cond.end230.i
	addi.d	$s1, $sp, 24
	alsl.d	$a0, $s0, $s1, 3
	addi.d	$fp, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_224
# %bb.223:                              # %cond.false248.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.116)
	addi.d	$a2, $a1, %pc_lo12(.L.str.116)
	ori	$a1, $zero, 346
	ori	$a4, $zero, 3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_224:                              # %cond.end251.i
	alsl.d	$a0, $s0, $s1, 3
	add.d	$fp, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_226
# %bb.225:                              # %cond.false268.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.117)
	addi.d	$a2, $a1, %pc_lo12(.L.str.117)
	ori	$a1, $zero, 348
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_226:                              # %cond.end271.i
	addi.d	$s1, $sp, 24
	alsl.d	$a0, $s0, $s1, 3
	addi.w	$a1, $s0, 1
	add.d	$fp, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_228
# %bb.227:                              # %cond.false289.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.118)
	addi.d	$a2, $a1, %pc_lo12(.L.str.118)
	ori	$a1, $zero, 349
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_228:                              # %cond.end292.i
	alsl.d	$a0, $s0, $s1, 3
	addi.w	$a1, $s0, 2
	add.d	$fp, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_230
# %bb.229:                              # %cond.false310.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.119)
	addi.d	$a2, $a1, %pc_lo12(.L.str.119)
	ori	$a1, $zero, 350
	ori	$a4, $zero, 3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_230:                              # %cond.end313.i
	addi.d	$fp, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s0, $zero, 6
	beq	$a0, $s0, .LBB0_232
# %bb.231:                              # %cond.false328.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.120)
	addi.d	$a2, $a1, %pc_lo12(.L.str.120)
	ori	$a1, $zero, 354
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_232:                              # %cond.end331.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s0, .LBB0_234
# %bb.233:                              # %cond.false346.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.121)
	addi.d	$a2, $a1, %pc_lo12(.L.str.121)
	ori	$a1, $zero, 355
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_234:                              # %cond.end349.i
	addi.d	$s0, $sp, 33
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_236
# %bb.235:                              # %cond.false364.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.122)
	addi.d	$a2, $a1, %pc_lo12(.L.str.122)
	ori	$a1, $zero, 356
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_236:                              # %cond.end367.i
	addi.d	$s1, $sp, 34
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_238
# %bb.237:                              # %cond.false382.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.123)
	addi.d	$a2, $a1, %pc_lo12(.L.str.123)
	ori	$a1, $zero, 357
	ori	$a4, $zero, 4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_238:                              # %cond.end385.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s2, $zero, 6
	beq	$a0, $s2, .LBB0_240
# %bb.239:                              # %cond.false402.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a2, $a1, %pc_lo12(.L.str.107)
	ori	$a1, $zero, 360
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_240:                              # %cond.end405.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s2, .LBB0_242
# %bb.241:                              # %cond.false421.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.108)
	addi.d	$a2, $a1, %pc_lo12(.L.str.108)
	ori	$a1, $zero, 361
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_242:                              # %cond.end424.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_244
# %bb.243:                              # %cond.false440.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.109)
	addi.d	$a2, $a1, %pc_lo12(.L.str.109)
	ori	$a1, $zero, 362
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_244:                              # %cond.end443.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_246
# %bb.245:                              # %cond.false459.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.110)
	addi.d	$a2, $a1, %pc_lo12(.L.str.110)
	ori	$a1, $zero, 363
	ori	$a4, $zero, 4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_246:                              # %cond.end462.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_248
# %bb.247:                              # %cond.false480.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.111)
	addi.d	$a2, $a1, %pc_lo12(.L.str.111)
	ori	$a1, $zero, 366
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_248:                              # %cond.end483.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_250
# %bb.249:                              # %cond.false501.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.112)
	addi.d	$a2, $a1, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 367
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_250:                              # %cond.end504.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_252
# %bb.251:                              # %cond.false522.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.113)
	addi.d	$a2, $a1, %pc_lo12(.L.str.113)
	ori	$a1, $zero, 368
	ori	$a4, $zero, 4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_252:                              # %cond.end525.i
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.w	$s1, $s0, 1
	addi.d	$s2, $sp, 24
	alsl.d	$fp, $s1, $s2, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_254
# %bb.253:                              # %cond.false543.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.124)
	addi.d	$a2, $a1, %pc_lo12(.L.str.124)
	ori	$a1, $zero, 370
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_254:                              # %cond.end546.i
	alsl.d	$a0, $s1, $s2, 3
	addi.d	$fp, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_256
# %bb.255:                              # %cond.false565.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.125)
	addi.d	$a2, $a1, %pc_lo12(.L.str.125)
	ori	$a1, $zero, 371
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_256:                              # %cond.end568.i
	addi.d	$s2, $sp, 24
	alsl.d	$a0, $s1, $s2, 3
	addi.d	$fp, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_258
# %bb.257:                              # %cond.false587.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.126)
	addi.d	$a2, $a1, %pc_lo12(.L.str.126)
	ori	$a1, $zero, 372
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_258:                              # %cond.end590.i
	alsl.d	$a0, $s1, $s2, 3
	add.d	$fp, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_260
# %bb.259:                              # %cond.false608.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.127)
	addi.d	$a2, $a1, %pc_lo12(.L.str.127)
	ori	$a1, $zero, 374
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_260:                              # %cond.end611.i
	addi.d	$s2, $sp, 24
	alsl.d	$a0, $s1, $s2, 3
	add.d	$fp, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_262
# %bb.261:                              # %cond.false630.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.128)
	addi.d	$a2, $a1, %pc_lo12(.L.str.128)
	ori	$a1, $zero, 375
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_262:                              # %cond.end633.i
	alsl.d	$a0, $s1, $s2, 3
	addi.w	$a1, $s0, 2
	add.d	$fp, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_264
# %bb.263:                              # %cond.false652.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.129)
	addi.d	$a2, $a1, %pc_lo12(.L.str.129)
	ori	$a1, $zero, 376
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_264:                              # %cond.end655.i
	addi.d	$s0, $sp, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$fp, $zero, 9
	beq	$a0, $fp, .LBB0_266
# %bb.265:                              # %cond.false670.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.130)
	addi.d	$a2, $a1, %pc_lo12(.L.str.130)
	ori	$a1, $zero, 380
	ori	$a4, $zero, 9
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_266:                              # %cond.end673.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $fp, .LBB0_268
# %bb.267:                              # %cond.false688.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.131)
	addi.d	$a2, $a1, %pc_lo12(.L.str.131)
	ori	$a1, $zero, 381
	ori	$a4, $zero, 9
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_268:                              # %cond.end691.i
	addi.d	$s1, $sp, 57
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_270
# %bb.269:                              # %cond.false706.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.132)
	addi.d	$a2, $a1, %pc_lo12(.L.str.132)
	ori	$a1, $zero, 382
	ori	$a4, $zero, 8
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_270:                              # %cond.end709.i
	addi.d	$fp, $sp, 60
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_272
# %bb.271:                              # %cond.false723.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.133)
	addi.d	$a2, $a1, %pc_lo12(.L.str.133)
	ori	$a1, $zero, 383
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_272:                              # %cond.end726.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s2, $zero, 9
	beq	$a0, $s2, .LBB0_274
# %bb.273:                              # %cond.false743.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a2, $a1, %pc_lo12(.L.str.107)
	ori	$a1, $zero, 386
	ori	$a4, $zero, 9
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_274:                              # %cond.end746.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s2, .LBB0_276
# %bb.275:                              # %cond.false762.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.108)
	addi.d	$a2, $a1, %pc_lo12(.L.str.108)
	ori	$a1, $zero, 387
	ori	$a4, $zero, 9
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_276:                              # %cond.end765.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_278
# %bb.277:                              # %cond.false781.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.109)
	addi.d	$a2, $a1, %pc_lo12(.L.str.109)
	ori	$a1, $zero, 388
	ori	$a4, $zero, 8
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_278:                              # %cond.end784.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_280
# %bb.279:                              # %cond.false800.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.134)
	addi.d	$a2, $a1, %pc_lo12(.L.str.134)
	ori	$a1, $zero, 389
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_280:                              # %cond.end803.i
	addi.d	$s0, $sp, 59
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_282
# %bb.281:                              # %cond.false822.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.111)
	addi.d	$a2, $a1, %pc_lo12(.L.str.111)
	ori	$a1, $zero, 392
	ori	$a4, $zero, 6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_282:                              # %cond.end825.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_284
# %bb.283:                              # %cond.false843.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.112)
	addi.d	$a2, $a1, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 393
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_284:                              # %cond.end846.i
	addi.d	$fp, $sp, 61
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_286
# %bb.285:                              # %cond.false864.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.135)
	addi.d	$a2, $a1, %pc_lo12(.L.str.135)
	ori	$a1, $zero, 394
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_286:                              # %cond.end867.i
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.w	$s0, $s1, 4
	addi.d	$s2, $sp, 24
	alsl.d	$a0, $s0, $s2, 3
	addi.d	$fp, $a0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_288
# %bb.287:                              # %cond.false885.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.136)
	addi.d	$a2, $a1, %pc_lo12(.L.str.136)
	ori	$a1, $zero, 396
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s0, $s1, 4
.LBB0_288:                              # %cond.end888.i
	alsl.d	$a0, $s0, $s2, 3
	addi.d	$fp, $a0, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_290
# %bb.289:                              # %cond.false907.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.137)
	addi.d	$a2, $a1, %pc_lo12(.L.str.137)
	ori	$a1, $zero, 397
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s0, $s1, 4
.LBB0_290:                              # %cond.end910.i
	addi.d	$s2, $sp, 24
	alsl.d	$a0, $s0, $s2, 3
	addi.d	$fp, $a0, 5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_292
# %bb.291:                              # %cond.false929.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.138)
	addi.d	$a2, $a1, %pc_lo12(.L.str.138)
	ori	$a1, $zero, 398
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s0, $s1, 4
.LBB0_292:                              # %cond.end932.i
	alsl.d	$a0, $s0, $s2, 3
	add.d	$fp, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 9
	beq	$a0, $a1, .LBB0_294
# %bb.293:                              # %cond.false950.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.139)
	addi.d	$a2, $a1, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 400
	ori	$a4, $zero, 9
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s0, $s1, 4
.LBB0_294:                              # %cond.end953.i
	addi.d	$s2, $sp, 24
	alsl.d	$a0, $s0, $s2, 3
	addi.w	$s1, $s1, 1
	add.d	$fp, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_296
# %bb.295:                              # %cond.false972.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.140)
	addi.d	$a2, $a1, %pc_lo12(.L.str.140)
	ori	$a1, $zero, 401
	ori	$a4, $zero, 8
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$a1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s0, $a1, 4
	addi.w	$s1, $a1, 1
.LBB0_296:                              # %cond.end975.i
	alsl.d	$a0, $s0, $s2, 3
	add.d	$a0, $a0, $s1
	addi.d	$fp, $a0, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_298
# %bb.297:                              # %cond.false994.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.141)
	addi.d	$a2, $a1, %pc_lo12(.L.str.141)
	ori	$a1, $zero, 402
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_298:                              # %test_const_local_member_arrays.exit
	pcalau12i	$a0, %pc_hi20(vma)
	addi.d	$a0, $a0, %pc_lo12(vma)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s0, $zero, 5
	beq	$a0, $s0, .LBB0_300
# %bb.299:                              # %cond.false.i320
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.142)
	addi.d	$a2, $a1, %pc_lo12(.L.str.142)
	pcalau12i	$a1, %pc_hi20(vma)
	addi.d	$a3, $a1, %pc_lo12(vma)
	ori	$a1, $zero, 418
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_300:                              # %cond.end.i323
	pcalau12i	$a0, %pc_hi20(vma)
	addi.d	$fp, $a0, %pc_lo12(vma)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s0, .LBB0_302
# %bb.301:                              # %cond.false11.i326
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.143)
	addi.d	$a2, $a1, %pc_lo12(.L.str.143)
	pcalau12i	$a1, %pc_hi20(vma)
	addi.d	$a3, $a1, %pc_lo12(vma)
	ori	$a1, $zero, 419
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_302:                              # %cond.end14.i329
	addi.d	$s0, $fp, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_304
# %bb.303:                              # %cond.false25.i332
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.144)
	addi.d	$a2, $a1, %pc_lo12(.L.str.144)
	ori	$a1, $zero, 420
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_304:                              # %cond.end28.i335
	addi.d	$fp, $fp, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_306
# %bb.305:                              # %cond.false39.i338
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.145)
	addi.d	$a2, $a1, %pc_lo12(.L.str.145)
	ori	$a1, $zero, 421
	ori	$a4, $zero, 3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_306:                              # %cond.end42.i341
	pcalau12i	$a0, %pc_hi20(vma)
	addi.d	$a0, $a0, %pc_lo12(vma)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s0, $zero, 5
	beq	$a0, $s0, .LBB0_308
# %bb.307:                              # %cond.false53.i344
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.146)
	addi.d	$a2, $a1, %pc_lo12(.L.str.146)
	pcalau12i	$a1, %pc_hi20(vma)
	addi.d	$a3, $a1, %pc_lo12(vma)
	ori	$a1, $zero, 424
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_308:                              # %cond.end56.i347
	pcalau12i	$a0, %pc_hi20(vma)
	addi.d	$fp, $a0, %pc_lo12(vma)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s0, .LBB0_310
# %bb.309:                              # %cond.false71.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.147)
	addi.d	$a2, $a1, %pc_lo12(.L.str.147)
	pcalau12i	$a1, %pc_hi20(vma)
	addi.d	$a3, $a1, %pc_lo12(vma)
	ori	$a1, $zero, 425
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_310:                              # %cond.end74.i
	addi.d	$s0, $fp, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_312
# %bb.311:                              # %cond.false90.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.148)
	addi.d	$a2, $a1, %pc_lo12(.L.str.148)
	ori	$a1, $zero, 426
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_312:                              # %cond.end93.i
	addi.d	$fp, $fp, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_314
# %bb.313:                              # %cond.false109.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.149)
	addi.d	$a2, $a1, %pc_lo12(.L.str.149)
	ori	$a1, $zero, 427
	ori	$a4, $zero, 3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_314:                              # %cond.end112.i
	pcalau12i	$a0, %pc_hi20(vma)
	addi.d	$fp, $a0, %pc_lo12(vma)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_316
# %bb.315:                              # %cond.false129.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.150)
	addi.d	$a2, $a1, %pc_lo12(.L.str.150)
	pcalau12i	$a1, %pc_hi20(vma)
	addi.d	$a3, $a1, %pc_lo12(vma)
	ori	$a1, $zero, 430
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_316:                              # %cond.end132.i
	addi.d	$s0, $fp, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_318
# %bb.317:                              # %cond.false149.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.151)
	addi.d	$a2, $a1, %pc_lo12(.L.str.151)
	ori	$a1, $zero, 431
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_318:                              # %cond.end152.i
	addi.d	$s0, $fp, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_320
# %bb.319:                              # %cond.false170.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.152)
	addi.d	$a2, $a1, %pc_lo12(.L.str.152)
	ori	$a1, $zero, 432
	ori	$a4, $zero, 3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_320:                              # %cond.end173.i
	ld.w	$s1, $s6, %pc_lo12(idx)
	alsl.d	$s0, $s1, $fp, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_322
# %bb.321:                              # %cond.false190.i354
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.153)
	addi.d	$a2, $a1, %pc_lo12(.L.str.153)
	ori	$a1, $zero, 434
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_322:                              # %cond.end193.i359
	alsl.d	$a0, $s1, $fp, 3
	addi.d	$s0, $a0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_324
# %bb.323:                              # %cond.false211.i364
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.154)
	addi.d	$a2, $a1, %pc_lo12(.L.str.154)
	ori	$a1, $zero, 435
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_324:                              # %cond.end214.i369
	alsl.d	$a0, $s1, $fp, 3
	addi.d	$s0, $a0, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_326
# %bb.325:                              # %cond.false232.i374
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.155)
	addi.d	$a2, $a1, %pc_lo12(.L.str.155)
	ori	$a1, $zero, 436
	ori	$a4, $zero, 3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_326:                              # %cond.end235.i379
	alsl.d	$a0, $s1, $fp, 3
	add.d	$s0, $a0, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_328
# %bb.327:                              # %cond.false252.i385
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.156)
	addi.d	$a2, $a1, %pc_lo12(.L.str.156)
	ori	$a1, $zero, 438
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_328:                              # %cond.end255.i390
	alsl.d	$a0, $s1, $fp, 3
	addi.w	$a1, $s1, 1
	add.d	$s0, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_330
# %bb.329:                              # %cond.false273.i398
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.157)
	addi.d	$a2, $a1, %pc_lo12(.L.str.157)
	ori	$a1, $zero, 439
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_330:                              # %cond.end276.i403
	alsl.d	$a0, $s1, $fp, 3
	addi.w	$a1, $s1, 2
	add.d	$s0, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_332
# %bb.331:                              # %cond.false294.i411
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.158)
	addi.d	$a2, $a1, %pc_lo12(.L.str.158)
	ori	$a1, $zero, 440
	ori	$a4, $zero, 3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_332:                              # %cond.end297.i414
	addi.d	$s0, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s1, $zero, 6
	beq	$a0, $s1, .LBB0_334
# %bb.333:                              # %cond.false309.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.159)
	addi.d	$a2, $a1, %pc_lo12(.L.str.159)
	ori	$a1, $zero, 444
	ori	$a4, $zero, 6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_334:                              # %cond.end312.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s1, .LBB0_336
# %bb.335:                              # %cond.false324.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.160)
	addi.d	$a2, $a1, %pc_lo12(.L.str.160)
	ori	$a1, $zero, 445
	ori	$a4, $zero, 6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_336:                              # %cond.end327.i
	addi.d	$s1, $fp, 9
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_338
# %bb.337:                              # %cond.false339.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.161)
	addi.d	$a2, $a1, %pc_lo12(.L.str.161)
	ori	$a1, $zero, 446
	ori	$a4, $zero, 5
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_338:                              # %cond.end342.i
	addi.d	$s2, $fp, 10
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_340
# %bb.339:                              # %cond.false354.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.162)
	addi.d	$a2, $a1, %pc_lo12(.L.str.162)
	ori	$a1, $zero, 447
	ori	$a4, $zero, 4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_340:                              # %cond.end357.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s4, $zero, 6
	beq	$a0, $s4, .LBB0_342
# %bb.341:                              # %cond.false374.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.146)
	addi.d	$a2, $a1, %pc_lo12(.L.str.146)
	ori	$a1, $zero, 450
	ori	$a4, $zero, 6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_342:                              # %cond.end377.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s4, .LBB0_344
# %bb.343:                              # %cond.false393.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.147)
	addi.d	$a2, $a1, %pc_lo12(.L.str.147)
	ori	$a1, $zero, 451
	ori	$a4, $zero, 6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_344:                              # %cond.end396.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_346
# %bb.345:                              # %cond.false412.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.148)
	addi.d	$a2, $a1, %pc_lo12(.L.str.148)
	ori	$a1, $zero, 452
	ori	$a4, $zero, 5
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_346:                              # %cond.end415.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_348
# %bb.347:                              # %cond.false431.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.149)
	addi.d	$a2, $a1, %pc_lo12(.L.str.149)
	ori	$a1, $zero, 453
	ori	$a4, $zero, 4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_348:                              # %cond.end434.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_350
# %bb.349:                              # %cond.false452.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.150)
	addi.d	$a2, $a1, %pc_lo12(.L.str.150)
	ori	$a1, $zero, 456
	ori	$a4, $zero, 6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_350:                              # %cond.end455.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_352
# %bb.351:                              # %cond.false473.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.151)
	addi.d	$a2, $a1, %pc_lo12(.L.str.151)
	ori	$a1, $zero, 457
	ori	$a4, $zero, 5
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_352:                              # %cond.end476.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_354
# %bb.353:                              # %cond.false494.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.152)
	addi.d	$a2, $a1, %pc_lo12(.L.str.152)
	ori	$a1, $zero, 458
	ori	$a4, $zero, 4
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_354:                              # %cond.end497.i415
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.w	$s2, $s1, 1
	alsl.d	$s0, $s2, $fp, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_356
# %bb.355:                              # %cond.false515.i421
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.163)
	addi.d	$a2, $a1, %pc_lo12(.L.str.163)
	ori	$a1, $zero, 460
	ori	$a4, $zero, 6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s2, $s1, 1
.LBB0_356:                              # %cond.end518.i427
	alsl.d	$a0, $s2, $fp, 3
	addi.d	$s0, $a0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_358
# %bb.357:                              # %cond.false537.i432
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.164)
	addi.d	$a2, $a1, %pc_lo12(.L.str.164)
	ori	$a1, $zero, 461
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s2, $s1, 1
.LBB0_358:                              # %cond.end540.i438
	alsl.d	$a0, $s2, $fp, 3
	addi.d	$s0, $a0, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_360
# %bb.359:                              # %cond.false559.i443
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.165)
	addi.d	$a2, $a1, %pc_lo12(.L.str.165)
	ori	$a1, $zero, 462
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s2, $s1, 1
.LBB0_360:                              # %cond.end562.i449
	alsl.d	$a0, $s2, $fp, 3
	add.d	$s0, $a0, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_362
# %bb.361:                              # %cond.false580.i456
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.166)
	addi.d	$a2, $a1, %pc_lo12(.L.str.166)
	ori	$a1, $zero, 464
	ori	$a4, $zero, 6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s2, $s1, 1
.LBB0_362:                              # %cond.end583.i462
	alsl.d	$a0, $s2, $fp, 3
	add.d	$s0, $a0, $s2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_364
# %bb.363:                              # %cond.false602.i468
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.167)
	addi.d	$a2, $a1, %pc_lo12(.L.str.167)
	ori	$a1, $zero, 465
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s2, $s1, 1
.LBB0_364:                              # %cond.end605.i474
	alsl.d	$a0, $s2, $fp, 3
	addi.w	$a1, $s1, 2
	add.d	$s0, $a0, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_366
# %bb.365:                              # %cond.false624.i482
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.168)
	addi.d	$a2, $a1, %pc_lo12(.L.str.168)
	ori	$a1, $zero, 466
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_366:                              # %cond.end627.i
	addi.d	$s1, $fp, 32
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s0, $zero, 9
	beq	$a0, $s0, .LBB0_368
# %bb.367:                              # %cond.false639.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.169)
	addi.d	$a2, $a1, %pc_lo12(.L.str.169)
	ori	$a1, $zero, 470
	ori	$a4, $zero, 9
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_368:                              # %cond.end642.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s0, .LBB0_370
# %bb.369:                              # %cond.false654.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.170)
	addi.d	$a2, $a1, %pc_lo12(.L.str.170)
	ori	$a1, $zero, 471
	ori	$a4, $zero, 9
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_370:                              # %cond.end657.i
	addi.d	$s2, $fp, 33
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_372
# %bb.371:                              # %cond.false669.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.171)
	addi.d	$a2, $a1, %pc_lo12(.L.str.171)
	ori	$a1, $zero, 472
	ori	$a4, $zero, 8
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_372:                              # %cond.end672.i
	addi.d	$s0, $fp, 36
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_374
# %bb.373:                              # %cond.false684.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.172)
	addi.d	$a2, $a1, %pc_lo12(.L.str.172)
	ori	$a1, $zero, 473
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_374:                              # %cond.end687.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s4, $zero, 9
	beq	$a0, $s4, .LBB0_376
# %bb.375:                              # %cond.false704.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.146)
	addi.d	$a2, $a1, %pc_lo12(.L.str.146)
	ori	$a1, $zero, 476
	ori	$a4, $zero, 9
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_376:                              # %cond.end707.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s4, .LBB0_378
# %bb.377:                              # %cond.false723.i487
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.147)
	addi.d	$a2, $a1, %pc_lo12(.L.str.147)
	ori	$a1, $zero, 477
	ori	$a4, $zero, 9
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_378:                              # %cond.end726.i490
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_380
# %bb.379:                              # %cond.false742.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.148)
	addi.d	$a2, $a1, %pc_lo12(.L.str.148)
	ori	$a1, $zero, 478
	ori	$a4, $zero, 8
	move	$a3, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_380:                              # %cond.end745.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_382
# %bb.381:                              # %cond.false760.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.173)
	addi.d	$a2, $a1, %pc_lo12(.L.str.173)
	ori	$a1, $zero, 479
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_382:                              # %cond.end763.i
	addi.d	$s1, $fp, 35
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_384
# %bb.383:                              # %cond.false782.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.150)
	addi.d	$a2, $a1, %pc_lo12(.L.str.150)
	ori	$a1, $zero, 482
	ori	$a4, $zero, 6
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_384:                              # %cond.end785.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_386
# %bb.385:                              # %cond.false803.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.151)
	addi.d	$a2, $a1, %pc_lo12(.L.str.151)
	ori	$a1, $zero, 483
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_386:                              # %cond.end806.i
	addi.d	$s0, $fp, 37
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_388
# %bb.387:                              # %cond.false824.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.174)
	addi.d	$a2, $a1, %pc_lo12(.L.str.174)
	ori	$a1, $zero, 484
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_388:                              # %cond.end827.i491
	ld.w	$s2, $s6, %pc_lo12(idx)
	addi.w	$s1, $s2, 4
	alsl.d	$a0, $s1, $fp, 3
	addi.d	$s0, $a0, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_390
# %bb.389:                              # %cond.false845.i497
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.175)
	addi.d	$a2, $a1, %pc_lo12(.L.str.175)
	ori	$a1, $zero, 486
	ori	$a4, $zero, 6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s2, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s2, 4
.LBB0_390:                              # %cond.end848.i503
	alsl.d	$a0, $s1, $fp, 3
	addi.d	$s0, $a0, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_392
# %bb.391:                              # %cond.false867.i508
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.176)
	addi.d	$a2, $a1, %pc_lo12(.L.str.176)
	ori	$a1, $zero, 487
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s2, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s2, 4
.LBB0_392:                              # %cond.end870.i514
	alsl.d	$a0, $s1, $fp, 3
	addi.d	$s0, $a0, 5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_394
# %bb.393:                              # %cond.false889.i519
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.177)
	addi.d	$a2, $a1, %pc_lo12(.L.str.177)
	ori	$a1, $zero, 488
	ori	$a4, $zero, 4
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s2, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s2, 4
.LBB0_394:                              # %cond.end892.i525
	alsl.d	$a0, $s1, $fp, 3
	add.d	$s0, $a0, $s2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 9
	beq	$a0, $a1, .LBB0_396
# %bb.395:                              # %cond.false910.i532
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.178)
	addi.d	$a2, $a1, %pc_lo12(.L.str.178)
	ori	$a1, $zero, 490
	ori	$a4, $zero, 9
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s2, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s2, 4
.LBB0_396:                              # %cond.end913.i538
	alsl.d	$a0, $s1, $fp, 3
	addi.w	$s2, $s2, 1
	add.d	$s0, $a0, $s2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_398
# %bb.397:                              # %cond.false932.i546
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.179)
	addi.d	$a2, $a1, %pc_lo12(.L.str.179)
	ori	$a1, $zero, 491
	ori	$a4, $zero, 8
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$a1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $a1, 4
	addi.w	$s2, $a1, 1
.LBB0_398:                              # %cond.end935.i554
	alsl.d	$a0, $s1, $fp, 3
	add.d	$a0, $a0, $s2
	addi.d	$fp, $a0, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_400
# %bb.399:                              # %cond.false954.i561
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.180)
	addi.d	$a2, $a1, %pc_lo12(.L.str.180)
	ori	$a1, $zero, 492
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_400:                              # %test_nonconst_global_member_arrays.exit
	vld	$vr0, $s3, 32
	xvld	$xr1, $s3, 0
	vst	$vr0, $sp, 56
	xvst	$xr1, $sp, 24
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$fp, $zero, 5
	beq	$a0, $fp, .LBB0_402
# %bb.401:                              # %cond.false.i567
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.103)
	addi.d	$a2, $a1, %pc_lo12(.L.str.103)
	ori	$a1, $zero, 509
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_402:                              # %cond.end.i570
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $fp, .LBB0_404
# %bb.403:                              # %cond.false14.i573
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.104)
	addi.d	$a2, $a1, %pc_lo12(.L.str.104)
	ori	$a1, $zero, 510
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_404:                              # %cond.end17.i576
	addi.d	$fp, $sp, 25
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_406
# %bb.405:                              # %cond.false32.i580
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.105)
	addi.d	$a2, $a1, %pc_lo12(.L.str.105)
	ori	$a1, $zero, 511
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_406:                              # %cond.end35.i583
	addi.d	$s0, $sp, 26
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_408
# %bb.407:                              # %cond.false50.i587
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.106)
	addi.d	$a2, $a1, %pc_lo12(.L.str.106)
	ori	$a1, $zero, 512
	ori	$a4, $zero, 3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_408:                              # %cond.end53.i590
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s1, $zero, 5
	beq	$a0, $s1, .LBB0_410
# %bb.409:                              # %cond.false68.i593
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a2, $a1, %pc_lo12(.L.str.107)
	ori	$a1, $zero, 515
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_410:                              # %cond.end71.i596
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s1, .LBB0_412
# %bb.411:                              # %cond.false87.i599
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.108)
	addi.d	$a2, $a1, %pc_lo12(.L.str.108)
	ori	$a1, $zero, 516
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_412:                              # %cond.end90.i602
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_414
# %bb.413:                              # %cond.false106.i605
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.109)
	addi.d	$a2, $a1, %pc_lo12(.L.str.109)
	ori	$a1, $zero, 517
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_414:                              # %cond.end109.i608
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_416
# %bb.415:                              # %cond.false125.i611
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.110)
	addi.d	$a2, $a1, %pc_lo12(.L.str.110)
	ori	$a1, $zero, 518
	ori	$a4, $zero, 3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_416:                              # %cond.end128.i614
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_418
# %bb.417:                              # %cond.false145.i617
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.111)
	addi.d	$a2, $a1, %pc_lo12(.L.str.111)
	ori	$a1, $zero, 521
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_418:                              # %cond.end148.i620
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_420
# %bb.419:                              # %cond.false165.i623
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.112)
	addi.d	$a2, $a1, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 522
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_420:                              # %cond.end168.i626
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_422
# %bb.421:                              # %cond.false186.i629
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.113)
	addi.d	$a2, $a1, %pc_lo12(.L.str.113)
	ori	$a1, $zero, 523
	ori	$a4, $zero, 3
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_422:                              # %cond.end189.i632
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$s1, $sp, 24
	alsl.d	$fp, $s0, $s1, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_424
# %bb.423:                              # %cond.false206.i637
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.114)
	addi.d	$a2, $a1, %pc_lo12(.L.str.114)
	ori	$a1, $zero, 525
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_424:                              # %cond.end209.i642
	alsl.d	$a0, $s0, $s1, 3
	addi.d	$fp, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_426
# %bb.425:                              # %cond.false227.i647
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.115)
	addi.d	$a2, $a1, %pc_lo12(.L.str.115)
	ori	$a1, $zero, 526
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_426:                              # %cond.end230.i652
	addi.d	$s1, $sp, 24
	alsl.d	$a0, $s0, $s1, 3
	addi.d	$fp, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_428
# %bb.427:                              # %cond.false248.i657
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.116)
	addi.d	$a2, $a1, %pc_lo12(.L.str.116)
	ori	$a1, $zero, 527
	ori	$a4, $zero, 3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_428:                              # %cond.end251.i662
	alsl.d	$a0, $s0, $s1, 3
	add.d	$fp, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_430
# %bb.429:                              # %cond.false268.i668
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.117)
	addi.d	$a2, $a1, %pc_lo12(.L.str.117)
	ori	$a1, $zero, 529
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_430:                              # %cond.end271.i673
	addi.d	$s1, $sp, 24
	alsl.d	$a0, $s0, $s1, 3
	addi.w	$a1, $s0, 1
	add.d	$fp, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_432
# %bb.431:                              # %cond.false289.i681
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.118)
	addi.d	$a2, $a1, %pc_lo12(.L.str.118)
	ori	$a1, $zero, 530
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_432:                              # %cond.end292.i686
	alsl.d	$a0, $s0, $s1, 3
	addi.w	$a1, $s0, 2
	add.d	$fp, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_434
# %bb.433:                              # %cond.false310.i694
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.119)
	addi.d	$a2, $a1, %pc_lo12(.L.str.119)
	ori	$a1, $zero, 531
	ori	$a4, $zero, 3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_434:                              # %cond.end313.i697
	addi.d	$fp, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s0, $zero, 6
	beq	$a0, $s0, .LBB0_436
# %bb.435:                              # %cond.false328.i701
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.120)
	addi.d	$a2, $a1, %pc_lo12(.L.str.120)
	ori	$a1, $zero, 535
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_436:                              # %cond.end331.i704
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s0, .LBB0_438
# %bb.437:                              # %cond.false346.i707
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.121)
	addi.d	$a2, $a1, %pc_lo12(.L.str.121)
	ori	$a1, $zero, 536
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_438:                              # %cond.end349.i710
	addi.d	$s0, $sp, 33
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_440
# %bb.439:                              # %cond.false364.i714
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.122)
	addi.d	$a2, $a1, %pc_lo12(.L.str.122)
	ori	$a1, $zero, 537
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_440:                              # %cond.end367.i717
	addi.d	$s1, $sp, 34
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_442
# %bb.441:                              # %cond.false382.i721
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.123)
	addi.d	$a2, $a1, %pc_lo12(.L.str.123)
	ori	$a1, $zero, 538
	ori	$a4, $zero, 4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_442:                              # %cond.end385.i724
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s2, $zero, 6
	beq	$a0, $s2, .LBB0_444
# %bb.443:                              # %cond.false402.i727
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a2, $a1, %pc_lo12(.L.str.107)
	ori	$a1, $zero, 541
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_444:                              # %cond.end405.i730
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s2, .LBB0_446
# %bb.445:                              # %cond.false421.i733
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.108)
	addi.d	$a2, $a1, %pc_lo12(.L.str.108)
	ori	$a1, $zero, 542
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_446:                              # %cond.end424.i736
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_448
# %bb.447:                              # %cond.false440.i739
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.109)
	addi.d	$a2, $a1, %pc_lo12(.L.str.109)
	ori	$a1, $zero, 543
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_448:                              # %cond.end443.i742
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_450
# %bb.449:                              # %cond.false459.i745
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.110)
	addi.d	$a2, $a1, %pc_lo12(.L.str.110)
	ori	$a1, $zero, 544
	ori	$a4, $zero, 4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_450:                              # %cond.end462.i748
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_452
# %bb.451:                              # %cond.false480.i751
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.111)
	addi.d	$a2, $a1, %pc_lo12(.L.str.111)
	ori	$a1, $zero, 547
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_452:                              # %cond.end483.i754
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_454
# %bb.453:                              # %cond.false501.i757
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.112)
	addi.d	$a2, $a1, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 548
	ori	$a4, $zero, 5
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_454:                              # %cond.end504.i760
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_456
# %bb.455:                              # %cond.false522.i763
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.113)
	addi.d	$a2, $a1, %pc_lo12(.L.str.113)
	ori	$a1, $zero, 549
	ori	$a4, $zero, 4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_456:                              # %cond.end525.i766
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.w	$s1, $s0, 1
	addi.d	$s2, $sp, 24
	alsl.d	$fp, $s1, $s2, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_458
# %bb.457:                              # %cond.false543.i772
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.124)
	addi.d	$a2, $a1, %pc_lo12(.L.str.124)
	ori	$a1, $zero, 551
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_458:                              # %cond.end546.i778
	alsl.d	$a0, $s1, $s2, 3
	addi.d	$fp, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_460
# %bb.459:                              # %cond.false565.i783
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.125)
	addi.d	$a2, $a1, %pc_lo12(.L.str.125)
	ori	$a1, $zero, 552
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_460:                              # %cond.end568.i789
	addi.d	$s2, $sp, 24
	alsl.d	$a0, $s1, $s2, 3
	addi.d	$fp, $a0, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_462
# %bb.461:                              # %cond.false587.i794
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.126)
	addi.d	$a2, $a1, %pc_lo12(.L.str.126)
	ori	$a1, $zero, 553
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_462:                              # %cond.end590.i800
	alsl.d	$a0, $s1, $s2, 3
	add.d	$fp, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_464
# %bb.463:                              # %cond.false608.i807
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.127)
	addi.d	$a2, $a1, %pc_lo12(.L.str.127)
	ori	$a1, $zero, 555
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_464:                              # %cond.end611.i813
	addi.d	$s2, $sp, 24
	alsl.d	$a0, $s1, $s2, 3
	add.d	$fp, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_466
# %bb.465:                              # %cond.false630.i819
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.128)
	addi.d	$a2, $a1, %pc_lo12(.L.str.128)
	ori	$a1, $zero, 556
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s0, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s1, $s0, 1
.LBB0_466:                              # %cond.end633.i825
	alsl.d	$a0, $s1, $s2, 3
	addi.w	$a1, $s0, 2
	add.d	$fp, $a0, $a1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_468
# %bb.467:                              # %cond.false652.i833
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.129)
	addi.d	$a2, $a1, %pc_lo12(.L.str.129)
	ori	$a1, $zero, 557
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_468:                              # %cond.end655.i836
	addi.d	$s0, $sp, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$fp, $zero, 9
	beq	$a0, $fp, .LBB0_470
# %bb.469:                              # %cond.false670.i840
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.130)
	addi.d	$a2, $a1, %pc_lo12(.L.str.130)
	ori	$a1, $zero, 561
	ori	$a4, $zero, 9
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_470:                              # %cond.end673.i843
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $fp, .LBB0_472
# %bb.471:                              # %cond.false688.i846
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.131)
	addi.d	$a2, $a1, %pc_lo12(.L.str.131)
	ori	$a1, $zero, 562
	ori	$a4, $zero, 9
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_472:                              # %cond.end691.i849
	addi.d	$s1, $sp, 57
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_474
# %bb.473:                              # %cond.false706.i853
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.132)
	addi.d	$a2, $a1, %pc_lo12(.L.str.132)
	ori	$a1, $zero, 563
	ori	$a4, $zero, 8
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_474:                              # %cond.end709.i856
	addi.d	$fp, $sp, 60
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_476
# %bb.475:                              # %cond.false723.i860
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.133)
	addi.d	$a2, $a1, %pc_lo12(.L.str.133)
	ori	$a1, $zero, 564
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_476:                              # %cond.end726.i863
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s2, $zero, 9
	beq	$a0, $s2, .LBB0_478
# %bb.477:                              # %cond.false743.i866
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.107)
	addi.d	$a2, $a1, %pc_lo12(.L.str.107)
	ori	$a1, $zero, 567
	ori	$a4, $zero, 9
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_478:                              # %cond.end746.i869
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s2, .LBB0_480
# %bb.479:                              # %cond.false762.i872
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.108)
	addi.d	$a2, $a1, %pc_lo12(.L.str.108)
	ori	$a1, $zero, 568
	ori	$a4, $zero, 9
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_480:                              # %cond.end765.i875
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_482
# %bb.481:                              # %cond.false781.i878
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.109)
	addi.d	$a2, $a1, %pc_lo12(.L.str.109)
	ori	$a1, $zero, 569
	ori	$a4, $zero, 8
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_482:                              # %cond.end784.i881
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_484
# %bb.483:                              # %cond.false800.i884
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.134)
	addi.d	$a2, $a1, %pc_lo12(.L.str.134)
	ori	$a1, $zero, 570
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_484:                              # %cond.end803.i887
	addi.d	$s0, $sp, 59
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_486
# %bb.485:                              # %cond.false822.i891
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.111)
	addi.d	$a2, $a1, %pc_lo12(.L.str.111)
	ori	$a1, $zero, 573
	ori	$a4, $zero, 6
	move	$a3, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_486:                              # %cond.end825.i894
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_488
# %bb.487:                              # %cond.false843.i897
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.112)
	addi.d	$a2, $a1, %pc_lo12(.L.str.112)
	ori	$a1, $zero, 574
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_488:                              # %cond.end846.i900
	addi.d	$fp, $sp, 61
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_490
# %bb.489:                              # %cond.false864.i904
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.135)
	addi.d	$a2, $a1, %pc_lo12(.L.str.135)
	ori	$a1, $zero, 575
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_490:                              # %cond.end867.i907
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.w	$s0, $s1, 4
	addi.d	$s2, $sp, 24
	alsl.d	$a0, $s0, $s2, 3
	addi.d	$fp, $a0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_492
# %bb.491:                              # %cond.false885.i913
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.136)
	addi.d	$a2, $a1, %pc_lo12(.L.str.136)
	ori	$a1, $zero, 577
	ori	$a4, $zero, 6
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s0, $s1, 4
.LBB0_492:                              # %cond.end888.i919
	alsl.d	$a0, $s0, $s2, 3
	addi.d	$fp, $a0, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 5
	beq	$a0, $a1, .LBB0_494
# %bb.493:                              # %cond.false907.i924
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.137)
	addi.d	$a2, $a1, %pc_lo12(.L.str.137)
	ori	$a1, $zero, 578
	ori	$a4, $zero, 5
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s0, $s1, 4
.LBB0_494:                              # %cond.end910.i930
	addi.d	$s2, $sp, 24
	alsl.d	$a0, $s0, $s2, 3
	addi.d	$fp, $a0, 5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_496
# %bb.495:                              # %cond.false929.i935
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.138)
	addi.d	$a2, $a1, %pc_lo12(.L.str.138)
	ori	$a1, $zero, 579
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s0, $s1, 4
.LBB0_496:                              # %cond.end932.i941
	alsl.d	$a0, $s0, $s2, 3
	add.d	$fp, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 9
	beq	$a0, $a1, .LBB0_498
# %bb.497:                              # %cond.false950.i948
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.139)
	addi.d	$a2, $a1, %pc_lo12(.L.str.139)
	ori	$a1, $zero, 581
	ori	$a4, $zero, 9
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$s1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s0, $s1, 4
.LBB0_498:                              # %cond.end953.i954
	addi.d	$s2, $sp, 24
	alsl.d	$a0, $s0, $s2, 3
	addi.w	$s1, $s1, 1
	add.d	$fp, $a0, $s1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_500
# %bb.499:                              # %cond.false972.i962
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.140)
	addi.d	$a2, $a1, %pc_lo12(.L.str.140)
	ori	$a1, $zero, 582
	ori	$a4, $zero, 8
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	ld.w	$a1, $s6, %pc_lo12(idx)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$s0, $a1, 4
	addi.w	$s1, $a1, 1
.LBB0_500:                              # %cond.end975.i970
	alsl.d	$a0, $s0, $s2, 3
	add.d	$a0, $a0, $s1
	addi.d	$fp, $a0, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 4
	beq	$a0, $a1, .LBB0_502
# %bb.501:                              # %cond.false994.i977
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.141)
	addi.d	$a2, $a1, %pc_lo12(.L.str.141)
	ori	$a1, $zero, 583
	ori	$a4, $zero, 4
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_502:                              # %test_nonconst_local_member_arrays.exit
	lu12i.w	$a0, 213811
	ori	$s0, $a0, 561
	move	$a0, $s0
	lu32i.d	$a0, 13877
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_504
# %bb.503:                              # %cond.false39.i982
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.184)
	addi.d	$a2, $a1, %pc_lo12(.L.str.184)
	ori	$a1, $zero, 608
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_504:                              # %cond.end42.i985
	addi.d	$fp, $sp, 28
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_506
# %bb.505:                              # %cond.false54.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.185)
	addi.d	$a2, $a1, %pc_lo12(.L.str.185)
	ori	$a1, $zero, 609
	ori	$a4, $zero, 2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_506:                              # %cond.end57.i
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$s1, $zero, 6
	beq	$a0, $s1, .LBB0_508
# %bb.507:                              # %cond.false71.i989
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.186)
	addi.d	$a2, $a1, %pc_lo12(.L.str.186)
	ori	$a1, $zero, 610
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_508:                              # %test_const_union_member_arrays.exit
	pcalau12i	$a0, %pc_hi20(vu)
	addi.d	$fp, $a0, %pc_lo12(vu)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	beq	$a0, $s1, .LBB0_510
# %bb.509:                              # %cond.false.i995
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.187)
	addi.d	$a2, $a1, %pc_lo12(.L.str.187)
	pcalau12i	$a1, %pc_hi20(vu)
	addi.d	$a3, $a1, %pc_lo12(vu)
	ori	$a1, $zero, 620
	ori	$a4, $zero, 6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_510:                              # %cond.end.i998
	addi.d	$fp, $fp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB0_512
# %bb.511:                              # %cond.false11.i1001
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.188)
	addi.d	$a2, $a1, %pc_lo12(.L.str.188)
	ori	$a1, $zero, 621
	ori	$a4, $zero, 2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_512:                              # %cond.end14.i1004
	pcalau12i	$a0, %pc_hi20(vu)
	addi.d	$a0, $a0, %pc_lo12(vu)
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB0_514
# %bb.513:                              # %cond.false25.i1007
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.189)
	addi.d	$a2, $a1, %pc_lo12(.L.str.189)
	pcalau12i	$a1, %pc_hi20(vu)
	addi.d	$a3, $a1, %pc_lo12(vu)
	ori	$a1, $zero, 622
	ori	$a4, $zero, 6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_514:                              # %cond.end28.i1010
	lu32i.d	$s0, 472629
	lu52i.d	$a0, $s0, 3
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 7
	beq	$a0, $a1, .LBB0_516
# %bb.515:                              # %cond.false39.i1013
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.190)
	addi.d	$a2, $a1, %pc_lo12(.L.str.190)
	ori	$a1, $zero, 628
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_516:                              # %cond.end42.i1016
	addi.d	$fp, $sp, 28
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB0_518
# %bb.517:                              # %cond.false54.i1020
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.191)
	addi.d	$a2, $a1, %pc_lo12(.L.str.191)
	ori	$a1, $zero, 629
	ori	$a4, $zero, 3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.d	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_518:                              # %cond.end57.i1023
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB0_520
# %bb.519:                              # %test_nonconst_union_member_arrays.exitthread-pre-split
	ld.w	$a0, $s5, %pc_lo12(nfails)
	b	.LBB0_521
.LBB0_520:                              # %cond.false71.i1026
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.192)
	addi.d	$a2, $a1, %pc_lo12(.L.str.192)
	ori	$a1, $zero, 630
	addi.d	$a3, $sp, 24
	ori	$a4, $zero, 7
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, %pc_lo12(nfails)
	addi.w	$a0, $a0, 1
	st.w	$a0, $s5, %pc_lo12(nfails)
.LBB0_521:                              # %test_nonconst_union_member_arrays.exit
	bnez	$a0, .LBB0_523
# %bb.522:                              # %if.end
	move	$a0, $zero
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
.LBB0_523:                              # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	ca,@object                      # @ca
	.section	.rodata,"a",@progbits
	.globl	ca
	.p2align	3, 0x0
ca:
	.ascii	"1234"
	.asciz	"5\000\000"
	.ascii	"1234"
	.asciz	"56\000"
	.ascii	"1234"
	.asciz	"567"
	.ascii	"1234"
	.ascii	"5678"
	.asciz	"9\000\000"
	.size	ca, 36

	.type	va,@object                      # @va
	.data
	.globl	va
va:
	.ascii	"1234"
	.asciz	"5\000\000"
	.ascii	"1234"
	.asciz	"56\000"
	.ascii	"1234"
	.asciz	"567"
	.ascii	"1234"
	.ascii	"5678"
	.asciz	"9\000\000"
	.size	va, 36

	.type	cma,@object                     # @cma
	.section	.rodata,"a",@progbits
	.globl	cma
	.p2align	3, 0x0
cma:
	.ascii	"1234"
	.asciz	"5\000\000"
	.ascii	"1234"
	.asciz	"56\000"
	.ascii	"1234"
	.asciz	"56\000"
	.ascii	"1234"
	.asciz	"567"
	.ascii	"1234"
	.ascii	"5678"
	.asciz	"9\000\000"
	.space	4
	.size	cma, 48

	.type	vma,@object                     # @vma
	.data
	.globl	vma
vma:
	.ascii	"1234"
	.asciz	"5\000\000"
	.ascii	"1234"
	.asciz	"56\000"
	.ascii	"1234"
	.asciz	"56\000"
	.ascii	"1234"
	.asciz	"567"
	.ascii	"1234"
	.ascii	"5678"
	.asciz	"9\000\000"
	.space	4
	.size	vma, 48

	.type	cu,@object                      # @cu
	.section	.rodata,"a",@progbits
	.globl	cu
cu:
	.ascii	"1234"
	.asciz	"5\000\000"
	.size	cu, 8

	.type	vu,@object                      # @vu
	.data
	.globl	vu
vu:
	.ascii	"1234"
	.asciz	"56\000"
	.size	vu, 8

	.type	nfails,@object                  # @nfails
	.bss
	.globl	nfails
	.p2align	2, 0x0
nfails:
	.word	0                               # 0x0
	.size	nfails, 4

	.type	idx,@object                     # @idx
	.globl	idx
	.p2align	2, 0x0
idx:
	.word	0                               # 0x0
	.size	idx, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"line %i: strlen (%s = \"%s\") == %u failed\n"
	.size	.L.str, 42

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"&ca[idx][i]"
	.size	.L.str.12, 12

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"&ca[idx][j + 1]"
	.size	.L.str.13, 16

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"&ca[idx][j + 2]"
	.size	.L.str.14, 16

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"&ca[idx][idx]"
	.size	.L.str.15, 14

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"&ca[idx][idx + 1]"
	.size	.L.str.16, 18

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"&ca[idx][idx + 2]"
	.size	.L.str.17, 18

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"a[0]"
	.size	.L.str.19, 5

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"&a[0][0]"
	.size	.L.str.20, 9

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"&a[0][1]"
	.size	.L.str.21, 9

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"&a[0][3]"
	.size	.L.str.22, 9

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"a[i]"
	.size	.L.str.23, 5

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"&a[i][0]"
	.size	.L.str.24, 9

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"&a[i][1]"
	.size	.L.str.25, 9

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"&a[i][3]"
	.size	.L.str.26, 9

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"&a[i][i]"
	.size	.L.str.27, 9

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"&a[i][j + 1]"
	.size	.L.str.28, 13

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"&a[i][j + 2]"
	.size	.L.str.29, 13

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"&a[idx][i]"
	.size	.L.str.30, 11

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"&a[idx][j + 1]"
	.size	.L.str.31, 15

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"&a[idx][j + 2]"
	.size	.L.str.32, 15

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"&a[idx][idx]"
	.size	.L.str.33, 13

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"&a[idx][idx + 1]"
	.size	.L.str.34, 17

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"&a[idx][idx + 2]"
	.size	.L.str.35, 17

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"&a[0][++j]"
	.size	.L.str.36, 11

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"va[0]"
	.size	.L.str.37, 6

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"&va[0][0]"
	.size	.L.str.38, 10

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"&va[0][1]"
	.size	.L.str.39, 10

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"&va[0][3]"
	.size	.L.str.40, 10

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"va[i]"
	.size	.L.str.41, 6

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"&va[i][0]"
	.size	.L.str.42, 10

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"&va[i][1]"
	.size	.L.str.43, 10

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"&va[i][3]"
	.size	.L.str.44, 10

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"&va[i][i]"
	.size	.L.str.45, 10

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"&va[i][j + 1]"
	.size	.L.str.46, 14

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"&va[i][j + 2]"
	.size	.L.str.47, 14

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"&va[idx][i]"
	.size	.L.str.48, 12

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"&va[idx][j + 1]"
	.size	.L.str.49, 16

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"&va[idx][j + 2]"
	.size	.L.str.50, 16

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"&va[idx][idx]"
	.size	.L.str.51, 14

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"&va[idx][idx + 1]"
	.size	.L.str.52, 18

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"&va[idx][idx + 2]"
	.size	.L.str.53, 18

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"va[2]"
	.size	.L.str.54, 6

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"&va[2][0]"
	.size	.L.str.55, 10

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"&va[2][1]"
	.size	.L.str.56, 10

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"&va[2][3]"
	.size	.L.str.57, 10

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"&va[i][j - 1]"
	.size	.L.str.58, 14

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"&va[i][j]"
	.size	.L.str.59, 10

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"&va[idx + 2][i - 1]"
	.size	.L.str.60, 20

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"&va[idx + 2][j]"
	.size	.L.str.61, 16

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"&va[idx + 2][j + 1]"
	.size	.L.str.62, 20

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"&va[0][++j]"
	.size	.L.str.63, 12

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"&cma[idx].a[i]"
	.size	.L.str.75, 15

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"&cma[idx].a[j + 1]"
	.size	.L.str.76, 19

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"&cma[idx].a[j + 2]"
	.size	.L.str.77, 19

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"&cma[idx].a[idx]"
	.size	.L.str.78, 17

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"&cma[idx].a[idx + 1]"
	.size	.L.str.79, 21

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"&cma[idx].a[idx + 2]"
	.size	.L.str.80, 21

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"&cma[idx + 1].a[j]"
	.size	.L.str.85, 19

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"&cma[idx + 1].a[j + 1]"
	.size	.L.str.86, 23

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"&cma[idx + 1].a[j + 2]"
	.size	.L.str.87, 23

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"&cma[idx + 1].a[idx]"
	.size	.L.str.88, 21

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"&cma[idx + 1].a[idx + 1]"
	.size	.L.str.89, 25

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"&cma[idx + 1].a[idx + 2]"
	.size	.L.str.90, 25

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"&cma[idx + 4].a[j]"
	.size	.L.str.97, 19

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"&cma[idx + 4].a[j + 1]"
	.size	.L.str.98, 23

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"&cma[idx + 4].b[j - 2]"
	.size	.L.str.99, 23

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"&cma[idx + 4].a[idx]"
	.size	.L.str.100, 21

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"&cma[idx + 4].a[idx + 1]"
	.size	.L.str.101, 25

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"&cma[idx + 4].b[idx + 1]"
	.size	.L.str.102, 25

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"ma[0].a"
	.size	.L.str.103, 8

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"&ma[0].a[0]"
	.size	.L.str.104, 12

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"&ma[0].a[1]"
	.size	.L.str.105, 12

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"&ma[0].a[2]"
	.size	.L.str.106, 12

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"ma[i].a"
	.size	.L.str.107, 8

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"&ma[i].a[0]"
	.size	.L.str.108, 12

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"&ma[i].a[1]"
	.size	.L.str.109, 12

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"&ma[i].a[2]"
	.size	.L.str.110, 12

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"&ma[i].a[j]"
	.size	.L.str.111, 12

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"&ma[i].a[j + 1]"
	.size	.L.str.112, 16

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"&ma[i].a[j + 2]"
	.size	.L.str.113, 16

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"&ma[idx].a[i]"
	.size	.L.str.114, 14

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"&ma[idx].a[j + 1]"
	.size	.L.str.115, 18

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"&ma[idx].a[j + 2]"
	.size	.L.str.116, 18

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"&ma[idx].a[idx]"
	.size	.L.str.117, 16

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"&ma[idx].a[idx + 1]"
	.size	.L.str.118, 20

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"&ma[idx].a[idx + 2]"
	.size	.L.str.119, 20

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"ma[1].a"
	.size	.L.str.120, 8

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"&ma[1].a[0]"
	.size	.L.str.121, 12

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"&ma[1].a[1]"
	.size	.L.str.122, 12

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"&ma[1].a[2]"
	.size	.L.str.123, 12

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"&ma[idx + 1].a[j]"
	.size	.L.str.124, 18

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"&ma[idx + 1].a[j + 1]"
	.size	.L.str.125, 22

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"&ma[idx + 1].a[j + 2]"
	.size	.L.str.126, 22

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"&ma[idx + 1].a[idx]"
	.size	.L.str.127, 20

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"&ma[idx + 1].a[idx + 1]"
	.size	.L.str.128, 24

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"&ma[idx + 1].a[idx + 2]"
	.size	.L.str.129, 24

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"ma[4].a"
	.size	.L.str.130, 8

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"&ma[4].a[0]"
	.size	.L.str.131, 12

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"&ma[4].a[1]"
	.size	.L.str.132, 12

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"&ma[4].b[0]"
	.size	.L.str.133, 12

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"&ma[i].b[0]"
	.size	.L.str.134, 12

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"&ma[i].b[j - 2]"
	.size	.L.str.135, 16

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"&ma[idx + 4].a[j]"
	.size	.L.str.136, 18

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"&ma[idx + 4].a[j + 1]"
	.size	.L.str.137, 22

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"&ma[idx + 4].b[j - 2]"
	.size	.L.str.138, 22

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"&ma[idx + 4].a[idx]"
	.size	.L.str.139, 20

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"&ma[idx + 4].a[idx + 1]"
	.size	.L.str.140, 24

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"&ma[idx + 4].b[idx + 1]"
	.size	.L.str.141, 24

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"vma[0].a"
	.size	.L.str.142, 9

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"&vma[0].a[0]"
	.size	.L.str.143, 13

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"&vma[0].a[1]"
	.size	.L.str.144, 13

	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"&vma[0].a[2]"
	.size	.L.str.145, 13

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"vma[i].a"
	.size	.L.str.146, 9

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"&vma[i].a[0]"
	.size	.L.str.147, 13

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"&vma[i].a[1]"
	.size	.L.str.148, 13

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"&vma[i].a[2]"
	.size	.L.str.149, 13

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"&vma[i].a[j]"
	.size	.L.str.150, 13

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"&vma[i].a[j + 1]"
	.size	.L.str.151, 17

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"&vma[i].a[j + 2]"
	.size	.L.str.152, 17

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"&vma[idx].a[i]"
	.size	.L.str.153, 15

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"&vma[idx].a[j + 1]"
	.size	.L.str.154, 19

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"&vma[idx].a[j + 2]"
	.size	.L.str.155, 19

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"&vma[idx].a[idx]"
	.size	.L.str.156, 17

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"&vma[idx].a[idx + 1]"
	.size	.L.str.157, 21

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"&vma[idx].a[idx + 2]"
	.size	.L.str.158, 21

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"vma[1].a"
	.size	.L.str.159, 9

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"&vma[1].a[0]"
	.size	.L.str.160, 13

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"&vma[1].a[1]"
	.size	.L.str.161, 13

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"&vma[1].a[2]"
	.size	.L.str.162, 13

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"&vma[idx + 1].a[j]"
	.size	.L.str.163, 19

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"&vma[idx + 1].a[j + 1]"
	.size	.L.str.164, 23

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"&vma[idx + 1].a[j + 2]"
	.size	.L.str.165, 23

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"&vma[idx + 1].a[idx]"
	.size	.L.str.166, 21

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"&vma[idx + 1].a[idx + 1]"
	.size	.L.str.167, 25

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"&vma[idx + 1].a[idx + 2]"
	.size	.L.str.168, 25

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"vma[4].a"
	.size	.L.str.169, 9

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"&vma[4].a[0]"
	.size	.L.str.170, 13

	.type	.L.str.171,@object              # @.str.171
.L.str.171:
	.asciz	"&vma[4].a[1]"
	.size	.L.str.171, 13

	.type	.L.str.172,@object              # @.str.172
.L.str.172:
	.asciz	"&vma[4].b[0]"
	.size	.L.str.172, 13

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"&vma[i].b[0]"
	.size	.L.str.173, 13

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"&vma[i].b[j - 2]"
	.size	.L.str.174, 17

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"&vma[idx + 4].a[j]"
	.size	.L.str.175, 19

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"&vma[idx + 4].a[j + 1]"
	.size	.L.str.176, 23

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"&vma[idx + 4].b[j - 2]"
	.size	.L.str.177, 23

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"&vma[idx + 4].a[idx]"
	.size	.L.str.178, 21

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"&vma[idx + 4].a[idx + 1]"
	.size	.L.str.179, 25

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"&vma[idx + 4].b[idx + 1]"
	.size	.L.str.180, 25

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"clu.a.a"
	.size	.L.str.184, 8

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"clu.a.b"
	.size	.L.str.185, 8

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"clu.c.a"
	.size	.L.str.186, 8

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"vu.a.a"
	.size	.L.str.187, 7

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"vu.a.b"
	.size	.L.str.188, 7

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"vu.c.a"
	.size	.L.str.189, 7

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"lvu.a.a"
	.size	.L.str.190, 8

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"lvu.a.b"
	.size	.L.str.191, 8

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"lvu.c.a"
	.size	.L.str.192, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ca
	.addrsig_sym va
	.addrsig_sym cma
	.addrsig_sym vma
	.addrsig_sym vu
