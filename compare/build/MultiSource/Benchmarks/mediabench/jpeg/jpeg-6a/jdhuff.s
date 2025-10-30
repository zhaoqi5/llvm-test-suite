	.file	"jdhuff.c"
	.text
	.globl	jpeg_make_d_derived_tbl         # -- Begin function jpeg_make_d_derived_tbl
	.p2align	5
	.type	jpeg_make_d_derived_tbl,@function
jpeg_make_d_derived_tbl:                # @jpeg_make_d_derived_tbl
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1360
	st.d	$ra, $sp, 1352                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1344                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1336                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1328                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1320                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1312                  # 8-byte Folded Spill
	ld.d	$s1, $a2, 0
	move	$fp, $a1
	beqz	$s1, .LBB0_53
# %bb.1:                                # %if.end
	st.d	$fp, $s1, 352
	ld.bu	$s0, $fp, 1
	beqz	$s0, .LBB0_54
.LBB0_2:                                # %for.body5.lr.ph
	addi.d	$a0, $sp, 1048
	ori	$a1, $zero, 1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.bu	$s2, $fp, 2
	beqz	$s2, .LBB0_4
.LBB0_3:                                # %for.body5.lr.ph.1
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 2
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_4:                                # %for.inc10.1
	ld.bu	$s2, $fp, 3
	beqz	$s2, .LBB0_6
# %bb.5:                                # %for.body5.lr.ph.2
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_6:                                # %for.inc10.2
	ld.bu	$s2, $fp, 4
	beqz	$s2, .LBB0_8
# %bb.7:                                # %for.body5.lr.ph.3
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_8:                                # %for.inc10.3
	ld.bu	$s2, $fp, 5
	beqz	$s2, .LBB0_10
# %bb.9:                                # %for.body5.lr.ph.4
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_10:                               # %for.inc10.4
	ld.bu	$s2, $fp, 6
	beqz	$s2, .LBB0_12
# %bb.11:                               # %for.body5.lr.ph.5
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 6
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_12:                               # %for.inc10.5
	ld.bu	$s2, $fp, 7
	beqz	$s2, .LBB0_14
# %bb.13:                               # %for.body5.lr.ph.6
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 7
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_14:                               # %for.inc10.6
	ld.bu	$s2, $fp, 8
	beqz	$s2, .LBB0_16
# %bb.15:                               # %for.body5.lr.ph.7
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_16:                               # %for.inc10.7
	ld.bu	$s2, $fp, 9
	beqz	$s2, .LBB0_18
# %bb.17:                               # %for.body5.lr.ph.8
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 9
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_18:                               # %for.inc10.8
	ld.bu	$s2, $fp, 10
	beqz	$s2, .LBB0_20
# %bb.19:                               # %for.body5.lr.ph.9
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 10
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_20:                               # %for.inc10.9
	ld.bu	$s2, $fp, 11
	beqz	$s2, .LBB0_22
# %bb.21:                               # %for.body5.lr.ph.10
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 11
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_22:                               # %for.inc10.10
	ld.bu	$s2, $fp, 12
	beqz	$s2, .LBB0_24
# %bb.23:                               # %for.body5.lr.ph.11
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 12
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_24:                               # %for.inc10.11
	ld.bu	$s2, $fp, 13
	beqz	$s2, .LBB0_26
# %bb.25:                               # %for.body5.lr.ph.12
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 13
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_26:                               # %for.inc10.12
	ld.bu	$s2, $fp, 14
	beqz	$s2, .LBB0_28
# %bb.27:                               # %for.body5.lr.ph.13
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 14
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_28:                               # %for.inc10.13
	ld.bu	$s2, $fp, 15
	beqz	$s2, .LBB0_30
# %bb.29:                               # %for.body5.lr.ph.14
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 15
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_30:                               # %for.inc10.14
	ld.bu	$s2, $fp, 16
	beqz	$s2, .LBB0_32
# %bb.31:                               # %for.body5.lr.ph.15
	addi.d	$a0, $sp, 1048
	add.d	$a0, $a0, $s0
	ori	$a1, $zero, 16
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	add.d	$s0, $s0, $s2
.LBB0_32:                               # %for.inc10.15
	addi.d	$a0, $sp, 1048
	stx.b	$zero, $s0, $a0
	ld.bu	$a7, $sp, 1048
	beqz	$a7, .LBB0_39
# %bb.33:                               # %while.cond19.preheader.preheader
	move	$a1, $zero
	move	$a2, $zero
	ext.w.b	$a3, $a7
	addi.d	$a4, $sp, 1049
	addi.d	$a5, $sp, 20
	ori	$a6, $zero, 0
	lu32i.d	$a6, 1
	b	.LBB0_35
	.p2align	4, , 16
.LBB0_34:                               # %while.end
                                        #   in Loop: Header=BB0_35 Depth=1
	slli.d	$a1, $a1, 1
	andi	$t0, $a7, 255
	addi.w	$a3, $a3, 1
	beqz	$t0, .LBB0_39
.LBB0_35:                               # %while.cond19.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_37 Depth 2
	ext.w.b	$t0, $a7
	bne	$a3, $t0, .LBB0_34
# %bb.36:                               # %while.body25.preheader
                                        #   in Loop: Header=BB0_35 Depth=1
	alsl.d	$t0, $a2, $a5, 2
	slli.d	$a7, $a2, 32
	add.d	$t1, $a4, $a2
	.p2align	4, , 16
.LBB0_37:                               # %while.body25
                                        #   Parent Loop BB0_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a1, $t0, 0
	addi.d	$a1, $a1, 1
	ld.b	$t2, $t1, 0
	addi.d	$t0, $t0, 4
	add.d	$a7, $a7, $a6
	addi.w	$a2, $a2, 1
	addi.d	$t1, $t1, 1
	beq	$a3, $t2, .LBB0_37
# %bb.38:                               # %while.end.loopexit
                                        #   in Loop: Header=BB0_35 Depth=1
	srai.d	$a7, $a7, 32
	ldx.bu	$a7, $a7, $a0
	b	.LBB0_34
.LBB0_39:                               # %for.cond32.preheader
	move	$a0, $zero
	move	$a1, $zero
	addi.d	$s2, $fp, 1
	addi.d	$a2, $s1, 144
	addi.d	$a3, $s1, 284
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 16
	addi.d	$a6, $sp, 20
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_40:                               # %if.then40
                                        #   in Loop: Header=BB0_42 Depth=1
	slli.d	$a7, $a1, 2
	ldx.wu	$a7, $a7, $a6
	st.w	$a1, $a3, 0
	st.d	$a7, $a2, -136
	ldx.bu	$a7, $s2, $a0
	add.w	$a1, $a1, $a7
	alsl.d	$a7, $a1, $a6, 2
	ld.wu	$a7, $a7, -4
.LBB0_41:                               # %for.inc61
                                        #   in Loop: Header=BB0_42 Depth=1
	st.d	$a7, $a2, 0
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 4
	beq	$a0, $a5, .LBB0_44
.LBB0_42:                               # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a7, $s2, $a0
	bnez	$a7, .LBB0_40
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=1
	move	$a7, $a4
	b	.LBB0_41
.LBB0_44:                               # %for.end63
	lu12i.w	$a0, 255
	ori	$a0, $a0, 4095
	st.d	$a0, $s1, 272
	addi.d	$s0, $s1, 360
	ori	$a2, $zero, 1024
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $fp, 1
	addi.d	$a2, $fp, 17
	addi.d	$a0, $s1, 1384
	beqz	$a1, .LBB0_55
# %bb.45:                               # %for.body77.us.preheader
	move	$a1, $zero
	addi.d	$a3, $s1, 872
	addi.d	$a4, $s1, 1512
	ori	$a5, $zero, 1
	addi.d	$a6, $sp, 20
	vrepli.w	$vr0, 1
	ori	$t3, $zero, 1
	b	.LBB0_48
	.p2align	4, , 16
.LBB0_46:                               # %vector.body
                                        #   in Loop: Header=BB0_48 Depth=1
	ldx.b	$t3, $a2, $a1
	slli.d	$t4, $t0, 2
	vstx	$vr0, $s0, $t4
	vst	$vr0, $t2, 16
	vinsgr2vr.b	$vr1, $t3, 0
	vinsgr2vr.b	$vr1, $t3, 1
	vinsgr2vr.b	$vr1, $t3, 2
	vinsgr2vr.b	$vr1, $t3, 3
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 8
	alsl.d	$t2, $t1, $s0, 2
	slli.d	$t3, $t1, 2
	vstx	$vr0, $s0, $t3
	vst	$vr0, $t2, 16
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 16
	alsl.d	$t2, $t1, $s0, 2
	slli.d	$t3, $t1, 2
	vstx	$vr0, $s0, $t3
	vst	$vr0, $t2, 16
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 24
	alsl.d	$t2, $t1, $s0, 2
	slli.d	$t3, $t1, 2
	vstx	$vr0, $s0, $t3
	vst	$vr0, $t2, 16
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 32
	slli.d	$t2, $t1, 2
	ldx.b	$t3, $a2, $a1
	vstx	$vr0, $s0, $t2
	alsl.d	$t2, $t1, $s0, 2
	vst	$vr0, $t2, 16
	vinsgr2vr.b	$vr1, $t3, 0
	vinsgr2vr.b	$vr1, $t3, 1
	vinsgr2vr.b	$vr1, $t3, 2
	vinsgr2vr.b	$vr1, $t3, 3
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 40
	alsl.d	$t2, $t1, $s0, 2
	slli.d	$t3, $t1, 2
	vstx	$vr0, $s0, $t3
	vst	$vr0, $t2, 16
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 48
	alsl.d	$t2, $t1, $s0, 2
	slli.d	$t3, $t1, 2
	vstx	$vr0, $s0, $t3
	vst	$vr0, $t2, 16
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 56
	alsl.d	$t2, $t1, $s0, 2
	slli.d	$t3, $t1, 2
	vstx	$vr0, $s0, $t3
	vst	$vr0, $t2, 16
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 64
	alsl.d	$t2, $t1, $s0, 2
	slli.d	$t3, $t1, 2
	vstx	$vr0, $s0, $t3
	vst	$vr0, $t2, 16
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 72
	slli.d	$t2, $t1, 2
	vstx	$vr0, $s0, $t2
	ldx.b	$t2, $a2, $a1
	alsl.d	$t3, $t1, $s0, 2
	vst	$vr0, $t3, 16
	add.d	$t1, $a0, $t1
	vinsgr2vr.b	$vr1, $t2, 0
	vinsgr2vr.b	$vr1, $t2, 1
	vinsgr2vr.b	$vr1, $t2, 2
	vinsgr2vr.b	$vr1, $t2, 3
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 80
	alsl.d	$t2, $t1, $s0, 2
	slli.d	$t3, $t1, 2
	vstx	$vr0, $s0, $t3
	vst	$vr0, $t2, 16
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 88
	alsl.d	$t2, $t1, $s0, 2
	slli.d	$t3, $t1, 2
	vstx	$vr0, $s0, $t3
	vst	$vr0, $t2, 16
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 96
	alsl.d	$t2, $t1, $s0, 2
	slli.d	$t3, $t1, 2
	vstx	$vr0, $s0, $t3
	vst	$vr0, $t2, 16
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 104
	slli.d	$t2, $t1, 2
	ldx.b	$t3, $a2, $a1
	vstx	$vr0, $s0, $t2
	alsl.d	$t2, $t1, $s0, 2
	vst	$vr0, $t2, 16
	vinsgr2vr.b	$vr1, $t3, 0
	vinsgr2vr.b	$vr1, $t3, 1
	vinsgr2vr.b	$vr1, $t3, 2
	vinsgr2vr.b	$vr1, $t3, 3
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t1, $t0, 112
	slli.d	$t2, $t1, 2
	ldx.b	$t3, $a2, $a1
	vstx	$vr0, $s0, $t2
	alsl.d	$t2, $t1, $s0, 2
	vst	$vr0, $t2, 16
	vinsgr2vr.b	$vr1, $t3, 0
	vinsgr2vr.b	$vr1, $t3, 1
	vinsgr2vr.b	$vr1, $t3, 2
	vinsgr2vr.b	$vr1, $t3, 3
	add.d	$t1, $a0, $t1
	vstelm.w	$vr1, $t1, 0, 0
	vstelm.w	$vr1, $t1, 4, 0
	addi.d	$t0, $t0, 120
	alsl.d	$t1, $t0, $s0, 2
	ldx.b	$t2, $a2, $a1
	slli.d	$t3, $t0, 2
	vstx	$vr0, $s0, $t3
	vst	$vr0, $t1, 16
	vinsgr2vr.b	$vr1, $t2, 0
	vinsgr2vr.b	$vr1, $t2, 1
	vinsgr2vr.b	$vr1, $t2, 2
	vinsgr2vr.b	$vr1, $t2, 3
	add.d	$t0, $a0, $t0
	vstelm.w	$vr1, $t0, 0, 0
	vstelm.w	$vr1, $t0, 4, 0
