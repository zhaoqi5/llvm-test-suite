	.file	"gstype1.c"
	.text
	.globl	gs_type1_encrypt                # -- Begin function gs_type1_encrypt
	.p2align	5
	.type	gs_type1_encrypt,@function
gs_type1_encrypt:                       # @gs_type1_encrypt
# %bb.0:                                # %entry
	ld.hu	$a4, $a3, 0
	beqz	$a2, .LBB0_3
# %bb.1:                                # %while.body.preheader
	lu12i.w	$a5, -4
	ori	$a5, $a5, 3693
	lu12i.w	$a6, 5
	ori	$a6, $a6, 2239
	.p2align	4, , 16
.LBB0_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a7, $a1, 0
	bstrpick.d	$t0, $a4, 15, 8
	xor	$a7, $a7, $t0
	st.b	$a7, $a0, 0
	andi	$a7, $a7, 255
	add.d	$a4, $a4, $a7
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a6
	addi.d	$a1, $a1, 1
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB0_2
.LBB0_3:                                # %while.end
	st.h	$a4, $a3, 0
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	gs_type1_encrypt, .Lfunc_end0-gs_type1_encrypt
                                        # -- End function
	.globl	gs_type1_decrypt                # -- Begin function gs_type1_decrypt
	.p2align	5
	.type	gs_type1_decrypt,@function
gs_type1_decrypt:                       # @gs_type1_decrypt
# %bb.0:                                # %entry
	ld.hu	$a4, $a3, 0
	beqz	$a2, .LBB1_3
# %bb.1:                                # %while.body.preheader
	lu12i.w	$a5, -4
	ori	$a5, $a5, 3693
	lu12i.w	$a6, 5
	ori	$a6, $a6, 2239
	.p2align	4, , 16
.LBB1_2:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a1, 0
	addi.d	$a1, $a1, 1
	srli.d	$t0, $a4, 8
	xor	$t0, $a7, $t0
	st.b	$t0, $a0, 0
	add.d	$a4, $a4, $a7
	mul.d	$a4, $a4, $a5
	add.d	$a4, $a4, $a6
	addi.w	$a2, $a2, -1
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB1_2
.LBB1_3:                                # %while.end
	st.h	$a4, $a3, 0
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	gs_type1_decrypt, .Lfunc_end1-gs_type1_decrypt
                                        # -- End function
	.globl	gs_type1_init_matrix            # -- Begin function gs_type1_init_matrix
	.p2align	5
	.type	gs_type1_init_matrix,@function
gs_type1_init_matrix:                   # @gs_type1_init_matrix
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
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, -3
	ori	$s1, $a0, 2288
	ld.d	$a0, $fp, 8
	move	$a1, $s1
	lu32i.d	$a1, 0
	st.w	$a1, $sp, 12
	ld.wu	$a1, $a0, 24
	ld.wu	$s7, $a0, 40
	ld.wu	$s2, $a0, 44
	ld.wu	$s6, $a0, 56
	ld.wu	$s3, $a0, 60
	ld.w	$a2, $a0, 28
	ld.wu	$s0, $a0, 72
	ld.wu	$s5, $a0, 76
	st.w	$zero, $fp, 64
	slli.d	$a0, $a2, 33
	or	$s4, $a0, $a1
	movgr2fr.w	$fs2, $a1
	beqz	$s4, .LBB2_2
# %bb.1:                                # %if.then
	fcvt.d.s	$fa0, $fs2
	addi.d	$a0, $sp, 12
	pcaddu18i	$ra, %call36(frexp)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 12
.LBB2_2:                                # %if.end
	slli.d	$a0, $s2, 33
	or	$s2, $a0, $s7
	movgr2fr.w	$fs0, $s7
	beqz	$s2, .LBB2_4
