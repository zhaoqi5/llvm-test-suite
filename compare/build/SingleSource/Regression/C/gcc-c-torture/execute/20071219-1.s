	.file	"20071219-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	ld.bu	$a2, $a0, 0
	beqz	$a1, .LBB0_27
# %bb.1:                                # %for.body.preheader
	bnez	$a2, .LBB0_53
# %bb.2:                                # %if.else
	ld.bu	$a2, $a0, 1
	st.b	$a1, $a0, 0
	bnez	$a2, .LBB0_53
# %bb.3:                                # %if.else.1
	ld.bu	$a2, $a0, 2
	st.b	$a1, $a0, 1
	bnez	$a2, .LBB0_53
# %bb.4:                                # %if.else.2
	ld.bu	$a2, $a0, 3
	st.b	$a1, $a0, 2
	bnez	$a2, .LBB0_53
# %bb.5:                                # %if.else.3
	ld.bu	$a2, $a0, 4
	st.b	$a1, $a0, 3
	bnez	$a2, .LBB0_53
# %bb.6:                                # %if.else.4
	ld.bu	$a2, $a0, 5
	st.b	$a1, $a0, 4
	bnez	$a2, .LBB0_53
# %bb.7:                                # %if.else.5
	ld.bu	$a2, $a0, 6
	st.b	$a1, $a0, 5
	bnez	$a2, .LBB0_53
# %bb.8:                                # %if.else.6
	ld.bu	$a2, $a0, 7
	st.b	$a1, $a0, 6
	bnez	$a2, .LBB0_53
# %bb.9:                                # %if.else.7
	ld.bu	$a2, $a0, 8
	st.b	$a1, $a0, 7
	bnez	$a2, .LBB0_53
# %bb.10:                               # %if.else.8
	ld.bu	$a2, $a0, 9
	st.b	$a1, $a0, 8
	bnez	$a2, .LBB0_53
# %bb.11:                               # %if.else.9
	ld.bu	$a2, $a0, 10
	st.b	$a1, $a0, 9
	bnez	$a2, .LBB0_53
# %bb.12:                               # %if.else.10
	ld.bu	$a2, $a0, 11
	st.b	$a1, $a0, 10
	bnez	$a2, .LBB0_53
# %bb.13:                               # %if.else.11
	ld.bu	$a2, $a0, 12
	st.b	$a1, $a0, 11
	bnez	$a2, .LBB0_53
# %bb.14:                               # %if.else.12
	ld.bu	$a2, $a0, 13
	st.b	$a1, $a0, 12
	bnez	$a2, .LBB0_53
# %bb.15:                               # %if.else.13
	ld.bu	$a2, $a0, 14
	st.b	$a1, $a0, 13
	bnez	$a2, .LBB0_53
# %bb.16:                               # %if.else.14
	ld.bu	$a2, $a0, 15
	st.b	$a1, $a0, 14
	bnez	$a2, .LBB0_53
# %bb.17:                               # %if.else.15
	ld.bu	$a2, $a0, 16
	st.b	$a1, $a0, 15
	bnez	$a2, .LBB0_53
# %bb.18:                               # %if.else.16
	ld.bu	$a2, $a0, 17
	st.b	$a1, $a0, 16
	bnez	$a2, .LBB0_53
# %bb.19:                               # %if.else.17
	ld.bu	$a2, $a0, 18
	st.b	$a1, $a0, 17
	bnez	$a2, .LBB0_53
# %bb.20:                               # %if.else.18
	ld.bu	$a2, $a0, 19
	st.b	$a1, $a0, 18
	bnez	$a2, .LBB0_53
# %bb.21:                               # %if.else.19
	ld.bu	$a2, $a0, 20
	st.b	$a1, $a0, 19
	bnez	$a2, .LBB0_53
# %bb.22:                               # %if.else.20
	ld.bu	$a2, $a0, 21
	st.b	$a1, $a0, 20
	bnez	$a2, .LBB0_53
# %bb.23:                               # %if.else.21
	ld.bu	$a2, $a0, 22
	st.b	$a1, $a0, 21
	bnez	$a2, .LBB0_53
# %bb.24:                               # %if.else.22
	ld.bu	$a2, $a0, 23
	st.b	$a1, $a0, 22
	bnez	$a2, .LBB0_53
# %bb.25:                               # %if.else.23
	ld.bu	$a2, $a0, 24
	st.b	$a1, $a0, 23
	bnez	$a2, .LBB0_53
# %bb.26:                               # %if.else.24
	st.b	$a1, $a0, 24
	pcalau12i	$a1, %pc_hi20(p)
	st.d	$a0, $a1, %pc_lo12(p)
	ret
.LBB0_27:                               # %for.body.us.preheader
	bnez	$a2, .LBB0_53
# %bb.28:                               # %if.else.us
	ld.bu	$a1, $a0, 1
	bnez	$a1, .LBB0_53
# %bb.29:                               # %if.else.us.1
	ld.bu	$a1, $a0, 2
	bnez	$a1, .LBB0_53
# %bb.30:                               # %if.else.us.2
	ld.bu	$a1, $a0, 3
	bnez	$a1, .LBB0_53
# %bb.31:                               # %if.else.us.3
	ld.bu	$a1, $a0, 4
	bnez	$a1, .LBB0_53
# %bb.32:                               # %if.else.us.4
	ld.bu	$a1, $a0, 5
	bnez	$a1, .LBB0_53
# %bb.33:                               # %if.else.us.5
	ld.bu	$a1, $a0, 6
	bnez	$a1, .LBB0_53
# %bb.34:                               # %if.else.us.6
	ld.bu	$a1, $a0, 7
	bnez	$a1, .LBB0_53
# %bb.35:                               # %if.else.us.7
	ld.bu	$a1, $a0, 8
	bnez	$a1, .LBB0_53