.LBB0_47:                               # %for.cond84.for.inc98_crit_edge.us
                                        #   in Loop: Header=BB0_48 Depth=1
	ld.bu	$t0, $s2, 0
	addi.w	$t3, $a7, 1
	addi.d	$a1, $a1, 1
	bgeu	$a7, $t0, .LBB0_56
.LBB0_48:                               # %for.body77.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
	slli.d	$a7, $a1, 2
	ldx.w	$a7, $a7, $a6
	slli.w	$t0, $a7, 7
	alsl.d	$t2, $t0, $s0, 2
	alsl.d	$t5, $t0, $a3, 2
	add.d	$t1, $a0, $t0
	add.d	$t4, $a4, $t0
	sltu	$a7, $t2, $t4
	sltu	$t6, $t1, $t5
	and	$t6, $a7, $t6
	move	$a7, $t3
	bnez	$t6, .LBB0_51
# %bb.49:                               # %for.body77.us
                                        #   in Loop: Header=BB0_48 Depth=1
	add.d	$t6, $fp, $a1
	addi.d	$t3, $t6, 18
	addi.d	$t6, $t6, 17
	sltu	$t7, $t2, $t3
	sltu	$t5, $t6, $t5
	and	$t5, $t7, $t5
	bnez	$t5, .LBB0_51
# %bb.50:                               # %for.body77.us
                                        #   in Loop: Header=BB0_48 Depth=1
	sltu	$t3, $t1, $t3
	sltu	$t4, $t6, $t4
	and	$t3, $t3, $t4
	beqz	$t3, .LBB0_46
.LBB0_51:                               # %for.body87.us.preheader
                                        #   in Loop: Header=BB0_48 Depth=1
	ori	$t0, $zero, 129
	.p2align	4, , 16
.LBB0_52:                               # %for.body87.us
                                        #   Parent Loop BB0_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$a5, $t2, 0
	ldx.b	$t3, $a2, $a1
	st.b	$t3, $t1, 0
	addi.d	$t2, $t2, 4
	addi.w	$t0, $t0, -1
	addi.d	$t1, $t1, 1
	bltu	$a5, $t0, .LBB0_52
	b	.LBB0_47
.LBB0_53:                               # %if.then
	ld.d	$a1, $a0, 8
	ld.d	$a3, $a1, 0
	ori	$a1, $zero, 1
	move	$s0, $a2
	ori	$a2, $zero, 1640
	jirl	$ra, $a3, 0
	move	$s1, $a0
	st.d	$a0, $s0, 0
	st.d	$fp, $s1, 352
	ld.bu	$s0, $fp, 1
	bnez	$s0, .LBB0_2
.LBB0_54:
	move	$s0, $zero
	ld.bu	$s2, $fp, 2
	bnez	$s2, .LBB0_3
	b	.LBB0_4
.LBB0_55:
	move	$a1, $zero
.LBB0_56:                               # %for.inc102
	ld.bu	$a3, $fp, 2
	beqz	$a3, .LBB0_65
# %bb.57:                               # %for.body77.us.preheader.1
	move	$a3, $zero
	addi.w	$a1, $a1, 0
	addi.d	$a4, $s1, 616
	addi.d	$a5, $s1, 1448
	add.d	$a7, $fp, $a1
	addi.d	$a6, $a7, 18
	addi.d	$a7, $a7, 17
	ori	$t0, $zero, 1
	addi.d	$t1, $sp, 20
	ori	$t2, $zero, 2
	vrepli.w	$vr0, 2
	ori	$t7, $zero, 1
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_58:                               # %vector.body155
                                        #   in Loop: Header=BB0_60 Depth=1
	ldx.b	$t7, $a2, $a1
	slli.d	$t8, $t4, 2
	vstx	$vr0, $s0, $t8
	vst	$vr0, $t6, 16
	vinsgr2vr.b	$vr1, $t7, 0
	vinsgr2vr.b	$vr1, $t7, 1
	vinsgr2vr.b	$vr1, $t7, 2
	vinsgr2vr.b	$vr1, $t7, 3
	vstelm.w	$vr1, $t5, 0, 0
	vstelm.w	$vr1, $t5, 4, 0
	addi.d	$t5, $t4, 8
	alsl.d	$t6, $t5, $s0, 2
	slli.d	$t7, $t5, 2
	vstx	$vr0, $s0, $t7
	vst	$vr0, $t6, 16
	add.d	$t5, $a0, $t5
	vstelm.w	$vr1, $t5, 0, 0
	vstelm.w	$vr1, $t5, 4, 0
	addi.d	$t5, $t4, 16
	alsl.d	$t6, $t5, $s0, 2
	slli.d	$t7, $t5, 2
	vstx	$vr0, $s0, $t7
	vst	$vr0, $t6, 16
	add.d	$t5, $a0, $t5
	vstelm.w	$vr1, $t5, 0, 0
	vstelm.w	$vr1, $t5, 4, 0
	addi.d	$t5, $t4, 24
	alsl.d	$t6, $t5, $s0, 2
	slli.d	$t7, $t5, 2
	vstx	$vr0, $s0, $t7
	vst	$vr0, $t6, 16
	add.d	$t5, $a0, $t5
	vstelm.w	$vr1, $t5, 0, 0
	vstelm.w	$vr1, $t5, 4, 0
	addi.d	$t5, $t4, 32
	slli.d	$t6, $t5, 2
	ldx.b	$t7, $a2, $a1
	vstx	$vr0, $s0, $t6
	alsl.d	$t6, $t5, $s0, 2
	vst	$vr0, $t6, 16
	vinsgr2vr.b	$vr1, $t7, 0
	vinsgr2vr.b	$vr1, $t7, 1
	vinsgr2vr.b	$vr1, $t7, 2
	vinsgr2vr.b	$vr1, $t7, 3
	add.d	$t5, $a0, $t5
	vstelm.w	$vr1, $t5, 0, 0
	vstelm.w	$vr1, $t5, 4, 0
	addi.d	$t5, $t4, 40
	alsl.d	$t6, $t5, $s0, 2
	slli.d	$t7, $t5, 2
	vstx	$vr0, $s0, $t7
	vst	$vr0, $t6, 16
	add.d	$t5, $a0, $t5
	vstelm.w	$vr1, $t5, 0, 0
	vstelm.w	$vr1, $t5, 4, 0
	addi.d	$t5, $t4, 48
	alsl.d	$t6, $t5, $s0, 2
	slli.d	$t7, $t5, 2
	vstx	$vr0, $s0, $t7
	vst	$vr0, $t6, 16
	add.d	$t5, $a0, $t5
	vstelm.w	$vr1, $t5, 0, 0
	vstelm.w	$vr1, $t5, 4, 0
	addi.d	$t4, $t4, 56
	alsl.d	$t5, $t4, $s0, 2
	slli.d	$t6, $t4, 2
	vstx	$vr0, $s0, $t6
	vst	$vr0, $t5, 16
	add.d	$t4, $a0, $t4
	vstelm.w	$vr1, $t4, 0, 0
	vstelm.w	$vr1, $t4, 4, 0
.LBB0_59:                               # %for.cond84.for.inc98_crit_edge.us.1
                                        #   in Loop: Header=BB0_60 Depth=1
	ld.bu	$t4, $fp, 2
	addi.w	$t7, $t3, 1
	addi.d	$a1, $a1, 1
	addi.d	$a3, $a3, 1
	bgeu	$t3, $t4, .LBB0_65
.LBB0_60:                               # %for.body77.us.1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
	slli.d	$t3, $a1, 2
	ldx.w	$t3, $t3, $t1
	slli.w	$t4, $t3, 6
	alsl.d	$t6, $t4, $s0, 2
	alsl.d	$s1, $t4, $a4, 2
	add.d	$t5, $a0, $t4
	add.d	$t8, $a5, $t4
	sltu	$t3, $t6, $t8
	sltu	$s2, $t5, $s1
	and	$s2, $t3, $s2
	move	$t3, $t7
	bnez	$s2, .LBB0_63
# %bb.61:                               # %for.body77.us.1
                                        #   in Loop: Header=BB0_60 Depth=1
	add.d	$t7, $a6, $a3
	add.d	$s2, $a7, $a3
	sltu	$s3, $t6, $t7
	sltu	$s1, $s2, $s1
	and	$s1, $s3, $s1
	bnez	$s1, .LBB0_63
# %bb.62:                               # %for.body77.us.1
                                        #   in Loop: Header=BB0_60 Depth=1
	sltu	$t7, $t5, $t7
	sltu	$t8, $s2, $t8
	and	$t7, $t7, $t8
	beqz	$t7, .LBB0_58
.LBB0_63:                               # %for.body87.us.1.preheader
                                        #   in Loop: Header=BB0_60 Depth=1
	ori	$t4, $zero, 65
	.p2align	4, , 16
.LBB0_64:                               # %for.body87.us.1
                                        #   Parent Loop BB0_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t2, $t6, 0
	ldx.b	$t7, $a2, $a1
	st.b	$t7, $t5, 0
	addi.d	$t5, $t5, 1
	addi.w	$t4, $t4, -1
	addi.d	$t6, $t6, 4
	bltu	$t0, $t4, .LBB0_64
	b	.LBB0_59
