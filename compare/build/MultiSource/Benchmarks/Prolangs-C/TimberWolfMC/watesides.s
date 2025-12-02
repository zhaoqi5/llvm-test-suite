	.file	"watesides.c"
	.text
	.globl	watesides                       # -- Begin function watesides
	.p2align	5
	.type	watesides,@function
watesides:                              # @watesides
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 152
	beqz	$a1, .LBB0_25
# %bb.1:                                # %for.body.lr.ph
	ld.w	$a2, $a0, 12
	ld.w	$a3, $a0, 64
	pcalau12i	$a4, %got_pc_hi20(pSideArray)
	ld.d	$a4, $a4, %got_pc_lo12(pSideArray)
	ld.d	$a4, $a4, 0
	ld.w	$a0, $a0, 16
	addi.d	$a5, $a3, 1
	bstrpick.d	$a5, $a5, 31, 0
	addi.d	$a4, $a4, 44
	addi.d	$a5, $a5, -1
	lu52i.d	$a6, $zero, -1025
	vldi	$vr0, -784
	ori	$a7, $zero, 1
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_2:                                # %for.end.thread
                                        #   in Loop: Header=BB0_4 Depth=1
	vst	$vr0, $a1, 16
	st.d	$a6, $a1, 32
.LBB0_3:                                # %for.cond.loopexit
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB0_25
.LBB0_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_12 Depth 2
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_22 Depth 2
	ld.w	$t0, $a1, 56
	st.d	$a6, $a1, 8
	blez	$a3, .LBB0_2
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	add.w	$t0, $t0, $a2
	move	$t1, $a5
	move	$t2, $a4
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                # %for.inc
                                        #   in Loop: Header=BB0_7 Depth=2
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 24
	beqz	$t1, .LBB0_10
.LBB0_7:                                # %for.body4
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, -4
	bne	$t3, $a7, .LBB0_6
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.w	$t3, $t2, 0
	bne	$t3, $t0, .LBB0_6
# %bb.9:                                # %if.then10
                                        #   in Loop: Header=BB0_7 Depth=2
	ld.w	$t3, $t2, -20
	fld.d	$fa1, $t2, -12
	movgr2fr.w	$fa2, $t3
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a1, 8
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_10:                               # %for.end
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$t0, $a1, 60
	add.w	$t0, $t0, $a2
	st.d	$a6, $a1, 16
	move	$t1, $a5
	move	$t2, $a4
	b	.LBB0_12
	.p2align	4, , 16
.LBB0_11:                               # %for.inc48
                                        #   in Loop: Header=BB0_12 Depth=2
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 24
	beqz	$t1, .LBB0_15
.LBB0_12:                               # %for.body24
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, -4
	bne	$t3, $a7, .LBB0_11
# %bb.13:                               # %if.then30
                                        #   in Loop: Header=BB0_12 Depth=2
	ld.w	$t3, $t2, 0
	bne	$t3, $t0, .LBB0_11
# %bb.14:                               # %if.then36
                                        #   in Loop: Header=BB0_12 Depth=2
	ld.w	$t3, $t2, -20
	fld.d	$fa1, $t2, -12
	movgr2fr.w	$fa2, $t3
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a1, 16
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_15:                               # %for.end50
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$t0, $a1, 64
	add.w	$t0, $t0, $a0
	st.d	$a6, $a1, 24
	move	$t1, $a5
	move	$t2, $a4
	b	.LBB0_17
	.p2align	4, , 16
.LBB0_16:                               # %for.inc81
                                        #   in Loop: Header=BB0_17 Depth=2
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 24
	beqz	$t1, .LBB0_20
.LBB0_17:                               # %for.body57
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, -4
	bnez	$t3, .LBB0_16
# %bb.18:                               # %if.then63
                                        #   in Loop: Header=BB0_17 Depth=2
	ld.w	$t3, $t2, 0
	bne	$t3, $t0, .LBB0_16
# %bb.19:                               # %if.then69
                                        #   in Loop: Header=BB0_17 Depth=2
	ld.w	$t3, $t2, -20
	fld.d	$fa1, $t2, -12
	movgr2fr.w	$fa2, $t3
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a1, 24
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_20:                               # %for.end83
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$t0, $a1, 68
	add.w	$t0, $t0, $a0
	st.d	$a6, $a1, 32
	move	$t1, $a5
	move	$t2, $a4
	b	.LBB0_22
	.p2align	4, , 16
.LBB0_21:                               # %for.inc115
                                        #   in Loop: Header=BB0_22 Depth=2
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 24
	beqz	$t1, .LBB0_3
.LBB0_22:                               # %for.body91
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, -4
	bnez	$t3, .LBB0_21
# %bb.23:                               # %if.then97
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.w	$t3, $t2, 0
	bne	$t3, $t0, .LBB0_21
# %bb.24:                               # %if.then103
                                        #   in Loop: Header=BB0_22 Depth=2
	ld.w	$t3, $t2, -20
	fld.d	$fa1, $t2, -12
	movgr2fr.w	$fa2, $t3
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa1, $fa1, $fa2
	fst.d	$fa1, $a1, 32
	b	.LBB0_21
.LBB0_25:                               # %for.end119
	ret
.Lfunc_end0:
	.size	watesides, .Lfunc_end0-watesides
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
