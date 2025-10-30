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
	lu12i.w	$a2, 244140
	blez	$a4, .LBB0_3
# %bb.1:                                # %for.body.preheader
	addi.d	$a1, $a4, 1
	ori	$a5, $zero, 8
	bstrpick.d	$a3, $a1, 31, 0
	bgeu	$a4, $a5, .LBB0_4
# %bb.2:
	ori	$a5, $zero, 1
	ori	$a1, $a2, 2560
	b	.LBB0_7
.LBB0_3:
	ori	$a6, $a2, 2560
	move	$a4, $a6
	move	$a1, $a6
	move	$a5, $a6
	b	.LBB0_20
.LBB0_4:                                # %vector.ph
	bstrpick.d	$a1, $a4, 30, 3
	slli.d	$a6, $a1, 3
	srli.d	$a1, $a4, 3
	ori	$a5, $zero, 1
	bstrins.d	$a5, $a1, 30, 3
	ori	$a1, $a2, 2560
	vreplgr2vr.w	$vr0, $a1
	addi.d	$a1, $a0, 36
	move	$a7, $a6
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB0_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a1, -24
	ld.w	$t1, $a1, -16
	ld.w	$t2, $a1, -8
	ld.w	$t3, $a1, 0
	vinsgr2vr.w	$vr2, $t0, 0
	vinsgr2vr.w	$vr2, $t1, 1
	vinsgr2vr.w	$vr2, $t2, 2
	vinsgr2vr.w	$vr2, $t3, 3
	ld.w	$t0, $a1, 8
	ld.w	$t1, $a1, 16
	ld.w	$t2, $a1, 24
	ld.w	$t3, $a1, 32
	vinsgr2vr.w	$vr3, $t0, 0
	vinsgr2vr.w	$vr3, $t1, 1
	vinsgr2vr.w	$vr3, $t2, 2
	vinsgr2vr.w	$vr3, $t3, 3
	vmin.w	$vr0, $vr2, $vr0
	vmin.w	$vr1, $vr3, $vr1
	addi.d	$a7, $a7, -8
	addi.d	$a1, $a1, 64
	bnez	$a7, .LBB0_5
# %bb.6:                                # %middle.block
	vmin.w	$vr0, $vr0, $vr1
	vbsrl.v	$vr1, $vr0, 8
	vmin.w	$vr0, $vr1, $vr0
	vbsrl.v	$vr1, $vr0, 4
	vmin.w	$vr0, $vr1, $vr0
	vpickve2gr.w	$a1, $vr0, 0
	beq	$a6, $a4, .LBB0_9
.LBB0_7:                                # %for.body.preheader214
	alsl.d	$a4, $a5, $a0, 3
	addi.d	$a4, $a4, 4
	sub.d	$a5, $a3, $a5
	.p2align	4, , 16
.LBB0_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	slt	$a7, $a6, $a1
	masknez	$a1, $a1, $a7
	maskeqz	$a6, $a6, $a7
	or	$a1, $a6, $a1
	addi.d	$a5, $a5, -1
	addi.d	$a4, $a4, 8
	bnez	$a5, .LBB0_8
.LBB0_9:                                # %for.body10.preheader
	addi.d	$a5, $a0, 12
	addi.d	$a6, $a3, -1
	ori	$a7, $zero, 1
	ori	$a4, $a2, 2560
                                        # implicit-def: $r12
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %for.inc26
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, -1
	addi.w	$a7, $a7, 1
	beqz	$a6, .LBB0_13
.LBB0_11:                               # %for.body10
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a5, 0
	bne	$t1, $a1, .LBB0_10
# %bb.12:                               # %if.then15
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.w	$t1, $a5, -4
	slt	$t2, $t1, $a4
	masknez	$a4, $a4, $t2
	maskeqz	$t1, $t1, $t2
	or	$a4, $t1, $a4
	masknez	$t0, $t0, $t2
	maskeqz	$t1, $a7, $t2
	or	$t0, $t1, $t0
	b	.LBB0_10