.LBB0_65:                               # %for.inc102.1
	ld.bu	$a2, $fp, 3
	beqz	$a2, .LBB0_69
# %bb.66:                               # %for.body77.us.preheader.2
	move	$a2, $zero
	addi.w	$a4, $a1, 0
	add.d	$a3, $a4, $fp
	addi.d	$a3, $a3, 17
	addi.d	$a5, $sp, 20
	alsl.d	$a4, $a4, $a5, 2
	ori	$a5, $zero, 3
	.p2align	4, , 16
.LBB0_67:                               # %for.body77.us.2
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	slli.w	$a6, $a6, 5
	slli.d	$a7, $a6, 2
	stx.w	$a5, $s0, $a7
	ld.b	$a7, $a3, 0
	stx.b	$a7, $a0, $a6
	addi.d	$a7, $a6, 1
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 2
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 3
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 4
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 5
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 6
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 7
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 8
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 9
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 10
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 11
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 12
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 13
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 14
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 15
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 16
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 17
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 18
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 19
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 20
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 21
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 22
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 23
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 24
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 25
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 26
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 27
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 28
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 29
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 30
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a6, $a6, 31
	slli.d	$a7, $a6, 2
	stx.w	$a5, $s0, $a7
	ld.b	$a7, $a3, 0
	stx.b	$a7, $a0, $a6
	ld.bu	$a6, $fp, 3
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 4
	bltu	$a2, $a6, .LBB0_67
# %bb.68:                               # %for.inc102.loopexit85.2
	add.d	$a1, $a1, $a2
.LBB0_69:                               # %for.inc102.2
	ld.bu	$a2, $fp, 4
	beqz	$a2, .LBB0_73
# %bb.70:                               # %for.body77.us.preheader.3
	move	$a2, $zero
	addi.w	$a4, $a1, 0
	add.d	$a3, $a4, $fp
	addi.d	$a3, $a3, 17
	addi.d	$a5, $sp, 20
	alsl.d	$a4, $a4, $a5, 2
	ori	$a5, $zero, 4
	.p2align	4, , 16
.LBB0_71:                               # %for.body77.us.3
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	slli.w	$a6, $a6, 4
	slli.d	$a7, $a6, 2
	stx.w	$a5, $s0, $a7
	ld.b	$a7, $a3, 0
	stx.b	$a7, $a0, $a6
	addi.d	$a7, $a6, 1
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 2
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 3
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 4
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 5
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 6
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 7
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 8
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 9
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 10
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 11
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 12
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 13
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 14
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a6, $a6, 15
	slli.d	$a7, $a6, 2
	stx.w	$a5, $s0, $a7
	ld.b	$a7, $a3, 0
	stx.b	$a7, $a0, $a6
	ld.bu	$a6, $fp, 4
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 4
	bltu	$a2, $a6, .LBB0_71
# %bb.72:                               # %for.inc102.loopexit85.3
	add.d	$a1, $a1, $a2
.LBB0_73:                               # %for.inc102.3
	ld.bu	$a2, $fp, 5
	beqz	$a2, .LBB0_77
# %bb.74:                               # %for.body77.us.preheader.4
	move	$a2, $zero
	addi.w	$a4, $a1, 0
	add.d	$a3, $a4, $fp
	addi.d	$a3, $a3, 17
	addi.d	$a5, $sp, 20
	alsl.d	$a4, $a4, $a5, 2
	ori	$a5, $zero, 5
	.p2align	4, , 16
.LBB0_75:                               # %for.body77.us.4
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	slli.w	$a6, $a6, 3
	slli.d	$a7, $a6, 2
	stx.w	$a5, $s0, $a7
	ld.b	$a7, $a3, 0
	stx.b	$a7, $a0, $a6
	addi.d	$a7, $a6, 1
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 2
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 3
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 4
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 5
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 6
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a6, $a6, 7
	slli.d	$a7, $a6, 2
	stx.w	$a5, $s0, $a7
	ld.b	$a7, $a3, 0
	stx.b	$a7, $a0, $a6
	ld.bu	$a6, $fp, 5
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 4
	bltu	$a2, $a6, .LBB0_75
# %bb.76:                               # %for.inc102.loopexit85.4
	add.d	$a1, $a1, $a2
.LBB0_77:                               # %for.inc102.4
	ld.bu	$a2, $fp, 6
	beqz	$a2, .LBB0_81
# %bb.78:                               # %for.body77.us.preheader.5
	move	$a2, $zero
	addi.w	$a4, $a1, 0
	add.d	$a3, $a4, $fp
	addi.d	$a3, $a3, 17
	addi.d	$a5, $sp, 20
	alsl.d	$a4, $a4, $a5, 2
	ori	$a5, $zero, 6
	.p2align	4, , 16
.LBB0_79:                               # %for.body77.us.5
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	slli.w	$a6, $a6, 2
	slli.d	$a7, $a6, 2
	stx.w	$a5, $s0, $a7
	ld.b	$a7, $a3, 0
	stx.b	$a7, $a0, $a6
	addi.d	$a7, $a6, 1
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a7, $a6, 2
	slli.d	$t0, $a7, 2
	stx.w	$a5, $s0, $t0
	ld.b	$t0, $a3, 0
	stx.b	$t0, $a0, $a7
	addi.d	$a6, $a6, 3
	slli.d	$a7, $a6, 2
	stx.w	$a5, $s0, $a7
	ld.b	$a7, $a3, 0
	stx.b	$a7, $a0, $a6
	ld.bu	$a6, $fp, 6
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 4
	bltu	$a2, $a6, .LBB0_79
# %bb.80:                               # %for.inc102.loopexit85.5
	add.d	$a1, $a1, $a2
.LBB0_81:                               # %for.inc102.5
	ld.bu	$a2, $fp, 7
	beqz	$a2, .LBB0_85
# %bb.82:                               # %for.body77.us.preheader.6
	move	$a2, $zero
	addi.w	$a4, $a1, 0
	add.d	$a3, $a4, $fp
	addi.d	$a3, $a3, 17
	addi.d	$a5, $sp, 20
	alsl.d	$a4, $a4, $a5, 2
	ori	$a5, $zero, 7
	.p2align	4, , 16
.LBB0_83:                               # %for.body77.us.6
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a4, 0
	slli.w	$a6, $a6, 1
	slli.d	$a7, $a6, 2
	stx.w	$a5, $s0, $a7
	ld.b	$a7, $a3, 0
	stx.b	$a7, $a0, $a6
	addi.d	$a6, $a6, 1
	slli.d	$a7, $a6, 2
	stx.w	$a5, $s0, $a7
	ld.b	$a7, $a3, 0
	stx.b	$a7, $a0, $a6
	ld.bu	$a6, $fp, 7
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	addi.d	$a4, $a4, 4
	bltu	$a2, $a6, .LBB0_83
# %bb.84:                               # %for.inc102.loopexit85.6
	add.d	$a1, $a1, $a2
.LBB0_85:                               # %for.inc102.6
	ld.bu	$a2, $fp, 8
	beqz	$a2, .LBB0_88
# %bb.86:                               # %for.body77.us.preheader.7
	move	$a2, $zero
	addi.w	$a3, $a1, 0
	add.d	$a1, $a3, $fp
	addi.d	$a1, $a1, 17
	addi.d	$a4, $sp, 20
	alsl.d	$a3, $a3, $a4, 2
	ori	$a4, $zero, 8
	.p2align	4, , 16
.LBB0_87:                               # %for.body77.us.7
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	slli.d	$a6, $a5, 2
	stx.w	$a4, $s0, $a6
	ld.b	$a6, $a1, 0
	stx.b	$a6, $a0, $a5
	ld.bu	$a5, $fp, 8
	addi.d	$a1, $a1, 1
	addi.w	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bltu	$a2, $a5, .LBB0_87
.LBB0_88:                               # %for.inc102.7
	ld.d	$s3, $sp, 1312                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1320                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1328                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1336                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1344                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1352                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1360
	ret
.Lfunc_end0:
	.size	jpeg_make_d_derived_tbl, .Lfunc_end0-jpeg_make_d_derived_tbl
                                        # -- End function
	.globl	jpeg_fill_bit_buffer            # -- Begin function jpeg_fill_bit_buffer
	.p2align	5
	.type	jpeg_fill_bit_buffer,@function
jpeg_fill_bit_buffer:                   # @jpeg_fill_bit_buffer
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s7, $a0, 0
	ld.d	$s5, $a0, 8
	ori	$a0, $zero, 24
	move	$s0, $a1
	blt	$a0, $a2, .LBB1_20
# %bb.1:                                # %while.body.lr.ph
	move	$s1, $a3
	ori	$s2, $zero, 255
	ori	$s3, $zero, 17
	ori	$s4, $zero, 113
	ori	$s6, $zero, 1
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_4 Depth=1
	move	$a0, $zero
.LBB1_3:                                # %if.end59
                                        #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a1, $s0, 8
	or	$s0, $a0, $a1
	addi.w	$a2, $s8, 8
	bge	$s8, $s3, .LBB1_20
.LBB1_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
	ld.w	$a0, $fp, 16
	move	$s8, $a2
	beqz	$a0, .LBB1_8
# %bb.5:                                # %no_more_data
                                        #   in Loop: Header=BB1_4 Depth=1
	bge	$s8, $s1, .LBB1_19
.LBB1_6:                                # %if.end49
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 48
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB1_2
# %bb.7:                                # %if.then51
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 8
	st.w	$s4, $a1, 40
	addi.w	$a1, $zero, -1
	jirl	$ra, $a2, 0
	ld.d	$a1, $fp, 48
	move	$a0, $zero
	st.w	$s6, $a1, 0
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_8:                                # %if.end
                                        #   in Loop: Header=BB1_4 Depth=1
	beqz	$s5, .LBB1_10
# %bb.9:                                # %if.end15
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.bu	$a0, $s7, 0
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, 1
	bne	$a0, $s2, .LBB1_3
	b	.LBB1_13
.LBB1_10:                               # %if.then5
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a1, $a0, 32
	ld.d	$a1, $a1, 24
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB1_22
# %bb.11:                               # %if.end8
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 32
	ld.d	$s7, $a0, 0
	ld.d	$s5, $a0, 8
	ld.bu	$a0, $s7, 0
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, 1
	bne	$a0, $s2, .LBB1_3
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               # %if.end36
                                        #   in Loop: Header=BB1_13 Depth=2
	ld.bu	$a0, $s7, 0
	addi.d	$s5, $s5, -1
	addi.d	$s7, $s7, 1
	bne	$a0, $s2, .LBB1_16
.LBB1_13:                               # %do.body
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$s5, .LBB1_12
# %bb.14:                               # %if.then21
                                        #   in Loop: Header=BB1_13 Depth=2
	ld.d	$a0, $fp, 40
	ld.d	$a1, $a0, 32
	ld.d	$a1, $a1, 24
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB1_22
# %bb.15:                               # %if.end29
                                        #   in Loop: Header=BB1_13 Depth=2
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 32
	ld.d	$s7, $a0, 0
	ld.d	$s5, $a0, 8
	b	.LBB1_12
