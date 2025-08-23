	.file	"20011024-1.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.b	$a1, $a0, 8
	ld.d	$a0, $a0, 0
	pcalau12i	$a2, %pc_hi20(buf)
	addi.d	$a2, $a2, %pc_lo12(buf)
	st.b	$a1, $a2, 8
	st.d	$a0, $a2, 0
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	buf,@object                     # @buf
	.bss
	.globl	buf
	.p2align	3, 0x0
buf:
	.space	50
	.size	buf, 50

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.1:
	.asciz	"abcdefgh"
	.size	.L.str.1, 9

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym buf
