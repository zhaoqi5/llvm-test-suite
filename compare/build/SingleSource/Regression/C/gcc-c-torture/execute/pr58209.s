	.file	"pr58209.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	beqz	$a0, .LBB0_2
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $a0, -1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(buf)
	addi.d	$a0, $a0, %pc_lo12(buf)
	ret
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	bar                             # -- Begin function bar
	.p2align	5
	.type	bar,@function
bar:                                    # @bar
# %bb.0:                                # %entry
	beqz	$a0, .LBB1_2
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	addi.d	$a0, $a0, -1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:
	pcalau12i	$a0, %pc_hi20(buf)
	addi.d	$a0, $a0, %pc_lo12(buf)
	ret
.Lfunc_end1:
	.size	bar, .Lfunc_end1-bar
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(buf)
	addi.d	$s0, $a1, %pc_lo12(buf)
	bne	$a0, $s0, .LBB2_54
# %bb.1:                                # %for.body
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 8
	bne	$a0, $a1, .LBB2_54
# %bb.2:                                # %bar.exit
	move	$fp, $a0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.3:                                # %for.cond
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 16
	bne	$a0, $a1, .LBB2_54
# %bb.4:                                # %bar.exit.1
	move	$fp, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.5:                                # %for.cond.1
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 24
	bne	$a0, $a1, .LBB2_54
# %bb.6:                                # %bar.exit.2
	move	$fp, $a0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.7:                                # %for.cond.2
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 32
	bne	$a0, $a1, .LBB2_54
# %bb.8:                                # %bar.exit.3
	move	$fp, $a0
	ori	$a0, $zero, 3
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.9:                                # %for.cond.3
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 40
	bne	$a0, $a1, .LBB2_54
# %bb.10:                               # %bar.exit.4
	move	$fp, $a0
	ori	$a0, $zero, 4
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.11:                               # %for.cond.4
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 48
	bne	$a0, $a1, .LBB2_54
# %bb.12:                               # %bar.exit.5
	move	$fp, $a0
	ori	$a0, $zero, 5
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.13:                               # %for.cond.5
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 56
	bne	$a0, $a1, .LBB2_54
# %bb.14:                               # %bar.exit.6
	move	$fp, $a0
	ori	$a0, $zero, 6
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.15:                               # %for.cond.6
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 64
	bne	$a0, $a1, .LBB2_54
# %bb.16:                               # %bar.exit.7
	move	$fp, $a0
	ori	$a0, $zero, 7
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.17:                               # %for.cond.7
	ori	$a0, $zero, 9
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 72
	bne	$a0, $a1, .LBB2_54
# %bb.18:                               # %bar.exit.8
	move	$fp, $a0
	ori	$a0, $zero, 8
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.19:                               # %for.cond.8
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 80
	bne	$a0, $a1, .LBB2_54
# %bb.20:                               # %bar.exit.9
	move	$fp, $a0
	ori	$a0, $zero, 9
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.21:                               # %for.cond.9
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 88
	bne	$a0, $a1, .LBB2_54
# %bb.22:                               # %bar.exit.10
	move	$fp, $a0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.23:                               # %for.cond.10
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 96
	bne	$a0, $a1, .LBB2_54
# %bb.24:                               # %bar.exit.11
	move	$fp, $a0
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.25:                               # %for.cond.11
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 104
	bne	$a0, $a1, .LBB2_54
# %bb.26:                               # %bar.exit.12
	move	$fp, $a0
	ori	$a0, $zero, 12
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.27:                               # %for.cond.12
	ori	$a0, $zero, 14
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 112
	bne	$a0, $a1, .LBB2_54
# %bb.28:                               # %bar.exit.13
	move	$fp, $a0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.29:                               # %for.cond.13
	ori	$a0, $zero, 15
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 120
	bne	$a0, $a1, .LBB2_54
# %bb.30:                               # %bar.exit.14
	move	$fp, $a0
	ori	$a0, $zero, 14
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.31:                               # %for.cond.14
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 128
	bne	$a0, $a1, .LBB2_54
# %bb.32:                               # %bar.exit.15
	move	$fp, $a0
	ori	$a0, $zero, 15
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.33:                               # %for.cond.15
	ori	$a0, $zero, 17
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 136
	bne	$a0, $a1, .LBB2_54
# %bb.34:                               # %bar.exit.16
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.35:                               # %for.cond.16
	ori	$a0, $zero, 18
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 144
	bne	$a0, $a1, .LBB2_54
# %bb.36:                               # %bar.exit.17
	move	$fp, $a0
	ori	$a0, $zero, 17
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.37:                               # %for.cond.17
	ori	$a0, $zero, 19
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 152
	bne	$a0, $a1, .LBB2_54
# %bb.38:                               # %bar.exit.18
	move	$fp, $a0
	ori	$a0, $zero, 18
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.39:                               # %for.cond.18
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 160
	bne	$a0, $a1, .LBB2_54
# %bb.40:                               # %bar.exit.19
	move	$fp, $a0
	ori	$a0, $zero, 19
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.41:                               # %for.cond.19
	ori	$a0, $zero, 21
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 168
	bne	$a0, $a1, .LBB2_54
# %bb.42:                               # %bar.exit.20
	move	$fp, $a0
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.43:                               # %for.cond.20
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 176
	bne	$a0, $a1, .LBB2_54
# %bb.44:                               # %bar.exit.21
	move	$fp, $a0
	ori	$a0, $zero, 21
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.45:                               # %for.cond.21
	ori	$a0, $zero, 23
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 184
	bne	$a0, $a1, .LBB2_54
# %bb.46:                               # %bar.exit.22
	move	$fp, $a0
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.47:                               # %for.cond.22
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 192
	bne	$a0, $a1, .LBB2_54
# %bb.48:                               # %bar.exit.23
	move	$fp, $a0
	ori	$a0, $zero, 23
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.49:                               # %for.cond.23
	ori	$a0, $zero, 25
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 200
	bne	$a0, $a1, .LBB2_54
# %bb.50:                               # %bar.exit.24
	move	$fp, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.51:                               # %for.cond.24
	ori	$a0, $zero, 26
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 208
	bne	$a0, $a1, .LBB2_54
# %bb.52:                               # %bar.exit.25
	move	$fp, $a0
	ori	$a0, $zero, 25
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 8
	bne	$a0, $fp, .LBB2_54
# %bb.53:                               # %for.cond.25
	move	$a0, $zero
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB2_54:                               # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	buf,@object                     # @buf
	.bss
	.globl	buf
	.p2align	3, 0x0
buf:
	.space	8192
	.size	buf, 8192

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym buf