.LBB1_16:                               # %if.end36
                                        #   in Loop: Header=BB1_4 Depth=1
	bnez	$a0, .LBB1_18
# %bb.17:                               # %if.end59.loopexit
                                        #   in Loop: Header=BB1_4 Depth=1
	ori	$a0, $zero, 255
	b	.LBB1_3
.LBB1_18:                               # %if.else
                                        #   in Loop: Header=BB1_4 Depth=1
	st.w	$a0, $fp, 16
	blt	$s8, $s1, .LBB1_6
.LBB1_19:
	move	$a2, $s8
.LBB1_20:                               # %while.end
	st.d	$s7, $fp, 0
	st.d	$s5, $fp, 8
	st.d	$s0, $fp, 24
	st.w	$a2, $fp, 32
	ori	$a0, $zero, 1
.LBB1_21:                               # %cleanup
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB1_22:
	move	$a0, $zero
	b	.LBB1_21
.Lfunc_end1:
	.size	jpeg_fill_bit_buffer, .Lfunc_end1-jpeg_fill_bit_buffer
                                        # -- End function
	.globl	jpeg_huff_decode                # -- Begin function jpeg_huff_decode
	.p2align	5
	.type	jpeg_huff_decode,@function
jpeg_huff_decode:                       # @jpeg_huff_decode
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$s0, $a4
	move	$fp, $a3
	move	$s1, $a0
	bge	$a2, $a4, .LBB2_3
# %bb.1:                                # %if.then
	move	$a0, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_13
# %bb.2:                                # %if.end
	ld.d	$a1, $s1, 24
	ld.w	$a2, $s1, 32
.LBB2_3:                                # %if.end4
	sub.w	$a2, $a2, $s0
	sra.d	$a0, $a1, $a2
	addi.w	$s2, $zero, -1
	alsl.d	$a3, $s0, $fp, 3
	ld.d	$a3, $a3, 136
	sll.w	$a4, $s2, $s0
	andn	$a0, $a0, $a4
	addi.w	$s3, $a0, 0
	bge	$a3, $s3, .LBB2_9
# %bb.4:                                # %while.body.lr.ph
	alsl.d	$a0, $s0, $fp, 3
	addi.d	$s5, $a0, 144
	move	$s4, $s0
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_5:                                # %if.end19
                                        #   in Loop: Header=BB2_6 Depth=1
	slli.d	$a0, $s3, 1
	addi.w	$a2, $a2, -1
	srl.d	$a3, $a1, $a2
	andi	$a3, $a3, 1
	ld.d	$a4, $s5, 0
	or	$s3, $a3, $a0
	addi.d	$s4, $s4, 1
	addi.w	$s0, $s0, 1
	addi.d	$s5, $s5, 8
	bge	$a4, $s3, .LBB2_10
.LBB2_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	bgtz	$a2, .LBB2_5
# %bb.7:                                # %if.then12
                                        #   in Loop: Header=BB2_6 Depth=1
	ori	$a3, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(jpeg_fill_bit_buffer)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_14
# %bb.8:                                # %if.end16
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a1, $s1, 24
	ld.w	$a2, $s1, 32
	b	.LBB2_5
.LBB2_9:
	move	$s4, $s0
.LBB2_10:                               # %while.end
	st.d	$a1, $s1, 24
	ori	$a0, $zero, 17
	st.w	$a2, $s1, 32
	blt	$s0, $a0, .LBB2_12
# %bb.11:                               # %if.then30
	ld.d	$a0, $s1, 40
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 8
	ori	$a3, $zero, 114
	st.w	$a3, $a1, 40
	addi.w	$a1, $zero, -1
	jirl	$ra, $a2, 0
	move	$s2, $zero
	b	.LBB2_14
.LBB2_12:                               # %if.end34
	alsl.d	$a0, $s4, $fp, 2
	slli.d	$a1, $s4, 3
	ldx.d	$a1, $fp, $a1
	ld.w	$a0, $a0, 280
	ld.d	$a2, $fp, 352
	sub.d	$a1, $s3, $a1
	add.w	$a0, $a0, $a1
	add.d	$a0, $a2, $a0
	ld.bu	$s2, $a0, 17
	b	.LBB2_14
.LBB2_13:
	addi.w	$s2, $zero, -1
.LBB2_14:                               # %cleanup
	move	$a0, $s2
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	jpeg_huff_decode, .Lfunc_end2-jpeg_huff_decode
                                        # -- End function
	.globl	jinit_huff_decoder              # -- Begin function jinit_huff_decoder
	.p2align	5
	.type	jinit_huff_decoder,@function
jinit_huff_decoder:                     # @jinit_huff_decoder
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 120
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $fp, 576
	pcalau12i	$a1, %pc_hi20(start_pass_huff_decoder)
	addi.d	$a1, $a1, %pc_lo12(start_pass_huff_decoder)
	st.d	$a1, $a0, 0
	pcalau12i	$a1, %pc_hi20(decode_mcu)
	addi.d	$a1, $a1, %pc_lo12(decode_mcu)
	st.d	$a1, $a0, 8
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 104
	vst	$vr0, $a0, 88
	vst	$vr0, $a0, 72
	vst	$vr0, $a0, 56
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	jinit_huff_decoder, .Lfunc_end3-jinit_huff_decoder
                                        # -- End function
	.p2align	5                               # -- Begin function start_pass_huff_decoder
	.type	start_pass_huff_decoder,@function
start_pass_huff_decoder:                # @start_pass_huff_decoder
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 508
	ld.d	$a1, $fp, 576
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	bnez	$a0, .LBB4_4
# %bb.1:                                # %lor.lhs.false
	ld.w	$a0, $fp, 512
	ori	$a1, $zero, 63
	bne	$a0, $a1, .LBB4_4
# %bb.2:                                # %lor.lhs.false3
	ld.w	$a0, $fp, 516
	bnez	$a0, .LBB4_4
# %bb.3:                                # %lor.lhs.false5
	ld.w	$a0, $fp, 520
	beqz	$a0, .LBB4_5
.LBB4_4:                                # %if.then
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 118
	st.w	$a1, $a0, 40
	addi.w	$a1, $zero, -1
	move	$a0, $fp
	jirl	$ra, $a2, 0
.LBB4_5:                                # %if.end
	ld.w	$a0, $fp, 416
	blez	$a0, .LBB4_14
# %bb.6:                                # %for.body.lr.ph
	move	$s1, $zero
	addi.d	$s2, $fp, 224
	addi.d	$s3, $fp, 256
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a1, $a0, 56
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $a0, 88
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s6, $a0, 32
	ori	$s7, $zero, 424
	ori	$s8, $zero, 3
	ori	$s0, $zero, 49
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_7:                                # %if.then30
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s4, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s0, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_8:                                # %if.end38
                                        #   in Loop: Header=BB4_9 Depth=1
	slli.d	$a0, $s5, 3
	ldx.d	$a1, $s2, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a2, $s5, $a0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_make_d_derived_tbl)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s4, 3
	ldx.d	$a1, $s3, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a2, $s4, $a0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(jpeg_make_d_derived_tbl)
	jirl	$ra, $ra, 0
	st.w	$zero, $s6, 0
	ld.w	$a0, $fp, 416
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 8
	addi.d	$s6, $s6, 4
	bge	$s1, $a0, .LBB4_14
.LBB4_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $fp, $s7
	ld.w	$s5, $a0, 20
	ld.w	$s4, $a0, 24
	bltu	$s8, $s5, .LBB4_11
# %bb.10:                               # %lor.lhs.false12
                                        #   in Loop: Header=BB4_9 Depth=1
	slli.d	$a0, $s5, 3
	ldx.d	$a0, $s2, $a0
	bnez	$a0, .LBB4_12
.LBB4_11:                               # %if.then16
                                        #   in Loop: Header=BB4_9 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s5, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s0, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_12:                               # %if.end22
                                        #   in Loop: Header=BB4_9 Depth=1
	bltu	$s8, $s4, .LBB4_7
# %bb.13:                               # %lor.lhs.false26
                                        #   in Loop: Header=BB4_9 Depth=1
	slli.d	$a0, $s4, 3
	ldx.d	$a0, $s3, $a0
	bnez	$a0, .LBB4_8
	b	.LBB4_7
.LBB4_14:                               # %for.end
	vrepli.b	$vr0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	vst	$vr0, $a1, 16
	ld.w	$a0, $fp, 360
	st.w	$a0, $a1, 48
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end4:
	.size	start_pass_huff_decoder, .Lfunc_end4-start_pass_huff_decoder
                                        # -- End function
	.p2align	5                               # -- Begin function decode_mcu
	.type	decode_mcu,@function
decode_mcu:                             # @decode_mcu
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 360
	ld.d	$fp, $s0, 576
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	beqz	$a0, .LBB5_7
# %bb.1:                                # %if.then
	ld.w	$a0, $fp, 48
	bnez	$a0, .LBB5_7
# %bb.2:                                # %if.then2
	ld.w	$a0, $fp, 24
	ld.d	$a1, $s0, 568
	bstrpick.d	$a2, $a0, 62, 60
	ld.w	$a3, $a1, 172
	add.w	$a0, $a0, $a2
	srli.d	$a0, $a0, 3
	ld.d	$a2, $a1, 16
	add.d	$a0, $a3, $a0
	st.w	$a0, $a1, 172
	st.w	$zero, $fp, 24
	move	$a0, $s0
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB5_183
# %bb.3:                                # %for.cond.preheader.i
	ld.w	$a0, $s0, 416
	blez	$a0, .LBB5_6
# %bb.4:                                # %for.body.lr.ph.i
	move	$a0, $zero
	addi.d	$a1, $fp, 32
	.p2align	4, , 16
.LBB5_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$zero, $a1, 0
	ld.w	$a2, $s0, 416
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	blt	$a0, $a2, .LBB5_5
.LBB5_6:                                # %process_restart.exit
	ld.w	$a0, $s0, 360
	st.w	$a0, $fp, 48
	st.w	$zero, $fp, 28
.LBB5_7:                                # %if.end6
	ld.d	$a0, $s0, 32
	ld.d	$a1, $a0, 0
	st.d	$s0, $sp, 168
	st.d	$a1, $sp, 128
	ld.d	$a3, $a0, 8
	ld.w	$a4, $s0, 524
	ld.d	$s1, $fp, 16
	addi.d	$a2, $fp, 28
	st.d	$a2, $sp, 176
	vld	$vr0, $fp, 32
	ld.w	$a5, $s0, 464
	ld.w	$a2, $fp, 24
	st.d	$a3, $sp, 136
	st.w	$a4, $sp, 144
	vst	$vr0, $sp, 112
	blez	$a5, .LBB5_182
