	.file	"991016-1.c"
	.text
	.globl	doit                            # -- Begin function doit
	.p2align	5
	.type	doit,@function
doit:                                   # @doit
# %bb.0:                                # %entry
	beqz	$a0, .LBB0_8
# %bb.1:                                # %entry
	ori	$a3, $zero, 1
	beq	$a0, $a3, .LBB0_5
# %bb.2:                                # %entry
	ori	$a3, $zero, 2
	bne	$a0, $a3, .LBB0_11
# %bb.3:                                # %do.body11.preheader
	ld.d	$a0, $a2, 0
	.p2align	4, , 16
.LBB0_4:                                # %do.body11
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a0
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_4
	b	.LBB0_7
.LBB0_5:                                # %do.body2.preheader
	ld.d	$a0, $a2, 0
	.p2align	4, , 16
.LBB0_6:                                # %do.body2
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a0
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_6
.LBB0_7:                                # %do.end7
	st.d	$a0, $a2, 0
	sltui	$a0, $a3, 1
	ret
.LBB0_8:                                # %do.body.preheader
	ld.w	$a0, $a2, 0
	.p2align	4, , 16
.LBB0_9:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a0
	addi.w	$a1, $a1, -1
	slli.w	$a0, $a0, 1
	bnez	$a1, .LBB0_9
# %bb.10:                               # %do.end
	st.w	$a0, $a2, 0
	sltui	$a0, $a3, 1
	ret
.LBB0_11:                               # %sw.default
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	doit, .Lfunc_end0-doit
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %if.end8
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