# %bb.3:                                # %if.then6
	fcvt.d.s	$fa0, $fs0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(frexp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slt	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 64
.LBB2_4:                                # %if.end16
	slli.d	$a0, $s3, 33
	or	$s3, $a0, $s6
	movgr2fr.w	$fs1, $s6
	beqz	$s3, .LBB2_6
# %bb.5:                                # %if.then20
	fcvt.d.s	$fa0, $fs1
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(frexp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slt	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 64
.LBB2_6:                                # %if.end30
	slli.d	$a0, $s5, 33
	or	$s5, $a0, $s0
	movgr2fr.w	$fs3, $s0
	beqz	$s5, .LBB2_8
# %bb.7:                                # %if.then34
	fcvt.d.s	$fa0, $fs3
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(frexp)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 8
	slt	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
.LBB2_8:                                # %if.end42
	ori	$a0, $zero, 20
	sub.w	$s0, $a0, $s1
	beqz	$s4, .LBB2_14
# %bb.9:                                # %cond.false
	fcvt.d.s	$fa0, $fs2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.d	$a0, $fp, 32
	beqz	$s5, .LBB2_15
.LBB2_10:                               # %cond.false58
	fcvt.d.s	$fa0, $fs3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	ld.w	$a1, $fp, 64
	st.d	$a0, $fp, 56
	beqz	$a1, .LBB2_16
.LBB2_11:                               # %if.then69
	beqz	$s2, .LBB2_17
# %bb.12:                               # %cond.false75
	fcvt.d.s	$fa0, $fs0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.d	$a0, $fp, 40
	beqz	$s3, .LBB2_18
.LBB2_13:                               # %cond.false89
	fcvt.d.s	$fa0, $fs1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(ldexp)
	jirl	$ra, $ra, 0
	ftintrz.l.d	$fa0, $fa0
	movfr2gr.d	$a0, $fa0
	st.d	$a0, $fp, 48
	b	.LBB2_19
.LBB2_14:
	move	$a0, $zero
	st.d	$a0, $fp, 32
	bnez	$s5, .LBB2_10
.LBB2_15:
	move	$a0, $zero
	ld.w	$a1, $fp, 64
	st.d	$a0, $fp, 56
	bnez	$a1, .LBB2_11
.LBB2_16:                               # %if.else
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 40
	b	.LBB2_19
.LBB2_17:
	move	$a0, $zero
	st.d	$a0, $fp, 40
	bnez	$s3, .LBB2_13
.LBB2_18:
	st.d	$zero, $fp, 48
.LBB2_19:                               # %if.end102
	ori	$a0, $zero, 8
	sub.d	$a0, $a0, $s1
	st.w	$a0, $fp, 68
	slti	$a0, $s1, 8
	ori	$a1, $zero, 7
	sub.d	$a1, $a1, $s1
	ori	$a2, $zero, 1
	sll.d	$a1, $a2, $a1
	maskeqz	$a0, $a1, $a0
	st.d	$a0, $fp, 72
	move	$a0, $zero
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
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
.Lfunc_end2:
	.size	gs_type1_init_matrix, .Lfunc_end2-gs_type1_init_matrix
                                        # -- End function
	.globl	gs_type1_init                   # -- Begin function gs_type1_init
	.p2align	5
	.type	gs_type1_init,@function
gs_type1_init:                          # @gs_type1_init
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$fp, $a1, 0
	st.d	$a1, $a0, 0
	st.d	$fp, $a0, 8
	st.d	$a5, $a0, 16
	st.w	$a2, $a0, 24
	st.w	$a3, $a0, 28
	st.w	$zero, $a0, 272
	st.d	$a4, $a0, 280
	lu12i.w	$a1, 1
	ori	$a1, $a1, 234
	ld.w	$a2, $a5, 24
	st.h	$a1, $a0, 288
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 456
	st.w	$a2, $a0, 460
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 496
	pcaddu18i	$ra, %call36(gs_type1_init_matrix)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 256
	vld	$vr0, $fp, 120
	vst	$vr0, $a0, 120
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	gs_type1_init, .Lfunc_end3-gs_type1_init
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gs_type1_interpret
.LCPI4_0:
	.dword	0x3f30000000000000              # double 2.44140625E-4
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI4_1:
	.word	0x45800000                      # float 4096
	.text
	.globl	gs_type1_interpret
	.p2align	5
	.type	gs_type1_interpret,@function
gs_type1_interpret:                     # @gs_type1_interpret
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -480
	st.d	$ra, $sp, 472                   # 8-byte Folded Spill
	st.d	$fp, $sp, 464                   # 8-byte Folded Spill
	st.d	$s0, $sp, 456                   # 8-byte Folded Spill
	st.d	$s1, $sp, 448                   # 8-byte Folded Spill
	st.d	$s2, $sp, 440                   # 8-byte Folded Spill
	st.d	$s3, $sp, 432                   # 8-byte Folded Spill
	st.d	$s4, $sp, 424                   # 8-byte Folded Spill
	st.d	$s5, $sp, 416                   # 8-byte Folded Spill
	st.d	$s6, $sp, 408                   # 8-byte Folded Spill
	st.d	$s7, $sp, 400                   # 8-byte Folded Spill
	st.d	$s8, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 8
	ld.d	$a5, $a2, 256
	ld.d	$a3, $a0, 16
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a3, $a0, 456
	ld.w	$s4, $a0, 460
	ld.d	$a4, $a2, 120
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 128
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s6, $a5, 120
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s5, $a5, 128
	ld.d	$a2, $a0, 32
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 40
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 48
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a2, $a0, 56
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a2, $a0, 64
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	ld.w	$fp, $a0, 68
	ld.w	$s2, $a0, 272
	ld.d	$s1, $a0, 72
	move	$s7, $a1
	addi.d	$a1, $a0, 280
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	alsl.d	$s0, $a3, $a1, 4
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	beqz	$s2, .LBB4_124
# %bb.1:                                # %if.else
	addi.d	$a1, $a0, 80
	slli.d	$a2, $s2, 3
	addi.d	$a0, $sp, 200
	addi.d	$s3, $sp, 200
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s2, $s3, 3
	addi.d	$s8, $a0, -8
	addi.d	$a1, $s0, -16
	move	$a3, $s4
	beqz	$s7, .LBB4_3
.LBB4_2:                                # %if.then15
	st.d	$s7, $a1, 0
.LBB4_3:                                # %if.end16
	addi.d	$a7, $sp, 192
	sub.d	$a0, $zero, $fp
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$a4, $zero, 1
	lu12i.w	$a0, -4
	ori	$s3, $a0, 3693
	lu12i.w	$a0, 5
	ori	$s0, $a0, 2239
	lu12i.w	$a0, 1
	ori	$a0, $a0, 234
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 64                   # 32-byte Folded Spill
.LBB4_4:                                # %itop
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_7 Depth 2
                                        #     Child Loop BB4_12 Depth 2
	ld.d	$s2, $a1, 0
	ld.hu	$s4, $a1, 8
	move	$s7, $s8
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bge	$a3, $a4, .LBB4_6
.LBB4_5:                                #   in Loop: Header=BB4_4 Depth=1
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_6:                                # %for.body.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$a0, $a3, 1
	move	$a1, $s2
	.p2align	4, , 16
.LBB4_7:                                # %for.body
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 0
	add.d	$a2, $s4, $a2
	mul.d	$a2, $a2, $s3
	add.d	$s4, $a2, $s0
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 1
	bltu	$a4, $a0, .LBB4_7
# %bb.8:                                # %while.cond.preheader.loopexit
                                        #   in Loop: Header=BB4_4 Depth=1
	add.d	$s2, $s2, $a3
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	b	.LBB4_12
.LBB4_9:                                #   in Loop: Header=BB4_12 Depth=2
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
.LBB4_10:                               # %mto
                                        #   in Loop: Header=BB4_12 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %moved
                                        #   in Loop: Header=BB4_12 Depth=2
	addi.d	$a7, $sp, 192
	move	$s7, $a7
	bltz	$a0, .LBB4_127
.LBB4_12:                               # %while.cond
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $s2
	ld.bu	$a0, $s2, 0
	move	$s8, $s7
	bstrpick.d	$a2, $s4, 15, 8
	xor	$a2, $a2, $a0
	add.d	$a0, $s4, $a0
	mul.d	$a0, $a0, $s3
	add.d	$s4, $a0, $s0
	addi.d	$s2, $s2, 1
	ori	$a0, $zero, 31
	bltu	$a0, $a2, .LBB4_47
# %bb.13:                               # %while.cond
                                        #   in Loop: Header=BB4_12 Depth=2
	slli.d	$a0, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI4_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI4_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a2, $a2, $a0
	move	$s7, $a7
	addi.d	$a0, $zero, -10
	jr	$a2
.LBB4_14:                               # %sw.bb43
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bltz	$fp, .LBB4_64
# %bb.15:                               # %cond.end
                                        #   in Loop: Header=BB4_12 Depth=2
	add.d	$a1, $a1, $s1
	sra.d	$a1, $a1, $fp
	add.d	$s5, $a1, $s5
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_9
# %bb.16:                               # %cond.true68
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	b	.LBB4_66
.LBB4_17:                               # %sw.bb1230
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bltz	$fp, .LBB4_58
# %bb.18:                               # %cond.end1286
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 208
	add.d	$a1, $a1, $s1
	sra.d	$a1, $a1, $fp
	add.d	$s6, $a1, $s6
	slli.d	$a1, $a2, 20
	srai.d	$a1, $a1, 32
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $s1
	sra.d	$a2, $a2, $fp
	add.d	$s5, $a2, $s5
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	beqz	$a2, .LBB4_9
# %bb.19:                               # %cond.true1324
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$s5, $a0, $s5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	b	.LBB4_60
.LBB4_20:                               # %sw.bb282
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bltz	$fp, .LBB4_61
# %bb.21:                               # %cond.end309
                                        #   in Loop: Header=BB4_12 Depth=2
	add.d	$a1, $a1, $s1
	sra.d	$a1, $a1, $fp
	add.d	$s5, $a1, $s5
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_98
# %bb.22:                               # %cond.true318
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	b	.LBB4_63
.LBB4_23:                               # %sw.bb962
                                        #   in Loop: Header=BB4_12 Depth=2
	xvld	$xr0, $sp, 200
	xvpickve2gr.d	$a0, $xr0, 0
	xvld	$xr1, $sp, 64                   # 32-byte Folded Reload
	xvinsgr2vr.d	$xr1, $a0, 0
	xvpickve2gr.d	$a0, $xr0, 1
	xvinsgr2vr.d	$xr1, $a0, 2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	xvst	$xr1, $a0, 464
	st.d	$zero, $sp, 208
.LBB4_24:                               # %setp
                                        #   in Loop: Header=BB4_12 Depth=2
	move	$a2, $s6
	move	$a1, $s5
.LBB4_25:                               # %setp
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a3, $a0, $a3
	bltz	$fp, .LBB4_55
# %bb.26:                               # %cond.end1029
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a4, $sp, 208
	add.d	$a3, $a3, $s1
	sra.d	$a3, $a3, $fp
	add.d	$s6, $a3, $a2
	slli.d	$a2, $a4, 20
	srai.d	$a2, $a2, 32
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a3, $a2, $a3
	add.d	$a3, $a3, $s1
	sra.d	$a3, $a3, $fp
	add.d	$s5, $a3, $a1
	move	$s7, $a7
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_12
# %bb.27:                               # %cond.true1067
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$s5, $a0, $s5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	b	.LBB4_57
.LBB4_28:                               # %sw.bb219
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bltz	$fp, .LBB4_67
# %bb.29:                               # %cond.end246
                                        #   in Loop: Header=BB4_12 Depth=2
	add.d	$a1, $a1, $s1
	sra.d	$a1, $a1, $fp
	add.d	$s6, $a1, $s6
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_98
# %bb.30:                               # %cond.true255
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	b	.LBB4_97
.LBB4_31:                               # %sw.bb707
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	move	$a0, $s7
	pcaddu18i	$ra, %call36(gx_path_close_subpath)
	jirl	$ra, $ra, 0
	bgez	$a0, .LBB4_10
	b	.LBB4_127
.LBB4_32:                               # %sw.bb94
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bltz	$fp, .LBB4_69
# %bb.33:                               # %cond.end149
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 208
	add.d	$a1, $a1, $s1
	sra.d	$a1, $a1, $fp
	add.d	$s6, $a1, $s6
	slli.d	$a1, $a2, 20
	srai.d	$a1, $a1, 32
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	add.d	$a2, $a2, $s1
	sra.d	$a2, $a2, $fp
	add.d	$s5, $a2, $s5
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	beqz	$a2, .LBB4_98
# %bb.34:                               # %cond.true186
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$s5, $a0, $s5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	add.d	$a0, $a0, $s1
	sra.d	$a1, $a0, $fp
	b	.LBB4_71
.LBB4_35:                               # %sw.bb1660
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a2, $a0, 32
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a7
	bltz	$fp, .LBB4_72
# %bb.36:                               # %cond.end1687
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	sltui	$a3, $a6, 1
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$a1, $a0, $s6
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a5
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	ld.d	$a4, $sp, 208
	masknez	$a0, $a0, $a3
	add.d	$a2, $s5, $a0
	ld.d	$a3, $sp, 216
	slli.d	$a0, $a4, 20
	srai.d	$a0, $a0, 32
	mul.d	$a4, $a0, $a7
	add.d	$a4, $a4, $s1
	sra.d	$a4, $a4, $fp
	add.d	$s7, $a4, $a1
	slli.d	$a3, $a3, 20
	srai.d	$a3, $a3, 32
	ld.d	$a7, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a4, $a3, $a7
	add.d	$a4, $a4, $s1
	sra.d	$a4, $a4, $fp
	add.d	$a4, $a4, $a2
	beqz	$a6, .LBB4_82
# %bb.37:                               # %if.end1842.thread1203
                                        #   in Loop: Header=BB4_12 Depth=2
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$a4, $a0, $a4
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a3, $a5
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$s7, $a0, $s7
	b	.LBB4_83
.LBB4_38:                               # %sw.bb345
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a3, $a0, 32
	ld.d	$t3, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a0, $a3, $t3
	bltz	$fp, .LBB4_74
# %bb.39:                               # %cond.end401
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 208
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$a1, $a0, $s6
	slli.d	$a0, $a2, 20
	srai.d	$a0, $a0, 32
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a2, $a0, $t1
	add.d	$a2, $a2, $s1
	sra.d	$a2, $a2, $fp
	add.d	$a2, $a2, $s5
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	beqz	$a4, .LBB4_86
# %bb.40:                               # %if.end465.thread1353
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a3, $a3, $t0
	add.d	$a3, $a3, $s1
	sra.d	$a3, $a3, $fp
	add.d	$a2, $a3, $a2
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a7
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$a1, $a0, $a1
	b	.LBB4_87
.LBB4_41:                               # %sw.bb1352
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a1, $a0, $a1
	bltz	$fp, .LBB4_76
# %bb.42:                               # %cond.end1379
                                        #   in Loop: Header=BB4_12 Depth=2
	add.d	$a1, $a1, $s1
	sra.d	$a1, $a1, $fp
	add.d	$s6, $a1, $s6
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_9
# %bb.43:                               # %cond.true1388
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	b	.LBB4_95
.LBB4_44:                               # %sw.bb729
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.bu	$a2, $a1, 1
	srli.d	$a0, $s4, 8
	xor	$a0, $a2, $a0
	andi	$a0, $a0, 255
	ori	$a3, $zero, 33
	bltu	$a3, $a0, .LBB4_142
# %bb.45:                               # %sw.bb729
                                        #   in Loop: Header=BB4_12 Depth=2
	add.d	$a2, $s4, $a2
	slli.d	$a0, $a0, 2
	pcalau12i	$a3, %pc_hi20(.LJTI4_1)
	addi.d	$a3, $a3, %pc_lo12(.LJTI4_1)
	ldx.w	$a0, $a3, $a0
	mul.d	$a2, $a2, $s3
	add.d	$s4, $a2, $s0
	addi.d	$s2, $a1, 2
	add.d	$a3, $a3, $a0
	move	$s7, $a7
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a0, $zero, -10
	jr	$a3
.LBB4_46:                               # %sw.bb894
                                        #   in Loop: Header=BB4_12 Depth=2
	xvld	$xr0, $sp, 200
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	xvst	$xr0, $a0, 464
	b	.LBB4_24
.LBB4_47:                               # %sw.default1906
                                        #   in Loop: Header=BB4_12 Depth=2
	bstrpick.d	$a3, $a2, 15, 0
	addi.d	$s7, $s8, 8
	ori	$a0, $zero, 246
	bltu	$a0, $a3, .LBB4_52
# %bb.48:                               # %if.then1910
                                        #   in Loop: Header=BB4_12 Depth=2
	slli.d	$a0, $a3, 12
	lu12i.w	$a1, -139
	b	.LBB4_54
.LBB4_49:                               # %sw.bb1415
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 200
	slli.d	$a0, $a0, 20
	srai.d	$a1, $a0, 32
	ld.d	$t0, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $t0
	bltz	$fp, .LBB4_78
# %bb.50:                               # %cond.end1442
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	sltui	$a3, $a7, 1
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$a2, $a0, $s5
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a6
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	ld.d	$a4, $sp, 208
	masknez	$a0, $a0, $a3
	add.d	$a1, $s6, $a0
	ld.d	$a5, $sp, 216
	slli.d	$a0, $a4, 20
	srai.d	$a0, $a0, 32
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a3, $a0, $t1
	add.d	$a3, $a3, $s1
	sra.d	$a3, $a3, $fp
	add.d	$a3, $a3, $a1
	slli.d	$a4, $a5, 20
	srai.d	$a4, $a4, 32
	mul.d	$a5, $a4, $t0
	add.d	$a5, $a5, $s1
	sra.d	$a5, $a5, $fp
	add.d	$s8, $a5, $a2
	beqz	$a7, .LBB4_91
# %bb.51:                               # %if.end1597.thread1072
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$s8, $a0, $s8
	mul.d	$a0, $a4, $a6
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$a3, $a0, $a3
	b	.LBB4_92
.LBB4_52:                               # %if.else1916
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.bu	$a4, $a1, 1
	srli.d	$a0, $s4, 8
	xor	$a0, $a4, $a0
	ext.w.b	$a0, $a0
	add.d	$a4, $s4, $a4
	mul.d	$a4, $a4, $s3
	add.d	$s4, $a4, $s0
	addi.d	$s2, $a1, 2
	ori	$a4, $zero, 250
	bltu	$a4, $a3, .LBB4_80
# %bb.53:                               # %if.then1931
                                        #   in Loop: Header=BB4_12 Depth=2
	bstrins.d	$a0, $a2, 63, 8
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 257
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 12
	lu12i.w	$a1, 108
.LBB4_54:                               # %while.cond
                                        #   in Loop: Header=BB4_12 Depth=2
	add.d	$a0, $a0, $a1
	st.d	$a0, $s7, 0
	b	.LBB4_12
.LBB4_55:                               # %cond.end1029.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a4, $sp, 208
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	sll.d	$a3, $a3, $a5
	add.d	$s6, $a3, $a2
	slli.d	$a2, $a4, 20
	srai.d	$a2, $a2, 32
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a3, $a2, $a3
	sll.d	$a4, $a3, $a5
	add.d	$s5, $a4, $a1
	move	$s7, $a7
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	beqz	$a4, .LBB4_12
# %bb.56:                               # %cond.false1079
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a4
	add.d	$a0, $a3, $a0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	sll.d	$a0, $a0, $a3
	add.d	$s5, $a0, $a1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	sll.d	$a0, $a0, $a3
.LBB4_57:                               # %while.cond
                                        #   in Loop: Header=BB4_12 Depth=2
	add.d	$s6, $a0, $s6
	move	$s7, $a7
	b	.LBB4_12
.LBB4_58:                               # %cond.end1286.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 208
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a4
	add.d	$s6, $a1, $s6
	slli.d	$a1, $a2, 20
	srai.d	$a1, $a1, 32
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	beqz	$a3, .LBB4_94
# %bb.59:                               # %cond.false1336
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a2, $a0
	sll.d	$a0, $a0, $a4
	add.d	$s5, $a0, $s5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	sll.d	$a0, $a0, $a4
.LBB4_60:                               # %cond.end1347
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	add.d	$s6, $a0, $s6
	b	.LBB4_10
.LBB4_61:                               # %cond.end309.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a2
	add.d	$s5, $a1, $s5
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_98
# %bb.62:                               # %cond.false330
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sll.d	$a0, $a0, $a2
.LBB4_63:                               # %lto
                                        #   in Loop: Header=BB4_12 Depth=2
	add.d	$s6, $a0, $s6
	b	.LBB4_98
.LBB4_64:                               # %cond.end.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a2
	add.d	$s5, $a1, $s5
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_9
# %bb.65:                               # %cond.false79
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sll.d	$a0, $a0, $a2
.LBB4_66:                               # %mto
                                        #   in Loop: Header=BB4_12 Depth=2
	add.d	$s6, $a0, $s6
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	b	.LBB4_10
.LBB4_67:                               # %cond.end246.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a2
	add.d	$s6, $a1, $s6
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_98
# %bb.68:                               # %cond.false267
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sll.d	$a0, $a0, $a2
	b	.LBB4_97
.LBB4_69:                               # %cond.end149.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 208
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a4
	add.d	$s6, $a1, $s6
	slli.d	$a1, $a2, 20
	srai.d	$a1, $a1, 32
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	beqz	$a3, .LBB4_96
# %bb.70:                               # %cond.false198
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a3
	add.d	$a0, $a2, $a0
	sll.d	$a0, $a0, $a4
	add.d	$s5, $a0, $s5
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	sll.d	$a1, $a0, $a4
.LBB4_71:                               # %cond.end209
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$s6, $a1, $s6
	b	.LBB4_99
.LBB4_72:                               # %cond.end1687.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_100
# %bb.73:                               # %if.end1842
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a1, $a2, $a5
	ld.d	$a2, $sp, 208
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $t0
	add.d	$s5, $a1, $s5
	ld.d	$a1, $sp, 216
	slli.d	$a2, $a2, 20
	srai.d	$a2, $a2, 32
	mul.d	$a3, $a2, $a7
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	mul.d	$a4, $a1, $a6
	mul.d	$a2, $a2, $a5
	add.d	$a2, $a4, $a2
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a4
	add.d	$a3, $a3, $a1
	b	.LBB4_101
.LBB4_74:                               # %cond.end401.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 208
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	ld.d	$t2, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a5, $a1, $t2
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	beqz	$a2, .LBB4_104
# %bb.75:                               # %if.end585
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a3, $a6
	add.d	$a5, $a5, $a2
	ld.d	$a2, $sp, 216
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a7
	add.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 224
	slli.d	$a2, $a2, 20
	srai.d	$a2, $a2, 32
	mul.d	$a3, $a2, $t3
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	mul.d	$a4, $a1, $t2
	mul.d	$a2, $a2, $a6
	add.d	$a6, $a4, $a2
	mul.d	$a1, $a1, $a7
	add.d	$a7, $a3, $a1
	b	.LBB4_105
.LBB4_76:                               # %cond.end1379.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $a2
	add.d	$s6, $a1, $s6
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_9
# %bb.77:                               # %cond.false1400
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sll.d	$a0, $a0, $a2
	b	.LBB4_95
.LBB4_78:                               # %cond.end1442.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	beqz	$a2, .LBB4_109
# %bb.79:                               # %if.end1597
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a1, $a1, $a5
	ld.d	$a2, $sp, 208
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	sll.d	$a1, $a1, $t1
	add.d	$s6, $a1, $s6
	ld.d	$a1, $sp, 216
	slli.d	$a2, $a2, 20
	srai.d	$a2, $a2, 32
	mul.d	$a3, $a2, $a7
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	mul.d	$a4, $a1, $t0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $a6
	add.d	$a4, $a4, $a2
	mul.d	$a1, $a1, $a5
	add.d	$a1, $a3, $a1
	b	.LBB4_110
.LBB4_80:                               # %if.else1943
                                        #   in Loop: Header=BB4_12 Depth=2
	ori	$a4, $zero, 255
	bne	$a3, $a4, .LBB4_115
# %bb.81:                               # %cleanup2022
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.bu	$a2, $a1, 2
	srli.d	$a3, $s4, 8
	xor	$a3, $a2, $a3
	add.d	$a2, $s4, $a2
	ld.bu	$a4, $a1, 3
	mul.d	$a2, $a2, $s3
	add.d	$a2, $a2, $s0
	srli.d	$a5, $a2, 8
	xor	$a5, $a4, $a5
	add.d	$a2, $a2, $a4
	ld.bu	$a4, $a1, 4
	mul.d	$a2, $a2, $s3
	add.d	$a2, $a2, $s0
	bstrpick.d	$a6, $a2, 15, 8
	xor	$a6, $a6, $a4
	add.d	$a2, $a2, $a4
	mul.d	$a2, $a2, $s3
	add.d	$s4, $a2, $s0
	addi.d	$s2, $a1, 5
	slli.d	$a1, $a6, 12
	bstrins.d	$a1, $a0, 43, 36
	bstrins.d	$a1, $a3, 35, 28
	bstrins.d	$a1, $a5, 27, 20
	addi.w	$a2, $zero, -1
	st.d	$a1, $s7, 0
	blt	$a2, $a0, .LBB4_12
	b	.LBB4_141
.LBB4_82:                               #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
.LBB4_83:                               # %cond.true1846
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 224
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	mul.d	$a3, $a0, $a7
	add.d	$a3, $a3, $s1
	sra.d	$a3, $a3, $fp
	add.d	$s8, $a3, $a4
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	beqz	$a3, .LBB4_85
# %bb.84:                               # %cond.true1878
                                        #   in Loop: Header=BB4_12 Depth=2
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$a0, $a0, $s7
	move	$a3, $s7
	move	$s7, $a0
	b	.LBB4_114
.LBB4_85:                               #   in Loop: Header=BB4_12 Depth=2
	move	$a3, $s7
	b	.LBB4_114
.LBB4_86:                               #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 136                   # 8-byte Folded Reload
.LBB4_87:                               # %cond.true498
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 216
	ld.d	$a4, $sp, 224
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	mul.d	$a3, $a0, $t3
	add.d	$a3, $a3, $s1
	sra.d	$a3, $a3, $fp
	add.d	$a3, $a3, $a1
	slli.d	$a4, $a4, 20
	srai.d	$a5, $a4, 32
	mul.d	$a4, $a5, $t1
	add.d	$a4, $a4, $s1
	sra.d	$a4, $a4, $fp
	add.d	$a4, $a4, $a2
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	beqz	$a6, .LBB4_89
# %bb.88:                               # %if.end585.thread811
                                        #   in Loop: Header=BB4_12 Depth=2
	mul.d	$a0, $a0, $t0
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$a4, $a0, $a4
	mul.d	$a0, $a5, $a7
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$a3, $a0, $a3
.LBB4_89:                               # %cond.true618
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 232
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	mul.d	$a5, $a0, $t3
	ld.d	$a6, $sp, 240
	add.d	$a5, $a5, $s1
	sra.d	$a5, $a5, $fp
	add.d	$s7, $a5, $a3
	slli.d	$a5, $a6, 20
	srai.d	$a5, $a5, 32
	mul.d	$a6, $a5, $t1
	add.d	$a6, $a6, $s1
	sra.d	$a6, $a6, $fp
	add.d	$s8, $a6, $a4
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	beqz	$a6, .LBB4_114
# %bb.90:                               # %cond.true679
                                        #   in Loop: Header=BB4_12 Depth=2
	mul.d	$a0, $a0, $t0
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$s8, $a0, $s8
	mul.d	$a0, $a5, $a7
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	b	.LBB4_107
.LBB4_91:                               #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
.LBB4_92:                               # %cond.true1601
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 224
	slli.d	$a0, $a0, 20
	srai.d	$a0, $a0, 32
	mul.d	$a4, $a0, $t1
	add.d	$a4, $a4, $s1
	sra.d	$a4, $a4, $fp
	add.d	$s7, $a4, $a3
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	beqz	$a4, .LBB4_113
# %bb.93:                               # %cond.true1633
                                        #   in Loop: Header=BB4_12 Depth=2
	mul.d	$a0, $a0, $a5
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	add.d	$a0, $a0, $s8
	move	$a4, $s8
	move	$s8, $a0
	b	.LBB4_114
.LBB4_94:                               #   in Loop: Header=BB4_12 Depth=2
	sll.d	$a0, $a2, $a4
.LBB4_95:                               # %mto
                                        #   in Loop: Header=BB4_12 Depth=2
	add.d	$s5, $a0, $s5
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	b	.LBB4_10
.LBB4_96:                               #   in Loop: Header=BB4_12 Depth=2
	sll.d	$a0, $a2, $a4
.LBB4_97:                               # %lto
                                        #   in Loop: Header=BB4_12 Depth=2
	add.d	$s5, $a0, $s5
.LBB4_98:                               # %lto
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
.LBB4_99:                               # %lto
                                        #   in Loop: Header=BB4_12 Depth=2
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(gx_path_add_line)
	jirl	$ra, $ra, 0
	b	.LBB4_11
.LBB4_100:                              # %cond.end1778.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 208
	ld.d	$a2, $sp, 216
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	mul.d	$a3, $a1, $a7
	slli.d	$a1, $a2, 20
	srai.d	$a1, $a1, 32
	mul.d	$a2, $a1, $a6
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
.LBB4_101:                              # %cond.end1869
                                        #   in Loop: Header=BB4_12 Depth=2
	sll.d	$a1, $a0, $t0
	add.d	$a1, $a1, $s6
	add.d	$a0, $a0, $a3
	sll.d	$a0, $a0, $t0
	ld.d	$a3, $sp, 224
	add.d	$s7, $a0, $s6
	sll.d	$a0, $a2, $t0
	add.d	$a4, $a0, $s5
	slli.d	$a0, $a3, 20
	srai.d	$a0, $a0, 32
	mul.d	$a3, $a0, $a6
	add.d	$a2, $a2, $a3
	sll.d	$a2, $a2, $t0
	add.d	$s8, $a2, $s5
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	beqz	$a2, .LBB4_103
# %bb.102:                              # %cond.false1890
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	sll.d	$a0, $a0, $t0
	add.d	$a0, $a0, $s7
	move	$a3, $s7
	move	$s7, $a0
	move	$a2, $s5
	b	.LBB4_114
.LBB4_103:                              #   in Loop: Header=BB4_12 Depth=2
	move	$a2, $s5
	move	$a3, $s7
	b	.LBB4_114
.LBB4_104:                              # %cond.end521.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 216
	ld.d	$a2, $sp, 224
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	mul.d	$a7, $a1, $t3
	slli.d	$a1, $a2, 20
	srai.d	$a1, $a1, 32
	mul.d	$a6, $a1, $t2
.LBB4_105:                              # %cond.end641
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$t4, $sp, 128                   # 8-byte Folded Reload
	sll.d	$a1, $a5, $t4
	add.d	$a2, $a1, $s5
	sll.d	$a1, $a0, $t4
	add.d	$a1, $a1, $s6
	add.d	$a3, $a0, $a7
	sll.d	$a3, $a3, $t4
	add.d	$a3, $a3, $s6
	ld.d	$t0, $sp, 232
	add.d	$a4, $a5, $a6
	sll.d	$a4, $a4, $t4
	add.d	$a4, $a4, $s5
	slli.d	$t0, $t0, 20
	srai.d	$t0, $t0, 32
	mul.d	$t1, $t0, $t3
	add.d	$a7, $a7, $t1
	ld.d	$t1, $sp, 240
	add.d	$a0, $a0, $a7
	sll.d	$a0, $a0, $t4
	add.d	$s7, $a0, $s6
	slli.d	$a0, $t1, 20
	srai.d	$a0, $a0, 32
	mul.d	$a7, $a0, $t2
	add.d	$a6, $a6, $a7
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	beqz	$a7, .LBB4_108
# %bb.106:                              # %cond.false691
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a7, $t0, $a7
	add.d	$a6, $a6, $a7
	add.d	$a5, $a5, $a6
	sll.d	$a5, $a5, $t4
	add.d	$s8, $a5, $s5
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a5
	sll.d	$a0, $a0, $t4
.LBB4_107:                              # %cond.end702
                                        #   in Loop: Header=BB4_12 Depth=2
	add.d	$s7, $a0, $s7
	b	.LBB4_114
.LBB4_108:                              #   in Loop: Header=BB4_12 Depth=2
	add.d	$a0, $a5, $a6
	sll.d	$a0, $a0, $t4
	add.d	$s8, $a0, $s5
	b	.LBB4_114
.LBB4_109:                              # %cond.end1533.thread
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 208
	ld.d	$a2, $sp, 216
	slli.d	$a1, $a1, 20
	srai.d	$a1, $a1, 32
	mul.d	$a1, $a1, $a7
	slli.d	$a2, $a2, 20
	srai.d	$a2, $a2, 32
	mul.d	$a4, $a2, $t0
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
.LBB4_110:                              # %cond.end1624
                                        #   in Loop: Header=BB4_12 Depth=2
	sll.d	$a2, $a0, $t1
	add.d	$a2, $a2, $s5
	sll.d	$a3, $a1, $t1
	add.d	$a3, $a3, $s6
	ld.d	$a5, $sp, 224
	add.d	$a0, $a0, $a4
	sll.d	$a0, $a0, $t1
	add.d	$s8, $a0, $s5
	slli.d	$a0, $a5, 20
	srai.d	$a0, $a0, 32
	mul.d	$a4, $a0, $a7
	add.d	$a1, $a1, $a4
	sll.d	$a1, $a1, $t1
	add.d	$s7, $a1, $s6
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_112
# %bb.111:                              # %cond.false1645
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sll.d	$a0, $a0, $t1
	add.d	$a0, $a0, $s8
	move	$a4, $s8
	move	$s8, $a0
	move	$a1, $s6
	b	.LBB4_114
.LBB4_112:                              #   in Loop: Header=BB4_12 Depth=2
	move	$a1, $s6
.LBB4_113:                              # %curve
                                        #   in Loop: Header=BB4_12 Depth=2
	move	$a4, $s8
.LBB4_114:                              # %curve
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a5, $s7
	move	$a6, $s8
	pcaddu18i	$ra, %call36(gx_path_add_curve)
	jirl	$ra, $ra, 0
	move	$s6, $s7
	move	$s5, $s8
	b	.LBB4_11
.LBB4_115:                              # %if.then1946
                                        #   in Loop: Header=BB4_12 Depth=2
	bstrins.d	$a0, $a2, 63, 8
	addi.d	$a0, $a0, 1280
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 12
	lu12i.w	$a1, -108
	sub.d	$a0, $a1, $a0
	st.d	$a0, $s7, 0
	b	.LBB4_12
.LBB4_116:                              # %sw.bb905
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $s8, -8
	addi.d	$s7, $s8, -8
	movgr2fr.d	$fa0, $a0
	ld.d	$a0, $s8, 0
	ffint.s.l	$fa0, $fa0
	pcalau12i	$a1, %pc_hi20(.LCPI4_1)
	fld.s	$fa1, $a1, %pc_lo12(.LCPI4_1)
	movgr2fr.d	$fa2, $a0
	ffint.s.l	$fa2, $fa2
	fdiv.s	$fa0, $fa0, $fa2
	fmul.s	$fa0, $fa0, $fa1
	ftintrz.l.s	$fa0, $fa0
	fst.d	$fa0, $s8, -8
	b	.LBB4_12
.LBB4_117:                              # %sw.bb913
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $s8, -16
	ld.d	$a1, $s8, -8
	bge	$a1, $a0, .LBB4_119
# %bb.118:                              # %if.then918
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $s8, 0
	ld.d	$a1, $s8, -24
	add.d	$a0, $a1, $a0
	st.d	$a0, $s8, -24
.LBB4_119:                              # %if.end921
                                        #   in Loop: Header=BB4_12 Depth=2
	addi.d	$s7, $s8, -24
	b	.LBB4_12
.LBB4_120:                              # %sw.bb954
                                        #   in Loop: Header=BB4_12 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a0, 8
	addi.d	$s7, $s8, 8
	move	$a1, $s7
	jirl	$ra, $a2, 0
	addi.d	$a7, $sp, 192
	bgez	$a0, .LBB4_12
	b	.LBB4_127
.LBB4_121:                              # %sw.bb713
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a1, $s8, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	srli.d	$a1, $a1, 12
	addi.w	$a1, $a1, 0
	addi.d	$a2, $sp, 184
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB4_127
# %bb.122:                              # %cleanup.cont
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	st.h	$s4, $a1, 8
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 16
	ld.d	$s2, $sp, 184
	ld.w	$a3, $a0, 24
	addi.d	$s7, $s8, -8
	addi.d	$a1, $a1, 16
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a7, $sp, 192
	ori	$a4, $zero, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	bge	$a3, $a4, .LBB4_6
	b	.LBB4_5
.LBB4_123:                              # %sw.bb727
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a1, -16
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ori	$a4, $zero, 1
	b	.LBB4_4
.LBB4_124:                              # %if.then
	addi.d	$s8, $sp, 192
	addi.d	$a1, $s0, -16
	move	$a3, $s4
	bnez	$s7, .LBB4_2
	b	.LBB4_3
.LBB4_125:                              # %sw.bb1094
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $s0, 496
	bltz	$a0, .LBB4_128
# %bb.126:                              # %if.then1098
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $s0, 496
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	vld	$vr0, $a1, 120
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	vst	$vr0, $a1, 120
	slli.d	$a0, $a0, 1
	addi.d	$a0, $a0, 1
.LBB4_127:                              # %cleanup2027
	addi.w	$a0, $a0, 0
	ld.d	$s8, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 456                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 464                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 480
	ret
.LBB4_128:                              # %if.end1116
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $fp, 120
	ld.d	$a2, $fp, 128
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 24
	beqz	$a0, .LBB4_131
# %bb.129:                              # %if.then1123
	ld.d	$a1, $s0, 480
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_0)
	ld.d	$a0, $s0, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $s0, 488
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa2, $a1
	ffint.d.l	$fa2, $fa2
	fmul.d	$fa1, $fa2, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	pcaddu18i	$ra, %call36(gs_setcharwidth)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_127
# %bb.130:                              # %if.end1140
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 256
	move	$a0, $s1
	pcaddu18i	$ra, %call36(gx_path_merge)
	jirl	$ra, $ra, 0
	b	.LBB4_127
.LBB4_131:                              # %if.else1143
	addi.d	$a1, $sp, 184
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_pathbbox)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gx_path_add_point)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	blt	$a0, $s4, .LBB4_133
# %bb.132:                              # %if.then1148
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 184
.LBB4_133:                              # %if.end1155
	ld.w	$a0, $s0, 28
	beqz	$a0, .LBB4_143