# %bb.8:                                # %for.body.lr.ph
	move	$s5, $zero
	addi.d	$s6, $s0, 468
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$s8, $s0, 424
	addi.d	$s2, $fp, 56
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	addi.d	$fp, $fp, 88
	ori	$s4, $zero, 7
	ori	$s0, $zero, 255
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
.LBB5_9:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_13 Depth 2
                                        #       Child Loop BB5_24 Depth 3
                                        #     Child Loop BB5_41 Depth 2
                                        #       Child Loop BB5_52 Depth 3
                                        #     Child Loop BB5_68 Depth 2
                                        #       Child Loop BB5_72 Depth 3
                                        #         Child Loop BB5_83 Depth 4
                                        #       Child Loop BB5_99 Depth 3
                                        #         Child Loop BB5_110 Depth 4
                                        #     Child Loop BB5_126 Depth 2
                                        #       Child Loop BB5_130 Depth 3
                                        #         Child Loop BB5_140 Depth 4
                                        #       Child Loop BB5_156 Depth 3
                                        #         Child Loop BB5_166 Depth 4
	slli.d	$a0, $s5, 2
	ldx.w	$a0, $s6, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $s8, $a0
	ld.w	$a0, $a3, 20
	slli.d	$a1, $s5, 3
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a3, $a3, 24
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$a1, $a4, $a1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	ldx.d	$s3, $s2, $a0
	slli.d	$a0, $a3, 3
	ldx.d	$a0, $fp, $a0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	blt	$s4, $a2, .LBB5_34
# %bb.10:                               # %while.body.lr.ph.i
                                        #   in Loop: Header=BB5_9 Depth=1
	move	$s8, $s5
	ld.d	$s2, $sp, 128
	ld.d	$fp, $sp, 136
	ld.d	$s5, $sp, 168
	ld.d	$s7, $sp, 176
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_11:                               # %if.then51.i
                                        #   in Loop: Header=BB5_13 Depth=2
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 113
	st.w	$a1, $a0, 40
	addi.w	$a1, $zero, -1
	move	$a0, $s5
	jirl	$ra, $a2, 0
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.w	$a1, $s7, 0
.LBB5_12:                               # %if.end59.i
                                        #   in Loop: Header=BB5_13 Depth=2
	slli.d	$a1, $s1, 8
	or	$s1, $a0, $a1
	addi.w	$a2, $s4, 8
	ori	$a0, $zero, 17
	bge	$s4, $a0, .LBB5_31
.LBB5_13:                               # %while.body.i
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_24 Depth 3
	ld.w	$a0, $sp, 144
	move	$s4, $a2
	beqz	$a0, .LBB5_17
# %bb.14:                               # %no_more_data.i
                                        #   in Loop: Header=BB5_13 Depth=2
	bgez	$s4, .LBB5_29
.LBB5_15:                               # %if.end49.i
                                        #   in Loop: Header=BB5_13 Depth=2
	ld.w	$a0, $s7, 0
	beqz	$a0, .LBB5_11
# %bb.16:                               #   in Loop: Header=BB5_13 Depth=2
	move	$a0, $zero
	b	.LBB5_12
	.p2align	4, , 16
.LBB5_17:                               # %if.end.i
                                        #   in Loop: Header=BB5_13 Depth=2
	beqz	$fp, .LBB5_19
# %bb.18:                               # %if.end15.i
                                        #   in Loop: Header=BB5_13 Depth=2
	ld.bu	$a0, $s2, 0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 1
	bne	$a0, $s0, .LBB5_12
	b	.LBB5_21
.LBB5_19:                               # %if.then5.i
                                        #   in Loop: Header=BB5_13 Depth=2
	ld.d	$a0, $s5, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s5
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB5_183
# %bb.20:                               # %if.end8.i
                                        #   in Loop: Header=BB5_13 Depth=2
	ld.d	$a0, $s5, 32
	ld.d	$s2, $a0, 0
	ld.d	$fp, $a0, 8
	ld.bu	$a0, $s2, 0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 1
	bne	$a0, $s0, .LBB5_12
.LBB5_21:                               # %do.body.i.preheader
                                        #   in Loop: Header=BB5_13 Depth=2
	ld.d	$s6, $sp, 168
	b	.LBB5_24
	.p2align	4, , 16
.LBB5_22:                               # %if.end29.i
                                        #   in Loop: Header=BB5_24 Depth=3
	ld.d	$a0, $s6, 32
	ld.d	$s2, $a0, 0
	ld.d	$fp, $a0, 8
.LBB5_23:                               # %if.end36.i
                                        #   in Loop: Header=BB5_24 Depth=3
	ld.bu	$a0, $s2, 0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 1
	bne	$a0, $s0, .LBB5_26
.LBB5_24:                               # %do.body.i
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bnez	$fp, .LBB5_23
# %bb.25:                               # %if.then21.i
                                        #   in Loop: Header=BB5_24 Depth=3
	ld.d	$a0, $s6, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s6
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB5_22
	b	.LBB5_183
.LBB5_26:                               # %if.end36.i
                                        #   in Loop: Header=BB5_13 Depth=2
	bnez	$a0, .LBB5_28
# %bb.27:                               # %if.end59.i.loopexit
                                        #   in Loop: Header=BB5_13 Depth=2
	ori	$a0, $zero, 255
	b	.LBB5_12
.LBB5_28:                               # %if.else.i
                                        #   in Loop: Header=BB5_13 Depth=2
	st.w	$a0, $sp, 144
	bltz	$s4, .LBB5_15
.LBB5_29:                               # %if.end30
                                        #   in Loop: Header=BB5_9 Depth=1
	st.d	$s2, $sp, 128
	st.d	$fp, $sp, 136
	st.d	$s1, $sp, 152
	st.w	$s4, $sp, 160
	ori	$a0, $zero, 7
	bltu	$a0, $s4, .LBB5_32
# %bb.30:                               # %if.then34.split
                                        #   in Loop: Header=BB5_9 Depth=1
	addi.d	$a0, $sp, 128
	ori	$a4, $zero, 1
	move	$a1, $s1
	move	$a2, $s4
	move	$a3, $s3
	pcaddu18i	$ra, %call36(jpeg_huff_decode)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s5, $s8
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ori	$s4, $zero, 7
	b	.LBB5_62
.LBB5_31:                               # %if.end30.thread
                                        #   in Loop: Header=BB5_9 Depth=1
	st.d	$s2, $sp, 128
	st.d	$fp, $sp, 136
	st.d	$s1, $sp, 152
	st.w	$a2, $sp, 160
	b	.LBB5_33
.LBB5_32:                               #   in Loop: Header=BB5_9 Depth=1
	move	$a2, $s4
.LBB5_33:                               # %if.end36
                                        #   in Loop: Header=BB5_9 Depth=1
	move	$s5, $s8
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ori	$s4, $zero, 7
.LBB5_34:                               # %if.end36
                                        #   in Loop: Header=BB5_9 Depth=1
	addi.d	$a0, $a2, -8
	sra.d	$a0, $s1, $a0
	andi	$a0, $a0, 255
	alsl.d	$a1, $a0, $s3, 2
	ld.w	$a1, $a1, 360
	beqz	$a1, .LBB5_61
# %bb.35:                               # %if.then41
                                        #   in Loop: Header=BB5_9 Depth=1
	add.d	$a0, $s3, $a0
	ld.bu	$s3, $a0, 1384
	sub.w	$a2, $a2, $a1
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	beqz	$s3, .LBB5_64
.LBB5_36:                               # %if.then56
                                        #   in Loop: Header=BB5_9 Depth=1
	bge	$a2, $s3, .LBB5_59
# %bb.37:                               # %if.then59
                                        #   in Loop: Header=BB5_9 Depth=1
	ld.d	$s2, $sp, 128
	ld.d	$s7, $sp, 136
	ori	$a0, $zero, 24
	blt	$a0, $a2, .LBB5_58
# %bb.38:                               # %while.body.i168.preheader
                                        #   in Loop: Header=BB5_9 Depth=1
	ld.d	$s4, $sp, 168
	ld.d	$s6, $sp, 176
	b	.LBB5_41
	.p2align	4, , 16
.LBB5_39:                               # %if.then51.i188
                                        #   in Loop: Header=BB5_41 Depth=2
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 113
	st.w	$a1, $a0, 40
	addi.w	$a1, $zero, -1
	move	$a0, $s4
	jirl	$ra, $a2, 0
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.w	$a1, $s6, 0
.LBB5_40:                               # %if.end59.i180
                                        #   in Loop: Header=BB5_41 Depth=2
	slli.d	$a1, $s1, 8
	or	$s1, $a0, $a1
	addi.w	$a2, $s8, 8
	ori	$a0, $zero, 17
	bge	$s8, $a0, .LBB5_58
.LBB5_41:                               # %while.body.i168
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_52 Depth 3
	ld.w	$a0, $sp, 144
	move	$s8, $a2
	beqz	$a0, .LBB5_45
# %bb.42:                               # %no_more_data.i174
                                        #   in Loop: Header=BB5_41 Depth=2
	bge	$s8, $s3, .LBB5_57
.LBB5_43:                               # %if.end49.i178
                                        #   in Loop: Header=BB5_41 Depth=2
	ld.w	$a0, $s6, 0
	beqz	$a0, .LBB5_39
# %bb.44:                               #   in Loop: Header=BB5_41 Depth=2
	move	$a0, $zero
	b	.LBB5_40
	.p2align	4, , 16
.LBB5_45:                               # %if.end.i191
                                        #   in Loop: Header=BB5_41 Depth=2
	beqz	$s7, .LBB5_47
# %bb.46:                               # %if.end15.i193
                                        #   in Loop: Header=BB5_41 Depth=2
	ld.bu	$a0, $s2, 0
	addi.d	$s7, $s7, -1
	addi.d	$s2, $s2, 1
	bne	$a0, $s0, .LBB5_40
	b	.LBB5_49
.LBB5_47:                               # %if.then5.i219
                                        #   in Loop: Header=BB5_41 Depth=2
	ld.d	$a0, $s4, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s4
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB5_183
# %bb.48:                               # %if.end8.i224
                                        #   in Loop: Header=BB5_41 Depth=2
	ld.d	$a0, $s4, 32
	ld.d	$s2, $a0, 0
	ld.d	$s7, $a0, 8
	ld.bu	$a0, $s2, 0
	addi.d	$s7, $s7, -1
	addi.d	$s2, $s2, 1
	bne	$a0, $s0, .LBB5_40
.LBB5_49:                               # %do.body.i200.preheader
                                        #   in Loop: Header=BB5_41 Depth=2
	move	$fp, $s5
	ld.d	$s5, $sp, 168
	b	.LBB5_52
	.p2align	4, , 16
.LBB5_50:                               # %if.end29.i216
                                        #   in Loop: Header=BB5_52 Depth=3
	ld.d	$a0, $s5, 32
	ld.d	$s2, $a0, 0
	ld.d	$s7, $a0, 8
.LBB5_51:                               # %if.end36.i204
                                        #   in Loop: Header=BB5_52 Depth=3
	ld.bu	$a0, $s2, 0
	addi.d	$s7, $s7, -1
	addi.d	$s2, $s2, 1
	bne	$a0, $s0, .LBB5_54
.LBB5_52:                               # %do.body.i200
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bnez	$s7, .LBB5_51
# %bb.53:                               # %if.then21.i211
                                        #   in Loop: Header=BB5_52 Depth=3
	ld.d	$a0, $s5, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s5
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB5_50
	b	.LBB5_183