.LBB0_13:                               # %for.cond31.preheader
	bstrpick.d	$a5, $t0, 31, 0
	addi.d	$a6, $a0, 12
	addi.d	$a7, $a5, -1
	addi.d	$t0, $a3, -1
	ori	$a5, $a2, 2560
	b	.LBB0_15
	.p2align	4, , 16
.LBB0_14:                               # %for.inc54
                                        #   in Loop: Header=BB0_15 Depth=1
	addi.d	$a6, $a6, 8
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, -1
	beqz	$t0, .LBB0_18
.LBB0_15:                               # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	beqz	$a7, .LBB0_14
# %bb.16:                               # %if.end38
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.w	$t1, $a6, 0
	bne	$t1, $a1, .LBB0_14
# %bb.17:                               # %if.then43
                                        #   in Loop: Header=BB0_15 Depth=1
	ld.w	$t1, $a6, -4
	slt	$t2, $t1, $a5
	masknez	$a5, $a5, $t2
	maskeqz	$t1, $t1, $t2
	or	$a5, $t1, $a5
	b	.LBB0_14
.LBB0_18:                               # %for.body63.preheader
	addi.d	$a7, $a0, 12
	addi.d	$a3, $a3, -1
	ori	$a6, $a2, 2560
	.p2align	4, , 16
.LBB0_19:                               # %for.body63
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a7, 0
	xor	$t0, $a2, $a1
	sltui	$t0, $t0, 1
	slt	$t1, $a2, $a6
	masknez	$t2, $a6, $t1
	maskeqz	$a2, $a2, $t1
	or	$a2, $a2, $t2
	masknez	$a2, $a2, $t0
	maskeqz	$a6, $a6, $t0
	or	$a6, $a6, $a2
	addi.d	$a3, $a3, -1
	addi.d	$a7, $a7, 8
	bnez	$a3, .LBB0_19
.LBB0_20:                               # %for.end117
	pcalau12i	$a2, %got_pc_hi20(R)
	ld.d	$a2, $a2, %got_pc_lo12(R)
	ld.d	$a2, $a2, 0
	st.w	$a4, $a2, 8
	st.w	$a4, $a2, 16
	st.w	$a5, $a2, 24
	st.w	$a5, $a2, 32
	ld.w	$a3, $a0, 0
	st.w	$a1, $a2, 12
	st.w	$a6, $a2, 20
	st.w	$a6, $a2, 28
	st.w	$a1, $a2, 36
	blez	$a3, .LBB0_38
# %bb.21:                               # %for.body148.preheader
	move	$a5, $zero
	addi.d	$a6, $a3, 1
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 3
	addi.d	$a6, $a6, -8
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %for.inc179
                                        #   in Loop: Header=BB0_23 Depth=1
	addi.d	$a5, $a5, 8
	beq	$a6, $a5, .LBB0_26
.LBB0_23:                               # %for.body148
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $a0, $a5
	ld.w	$t0, $a7, 8
	bne	$a4, $t0, .LBB0_22
# %bb.24:                               # %land.lhs.true
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.w	$t0, $a7, 12
	bne	$a1, $t0, .LBB0_22
# %bb.25:                               # %if.then161
	slli.d	$a1, $a3, 3
	ldx.d	$a1, $a0, $a1
	st.d	$a1, $a7, 8
	addi.w	$a3, $a3, -1
	st.w	$a3, $a0, 0
.LBB0_26:                               # %for.end181
	blez	$a3, .LBB0_38
# %bb.27:                               # %for.body186.lr.ph
	move	$a1, $zero
	ld.w	$a4, $a2, 32
	addi.d	$a5, $a3, 1
	bstrpick.d	$a5, $a5, 31, 0
	slli.d	$a5, $a5, 3
	addi.d	$a5, $a5, -8
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               # %for.inc219
                                        #   in Loop: Header=BB0_29 Depth=1
	addi.d	$a1, $a1, 8
	beq	$a5, $a1, .LBB0_32
.LBB0_29:                               # %for.body186
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a6, $a0, $a1
	ld.w	$a7, $a6, 8
	bne	$a4, $a7, .LBB0_28
