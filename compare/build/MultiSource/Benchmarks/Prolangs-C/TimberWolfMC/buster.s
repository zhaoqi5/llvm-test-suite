	.file	"buster.c"
	.text
	.globl	buster                          # -- Begin function buster
	.p2align	5
	.type	buster,@function
buster:                                 # @buster
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(A)
	ld.d	$a0, $a0, %got_pc_lo12(A)
	ld.d	$a0, $a0, 0
	ld.w	$a4, $a0, 0
	ori	$a6, $zero, 1
	lu12i.w	$a1, 244140
	blt	$a4, $a6, .LBB0_3
# %bb.1:                                # %iter.check
	addi.d	$a2, $a4, 1
	ori	$a3, $zero, 3
	bstrpick.d	$a2, $a2, 31, 0
	bltu	$a3, $a4, .LBB0_4
# %bb.2:
	ori	$a3, $a1, 2560
	b	.LBB0_14
.LBB0_3:
	ori	$a6, $a1, 2560
	move	$a4, $a6
	move	$a3, $a6
	move	$a5, $a6
	b	.LBB0_27
.LBB0_4:                                # %vector.main.loop.iter.check
	ori	$a3, $zero, 16
	bgeu	$a4, $a3, .LBB0_6
# %bb.5:
	move	$a5, $zero
	ori	$a3, $a1, 2560
	b	.LBB0_10
.LBB0_6:                                # %vector.ph
	bstrpick.d	$a3, $a4, 30, 4
	slli.d	$a5, $a3, 4
	ori	$a3, $a1, 2560
	xvreplgr2vr.w	$xr0, $a3
	addi.d	$a3, $a0, 68
	move	$a6, $a5
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a3, -56
	ld.w	$t0, $a3, -48
	ld.w	$t1, $a3, -40
	ld.w	$t2, $a3, -32
	ld.w	$t3, $a3, -24
	ld.w	$t4, $a3, -16
	ld.w	$t5, $a3, -8
	ld.w	$t6, $a3, 0
	xvinsgr2vr.w	$xr2, $a7, 0
	xvinsgr2vr.w	$xr2, $t0, 1
	xvinsgr2vr.w	$xr2, $t1, 2
	xvinsgr2vr.w	$xr2, $t2, 3
	xvinsgr2vr.w	$xr2, $t3, 4
	xvinsgr2vr.w	$xr2, $t4, 5
	xvinsgr2vr.w	$xr2, $t5, 6
	xvinsgr2vr.w	$xr2, $t6, 7
	ld.w	$a7, $a3, 8
	ld.w	$t0, $a3, 16
	ld.w	$t1, $a3, 24
	ld.w	$t2, $a3, 32
	ld.w	$t3, $a3, 40
	ld.w	$t4, $a3, 48
	ld.w	$t5, $a3, 56
	ld.w	$t6, $a3, 64
	xvinsgr2vr.w	$xr3, $a7, 0
	xvinsgr2vr.w	$xr3, $t0, 1
	xvinsgr2vr.w	$xr3, $t1, 2
	xvinsgr2vr.w	$xr3, $t2, 3
	xvinsgr2vr.w	$xr3, $t3, 4
	xvinsgr2vr.w	$xr3, $t4, 5
	xvinsgr2vr.w	$xr3, $t5, 6
	xvinsgr2vr.w	$xr3, $t6, 7
	xvmin.w	$xr0, $xr2, $xr0
	xvmin.w	$xr1, $xr3, $xr1
	addi.d	$a6, $a6, -16
	addi.d	$a3, $a3, 128
	bnez	$a6, .LBB0_7
# %bb.8:                                # %middle.block
	xvmin.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvmin.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvmin.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvmin.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a3, $xr0, 0
	beq	$a5, $a4, .LBB0_16
# %bb.9:                                # %vec.epilog.iter.check
	andi	$a6, $a4, 12
	beqz	$a6, .LBB0_13
.LBB0_10:                               # %vec.epilog.ph
	bstrpick.d	$a6, $a4, 30, 2
	slli.d	$a7, $a6, 2
	srli.d	$t0, $a4, 2
	ori	$a6, $zero, 1
	bstrins.d	$a6, $t0, 30, 2
	vreplgr2vr.w	$vr0, $a3
	sub.d	$a3, $a5, $a7
	alsl.d	$a5, $a5, $a0, 3
	addi.d	$a5, $a5, 20
	.p2align	4, , 16
.LBB0_11:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a5, -8
	ld.w	$t1, $a5, 0
	ld.w	$t2, $a5, 8
	ld.w	$t3, $a5, 16
	vinsgr2vr.w	$vr1, $t0, 0
	vinsgr2vr.w	$vr1, $t1, 1
	vinsgr2vr.w	$vr1, $t2, 2
	vinsgr2vr.w	$vr1, $t3, 3
	vmin.w	$vr0, $vr1, $vr0
	addi.d	$a3, $a3, 4
	addi.d	$a5, $a5, 32
	bnez	$a3, .LBB0_11