.LBB5_54:                               # %if.end36.i204
                                        #   in Loop: Header=BB5_41 Depth=2
	move	$s5, $fp
	bnez	$a0, .LBB5_56
# %bb.55:                               # %if.end59.i180.loopexit
                                        #   in Loop: Header=BB5_41 Depth=2
	ori	$a0, $zero, 255
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	b	.LBB5_40
.LBB5_56:                               # %if.else.i209
                                        #   in Loop: Header=BB5_41 Depth=2
	st.w	$a0, $sp, 144
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	blt	$s8, $s3, .LBB5_43
.LBB5_57:                               #   in Loop: Header=BB5_9 Depth=1
	move	$a2, $s8
.LBB5_58:                               # %if.end63
                                        #   in Loop: Header=BB5_9 Depth=1
	st.d	$s2, $sp, 128
	st.d	$s7, $sp, 136
	st.d	$s1, $sp, 152
	st.w	$a2, $sp, 160
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ori	$s4, $zero, 7
.LBB5_59:                               # %if.end66
                                        #   in Loop: Header=BB5_9 Depth=1
	sub.w	$a2, $a2, $s3
	sra.d	$a0, $s1, $a2
	addi.d	$a1, $zero, -1
	sll.w	$a1, $a1, $s3
	andn	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	slli.d	$a1, $s3, 2
	pcalau12i	$a3, %pc_hi20(extend_test)
	addi.d	$a3, $a3, %pc_lo12(extend_test)
	ldx.w	$a3, $a3, $a1
	bge	$a0, $a3, .LBB5_65
# %bb.60:                               # %cond.true
                                        #   in Loop: Header=BB5_9 Depth=1
	pcalau12i	$a3, %pc_hi20(extend_offset)
	addi.d	$a3, $a3, %pc_lo12(extend_offset)
	ldx.w	$a1, $a3, $a1
	add.d	$a0, $a1, $a0
	b	.LBB5_65
.LBB5_61:                               # %if.else.split
                                        #   in Loop: Header=BB5_9 Depth=1
	addi.d	$a0, $sp, 128
	ori	$a4, $zero, 9
	move	$a1, $s1
	move	$a3, $s3
	pcaddu18i	$ra, %call36(jpeg_huff_decode)
	jirl	$ra, $ra, 0
	move	$s3, $a0
.LBB5_62:                               # %label1
                                        #   in Loop: Header=BB5_9 Depth=1
	bltz	$s3, .LBB5_183
# %bb.63:                               # %if.end50
                                        #   in Loop: Header=BB5_9 Depth=1
	ld.d	$s1, $sp, 152
	ld.w	$a2, $sp, 160
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	bnez	$s3, .LBB5_36
.LBB5_64:                               #   in Loop: Header=BB5_9 Depth=1
	move	$a0, $zero
.LBB5_65:                               # %if.end79
                                        #   in Loop: Header=BB5_9 Depth=1
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a1, $a6, 48
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a4, $a3, 360
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a3, $a3, 1384
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	beqz	$a1, .LBB5_125
# %bb.66:                               # %if.end82
                                        #   in Loop: Header=BB5_9 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	addi.d	$a5, $sp, 112
	ldx.w	$a3, $a1, $a5
	ld.w	$a4, $a6, 36
	add.d	$a0, $a3, $a0
	stx.w	$a0, $a1, $a5
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.h	$a0, $a1, 0
	ori	$a0, $zero, 2
	blt	$a4, $a0, .LBB5_125
# %bb.67:                               # %for.cond94.preheader
                                        #   in Loop: Header=BB5_9 Depth=1
	ori	$s3, $zero, 1
.LBB5_68:                               # %for.body97
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_72 Depth 3
                                        #         Child Loop BB5_83 Depth 4
                                        #       Child Loop BB5_99 Depth 3
                                        #         Child Loop BB5_110 Depth 4
	blt	$s4, $a2, .LBB5_93
# %bb.69:                               # %while.body.lr.ph.i238
                                        #   in Loop: Header=BB5_68 Depth=2
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s6, $sp, 128
	ld.d	$fp, $sp, 136
	ld.d	$s4, $sp, 168
	ld.d	$s2, $sp, 176
	b	.LBB5_72
	.p2align	4, , 16
.LBB5_70:                               # %if.then51.i262
                                        #   in Loop: Header=BB5_72 Depth=3
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 113
	st.w	$a1, $a0, 40
	addi.w	$a1, $zero, -1
	move	$a0, $s4
	jirl	$ra, $a2, 0
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.w	$a1, $s2, 0
.LBB5_71:                               # %if.end59.i254
                                        #   in Loop: Header=BB5_72 Depth=3
	slli.d	$a1, $s1, 8
	or	$s1, $a0, $a1
	addi.w	$a2, $s3, 8
	ori	$a0, $zero, 17
	bge	$s3, $a0, .LBB5_90
.LBB5_72:                               # %while.body.i242
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_68 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_83 Depth 4
	ld.w	$a0, $sp, 144
	move	$s3, $a2
	beqz	$a0, .LBB5_76
# %bb.73:                               # %no_more_data.i248
                                        #   in Loop: Header=BB5_72 Depth=3
	bgez	$s3, .LBB5_88
.LBB5_74:                               # %if.end49.i252
                                        #   in Loop: Header=BB5_72 Depth=3
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB5_70
# %bb.75:                               #   in Loop: Header=BB5_72 Depth=3
	move	$a0, $zero
	b	.LBB5_71
	.p2align	4, , 16
.LBB5_76:                               # %if.end.i265
                                        #   in Loop: Header=BB5_72 Depth=3
	beqz	$fp, .LBB5_78
# %bb.77:                               # %if.end15.i267
                                        #   in Loop: Header=BB5_72 Depth=3
	ld.bu	$a0, $s6, 0
	addi.d	$fp, $fp, -1
	addi.d	$s6, $s6, 1
	bne	$a0, $s0, .LBB5_71
	b	.LBB5_80
.LBB5_78:                               # %if.then5.i293
                                        #   in Loop: Header=BB5_72 Depth=3
	ld.d	$a0, $s4, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s4
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB5_183
# %bb.79:                               # %if.end8.i298
                                        #   in Loop: Header=BB5_72 Depth=3
	ld.d	$a0, $s4, 32
	ld.d	$s6, $a0, 0
	ld.d	$fp, $a0, 8
	ld.bu	$a0, $s6, 0
	addi.d	$fp, $fp, -1
	addi.d	$s6, $s6, 1
	bne	$a0, $s0, .LBB5_71
.LBB5_80:                               # %do.body.i274.preheader
                                        #   in Loop: Header=BB5_72 Depth=3
	ld.d	$s5, $sp, 168
	b	.LBB5_83
	.p2align	4, , 16
.LBB5_81:                               # %if.end29.i290
                                        #   in Loop: Header=BB5_83 Depth=4
	ld.d	$a0, $s5, 32
	ld.d	$s6, $a0, 0
	ld.d	$fp, $a0, 8
.LBB5_82:                               # %if.end36.i278
                                        #   in Loop: Header=BB5_83 Depth=4
	ld.bu	$a0, $s6, 0
	addi.d	$fp, $fp, -1
	addi.d	$s6, $s6, 1
	bne	$a0, $s0, .LBB5_85
.LBB5_83:                               # %do.body.i274
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_68 Depth=2
                                        #       Parent Loop BB5_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bnez	$fp, .LBB5_82
# %bb.84:                               # %if.then21.i285
                                        #   in Loop: Header=BB5_83 Depth=4
	ld.d	$a0, $s5, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s5
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB5_81
	b	.LBB5_183
.LBB5_85:                               # %if.end36.i278
                                        #   in Loop: Header=BB5_72 Depth=3
	bnez	$a0, .LBB5_87
# %bb.86:                               # %if.end59.i254.loopexit
                                        #   in Loop: Header=BB5_72 Depth=3
	ori	$a0, $zero, 255
	b	.LBB5_71
.LBB5_87:                               # %if.else.i283
                                        #   in Loop: Header=BB5_72 Depth=3
	st.w	$a0, $sp, 144
	bltz	$s3, .LBB5_74
.LBB5_88:                               # %if.end106
                                        #   in Loop: Header=BB5_68 Depth=2
	st.d	$s6, $sp, 128
	st.d	$fp, $sp, 136
	st.d	$s1, $sp, 152
	st.w	$s3, $sp, 160
	ori	$s4, $zero, 7
	bltu	$s4, $s3, .LBB5_91
# %bb.89:                               # %if.then111.split
                                        #   in Loop: Header=BB5_68 Depth=2
	addi.d	$a0, $sp, 128
	ori	$a4, $zero, 1
	move	$a1, $s1
	move	$a2, $s3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(jpeg_huff_decode)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	b	.LBB5_121
.LBB5_90:                               # %if.end106.thread
                                        #   in Loop: Header=BB5_68 Depth=2
	st.d	$s6, $sp, 128
	st.d	$fp, $sp, 136
	st.d	$s1, $sp, 152
	st.w	$a2, $sp, 160
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ori	$s4, $zero, 7
	b	.LBB5_92
.LBB5_91:                               #   in Loop: Header=BB5_68 Depth=2
	move	$a2, $s3
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
.LBB5_92:                               # %if.end113
                                        #   in Loop: Header=BB5_68 Depth=2
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
.LBB5_93:                               # %if.end113
                                        #   in Loop: Header=BB5_68 Depth=2
	addi.d	$a0, $a2, -8
	sra.d	$a0, $s1, $a0
	andi	$a0, $a0, 255
	slli.d	$a1, $a0, 2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a1, $a3, $a1
	beqz	$a1, .LBB5_120
# %bb.94:                               # %if.then124
                                        #   in Loop: Header=BB5_68 Depth=2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$a0, $a3, $a0
	sub.w	$a2, $a2, $a1
	andi	$s6, $a0, 15
	bstrpick.d	$s5, $a0, 31, 4
	beqz	$s6, .LBB5_123
.LBB5_95:                               # %if.then146
                                        #   in Loop: Header=BB5_68 Depth=2
	bge	$a2, $s6, .LBB5_117
# %bb.96:                               # %while.body.lr.ph.i312
                                        #   in Loop: Header=BB5_68 Depth=2
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	ld.d	$fp, $sp, 128
	ld.d	$s7, $sp, 136
	ld.d	$s3, $sp, 168
	ld.d	$s2, $sp, 176
	b	.LBB5_99
	.p2align	4, , 16
.LBB5_97:                               # %if.then51.i336
                                        #   in Loop: Header=BB5_99 Depth=3
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 113
	st.w	$a1, $a0, 40
	addi.w	$a1, $zero, -1
	move	$a0, $s3
	jirl	$ra, $a2, 0
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.w	$a1, $s2, 0
.LBB5_98:                               # %if.end59.i328
                                        #   in Loop: Header=BB5_99 Depth=3
	slli.d	$a1, $s1, 8
	or	$s1, $a0, $a1
	addi.w	$a2, $s8, 8
	ori	$a0, $zero, 17
	bge	$s8, $a0, .LBB5_116