# %bb.134:                              # %if.then1157
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_currentlinewidth)
	jirl	$ra, $ra, 0
	movgr2fr.w	$fa1, $zero
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	fld.s	$fa1, $sp, 184
	vldi	$vr2, -1168
	fsel	$fa0, $fa0, $fa2, $fcc0
	fld.s	$fa3, $sp, 188
	fsub.s	$fa2, $fa1, $fa0
	fst.s	$fa2, $sp, 184
	fld.s	$fa1, $sp, 192
	fsub.s	$fa3, $fa3, $fa0
	fld.s	$fa5, $sp, 196
	fst.s	$fa3, $sp, 188
	fadd.s	$fa4, $fa0, $fa1
	fst.s	$fa4, $sp, 192
	fadd.s	$fa5, $fa0, $fa5
	fst.s	$fa5, $sp, 196
	b	.LBB4_144
.LBB4_135:                              # %sw.bb750
	ld.w	$a0, $sp, 224
	ld.d	$a1, $sp, 200
	ld.d	$a2, $sp, 208
	bstrpick.d	$a0, $a0, 19, 12
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a3, 496
	sub.d	$a0, $a2, $a1
	slli.d	$a0, $a0, 20
	srai.d	$a2, $a0, 32
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	bltz	$fp, .LBB4_147
# %bb.136:                              # %cond.end814
	ld.d	$a1, $sp, 216
	add.d	$a0, $a0, $s1
	sra.d	$a0, $a0, $fp
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	slli.d	$a1, $a1, 20
	srai.d	$a3, $a1, 32
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a1, $a3, $a1
	add.d	$a1, $a1, $s1
	sra.d	$a1, $a1, $fp
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	beqz	$a6, .LBB4_152
# %bb.137:                              # %cond.true852
	mul.d	$a2, $a2, $a5
	add.d	$a2, $a2, $s1
	sra.d	$a2, $a2, $fp
	add.d	$a1, $a1, $a2
	mul.d	$a2, $a3, $a4
	add.d	$a2, $a2, $s1
	sra.d	$a2, $a2, $fp
	b	.LBB4_149
