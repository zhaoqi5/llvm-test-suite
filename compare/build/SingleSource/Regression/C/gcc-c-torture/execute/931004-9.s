	.file	"931004-9.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:                                # %entry
	andi	$a0, $a1, 255
	ori	$a5, $zero, 10
	bne	$a0, $a5, .LBB0_8
# %bb.1:                                # %if.end
	bstrpick.d	$a0, $a1, 15, 8
	slli.d	$a1, $a0, 8
	lu12i.w	$a0, 1
	ori	$a5, $a0, 1024
	bne	$a1, $a5, .LBB0_8
# %bb.2:                                # %if.end8
	andi	$a1, $a2, 255
	ori	$a5, $zero, 11
	bne	$a1, $a5, .LBB0_8
# %bb.3:                                # %if.end14
	bstrpick.d	$a1, $a2, 15, 8
	slli.d	$a1, $a1, 8
	ori	$a2, $a0, 1280
	bne	$a1, $a2, .LBB0_8
# %bb.4:                                # %if.end20
	andi	$a1, $a3, 255
	ori	$a2, $zero, 12
	bne	$a1, $a2, .LBB0_8
# %bb.5:                                # %if.end26
	bstrpick.d	$a1, $a3, 15, 8
	slli.d	$a1, $a1, 8
	ori	$a0, $a0, 1536
	bne	$a1, $a0, .LBB0_8
# %bb.6:                                # %if.end32
	ori	$a0, $zero, 123
	bne	$a4, $a0, .LBB0_8
# %bb.7:                                # %if.end36
	move	$a0, $zero
	ret
.LBB0_8:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
