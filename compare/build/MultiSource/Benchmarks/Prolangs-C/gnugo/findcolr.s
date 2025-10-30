	.file	"findcolr.c"
	.text
	.globl	findcolor                       # -- Begin function findcolor
	.p2align	5
	.type	findcolor,@function
findcolor:                              # @findcolor
# %bb.0:                                # %entry
	alsl.d	$a2, $a0, $a0, 3
	alsl.d	$a3, $a2, $a0, 1
	add.d	$a2, $a3, $a1
	pcalau12i	$a4, %got_pc_hi20(p)
	ld.d	$a4, $a4, %got_pc_lo12(p)
	add.d	$a2, $a2, $a4
	addi.d	$a6, $a2, -19
	ori	$a7, $zero, 2
	move	$t0, $a0
	.p2align	4, , 16
.LBB0_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $a6, 0
	blt	$t0, $a7, .LBB0_3
# %bb.2:                                # %do.body
                                        #   in Loop: Header=BB0_1 Depth=1
	addi.d	$t0, $t0, -1
	addi.d	$a6, $a6, -19
	beqz	$a5, .LBB0_1
.LBB0_3:                                # %do.body11.preheader
	addi.d	$a6, $a2, 19
	ori	$a7, $zero, 16
	.p2align	4, , 16
.LBB0_4:                                # %do.body11
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a6, 0
	blt	$a7, $a0, .LBB0_6
# %bb.5:                                # %do.body11
                                        #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$a6, $a6, 19
	beqz	$a2, .LBB0_4
.LBB0_6:                                # %do.end24
	beqz	$a5, .LBB0_8
# %bb.7:                                # %if.then
	sltui	$a0, $a2, 1
	xor	$a1, $a5, $a2
	sltui	$a1, $a1, 1
	maskeqz	$a0, $a5, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a5, $a1
	or	$a0, $a1, $a0
	ret
.LBB0_8:                                # %if.else35
	beqz	$a2, .LBB0_10
.LBB0_9:                                # %cleanup
	move	$a0, $a2
	ret
.LBB0_10:                               # %do.body39.preheader
	add.d	$a2, $a3, $a4
	addi.d	$a3, $a2, -1
	ori	$a4, $zero, 2
	move	$a5, $a1
	.p2align	4, , 16
.LBB0_11:                               # %do.body39
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $a3, $a5
	blt	$a5, $a4, .LBB0_13
# %bb.12:                               # %do.body39
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.d	$a5, $a5, -1
	beqz	$a0, .LBB0_11
.LBB0_13:                               # %do.body59.preheader
	addi.d	$a3, $a2, 1
	ori	$a4, $zero, 16
	.p2align	4, , 16
.LBB0_14:                               # %do.body59
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a2, $a3, $a1
	blt	$a4, $a1, .LBB0_16
# %bb.15:                               # %do.body59
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a1, $a1, 1
	beqz	$a2, .LBB0_14
.LBB0_16:                               # %do.end73
	beqz	$a0, .LBB0_9
# %bb.17:                               # %if.then80
	sltui	$a1, $a2, 1
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	maskeqz	$a1, $a0, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a2, $a0, $a1
	move	$a0, $a2
	ret
.Lfunc_end0:
	.size	findcolor, .Lfunc_end0-findcolor
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