.LBB4_138:                              # %sw.bb923
	ld.d	$fp, $s8, 0
	addi.d	$a0, $sp, 200
	sub.d	$a1, $s8, $a0
	srli.d	$a0, $a1, 3
	addi.w	$a2, $a0, 0
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	st.d	$s2, $a4, 0
	st.h	$s4, $a4, 8
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	st.w	$a0, $a3, 272
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a4, $a0
	srli.d	$a0, $a0, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $a3, 456
	st.w	$zero, $a3, 460
	beqz	$a2, .LBB4_140
# %bb.139:                              # %if.then943
	addi.d	$a0, $a3, 80
	slli.d	$a1, $a1, 29
	srai.d	$a2, $a1, 29
	bstrins.d	$a2, $zero, 2, 0
	addi.d	$a1, $sp, 200
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_140:                              # %if.end949
	srli.d	$a0, $fp, 11
	addi.w	$a1, $zero, -2
	lu32i.d	$a1, 0
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, 2
	b	.LBB4_127
.LBB4_141:
	addi.d	$a0, $zero, -15
	b	.LBB4_127
.LBB4_142:
	addi.d	$a0, $zero, -10
	b	.LBB4_127
.LBB4_143:                              # %if.end1155.if.end1175_crit_edge
	fld.s	$fa2, $sp, 184
	fld.s	$fa3, $sp, 188
	fld.s	$fa4, $sp, 192
	fld.s	$fa5, $sp, 196