.LBB5_99:                               # %while.body.i316
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_68 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_110 Depth 4
	ld.w	$a0, $sp, 144
	move	$s8, $a2
	beqz	$a0, .LBB5_103
# %bb.100:                              # %no_more_data.i322
                                        #   in Loop: Header=BB5_99 Depth=3
	bge	$s8, $s6, .LBB5_115
.LBB5_101:                              # %if.end49.i326
                                        #   in Loop: Header=BB5_99 Depth=3
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB5_97
# %bb.102:                              #   in Loop: Header=BB5_99 Depth=3
	move	$a0, $zero
	b	.LBB5_98
	.p2align	4, , 16
.LBB5_103:                              # %if.end.i339
                                        #   in Loop: Header=BB5_99 Depth=3
	beqz	$s7, .LBB5_105
# %bb.104:                              # %if.end15.i341
                                        #   in Loop: Header=BB5_99 Depth=3
	ld.bu	$a0, $fp, 0
	addi.d	$s7, $s7, -1
	addi.d	$fp, $fp, 1
	bne	$a0, $s0, .LBB5_98
	b	.LBB5_107
.LBB5_105:                              # %if.then5.i367
                                        #   in Loop: Header=BB5_99 Depth=3
	ld.d	$a0, $s3, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s3
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB5_183
# %bb.106:                              # %if.end8.i372
                                        #   in Loop: Header=BB5_99 Depth=3
	ld.d	$a0, $s3, 32
	ld.d	$fp, $a0, 0
	ld.d	$s7, $a0, 8
	ld.bu	$a0, $fp, 0
	addi.d	$s7, $s7, -1
	addi.d	$fp, $fp, 1
	bne	$a0, $s0, .LBB5_98
.LBB5_107:                              # %do.body.i348.preheader
                                        #   in Loop: Header=BB5_99 Depth=3
	ld.d	$s4, $sp, 168
	b	.LBB5_110
	.p2align	4, , 16
.LBB5_108:                              # %if.end29.i364
                                        #   in Loop: Header=BB5_110 Depth=4
	ld.d	$a0, $s4, 32
	ld.d	$fp, $a0, 0
	ld.d	$s7, $a0, 8
.LBB5_109:                              # %if.end36.i352
                                        #   in Loop: Header=BB5_110 Depth=4
	ld.bu	$a0, $fp, 0
	addi.d	$s7, $s7, -1
	addi.d	$fp, $fp, 1
	bne	$a0, $s0, .LBB5_112
.LBB5_110:                              # %do.body.i348
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_68 Depth=2
                                        #       Parent Loop BB5_99 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bnez	$s7, .LBB5_109
# %bb.111:                              # %if.then21.i359
                                        #   in Loop: Header=BB5_110 Depth=4
	ld.d	$a0, $s4, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s4
	jirl	$ra, $a1, 0
	bnez	$a0, .LBB5_108
	b	.LBB5_183
.LBB5_112:                              # %if.end36.i352
                                        #   in Loop: Header=BB5_99 Depth=3
	ori	$s4, $zero, 7
	bnez	$a0, .LBB5_114
# %bb.113:                              # %if.end59.i328.loopexit
                                        #   in Loop: Header=BB5_99 Depth=3
	ori	$a0, $zero, 255
	b	.LBB5_98
.LBB5_114:                              # %if.else.i357
                                        #   in Loop: Header=BB5_99 Depth=3
	st.w	$a0, $sp, 144
	blt	$s8, $s6, .LBB5_101
.LBB5_115:                              #   in Loop: Header=BB5_68 Depth=2
	move	$a2, $s8
.LBB5_116:                              # %if.end154
                                        #   in Loop: Header=BB5_68 Depth=2
	st.d	$fp, $sp, 128
	st.d	$s7, $sp, 136
	st.d	$s1, $sp, 152
	st.w	$a2, $sp, 160
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
.LBB5_117:                              # %if.end157
                                        #   in Loop: Header=BB5_68 Depth=2
	sub.w	$a2, $a2, $s6
	sra.d	$a0, $s1, $a2
	addi.d	$a1, $zero, -1
	sll.w	$a1, $a1, $s6
	andn	$a0, $a0, $a1
	addi.w	$a1, $a0, 0
	slli.d	$a0, $s6, 2
	pcalau12i	$a3, %pc_hi20(extend_test)
	addi.d	$a3, $a3, %pc_lo12(extend_test)
	ldx.w	$a3, $a3, $a0
	bge	$a1, $a3, .LBB5_119
# %bb.118:                              # %cond.true169
                                        #   in Loop: Header=BB5_68 Depth=2
	pcalau12i	$a3, %pc_hi20(extend_offset)
	addi.d	$a3, $a3, %pc_lo12(extend_offset)
	ldx.w	$a0, $a3, $a0
	add.d	$a1, $a0, $a1
.LBB5_119:                              # %cond.end174
                                        #   in Loop: Header=BB5_68 Depth=2
	add.w	$a0, $s5, $s3
	slli.d	$a3, $a0, 2
	pcalau12i	$a4, %got_pc_hi20(jpeg_natural_order)
	ld.d	$a4, $a4, %got_pc_lo12(jpeg_natural_order)
	ldx.w	$a3, $a4, $a3
	slli.d	$a3, $a3, 1
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	stx.h	$a1, $a4, $a3
	addi.d	$s3, $a0, 1
	ori	$a1, $zero, 63
	blt	$a0, $a1, .LBB5_68
	b	.LBB5_180
.LBB5_120:                              # %if.else130.split
                                        #   in Loop: Header=BB5_68 Depth=2
	addi.d	$a0, $sp, 128
	ori	$a4, $zero, 9
	move	$a1, $s1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(jpeg_huff_decode)
	jirl	$ra, $ra, 0
.LBB5_121:                              # %label2
                                        #   in Loop: Header=BB5_68 Depth=2
	bltz	$a0, .LBB5_183
# %bb.122:                              # %if.end135
                                        #   in Loop: Header=BB5_68 Depth=2
	ld.d	$s1, $sp, 152
	ld.w	$a2, $sp, 160
	andi	$s6, $a0, 15
	bstrpick.d	$s5, $a0, 31, 4
	bnez	$s6, .LBB5_95
.LBB5_123:                              # %if.else181
                                        #   in Loop: Header=BB5_68 Depth=2
	addi.w	$a0, $s5, 0
	ori	$a1, $zero, 15
	bne	$a0, $a1, .LBB5_180
# %bb.124:                              # %if.end185
                                        #   in Loop: Header=BB5_68 Depth=2
	addi.w	$a0, $s3, 15
	addi.d	$s3, $a0, 1
	ori	$a1, $zero, 63
	blt	$a0, $a1, .LBB5_68
	b	.LBB5_180
	.p2align	4, , 16
.LBB5_125:                              # %skip_ACs
                                        #   in Loop: Header=BB5_9 Depth=1
	ori	$s7, $zero, 1
.LBB5_126:                              # %for.body192
                                        #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_130 Depth 3
                                        #         Child Loop BB5_140 Depth 4
                                        #       Child Loop BB5_156 Depth 3
                                        #         Child Loop BB5_166 Depth 4
	blt	$s4, $a2, .LBB5_150
# %bb.127:                              # %while.body.lr.ph.i386
                                        #   in Loop: Header=BB5_126 Depth=2
	ld.d	$s2, $sp, 128
	ld.d	$fp, $sp, 136
	ld.d	$s4, $sp, 168
	ld.d	$s6, $sp, 176
	b	.LBB5_130
	.p2align	4, , 16
.LBB5_128:                              #   in Loop: Header=BB5_130 Depth=3
	move	$a0, $zero
.LBB5_129:                              # %if.end59.i402
                                        #   in Loop: Header=BB5_130 Depth=3
	slli.d	$a1, $s1, 8
	or	$s1, $a0, $a1
	addi.w	$a2, $s3, 8
	ori	$a0, $zero, 17
	bge	$s3, $a0, .LBB5_148
.LBB5_130:                              # %while.body.i390
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_126 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_140 Depth 4
	ld.w	$a0, $sp, 144
	move	$s3, $a2
	beqz	$a0, .LBB5_134
# %bb.131:                              # %no_more_data.i396
                                        #   in Loop: Header=BB5_130 Depth=3
	bgez	$s3, .LBB5_146
.LBB5_132:                              # %if.end49.i400
                                        #   in Loop: Header=BB5_130 Depth=3
	ld.w	$a0, $s6, 0
	bnez	$a0, .LBB5_128
# %bb.133:                              # %if.then51.i410
                                        #   in Loop: Header=BB5_130 Depth=3
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 113
	st.w	$a1, $a0, 40
	addi.w	$a1, $zero, -1
	move	$a0, $s4
	jirl	$ra, $a2, 0
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.w	$a1, $s6, 0
	b	.LBB5_129
	.p2align	4, , 16
.LBB5_134:                              # %if.end.i413
                                        #   in Loop: Header=BB5_130 Depth=3
	beqz	$fp, .LBB5_136
# %bb.135:                              # %if.end15.i415
                                        #   in Loop: Header=BB5_130 Depth=3
	ld.bu	$a0, $s2, 0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 1
	bne	$a0, $s0, .LBB5_129
	b	.LBB5_138
.LBB5_136:                              # %if.then5.i441
                                        #   in Loop: Header=BB5_130 Depth=3
	ld.d	$a0, $s4, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s4
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB5_183
# %bb.137:                              # %if.end8.i446
                                        #   in Loop: Header=BB5_130 Depth=3
	ld.d	$a0, $s4, 32
	ld.d	$s2, $a0, 0
	ld.d	$fp, $a0, 8
	ld.bu	$a0, $s2, 0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 1
	bne	$a0, $s0, .LBB5_129
.LBB5_138:                              # %do.body.i422.preheader
                                        #   in Loop: Header=BB5_130 Depth=3
	ld.d	$s5, $sp, 168
	b	.LBB5_140
	.p2align	4, , 16
.LBB5_139:                              # %if.end36.i426
                                        #   in Loop: Header=BB5_140 Depth=4
	ld.bu	$a0, $s2, 0
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 1
	bne	$a0, $s0, .LBB5_143
.LBB5_140:                              # %do.body.i422
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_126 Depth=2
                                        #       Parent Loop BB5_130 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bnez	$fp, .LBB5_139
# %bb.141:                              # %if.then21.i433
                                        #   in Loop: Header=BB5_140 Depth=4
	ld.d	$a0, $s5, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s5
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB5_183
# %bb.142:                              # %if.end29.i438
                                        #   in Loop: Header=BB5_140 Depth=4
	ld.d	$a0, $s5, 32
	ld.d	$s2, $a0, 0
	ld.d	$fp, $a0, 8
	b	.LBB5_139
.LBB5_143:                              # %if.end36.i426
                                        #   in Loop: Header=BB5_130 Depth=3
	bnez	$a0, .LBB5_145
# %bb.144:                              # %if.end59.i402.loopexit
                                        #   in Loop: Header=BB5_130 Depth=3
	ori	$a0, $zero, 255
	b	.LBB5_129
