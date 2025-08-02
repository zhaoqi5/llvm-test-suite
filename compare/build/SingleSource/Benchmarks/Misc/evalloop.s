	.file	"evalloop.c"
	.text
	.globl	execute                         # -- Begin function execute
	.p2align	5
	.type	execute,@function
execute:                                # @execute
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(sum)
	ld.w	$a2, $a1, %pc_lo12(sum)
	add.d	$a0, $a2, $a0
	st.w	$a0, $a1, %pc_lo12(sum)
	ret
.Lfunc_end0:
	.size	execute, .Lfunc_end0-execute
                                        # -- End function
	.globl	eval                            # -- Begin function eval
	.p2align	5
	.type	eval,@function
eval:                                   # @eval
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 31
.LBB1_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a0, 0
	addi.d	$a0, $a0, 4
	bltu	$a1, $a2, .LBB1_1
# %bb.2:                                # %while.body
	slli.d	$a1, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI1_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI1_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB1_3:                                # %sw.bb7.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_4:                                # %sw.bb103.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_5:                                # %sw.bb59.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_6:                                # %sw.bb51.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_7:                                # %sw.bb39.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_8:                                # %sw.bb11.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_9:                                # %sw.bb43.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_10:                               # %sw.bb31.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_11:                               # %sw.bb95.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_12:                               # %sw.bb91.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_13:                               # %sw.bb55.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_14:                               # %indirectgoto.preheader.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_15:                               # %sw.bb23.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_16:                               # %sw.bb119.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_17:                               # %sw.bb63.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_18:                               # %sw.bb75.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_19:                               # %sw.bb15.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_20:                               # %sw.bb79.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_21:                               # %sw.bb47.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_22:                               # %sw.bb19.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_23:                               # %sw.bb67.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_24:                               # %sw.bb35.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_25:                               # %sw.bb27.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_26:                               # %sw.bb115.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_27:                               # %sw.bb83.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_28:                               # %sw.bb71.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_29:                               # %sw.bb87.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_30:                               # %sw.bb107.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_31:                               # %sw.bb111.loopexit
	move	$a1, $zero
	b	.LBB1_34
.LBB1_32:                               # %sw.bb99.loopexit
	move	$a1, $zero
	b	.LBB1_34
	.p2align	4, , 16
.Ltmp0:                                 # Block address taken
.LBB1_33:                               # %indirectgoto
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 1
.LBB1_34:                               # %.split
                                        # =>This Inner Loop Header: Depth=1
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(eval.dispatch)
	addi.d	$a1, $a1, %pc_lo12(eval.dispatch)
	ldx.d	$a1, $a1, $a0
	addi.d	$a0, $fp, 4
	jr	$a1
.Ltmp1:                                 # Block address taken
.LBB1_35:                               # %indirectgoto.preheader
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 2
	b	.LBB1_34
.Ltmp2:                                 # Block address taken
.LBB1_36:                               # %sw.bb19
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 6
	b	.LBB1_34
.Ltmp3:                                 # Block address taken
.LBB1_37:                               # %sw.bb63
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 17
	b	.LBB1_34
.Ltmp4:                                 # Block address taken
.LBB1_38:                               # %sw.bb87
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 23
	b	.LBB1_34
.Ltmp5:                                 # Block address taken
.LBB1_39:                               # %sw.bb99
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 26
	b	.LBB1_34
.Ltmp6:                                 # Block address taken
.LBB1_40:                               # %sw.bb11
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 4
	b	.LBB1_34
.Ltmp7:                                 # Block address taken
.LBB1_41:                               # %sw.bb7
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 3
	b	.LBB1_34
.Ltmp8:                                 # Block address taken
.LBB1_42:                               # %sw.bb51
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 14
	b	.LBB1_34
.Ltmp9:                                 # Block address taken
.LBB1_43:                               # %sw.bb67
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 18
	b	.LBB1_34
.Ltmp10:                                # Block address taken
.LBB1_44:                               # %sw.bb35
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 10
	b	.LBB1_34
.Ltmp11:                                # Block address taken
.LBB1_45:                               # %sw.bb107
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 28
	b	.LBB1_34
.Ltmp12:                                # Block address taken
.LBB1_46:                               # %sw.bb71
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 19
	b	.LBB1_34
.Ltmp13:                                # Block address taken
.LBB1_47:                               # %sw.bb115
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 30
	b	.LBB1_34
