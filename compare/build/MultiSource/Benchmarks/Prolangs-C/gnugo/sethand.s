	.file	"sethand.c"
	.text
	.globl	sethand                         # -- Begin function sethand
	.p2align	5
	.type	sethand,@function
sethand:                                # @sethand
# %bb.0:                                # %entry
	blez	$a0, .LBB0_4
# %bb.1:                                # %if.then
	pcalau12i	$a1, %got_pc_hi20(p)
	ld.d	$a1, $a1, %got_pc_lo12(p)
	ori	$a2, $zero, 2
	ori	$a3, $zero, 1
	st.b	$a2, $a1, 60
	beq	$a0, $a3, .LBB0_4
# %bb.2:                                # %if.then2
	ori	$a3, $zero, 3
	st.b	$a2, $a1, 300
	bltu	$a0, $a3, .LBB0_4
# %bb.3:                                # %if.then4
	ori	$a2, $zero, 2
	st.b	$a2, $a1, 72
	bne	$a0, $a3, .LBB0_5
.LBB0_4:                                # %if.end49
	ret
.LBB0_5:                                # %if.then6
	ori	$a3, $zero, 5
	st.b	$a2, $a1, 288
	bne	$a0, $a3, .LBB0_7
# %bb.6:                                # %if.then8
	ori	$a0, $zero, 2
	st.b	$a0, $a1, 180
	ret
.LBB0_7:                                # %if.else
	ori	$a2, $zero, 6
	bltu	$a0, $a2, .LBB0_4
# %bb.8:                                # %if.then10
	ori	$a2, $zero, 2
	st.b	$a2, $a1, 186
	ori	$a3, $zero, 7
	st.b	$a2, $a1, 174
	bne	$a0, $a3, .LBB0_10
# %bb.9:                                # %if.then12
	st.b	$a2, $a1, 180
	ret
.LBB0_10:                               # %if.else13
	ori	$a3, $zero, 8
	bltu	$a0, $a3, .LBB0_4
# %bb.11:                               # %if.then15
	ori	$a2, $zero, 2
	st.b	$a2, $a1, 294
	st.b	$a2, $a1, 66
	beq	$a0, $a3, .LBB0_4
# %bb.12:                               # %if.end
	ori	$a3, $zero, 10
	st.b	$a2, $a1, 180
	bltu	$a0, $a3, .LBB0_4
# %bb.13:                               # %if.then19
	ori	$a2, $zero, 2
	st.b	$a2, $a1, 40
	beq	$a0, $a3, .LBB0_4
# %bb.14:                               # %if.then21
	ori	$a3, $zero, 12
	st.b	$a2, $a1, 320
	bltu	$a0, $a3, .LBB0_4
# %bb.15:                               # %if.then23
	ori	$a2, $zero, 2
	st.b	$a2, $a1, 54
	beq	$a0, $a3, .LBB0_4
# %bb.16:                               # %if.then25
	ori	$a3, $zero, 14
	st.b	$a2, $a1, 306
	bltu	$a0, $a3, .LBB0_4
# %bb.17:                               # %if.then27
	ori	$a2, $zero, 2
	st.b	$a2, $a1, 120
	beq	$a0, $a3, .LBB0_4
# %bb.18:                               # %if.then29
	ori	$a3, $zero, 16
	st.b	$a2, $a1, 240
	bltu	$a0, $a3, .LBB0_4
# %bb.19:                               # %if.then31
	ori	$a2, $zero, 2
	st.b	$a2, $a1, 126
	beq	$a0, $a3, .LBB0_4
# %bb.20:                               # %if.then33
	st.b	$a2, $a1, 234
	ret
.Lfunc_end0:
	.size	sethand, .Lfunc_end0-sethand
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
