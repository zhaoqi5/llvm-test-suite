	.file	"cmpsf-1.c"
	.text
	.globl	feq                             # -- Begin function feq
	.p2align	5
	.type	feq,@function
feq:                                    # @feq
# %bb.0:                                # %entry
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 140
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 13
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end0:
	.size	feq, .Lfunc_end0-feq
                                        # -- End function
	.globl	fne                             # -- Begin function fne
	.p2align	5
	.type	fne,@function
fne:                                    # @fne
# %bb.0:                                # %entry
	fcmp.cune.s	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 140
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 13
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end1:
	.size	fne, .Lfunc_end1-fne
                                        # -- End function
	.globl	flt                             # -- Begin function flt
	.p2align	5
	.type	flt,@function
flt:                                    # @flt
# %bb.0:                                # %entry
	fcmp.clt.s	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 140
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 13
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end2:
	.size	flt, .Lfunc_end2-flt
                                        # -- End function
	.globl	fge                             # -- Begin function fge
	.p2align	5
	.type	fge,@function
fge:                                    # @fge
# %bb.0:                                # %entry
	fcmp.cult.s	$fcc0, $fa0, $fa1
	ori	$a0, $zero, 13
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 140
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end3:
	.size	fge, .Lfunc_end3-fge
                                        # -- End function
	.globl	fgt                             # -- Begin function fgt
	.p2align	5
	.type	fgt,@function
fgt:                                    # @fgt
# %bb.0:                                # %entry
	fcmp.clt.s	$fcc0, $fa1, $fa0
	ori	$a0, $zero, 140
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 13
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end4:
	.size	fgt, .Lfunc_end4-fgt
                                        # -- End function
	.globl	fle                             # -- Begin function fle
	.p2align	5
	.type	fle,@function
fle:                                    # @fle
# %bb.0:                                # %entry
	fcmp.cult.s	$fcc0, $fa1, $fa0
	ori	$a0, $zero, 13
	movcf2gr	$a1, $fcc0
	masknez	$a0, $a0, $a1
	ori	$a2, $zero, 140
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end5:
	.size	fle, .Lfunc_end5-fle
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcalau12i	$a1, %pc_hi20(args)
	addi.d	$a1, $a1, %pc_lo12(args)
	fld.s	$fa0, $a1, 0
	fld.s	$fa1, $a1, 4
	fld.s	$fa2, $a1, 8
	fld.s	$fa3, $a1, 12
	fld.s	$fa4, $a1, 16
	fld.s	$fa5, $a1, 20
	fld.s	$fa6, $a1, 24
	fld.s	$fa7, $a1, 28
	pcalau12i	$a2, %pc_hi20(correct_results)
	addi.d	$a2, $a2, %pc_lo12(correct_results)
	ori	$a3, $zero, 140
	ori	$a4, $zero, 13
	ori	$a5, $zero, 32
	.p2align	4, , 16