.LBB4_144:                              # %if.end1175
	ld.d	$a1, $s0, 480
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI4_0)
	ld.d	$a0, $s0, 0
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	ld.d	$a1, $s0, 488
	fmul.d	$fa0, $fa0, $fa1
	fcvt.s.d	$fa0, $fa0
	fcvt.d.s	$fa0, $fa0
	movgr2fr.d	$fa6, $a1
	ffint.d.l	$fa6, $fa6
	fmul.d	$fa1, $fa6, $fa1
	fcvt.s.d	$fa1, $fa1
	fcvt.d.s	$fa1, $fa1
	fcvt.d.s	$fa2, $fa2
	fcvt.d.s	$fa3, $fa3
	fcvt.d.s	$fa4, $fa4
	fcvt.d.s	$fa5, $fa5
	pcaddu18i	$ra, %call36(gs_setcachedevice)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB4_127
# %bb.145:                              # %if.end1205
	ld.d	$a1, $fp, 120
	ld.d	$a2, $fp, 128
	ld.d	$a0, $fp, 256
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a3
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $a3
	pcaddu18i	$ra, %call36(gx_path_translate)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 28
	beqz	$a0, .LBB4_150
# %bb.146:                              # %cond.true1220
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_stroke)
	jirl	$ra, $ra, 0
	b	.LBB4_127
