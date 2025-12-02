	.file	"921124-1.c"
	.text
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:                                # %entry
	ret
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.globl	g                               # -- Begin function g
	.p2align	5
	.type	g,@function
g:                                      # @g
# %bb.0:                                # %entry
	vldi	$vr2, -912
	fcmp.cune.d	$fcc0, $fa0, $fa2
	bcnez	$fcc0, .LBB1_5
# %bb.1:                                # %entry
	vldi	$vr0, -1024
	fcmp.cune.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB1_5
# %bb.2:                                # %entry
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB1_5
# %bb.3:                                # %entry
	ori	$a0, $zero, 4
	bne	$a3, $a0, .LBB1_5
# %bb.4:                                # %if.end
	move	$a0, $zero
	ret
.LBB1_5:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	g, .Lfunc_end1-g
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
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