# %bb.30:                               # %land.lhs.true193
                                        #   in Loop: Header=BB0_29 Depth=1
	ld.w	$a7, $a2, 36
	ld.w	$t0, $a6, 12
	bne	$a7, $t0, .LBB0_28
# %bb.31:                               # %if.then200
	slli.d	$a1, $a3, 3
	ldx.d	$a1, $a0, $a1
	st.d	$a1, $a6, 8
	addi.w	$a3, $a3, -1
	st.w	$a3, $a0, 0
.LBB0_32:                               # %for.end221
	ld.w	$a1, $a2, 16
	blez	$a3, .LBB0_39
# %bb.33:                               # %for.body226.lr.ph
	move	$a5, $zero
	addi.w	$a4, $a3, 1
	bstrpick.d	$a6, $a4, 31, 0
	slli.d	$a6, $a6, 3
	addi.d	$a6, $a6, -8
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %for.inc259
                                        #   in Loop: Header=BB0_35 Depth=1
	addi.d	$a5, $a5, 8
	beq	$a6, $a5, .LBB0_40
.LBB0_35:                               # %for.body226
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $a0, $a5
	ld.w	$t0, $a7, 8
	bne	$a1, $t0, .LBB0_34
# %bb.36:                               # %land.lhs.true233
                                        #   in Loop: Header=BB0_35 Depth=1
	ld.w	$t0, $a2, 20
	ld.w	$t1, $a7, 12
	bne	$t0, $t1, .LBB0_34
# %bb.37:                               # %if.then240
	slli.d	$a1, $a3, 3
	ldx.d	$a1, $a0, $a1
	st.d	$a1, $a7, 8
	addi.w	$a1, $a3, -1
	st.w	$a1, $a0, 0
	ld.w	$a3, $a2, 24
	addi.w	$a4, $a1, 1
	bgtz	$a1, .LBB0_41
	b	.LBB0_46
.LBB0_38:                               # %for.end221.thread
	ld.w	$a1, $a2, 16
.LBB0_39:                               # %if.then263
	addi.w	$a4, $a3, 1
.LBB0_40:                               # %if.then263
	st.w	$a4, $a0, 0
	slli.d	$a3, $a4, 3
	stx.w	$a1, $a0, $a3
	ld.w	$a1, $a0, 0
	ld.w	$a3, $a2, 20
	alsl.d	$a4, $a1, $a0, 3
	st.w	$a3, $a4, 4
	ld.w	$a3, $a2, 24
	addi.w	$a4, $a1, 1
	blez	$a1, .LBB0_46
.LBB0_41:                               # %for.body284.lr.ph
	move	$a5, $zero
	bstrpick.d	$a6, $a4, 31, 0
	slli.d	$a6, $a6, 3
	addi.d	$a6, $a6, -8
	b	.LBB0_43
	.p2align	4, , 16
.LBB0_42:                               # %for.inc317
                                        #   in Loop: Header=BB0_43 Depth=1
	addi.d	$a5, $a5, 8
	beq	$a6, $a5, .LBB0_46
.LBB0_43:                               # %for.body284
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a7, $a0, $a5
	ld.w	$t0, $a7, 8
	bne	$a3, $t0, .LBB0_42
# %bb.44:                               # %land.lhs.true291
                                        #   in Loop: Header=BB0_43 Depth=1
	ld.w	$t0, $a2, 28
	ld.w	$t1, $a7, 12
	bne	$t0, $t1, .LBB0_42
# %bb.45:                               # %if.then298
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $a0, $a2
	st.d	$a2, $a7, 8
	addi.d	$a1, $a1, -1
	st.w	$a1, $a0, 0
	ret
.LBB0_46:                               # %if.then321
	st.w	$a4, $a0, 0
	slli.d	$a1, $a4, 3
	stx.w	$a3, $a0, $a1
	ld.w	$a1, $a0, 0
	ld.w	$a2, $a2, 28
	alsl.d	$a0, $a1, $a0, 3
	st.w	$a2, $a0, 4
	ret
.Lfunc_end0:
	.size	buster, .Lfunc_end0-buster
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