.Ltmp14:                                # Block address taken
.LBB1_48:                               # %sw.bb39
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 11
	b	.LBB1_34
.Ltmp15:                                # Block address taken
.LBB1_49:                               # %sw.bb119
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 31
	b	.LBB1_34
.Ltmp16:                                # Block address taken
.LBB1_50:                               # %sw.bb55
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 15
	b	.LBB1_34
.Ltmp17:                                # Block address taken
.LBB1_51:                               # %sw.bb31
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 9
	b	.LBB1_34
.Ltmp18:                                # Block address taken
.LBB1_52:                               # %sw.bb43
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 12
	b	.LBB1_34
.Ltmp19:                                # Block address taken
.LBB1_53:                               # %sw.bb103
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 27
	b	.LBB1_34
.Ltmp20:                                # Block address taken
.LBB1_54:                               # %sw.bb111
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 29
	b	.LBB1_34
.Ltmp21:                                # Block address taken
.LBB1_55:                               # %sw.bb27
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 8
	b	.LBB1_34
.Ltmp22:                                # Block address taken
.LBB1_56:                               # %sw.bb91
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 24
	b	.LBB1_34
.Ltmp23:                                # Block address taken
.LBB1_57:                               # %sw.bb95
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 25
	b	.LBB1_34
.Ltmp24:                                # Block address taken
.LBB1_58:                               # %sw.bb15
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 5
	b	.LBB1_34
.Ltmp25:                                # Block address taken
.LBB1_59:                               # %sw.bb23
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 7
	b	.LBB1_34
.Ltmp26:                                # Block address taken
.LBB1_60:                               # %sw.bb59
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 16
	b	.LBB1_34
.Ltmp27:                                # Block address taken
.LBB1_61:                               # %sw.bb83
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 22
	b	.LBB1_34
.Ltmp28:                                # Block address taken
.LBB1_62:                               # %sw.bb47
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 13
	b	.LBB1_34
.Ltmp29:                                # Block address taken
.LBB1_63:                               # %sw.bb79
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 21
	b	.LBB1_34
.Ltmp30:                                # Block address taken
.LBB1_64:                               # %sw.bb75
                                        #   in Loop: Header=BB1_34 Depth=1
	ori	$a1, $zero, 20
	b	.LBB1_34
.Ltmp31:                                # Block address taken
.LBB1_65:                               # %sw.bb
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	eval, .Lfunc_end1-eval
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_65-.LJTI1_0
	.word	.LBB1_14-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
	.word	.LBB1_19-.LJTI1_0
	.word	.LBB1_22-.LJTI1_0
	.word	.LBB1_15-.LJTI1_0
	.word	.LBB1_25-.LJTI1_0
	.word	.LBB1_10-.LJTI1_0
	.word	.LBB1_24-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_9-.LJTI1_0
	.word	.LBB1_21-.LJTI1_0
	.word	.LBB1_6-.LJTI1_0
	.word	.LBB1_13-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_17-.LJTI1_0
	.word	.LBB1_23-.LJTI1_0
	.word	.LBB1_28-.LJTI1_0
	.word	.LBB1_18-.LJTI1_0
	.word	.LBB1_20-.LJTI1_0
	.word	.LBB1_27-.LJTI1_0
	.word	.LBB1_29-.LJTI1_0
	.word	.LBB1_12-.LJTI1_0
	.word	.LBB1_11-.LJTI1_0
	.word	.LBB1_32-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_30-.LJTI1_0
	.word	.LBB1_31-.LJTI1_0
	.word	.LBB1_26-.LJTI1_0
	.word	.LBB1_16-.LJTI1_0
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 2096
	sub.d	$sp, $sp, $a0
	lu12i.w	$a0, 16
	lu32i.d	$a0, 196610
	vreplgr2vr.d	$vr0, $a0
	lu12i.w	$a0, -2
	ori	$a0, $a0, 32
	lu12i.w	$a1, 135300
	ori	$a1, $a1, 529
	lu32i.d	$a1, 135300
	lu52i.d	$a1, $a1, 132
	vrepli.b	$vr1, 0
	addi.d	$a2, $sp, 16
	lu12i.w	$a4, 1
	ori	$a3, $a4, 4064
	ori	$a4, $a4, 4080
	.p2align	4, , 16