# %bb.12:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vmin.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vmin.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a3, $vr0, 0
	bne	$a7, $a4, .LBB0_14
	b	.LBB0_16
.LBB0_13:
	addi.d	$a6, $a5, 1
.LBB0_14:                               # %for.body.preheader
	alsl.d	$a4, $a6, $a0, 3
	addi.d	$a4, $a4, 4
	sub.d	$a5, $a2, $a6
	.p2align	4, , 16
.LBB0_15:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	slt	$a7, $a6, $a3
	masknez	$a3, $a3, $a7
	maskeqz	$a6, $a6, $a7
	or	$a3, $a6, $a3
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB0_15
.LBB0_16:                               # %for.body10.preheader
	addi.d	$a5, $a0, 12
	addi.d	$a6, $a2, -1
	ori	$a7, $zero, 1
	ori	$a4, $a1, 2560
                                        # implicit-def: $r12
	b	.LBB0_18
	.p2align	4, , 16
.LBB0_17:                               # %for.inc26
                                        #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, -1
	addi.w	$a7, $a7, 1
	beqz	$a6, .LBB0_20
.LBB0_18:                               # %for.body10
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a5, 0
	bne	$t1, $a3, .LBB0_17
# %bb.19:                               # %if.then15
                                        #   in Loop: Header=BB0_18 Depth=1
	ld.w	$t1, $a5, -4
	slt	$t2, $t1, $a4
	masknez	$a4, $a4, $t2
	maskeqz	$t1, $t1, $t2
	or	$a4, $t1, $a4
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $a7, $t2
	or	$t0, $t1, $t0
	b	.LBB0_17
.LBB0_20:                               # %for.cond31.preheader
	bstrpick.d	$a5, $t0, 31, 0
	addi.d	$a6, $a5, -1
	addi.d	$a7, $a0, 12
	addi.d	$t0, $a2, -1
	ori	$a5, $a1, 2560
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %for.inc54
                                        #   in Loop: Header=BB0_22 Depth=1
	addi.d	$a6, $a6, -1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	beqz	$t0, .LBB0_25
.LBB0_22:                               # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a6, .LBB0_21
# %bb.23:                               # %if.end38
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.w	$t1, $a7, 0
	bne	$t1, $a3, .LBB0_21
# %bb.24:                               # %if.then43
                                        #   in Loop: Header=BB0_22 Depth=1
	ld.w	$t1, $a7, -4
	slt	$t2, $t1, $a5
	masknez	$a5, $a5, $t2
	maskeqz	$t1, $t1, $t2
	or	$a5, $t1, $a5
	b	.LBB0_21
.LBB0_25:                               # %for.body63.preheader
	addi.d	$a7, $a0, 12
	addi.d	$a2, $a2, -1
	ori	$a6, $a1, 2560
	.p2align	4, , 16
.LBB0_26:                               # %for.body63
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a7, 0
	xor	$t0, $a1, $a3
	sltui	$t0, $t0, 1
	slt	$t1, $a1, $a6
	masknez	$t2, $a6, $t1
	maskeqz	$a1, $a1, $t1
	or	$a1, $a1, $t2
	masknez	$a1, $a1, $t0
	maskeqz	$a6, $a6, $t0
	or	$a6, $a6, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a7, $a7, 8
	bnez	$a2, .LBB0_26
.LBB0_27:                               # %for.end117
	pcalau12i	$a1, %got_pc_hi20(R)
	ld.d	$a1, $a1, %got_pc_lo12(R)
	ld.d	$a1, $a1, 0
	st.w	$a4, $a1, 8
	st.w	$a3, $a1, 12
	st.w	$a4, $a1, 16
	addi.d	$a2, $a1, 20
	st.w	$a5, $a1, 24
	st.w	$a5, $a1, 32
	ld.w	$a5, $a0, 0
	st.w	$a6, $a1, 20
	st.w	$a6, $a1, 28
	ori	$a6, $zero, 1
	st.w	$a3, $a1, 36
	blt	$a5, $a6, .LBB0_45
# %bb.28:                               # %for.body148.preheader
	move	$a6, $zero
	addi.d	$a7, $a5, 1
	bstrpick.d	$a7, $a7, 31, 0
	slli.d	$a7, $a7, 3
	addi.d	$a7, $a7, -8
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               # %for.inc179
                                        #   in Loop: Header=BB0_30 Depth=1
	addi.d	$a6, $a6, 8
	beq	$a7, $a6, .LBB0_33
.LBB0_30:                               # %for.body148
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t0, $a0, $a6
	ld.w	$t1, $t0, 8
	bne	$a4, $t1, .LBB0_29
# %bb.31:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.w	$t1, $t0, 12
	bne	$a3, $t1, .LBB0_29
# %bb.32:                               # %if.then161
	slli.d	$a3, $a5, 3
	ldx.d	$a3, $a0, $a3
	st.d	$a3, $t0, 8
	addi.w	$a5, $a5, -1
	st.w	$a5, $a0, 0