.LBB4_147:                              # %cond.end814.thread
	ld.d	$a1, $sp, 216
	ld.d	$a7, $sp, 128                   # 8-byte Folded Reload
	sll.d	$a0, $a0, $a7
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	slli.d	$a1, $a1, 20
	srai.d	$a3, $a1, 32
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	mul.d	$a1, $a3, $a1
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	beqz	$a6, .LBB4_151
# %bb.148:                              # %cond.false864
	mul.d	$a2, $a2, $a5
	add.d	$a1, $a1, $a2
	sll.d	$a1, $a1, $a7
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	mul.d	$a2, $a3, $a4
	sll.d	$a2, $a2, $a7
.LBB4_149:                              # %cond.end875
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	b	.LBB4_153
.LBB4_150:                              # %cond.false1222
	ori	$a1, $zero, 819
	move	$a0, $fp
	pcaddu18i	$ra, %call36(gs_fill_trim)
	jirl	$ra, $ra, 0
	b	.LBB4_127
.LBB4_151:
	sll.d	$a1, $a1, $a7
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
.LBB4_152:                              # %if.end878
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
.LBB4_153:                              # %if.end878
	ld.w	$a2, $sp, 232
	st.d	$a0, $a3, 120
	st.d	$a1, $a3, 128
	srli.d	$a1, $a2, 12
	ori	$a0, $zero, 1
	bstrins.d	$a0, $a1, 8, 1
	b	.LBB4_127