# %bb.36:                               # %if.else.us.8
	ld.bu	$a1, $a0, 9
	bnez	$a1, .LBB0_53
# %bb.37:                               # %if.else.us.9
	ld.bu	$a1, $a0, 10
	bnez	$a1, .LBB0_53
# %bb.38:                               # %if.else.us.10
	ld.bu	$a1, $a0, 11
	bnez	$a1, .LBB0_53
# %bb.39:                               # %if.else.us.11
	ld.bu	$a1, $a0, 12
	bnez	$a1, .LBB0_53
# %bb.40:                               # %if.else.us.12
	ld.bu	$a1, $a0, 13
	bnez	$a1, .LBB0_53
# %bb.41:                               # %if.else.us.13
	ld.bu	$a1, $a0, 14
	bnez	$a1, .LBB0_53
# %bb.42:                               # %if.else.us.14
	ld.bu	$a1, $a0, 15
	bnez	$a1, .LBB0_53
# %bb.43:                               # %if.else.us.15
	ld.bu	$a1, $a0, 16
	bnez	$a1, .LBB0_53
# %bb.44:                               # %if.else.us.16
	ld.bu	$a1, $a0, 17
	bnez	$a1, .LBB0_53
# %bb.45:                               # %if.else.us.17
	ld.bu	$a1, $a0, 18
	bnez	$a1, .LBB0_53
# %bb.46:                               # %if.else.us.18
	ld.bu	$a1, $a0, 19
	bnez	$a1, .LBB0_53
# %bb.47:                               # %if.else.us.19
	ld.bu	$a1, $a0, 20
	bnez	$a1, .LBB0_53
# %bb.48:                               # %if.else.us.20
	ld.bu	$a1, $a0, 21
	bnez	$a1, .LBB0_53
# %bb.49:                               # %if.else.us.21
	ld.bu	$a1, $a0, 22
	bnez	$a1, .LBB0_53
# %bb.50:                               # %if.else.us.22
	ld.bu	$a1, $a0, 23
	bnez	$a1, .LBB0_53
# %bb.51:                               # %if.else.us.23
	ld.bu	$a1, $a0, 24
	bnez	$a1, .LBB0_53
# %bb.52:                               # %for.end
	pcalau12i	$a1, %pc_hi20(p)
	st.d	$a0, $a1, %pc_lo12(p)
	ret
.LBB0_53:                               # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	test1                           # -- Begin function test1
	.p2align	5
	.type	test1,@function
test1:                                  # @test1
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.b	$zero, $sp, 64
	st.d	$zero, $sp, 56
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 40
	addi.d	$a0, $sp, 40
	move	$a1, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a0, $sp, 64
	ld.d	$a1, $sp, 56
	vld	$vr0, $sp, 40
	st.b	$a0, $sp, 32
	st.d	$a1, $sp, 24
	vst	$vr0, $sp, 8
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a0, $sp, 64
	ld.d	$a1, $sp, 56
	vld	$vr0, $sp, 40
	st.b	$a0, $sp, 32
	st.d	$a1, $sp, 24
	vst	$vr0, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	test1, .Lfunc_end1-test1
                                        # -- End function
	.globl	test2                           # -- Begin function test2
	.p2align	5
	.type	test2,@function
test2:                                  # @test2
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.b	$zero, $sp, 64
	st.d	$zero, $sp, 56
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 40
	addi.d	$a0, $sp, 40
	move	$a1, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a0, $sp, 64
	ld.d	$a1, $sp, 56
	vld	$vr0, $sp, 40
	st.b	$a0, $sp, 32
	st.d	$a1, $sp, 24
	vst	$vr0, $sp, 8
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a0, $sp, 64
	ld.d	$a1, $sp, 56
	vld	$vr0, $sp, 40
	pcalau12i	$a2, %pc_hi20(p)
	ld.d	$a2, $a2, %pc_lo12(p)
	st.b	$a0, $sp, 32
	st.d	$a1, $sp, 24
	vst	$vr0, $sp, 8
	vld	$vr0, $a2, 0
	vst	$vr0, $sp, 8
	ld.d	$a0, $a2, 16
	st.d	$a0, $sp, 24
	ld.b	$a0, $a2, 24
	st.b	$a0, $sp, 32
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	test2, .Lfunc_end2-test2
                                        # -- End function
	.globl	test3                           # -- Begin function test3
	.p2align	5
	.type	test3,@function
test3:                                  # @test3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.b	$zero, $sp, 64
	st.d	$zero, $sp, 56
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 40
	addi.d	$a0, $sp, 40
	move	$a1, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.b	$a0, $sp, 64
	ld.d	$a1, $sp, 56
	vld	$vr0, $sp, 40
	st.b	$a0, $sp, 32
	st.d	$a1, $sp, 24
	vst	$vr0, $sp, 8
	addi.d	$a0, $sp, 8
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(p)
	ld.d	$a0, $a0, %pc_lo12(p)
	ld.b	$a1, $sp, 64
	st.b	$a1, $a0, 24
	vld	$vr0, $sp, 48
	vst	$vr0, $a0, 8
	ld.d	$a1, $sp, 40
	st.d	$a1, $a0, 0
	ld.d	$a1, $sp, 8
	st.d	$a1, $a0, 0
	ld.b	$a1, $sp, 32
	st.b	$a1, $a0, 24
	vld	$vr0, $sp, 16
	vst	$vr0, $a0, 8
	addi.d	$a0, $sp, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(foo)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end3:
	.size	test3, .Lfunc_end3-test3
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(test1)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(test2)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(test3)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	p,@object                       # @p
	.bss
	.globl	p
	.p2align	3, 0x0
p:
	.dword	0
	.size	p, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
