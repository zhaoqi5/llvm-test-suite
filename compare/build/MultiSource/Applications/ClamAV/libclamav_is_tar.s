	.file	"libclamav_is_tar.c"
	.text
	.globl	is_tar                          # -- Begin function is_tar
	.p2align	5
	.type	is_tar,@function
is_tar:                                 # @is_tar
# %bb.0:                                # %entry
	ori	$a2, $zero, 512
	bgeu	$a1, $a2, .LBB0_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB0_2:                                # %if.end
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 148
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a1, 1
	ldx.hu	$a3, $a0, $a2
	lu12i.w	$a2, 2
	and	$a3, $a3, $a2
	bnez	$a3, .LBB0_4
# %bb.3:
	addi.d	$a4, $fp, 148
	ori	$a5, $zero, 8
	b	.LBB0_18
.LBB0_4:                                # %while.body.i
	ld.bu	$a3, $fp, 149
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a2
	bnez	$a3, .LBB0_6
# %bb.5:
	addi.d	$a4, $fp, 149
	ori	$a5, $zero, 7
	b	.LBB0_18
.LBB0_6:                                # %while.body.1.i
	ld.bu	$a3, $fp, 150
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a2
	bnez	$a3, .LBB0_8
# %bb.7:
	addi.d	$a4, $fp, 150
	ori	$a5, $zero, 6
	b	.LBB0_18
.LBB0_8:                                # %while.body.2.i
	ld.bu	$a3, $fp, 151
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a2
	bnez	$a3, .LBB0_10
# %bb.9:
	addi.d	$a4, $fp, 151
	ori	$a5, $zero, 5
	b	.LBB0_18
.LBB0_10:                               # %while.body.3.i
	ld.bu	$a3, $fp, 152
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a2
	bnez	$a3, .LBB0_12
# %bb.11:
	addi.d	$a4, $fp, 152
	ori	$a5, $zero, 4
	b	.LBB0_18
.LBB0_12:                               # %while.body.4.i
	ld.bu	$a3, $fp, 153
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a2
	bnez	$a3, .LBB0_14
# %bb.13:
	addi.d	$a4, $fp, 153
	ori	$a5, $zero, 3
	b	.LBB0_18
.LBB0_14:                               # %while.body.5.i
	ld.bu	$a3, $fp, 154
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a2
	bnez	$a3, .LBB0_16
# %bb.15:
	addi.d	$a4, $fp, 154
	ori	$a5, $zero, 2
	b	.LBB0_18
.LBB0_16:                               # %while.body.6.i
	ld.bu	$a3, $fp, 155
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	and	$a3, $a3, $a2
	bnez	$a3, .LBB0_28
# %bb.17:
	addi.d	$a4, $fp, 155
	ori	$a5, $zero, 1
.LBB0_18:                               # %land.rhs.i.preheader
	move	$a3, $zero
	addi.d	$a5, $a5, 1
	ori	$a6, $zero, 48
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB0_19:                               # %land.rhs.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t0, $a4, 0
	andi	$t1, $t0, 248
	bne	$t1, $a6, .LBB0_21
# %bb.20:                               # %while.body14.i
                                        #   in Loop: Header=BB0_19 Depth=1
	slli.w	$a3, $a3, 3
	addi.d	$a4, $a4, 1
	addi.d	$t0, $t0, -48
	andi	$t0, $t0, 255
	addi.w	$a5, $a5, -1
	or	$a3, $a3, $t0
	blt	$a7, $a5, .LBB0_19
	b	.LBB0_23
.LBB0_21:                               # %land.lhs.true.i
	beqz	$t0, .LBB0_23
# %bb.22:                               # %land.lhs.true23.i
	slli.d	$a4, $t0, 1
	ldx.hu	$a0, $a0, $a4
	and	$a0, $a0, $a2
	sltui	$a0, $a0, 1
	masknez	$a2, $a3, $a0
	addi.w	$a3, $zero, -1
	maskeqz	$a0, $a3, $a0
	or	$a3, $a0, $a2
.LBB0_23:                               # %vector.ph
	move	$a0, $zero
	vrepli.b	$vr0, 0
	ori	$a2, $zero, 512
	vori.b	$vr1, $vr0, 0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB0_24:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a4, $fp, $a0
	ldx.w	$a5, $fp, $a0
	ld.w	$a4, $a4, 4
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr4, $a4, 0
	vilvl.b	$vr3, $vr0, $vr3
	vilvl.h	$vr3, $vr0, $vr3
	vilvl.b	$vr4, $vr0, $vr4
	vilvl.h	$vr4, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr3
	addi.d	$a0, $a0, 8
	vadd.w	$vr2, $vr2, $vr4
	bne	$a0, $a2, .LBB0_24
# %bb.25:                               # %middle.block
	vadd.w	$vr0, $vr2, $vr1
	ld.bu	$a0, $fp, 155
	ld.bu	$a2, $fp, 154
	vshuf4i.w	$vr1, $vr0, 14
	ld.bu	$a4, $fp, 153
	vadd.w	$vr0, $vr0, $vr1
	add.d	$a0, $a0, $a2
	ld.bu	$a2, $fp, 152
	add.d	$a0, $a0, $a4
	ld.bu	$a4, $fp, 151
	vreplvei.w	$vr1, $vr0, 1
	add.d	$a0, $a0, $a2
	ld.bu	$a2, $fp, 150
	add.d	$a0, $a0, $a4
	ld.bu	$a4, $fp, 149
	vadd.w	$vr0, $vr0, $vr1
	add.d	$a0, $a0, $a2
	vpickve2gr.w	$a2, $vr0, 0
	add.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a2, $a0
	addi.w	$a0, $a0, 256
	bne	$a0, $a3, .LBB0_27
# %bb.26:                               # %if.end21
	addi.d	$a0, $fp, 257
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_27:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB0_28:
	addi.w	$a3, $zero, -1
	b	.LBB0_23
.Lfunc_end0:
	.size	is_tar, .Lfunc_end0-is_tar
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ustar  "
	.size	.L.str, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