.Lfunc_end4:
	.size	gs_type1_interpret, .Lfunc_end4-gs_type1_interpret
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_12-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_12-.LJTI4_0
	.word	.LBB4_14-.LJTI4_0
	.word	.LBB4_32-.LJTI4_0
	.word	.LBB4_28-.LJTI4_0
	.word	.LBB4_20-.LJTI4_0
	.word	.LBB4_38-.LJTI4_0
	.word	.LBB4_31-.LJTI4_0
	.word	.LBB4_121-.LJTI4_0
	.word	.LBB4_123-.LJTI4_0
	.word	.LBB4_44-.LJTI4_0
	.word	.LBB4_23-.LJTI4_0
	.word	.LBB4_125-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_17-.LJTI4_0
	.word	.LBB4_41-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_127-.LJTI4_0
	.word	.LBB4_49-.LJTI4_0
	.word	.LBB4_35-.LJTI4_0
.LJTI4_1:
	.word	.LBB4_12-.LJTI4_1
	.word	.LBB4_12-.LJTI4_1
	.word	.LBB4_12-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_135-.LJTI4_1
	.word	.LBB4_46-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_116-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_117-.LJTI4_1
	.word	.LBB4_138-.LJTI4_1
	.word	.LBB4_120-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_127-.LJTI4_1
	.word	.LBB4_25-.LJTI4_1
                                        # -- End function
	.text
	.globl	gs_type1_pop                    # -- Begin function gs_type1_pop
	.p2align	5
	.type	gs_type1_pop,@function
gs_type1_pop:                           # @gs_type1_pop
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 272
	addi.w	$a2, $a2, -1
	alsl.d	$a3, $a2, $a0, 3
	ld.d	$a3, $a3, 80
	st.w	$a2, $a0, 272
	st.d	$a3, $a1, 0
	move	$a0, $zero
	ret
.Lfunc_end5:
	.size	gs_type1_pop, .Lfunc_end5-gs_type1_pop
                                        # -- End function
	.type	gs_type1_state_sizeof,@object   # @gs_type1_state_sizeof
	.data
	.globl	gs_type1_state_sizeof
	.p2align	2, 0x0
gs_type1_state_sizeof:
	.word	504                             # 0x1f8
	.size	gs_type1_state_sizeof, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
