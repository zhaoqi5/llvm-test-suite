	.file	"compare-1.c"
	.text
	.globl	ieq                             # -- Begin function ieq
	.p2align	5
	.type	ieq,@function
ieq:                                    # @ieq
# %bb.0:                                # %entry
	bne	$a0, $a1, .LBB0_3
# %bb.1:                                # %if.then
	bnez	$a2, .LBB0_4
.LBB0_2:                                # %if.then2
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB0_3:                                # %if.else
	bnez	$a2, .LBB0_2
.LBB0_4:                                # %if.end42
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	ieq, .Lfunc_end0-ieq
                                        # -- End function
	.globl	ine                             # -- Begin function ine
	.p2align	5
	.type	ine,@function
ine:                                    # @ine
# %bb.0:                                # %entry
	bne	$a0, $a1, .LBB1_3
# %bb.1:                                # %if.else
	beqz	$a2, .LBB1_4
.LBB1_2:                                # %if.then2
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %if.then
	beqz	$a2, .LBB1_2
.LBB1_4:                                # %if.end6
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	ine, .Lfunc_end1-ine
                                        # -- End function
	.globl	ilt                             # -- Begin function ilt
	.p2align	5
	.type	ilt,@function
ilt:                                    # @ilt
# %bb.0:                                # %entry
	bge	$a0, $a1, .LBB2_3
# %bb.1:                                # %if.then
	bnez	$a2, .LBB2_4
.LBB2_2:                                # %if.then2
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %if.else
	bnez	$a2, .LBB2_2
.LBB2_4:                                # %if.end6
	move	$a0, $zero
	ret
.Lfunc_end2:
	.size	ilt, .Lfunc_end2-ilt
                                        # -- End function
	.globl	ile                             # -- Begin function ile
	.p2align	5
	.type	ile,@function
ile:                                    # @ile
# %bb.0:                                # %entry
	bge	$a1, $a0, .LBB3_3
# %bb.1:                                # %if.else
	beqz	$a2, .LBB3_4
.LBB3_2:                                # %if.then2
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB3_3:                                # %if.then
	beqz	$a2, .LBB3_2
.LBB3_4:                                # %if.end6
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	ile, .Lfunc_end3-ile
                                        # -- End function
	.globl	igt                             # -- Begin function igt
	.p2align	5
	.type	igt,@function
igt:                                    # @igt
# %bb.0:                                # %entry
	bge	$a1, $a0, .LBB4_3
# %bb.1:                                # %if.then
	bnez	$a2, .LBB4_4
.LBB4_2:                                # %if.then2
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB4_3:                                # %if.else
	bnez	$a2, .LBB4_2
.LBB4_4:                                # %if.end6
	move	$a0, $zero
	ret
.Lfunc_end4:
	.size	igt, .Lfunc_end4-igt
                                        # -- End function
	.globl	ige                             # -- Begin function ige
	.p2align	5
	.type	ige,@function
ige:                                    # @ige
# %bb.0:                                # %entry
	bge	$a0, $a1, .LBB5_3
# %bb.1:                                # %if.else
	beqz	$a2, .LBB5_4
.LBB5_2:                                # %if.then2
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB5_3:                                # %if.then
	beqz	$a2, .LBB5_2
.LBB5_4:                                # %if.end6
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	ige, .Lfunc_end5-ige
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	move	$a0, $zero
	ret
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