.LBB0_33:                               # %for.end181
	ori	$a3, $zero, 1
	blt	$a5, $a3, .LBB0_45
# %bb.34:                               # %for.body186.lr.ph
	move	$a3, $zero
	ld.w	$a4, $a1, 32
	addi.d	$a6, $a5, 1
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 3
	addi.d	$a6, $a6, -8
	b	.LBB0_36
	.p2align	4, , 16
.LBB0_35:                               # %for.inc219
                                        #   in Loop: Header=BB0_36 Depth=1
	addi.d	$a3, $a3, 8
	beq	$a6, $a3, .LBB0_39
.LBB0_36:                               # %for.body186
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $a0, $a3
	ld.w	$t0, $a7, 8
	bne	$a4, $t0, .LBB0_35
# %bb.37:                               # %land.lhs.true193
                                        #   in Loop: Header=BB0_36 Depth=1
	ld.w	$t0, $a1, 36
	ld.w	$t1, $a7, 12
	bne	$t0, $t1, .LBB0_35
# %bb.38:                               # %if.then200
	slli.d	$a3, $a5, 3
	ldx.d	$a3, $a0, $a3
	st.d	$a3, $a7, 8
	addi.w	$a5, $a5, -1
	st.w	$a5, $a0, 0
.LBB0_39:                               # %for.end221
	ld.w	$a3, $a1, 16
	blez	$a5, .LBB0_46
# %bb.40:                               # %for.body226.lr.ph
	addi.w	$a6, $a5, 1
	bstrpick.d	$t0, $a6, 31, 0
	addi.d	$a7, $a0, 8
	ori	$a4, $zero, 1
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_41:                               # %for.inc259
                                        #   in Loop: Header=BB0_42 Depth=1
	addi.d	$a4, $a4, 1
	addi.d	$a7, $a7, 8
	beq	$t0, $a4, .LBB0_47
.LBB0_42:                               # %for.body226
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a7, 0
	bne	$a3, $t1, .LBB0_41
# %bb.43:                               # %land.lhs.true233
                                        #   in Loop: Header=BB0_42 Depth=1
	ld.w	$t1, $a2, 0
	ld.w	$t2, $a7, 4
	bne	$t1, $t2, .LBB0_41
# %bb.44:                               # %if.then240
	slli.d	$a2, $a5, 3
	ldx.w	$a2, $a0, $a2
	alsl.d	$a6, $a5, $a0, 3
	st.w	$a2, $a7, 0
	addi.w	$a3, $a5, -1
	st.w	$a3, $a0, 0
	addi.d	$a2, $a6, 4
	b	.LBB0_48
.LBB0_45:                               # %for.end221.thread
	ld.w	$a3, $a1, 16
.LBB0_46:                               # %if.then263
	addi.w	$a6, $a5, 1
.LBB0_47:                               # %if.then263
	st.w	$a6, $a0, 0
	slli.d	$a4, $a6, 3
	stx.w	$a3, $a0, $a4
	ld.w	$a4, $a0, 0
	move	$a3, $a4
.LBB0_48:                               # %if.end279
	ld.w	$a5, $a2, 0
	addi.d	$a2, $a1, 28
	alsl.d	$a6, $a4, $a0, 3
	ld.w	$a4, $a1, 24
	st.w	$a5, $a6, 4
	ori	$a1, $zero, 1
	addi.w	$a5, $a3, 1
	blt	$a3, $a1, .LBB0_54
# %bb.49:                               # %for.body284.lr.ph
	bstrpick.d	$a7, $a5, 31, 0
	addi.d	$a6, $a0, 8
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_50:                               # %for.inc317
                                        #   in Loop: Header=BB0_51 Depth=1
	addi.d	$a1, $a1, 1
	addi.d	$a6, $a6, 8
	beq	$a7, $a1, .LBB0_54
.LBB0_51:                               # %for.body284
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a6, 0
	bne	$a4, $t0, .LBB0_50
# %bb.52:                               # %land.lhs.true291
                                        #   in Loop: Header=BB0_51 Depth=1
	ld.w	$t0, $a2, 0
	ld.w	$t1, $a6, 4
	bne	$t0, $t1, .LBB0_50
# %bb.53:                               # %if.then298
	slli.d	$a2, $a3, 3
	ldx.w	$a2, $a0, $a2
	alsl.d	$a4, $a3, $a0, 3
	st.w	$a2, $a6, 0
	addi.d	$a2, $a3, -1
	st.w	$a2, $a0, 0
	addi.d	$a2, $a4, 4
	ld.w	$a2, $a2, 0
	alsl.d	$a0, $a1, $a0, 3
	st.w	$a2, $a0, 4
	ret
.LBB0_54:                               # %if.then321
	st.w	$a5, $a0, 0
	slli.d	$a1, $a5, 3
	stx.w	$a4, $a0, $a1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a2, 0
	alsl.d	$a0, $a1, $a0, 3
	st.w	$a2, $a0, 4
	ret
.Lfunc_end0:
	.size	buster, .Lfunc_end0-buster
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