.LBB6_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	fldx.s	$ft0, $a1, $a0
	fcmp.ceq.s	$fcc0, $ft0, $fa0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 0
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.2:                                # %if.end
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cune.s	$fcc0, $ft0, $fa0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 4
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.3:                                # %if.end11
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $ft0, $fa0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 8
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.4:                                # %if.end16
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $ft0, $fa0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 12
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.5:                                # %if.end21
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $fa0, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 16
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.6:                                # %if.end26
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $fa0, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 20
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.7:                                # %if.end31
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.ceq.s	$fcc0, $ft0, $fa1
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 24
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.8:                                # %if.end.1
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cune.s	$fcc0, $ft0, $fa1
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 28
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.9:                                # %if.end11.1
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $ft0, $fa1
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 32
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.10:                               # %if.end16.1
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $ft0, $fa1
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 36
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.11:                               # %if.end21.1
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $fa1, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 40
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.12:                               # %if.end26.1
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $fa1, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 44
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.13:                               # %if.end31.1
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.ceq.s	$fcc0, $ft0, $fa2
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 48
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.14:                               # %if.end.2
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cune.s	$fcc0, $ft0, $fa2
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 52
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.15:                               # %if.end11.2
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $ft0, $fa2
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 56
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.16:                               # %if.end16.2
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $ft0, $fa2
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 60
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.17:                               # %if.end21.2
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $fa2, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 64
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.18:                               # %if.end26.2
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $fa2, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 68
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.19:                               # %if.end31.2
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.ceq.s	$fcc0, $ft0, $fa3
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 72
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.20:                               # %if.end.3
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cune.s	$fcc0, $ft0, $fa3
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 76
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.21:                               # %if.end11.3
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $ft0, $fa3
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 80
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.22:                               # %if.end16.3
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $ft0, $fa3
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 84
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.23:                               # %if.end21.3
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $fa3, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 88
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.24:                               # %if.end26.3
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $fa3, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 92
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.25:                               # %if.end31.3
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.ceq.s	$fcc0, $ft0, $fa4
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 96
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.26:                               # %if.end.4
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cune.s	$fcc0, $ft0, $fa4
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 100
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.27:                               # %if.end11.4
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $ft0, $fa4
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 104
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.28:                               # %if.end16.4
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $ft0, $fa4
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 108
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.29:                               # %if.end21.4
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $fa4, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 112
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.30:                               # %if.end26.4
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $fa4, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 116
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.31:                               # %if.end31.4
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.ceq.s	$fcc0, $ft0, $fa5
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 120
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.32:                               # %if.end.5
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cune.s	$fcc0, $ft0, $fa5
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 124
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.33:                               # %if.end11.5
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $ft0, $fa5
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 128
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.34:                               # %if.end16.5
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $ft0, $fa5
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 132
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.35:                               # %if.end21.5
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $fa5, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 136
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.36:                               # %if.end26.5
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $fa5, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 140
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.37:                               # %if.end31.5
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.ceq.s	$fcc0, $ft0, $fa6
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 144
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.38:                               # %if.end.6
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cune.s	$fcc0, $ft0, $fa6
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 148
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.39:                               # %if.end11.6
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $ft0, $fa6
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 152
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.40:                               # %if.end16.6
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $ft0, $fa6
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 156
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.41:                               # %if.end21.6
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $fa6, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 160
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.42:                               # %if.end26.6
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $fa6, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 164
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.43:                               # %if.end31.6
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.ceq.s	$fcc0, $ft0, $fa7
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 168
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.44:                               # %if.end.7
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cune.s	$fcc0, $ft0, $fa7
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 172
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.45:                               # %if.end11.7
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $ft0, $fa7
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 176
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.46:                               # %if.end16.7
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $ft0, $fa7
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 180
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.47:                               # %if.end21.7
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.clt.s	$fcc0, $fa7, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 184
	masknez	$t0, $a3, $a6
	maskeqz	$a6, $a4, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.48:                               # %if.end26.7
                                        #   in Loop: Header=BB6_1 Depth=1
	fcmp.cult.s	$fcc0, $fa7, $ft0
	movcf2gr	$a6, $fcc0
	ld.w	$a7, $a2, 188
	masknez	$t0, $a4, $a6
	maskeqz	$a6, $a3, $a6
	or	$a6, $a6, $t0
	bne	$a6, $a7, .LBB6_51
# %bb.49:                               # %if.end31.7
                                        #   in Loop: Header=BB6_1 Depth=1
	addi.d	$a0, $a0, 4
	addi.d	$a2, $a2, 192
	bne	$a0, $a5, .LBB6_1
# %bb.50:                               # %for.end34
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_51:                               # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
                                        # -- End function
	.type	args,@object                    # @args
	.data
	.globl	args
	.p2align	2, 0x0
args:
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0xbf800000                      # float -1
	.word	0x7f7fffff                      # float 3.40282347E+38
	.word	0x00800000                      # float 1.17549435E-38
	.word	0x29e12e13                      # float 9.99999982E-14
	.word	0x4ceb79a3                      # float 123456792
	.word	0xce6b79a3                      # float -987654336
	.size	args, 32

	.type	correct_results,@object         # @correct_results
	.globl	correct_results
	.p2align	2, 0x0
correct_results:
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.word	140                             # 0x8c
	.word	13                              # 0xd
	.size	correct_results, 1536

	.section	".note.GNU-stack","",@progbits
	.addrsig