.LBB5_145:                              # %if.else.i431
                                        #   in Loop: Header=BB5_130 Depth=3
	st.w	$a0, $sp, 144
	bltz	$s3, .LBB5_132
.LBB5_146:                              # %if.end201
                                        #   in Loop: Header=BB5_126 Depth=2
	st.d	$s2, $sp, 128
	st.d	$fp, $sp, 136
	st.d	$s1, $sp, 152
	st.w	$s3, $sp, 160
	ori	$s4, $zero, 7
	bltu	$s4, $s3, .LBB5_149
# %bb.147:                              # %if.then206.split
                                        #   in Loop: Header=BB5_126 Depth=2
	addi.d	$a0, $sp, 128
	ori	$a4, $zero, 1
	move	$a1, $s1
	move	$a2, $s3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(jpeg_huff_decode)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	b	.LBB5_176
.LBB5_148:                              # %if.end201.thread
                                        #   in Loop: Header=BB5_126 Depth=2
	st.d	$s2, $sp, 128
	st.d	$fp, $sp, 136
	st.d	$s1, $sp, 152
	st.w	$a2, $sp, 160
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ori	$s4, $zero, 7
	b	.LBB5_150
.LBB5_149:                              #   in Loop: Header=BB5_126 Depth=2
	move	$a2, $s3
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_150:                              # %if.end208
                                        #   in Loop: Header=BB5_126 Depth=2
	addi.d	$a0, $a2, -8
	sra.d	$a0, $s1, $a0
	andi	$a0, $a0, 255
	slli.d	$a1, $a0, 2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a1, $a3, $a1
	beqz	$a1, .LBB5_175
# %bb.151:                              # %if.then219
                                        #   in Loop: Header=BB5_126 Depth=2
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$a0, $a3, $a0
	sub.w	$a2, $a2, $a1
	andi	$s6, $a0, 15
	bstrpick.d	$s5, $a0, 31, 4
	beqz	$s6, .LBB5_178
.LBB5_152:                              # %if.then241
                                        #   in Loop: Header=BB5_126 Depth=2
	bge	$a2, $s6, .LBB5_174
# %bb.153:                              # %while.body.lr.ph.i460
                                        #   in Loop: Header=BB5_126 Depth=2
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s2, $sp, 128
	ld.d	$s8, $sp, 136
	ld.d	$s3, $sp, 168
	ld.d	$s7, $sp, 176
	b	.LBB5_156
	.p2align	4, , 16
.LBB5_154:                              # %if.then51.i484
                                        #   in Loop: Header=BB5_156 Depth=3
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 8
	ori	$a1, $zero, 113
	st.w	$a1, $a0, 40
	addi.w	$a1, $zero, -1
	move	$a0, $s3
	jirl	$ra, $a2, 0
	move	$a0, $zero
	ori	$a1, $zero, 1
	st.w	$a1, $s7, 0
.LBB5_155:                              # %if.end59.i476
                                        #   in Loop: Header=BB5_156 Depth=3
	slli.d	$a1, $s1, 8
	or	$s1, $a0, $a1
	addi.w	$a2, $fp, 8
	ori	$a0, $zero, 17
	bge	$fp, $a0, .LBB5_173
.LBB5_156:                              # %while.body.i464
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_126 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_166 Depth 4
	ld.w	$a0, $sp, 144
	move	$fp, $a2
	beqz	$a0, .LBB5_160
# %bb.157:                              # %no_more_data.i470
                                        #   in Loop: Header=BB5_156 Depth=3
	bge	$fp, $s6, .LBB5_172
.LBB5_158:                              # %if.end49.i474
                                        #   in Loop: Header=BB5_156 Depth=3
	ld.w	$a0, $s7, 0
	beqz	$a0, .LBB5_154
# %bb.159:                              #   in Loop: Header=BB5_156 Depth=3
	move	$a0, $zero
	b	.LBB5_155
	.p2align	4, , 16
.LBB5_160:                              # %if.end.i487
                                        #   in Loop: Header=BB5_156 Depth=3
	beqz	$s8, .LBB5_162
# %bb.161:                              # %if.end15.i489
                                        #   in Loop: Header=BB5_156 Depth=3
	ld.bu	$a0, $s2, 0
	addi.d	$s8, $s8, -1
	addi.d	$s2, $s2, 1
	bne	$a0, $s0, .LBB5_155
	b	.LBB5_164
.LBB5_162:                              # %if.then5.i515
                                        #   in Loop: Header=BB5_156 Depth=3
	ld.d	$a0, $s3, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s3
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB5_183
# %bb.163:                              # %if.end8.i520
                                        #   in Loop: Header=BB5_156 Depth=3
	ld.d	$a0, $s3, 32
	ld.d	$s2, $a0, 0
	ld.d	$s8, $a0, 8
	ld.bu	$a0, $s2, 0
	addi.d	$s8, $s8, -1
	addi.d	$s2, $s2, 1
	bne	$a0, $s0, .LBB5_155
.LBB5_164:                              # %do.body.i496.preheader
                                        #   in Loop: Header=BB5_156 Depth=3
	ld.d	$s4, $sp, 168
	b	.LBB5_166
	.p2align	4, , 16
.LBB5_165:                              # %if.end36.i500
                                        #   in Loop: Header=BB5_166 Depth=4
	ld.bu	$a0, $s2, 0
	addi.d	$s8, $s8, -1
	addi.d	$s2, $s2, 1
	bne	$a0, $s0, .LBB5_169
.LBB5_166:                              # %do.body.i496
                                        #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_126 Depth=2
                                        #       Parent Loop BB5_156 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bnez	$s8, .LBB5_165
# %bb.167:                              # %if.then21.i507
                                        #   in Loop: Header=BB5_166 Depth=4
	ld.d	$a0, $s4, 32
	ld.d	$a1, $a0, 24
	move	$a0, $s4
	jirl	$ra, $a1, 0
	beqz	$a0, .LBB5_183
# %bb.168:                              # %if.end29.i512
                                        #   in Loop: Header=BB5_166 Depth=4
	ld.d	$a0, $s4, 32
	ld.d	$s2, $a0, 0
	ld.d	$s8, $a0, 8
	b	.LBB5_165
.LBB5_169:                              # %if.end36.i500
                                        #   in Loop: Header=BB5_156 Depth=3
	ori	$s4, $zero, 7
	bnez	$a0, .LBB5_171
# %bb.170:                              # %if.end59.i476.loopexit
                                        #   in Loop: Header=BB5_156 Depth=3
	ori	$a0, $zero, 255
	b	.LBB5_155
.LBB5_171:                              # %if.else.i505
                                        #   in Loop: Header=BB5_156 Depth=3
	st.w	$a0, $sp, 144
	blt	$fp, $s6, .LBB5_158
.LBB5_172:                              #   in Loop: Header=BB5_126 Depth=2
	move	$a2, $fp
.LBB5_173:                              # %if.end249
                                        #   in Loop: Header=BB5_126 Depth=2
	st.d	$s2, $sp, 128
	st.d	$s8, $sp, 136
	st.d	$s1, $sp, 152
	st.w	$a2, $sp, 160
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
.LBB5_174:                              # %if.end252
                                        #   in Loop: Header=BB5_126 Depth=2
	sub.w	$a2, $a2, $s6
	b	.LBB5_179
	.p2align	4, , 16
.LBB5_175:                              # %if.else225.split
                                        #   in Loop: Header=BB5_126 Depth=2
	addi.d	$a0, $sp, 128
	ori	$a4, $zero, 9
	move	$a1, $s1
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(jpeg_huff_decode)
	jirl	$ra, $ra, 0
.LBB5_176:                              # %label3
                                        #   in Loop: Header=BB5_126 Depth=2
	bltz	$a0, .LBB5_183
# %bb.177:                              # %if.end230
                                        #   in Loop: Header=BB5_126 Depth=2
	ld.d	$s1, $sp, 152
	ld.w	$a2, $sp, 160
	andi	$s6, $a0, 15
	bstrpick.d	$s5, $a0, 31, 4
	bnez	$s6, .LBB5_152
.LBB5_178:                              # %if.else254
                                        #   in Loop: Header=BB5_126 Depth=2
	addi.w	$a0, $s5, 0
	ori	$a1, $zero, 15
	bne	$a0, $a1, .LBB5_180
.LBB5_179:                              # %for.inc261
                                        #   in Loop: Header=BB5_126 Depth=2
	add.d	$a0, $s7, $s5
	addi.w	$s7, $a0, 1
	ori	$a0, $zero, 64
	blt	$s7, $a0, .LBB5_126
.LBB5_180:                              # %for.inc265
                                        #   in Loop: Header=BB5_9 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 464
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s5, $s5, 1
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	blt	$s5, $a0, .LBB5_9
# %bb.181:                              # %for.end267.loopexit
	ld.d	$a1, $sp, 128
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 32
	ld.d	$a3, $sp, 136
	ld.w	$a4, $sp, 144
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
.LBB5_182:                              # %for.end267
	addi.d	$a5, $fp, 32
	st.d	$a1, $a0, 0
	st.d	$a3, $a0, 8
	st.w	$a4, $s0, 524
	vld	$vr0, $sp, 112
	ld.w	$a0, $fp, 48
	st.d	$s1, $fp, 16
	st.w	$a2, $fp, 24
	vst	$vr0, $a5, 0
	addi.d	$a0, $a0, -1
	st.w	$a0, $fp, 48
	ori	$a0, $zero, 1
	b	.LBB5_184
.LBB5_183:
	move	$a0, $zero
.LBB5_184:                              # %cleanup282
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.Lfunc_end5:
	.size	decode_mcu, .Lfunc_end5-decode_mcu
                                        # -- End function
	.type	extend_test,@object             # @extend_test
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
extend_test:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	32                              # 0x20
	.word	64                              # 0x40
	.word	128                             # 0x80
	.word	256                             # 0x100
	.word	512                             # 0x200
	.word	1024                            # 0x400
	.word	2048                            # 0x800
	.word	4096                            # 0x1000
	.word	8192                            # 0x2000
	.word	16384                           # 0x4000
	.size	extend_test, 64

	.type	extend_offset,@object           # @extend_offset
	.p2align	2, 0x0
extend_offset:
	.word	0                               # 0x0
	.word	4294967295                      # 0xffffffff
	.word	4294967293                      # 0xfffffffd
	.word	4294967289                      # 0xfffffff9
	.word	4294967281                      # 0xfffffff1
	.word	4294967265                      # 0xffffffe1
	.word	4294967233                      # 0xffffffc1
	.word	4294967169                      # 0xffffff81
	.word	4294967041                      # 0xffffff01
	.word	4294966785                      # 0xfffffe01
	.word	4294966273                      # 0xfffffc01
	.word	4294965249                      # 0xfffff801
	.word	4294963201                      # 0xfffff001
	.word	4294959105                      # 0xffffe001
	.word	4294950913                      # 0xffffc001
	.word	4294934529                      # 0xffff8001
	.size	extend_offset, 64

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_pass_huff_decoder
	.addrsig_sym decode_mcu