.LBB2_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vaddi.hu	$vr2, $vr0, 4
	vpickve2gr.h	$a5, $vr0, 1
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	vpickve2gr.h	$a6, $vr0, 0
	bstrpick.d	$a6, $a6, 15, 0
	mulh.du	$a7, $a6, $a1
	slli.d	$t0, $a7, 5
	sub.d	$a7, $a7, $t0
	add.d	$a6, $a6, $a7
	vinsgr2vr.h	$vr3, $a6, 0
	vinsgr2vr.h	$vr3, $a5, 1
	vpickve2gr.h	$a5, $vr0, 2
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	vinsgr2vr.h	$vr3, $a5, 2
	vpickve2gr.h	$a5, $vr0, 3
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	vinsgr2vr.h	$vr3, $a5, 3
	vpickve2gr.h	$a5, $vr2, 1
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	vpickve2gr.h	$a6, $vr2, 0
	bstrpick.d	$a6, $a6, 15, 0
	mulh.du	$a7, $a6, $a1
	slli.d	$t0, $a7, 5
	sub.d	$a7, $a7, $t0
	add.d	$a6, $a6, $a7
	vinsgr2vr.h	$vr4, $a6, 0
	vinsgr2vr.h	$vr4, $a5, 1
	vpickve2gr.h	$a5, $vr2, 2
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	vinsgr2vr.h	$vr4, $a5, 2
	vpickve2gr.h	$a5, $vr2, 3
	bstrpick.d	$a6, $a5, 15, 0
	mulh.du	$a6, $a6, $a1
	slli.d	$a7, $a6, 5
	sub.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	vinsgr2vr.h	$vr4, $a5, 3
	vaddi.hu	$vr2, $vr3, 1
	vaddi.hu	$vr3, $vr4, 1
	vilvl.h	$vr2, $vr1, $vr2
	vilvl.h	$vr3, $vr1, $vr3
	add.d	$a5, $a2, $a0
	vstx	$vr2, $a5, $a3
	vstx	$vr3, $a5, $a4
	addi.d	$a0, $a0, 32
	vaddi.hu	$vr0, $vr0, 8
	bnez	$a0, .LBB2_1
# %bb.2:                                # %for.body
	ori	$a0, $zero, 26
	lu32i.d	$a0, 27
	lu12i.w	$a1, 1
	ori	$a1, $a1, 4080
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 28
	lu32i.d	$a0, 29
	lu12i.w	$a1, 1
	ori	$a1, $a1, 4088
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 30
	lu32i.d	$a0, 31
	lu12i.w	$a1, 2
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	ori	$a0, $zero, 1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 8
	add.d	$a1, $sp, $a1
	stptr.d	$a0, $a1, 0
	lu12i.w	$a0, 24
	ori	$fp, $a0, 1696
	.p2align	4, , 16
.LBB2_3:                                # %for.body6
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(eval)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB2_3
# %bb.4:                                # %for.cond.cleanup5
	pcalau12i	$a0, %pc_hi20(sum)
	ld.w	$a1, $a0, %pc_lo12(sum)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2096
	add.d	$sp, $sp, $a1
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	sum,@object                     # @sum
	.bss
	.globl	sum
	.p2align	2, 0x0
sum:
	.word	0                               # 0x0
	.size	sum, 4

	.type	eval.dispatch,@object           # @eval.dispatch
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
eval.dispatch:
	.dword	.Ltmp31
	.dword	.Ltmp0
	.dword	.Ltmp1
	.dword	.Ltmp7
	.dword	.Ltmp6
	.dword	.Ltmp24
	.dword	.Ltmp2
	.dword	.Ltmp25
	.dword	.Ltmp21
	.dword	.Ltmp17
	.dword	.Ltmp10
	.dword	.Ltmp14
	.dword	.Ltmp18
	.dword	.Ltmp28
	.dword	.Ltmp8
	.dword	.Ltmp16
	.dword	.Ltmp26
	.dword	.Ltmp3
	.dword	.Ltmp9
	.dword	.Ltmp12
	.dword	.Ltmp30
	.dword	.Ltmp29
	.dword	.Ltmp27
	.dword	.Ltmp4
	.dword	.Ltmp22
	.dword	.Ltmp23
	.dword	.Ltmp5
	.dword	.Ltmp19
	.dword	.Ltmp11
	.dword	.Ltmp20
	.dword	.Ltmp13
	.dword	.Ltmp15
	.size	eval.dispatch, 256

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Sum: %u\n"
	.size	.L.str, 9

	.section	".note.GNU-stack","",@progbits
	.addrsig
