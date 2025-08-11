	.file	"20060905-1.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	move	$a1, $zero
	move	$a0, $zero
	pcalau12i	$a2, %pc_hi20(s-384)
	addi.d	$a2, $a2, %pc_lo12(s-384)
	ori	$a3, $zero, 128
	pcalau12i	$a4, %pc_hi20(g)
	ori	$a5, $zero, 256
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_1:                                # %for.inc.i
                                        #   in Loop: Header=BB0_2 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 3
	beq	$a1, $a5, .LBB0_4
.LBB0_2:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	bltu	$a1, $a3, .LBB0_1
# %bb.3:                                # %if.then.i
                                        #   in Loop: Header=BB0_2 Depth=1
	ld.b	$a6, $a2, 0
	st.b	$a6, $a4, %pc_lo12(g)
	addi.w	$a0, $a0, 1
	b	.LBB0_1
.LBB0_4:                                # %foo.exit
	ori	$a1, $zero, 128
	bne	$a0, $a1, .LBB0_6
# %bb.5:                                # %if.end
	move	$a0, $zero
	ret
.LBB0_6:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	s,@object                       # @s
	.bss
	.globl	s
s:
	.space	768
	.size	s, 768

	.type	g,@object                       # @g
	.globl	g
g:
	.byte	0                               # 0x0
	.size	g, 1

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym s
