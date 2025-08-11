	.file	"sradKernel.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function srad_kernel
.LCPI0_0:
	.word	0x38800000                      # float 6.10351563E-5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0xbfb0000000000000              # double -0.0625
.LCPI0_2:
	.dword	0xb690000000000000              # double -7.0064923216240854E-46
.LCPI0_3:
	.dword	0x3ff0000010000000              # double 1.0000000596046448
	.text
	.globl	srad_kernel
	.p2align	5
	.type	srad_kernel,@function
srad_kernel:                            # @srad_kernel
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	lu12i.w	$s7, 2047
	add.d	$s6, $a6, $s7
	lu12i.w	$s5, 2046
	ori	$t2, $s5, 4092
	add.d	$s2, $a0, $t2
	add.d	$a4, $a1, $t2
	add.d	$s3, $a2, $t2
	add.d	$s4, $a3, $t2
	addu16i.d	$a7, $a5, 128
	addi.d	$a7, $a7, -4
	lu12i.w	$t0, 1
	ori	$t1, $t0, 4
	add.d	$s8, $a0, $t1
	add.d	$t3, $a1, $t1
	add.d	$t4, $a2, $t1
	add.d	$t5, $a3, $t1
	add.d	$t6, $a6, $t1
	add.d	$t7, $a6, $t2
	addi.d	$t8, $a5, 4
	sltu	$fp, $s8, $a4
	sltu	$s0, $t3, $s2
	and	$fp, $fp, $s0
	sltu	$s0, $s8, $s3
	sltu	$s1, $t4, $s2
	and	$s0, $s0, $s1
	or	$fp, $fp, $s0
	sltu	$s0, $s8, $s4
	sltu	$s1, $t5, $s2
	and	$s0, $s0, $s1
	or	$fp, $fp, $s0
	sltu	$s0, $s8, $t7
	sltu	$s1, $t6, $s2
	and	$s0, $s0, $s1
	or	$fp, $fp, $s0
	sltu	$s0, $s8, $a7
	sltu	$s1, $t8, $s2
	and	$s0, $s0, $s1
	or	$fp, $fp, $s0
	sltu	$s0, $t3, $s3
	sltu	$s1, $t4, $a4
	and	$s0, $s0, $s1
	or	$fp, $fp, $s0
	sltu	$s0, $t3, $s4
	sltu	$s1, $t5, $a4
	and	$s0, $s0, $s1
	or	$fp, $fp, $s0
	sltu	$s0, $t3, $t7
	sltu	$s1, $t6, $a4
	and	$s0, $s0, $s1
	or	$fp, $fp, $s0
	sltu	$s0, $t3, $a7
	sltu	$s1, $t8, $a4
	and	$s0, $s0, $s1
	or	$fp, $fp, $s0
	sltu	$s0, $t4, $s4
	sltu	$s1, $t5, $s3
	and	$s0, $s0, $s1
	or	$fp, $fp, $s0
	sltu	$s0, $t4, $t7
	sltu	$s1, $t6, $s3
	and	$s0, $s0, $s1
	or	$fp, $fp, $s0
	sltu	$s0, $t4, $a7
	sltu	$s1, $t8, $s3
	and	$s0, $s0, $s1
	or	$fp, $fp, $s0
	sltu	$s0, $t5, $t7
	sltu	$s1, $t6, $s4
	and	$s0, $s0, $s1
	or	$fp, $fp, $s0
	sltu	$s0, $t5, $a7
	sltu	$s1, $t8, $s4
	and	$s0, $s0, $s1
	add.d	$s1, $a0, $s7
	or	$fp, $fp, $s0
	add.d	$ra, $a5, $s7
	sltu	$t7, $t8, $t7
	addu16i.d	$t8, $a6, 128
	sltu	$t6, $t6, $a7
	and	$t6, $t6, $t7
	or	$t6, $fp, $t6
	sltu	$t7, $ra, $t8
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	sltu	$fp, $s6, $a7
	and	$t7, $t7, $fp
	addu16i.d	$fp, $a0, 128
	addi.d	$fp, $fp, -4
	sltu	$fp, $ra, $fp
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	sltu	$s0, $s1, $a7
	and	$fp, $fp, $s0
	or	$t7, $t7, $fp
	addu16i.d	$fp, $a1, 128
	addi.d	$fp, $fp, -4
	sltu	$fp, $ra, $fp
	add.d	$s0, $a1, $s7
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	sltu	$s0, $s0, $a7
	and	$fp, $fp, $s0
	or	$t7, $t7, $fp
	addu16i.d	$fp, $a2, 128
	addi.d	$fp, $fp, -4
	sltu	$fp, $ra, $fp
	add.d	$s0, $a2, $s7
	st.d	$s0, $sp, 112                   # 8-byte Folded Spill
	sltu	$s0, $s0, $a7
	and	$fp, $fp, $s0
	or	$t7, $t7, $fp
	addu16i.d	$fp, $a3, 128
	addi.d	$fp, $fp, -4
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	sltu	$fp, $ra, $fp
	add.d	$s0, $a3, $s7
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	sltu	$a7, $s0, $a7
	and	$a7, $fp, $a7
	or	$a7, $t7, $a7
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a7, $t8, -4
	add.d	$t2, $a5, $t2
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	sltu	$a7, $a5, $a7
	sltu	$t7, $a6, $t2
	and	$a7, $a7, $t7
	sltu	$t8, $a5, $s2
	sltu	$t7, $a0, $t2
	and	$t7, $t8, $t7
	or	$t7, $a7, $t7
	sltu	$a4, $a5, $a4
	sltu	$a7, $a1, $t2
	and	$a4, $a4, $a7
	or	$a4, $t7, $a4
	sltu	$t7, $a5, $s3
	sltu	$a7, $a2, $t2
	and	$a7, $t7, $a7
	add.d	$t7, $a5, $s5
	st.d	$t7, $sp, 152                   # 8-byte Folded Spill
	or	$t7, $a4, $a7
	sltu	$a7, $a5, $s4
	sltu	$a4, $a3, $t2
	and	$a4, $a7, $a4
	or	$a4, $t7, $a4
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	lu12i.w	$a4, 2
	ori	$a4, $a4, 4
	add.d	$s5, $a5, $a4
	add.d	$s6, $a5, $t1
	ori	$a4, $s7, 4
	add.d	$a4, $a6, $a4
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -928
	vldi	$vr2, -944
	vldi	$vr3, -912
	vldi	$vr4, -1168
	andi	$a4, $t6, 1
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	vldi	$vr5, -960
	lu12i.w	$a4, 65536
	lu52i.d	$ra, $a4, 1023
	add.d	$a4, $a6, $t0
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	add.d	$a3, $a3, $t0
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	add.d	$a2, $a2, $t0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	add.d	$a1, $a1, $t0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	add.d	$a0, $a0, $t0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a0, $a5, $t0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s1, $zero, 512
	ori	$a3, $zero, 128
	ori	$t8, $zero, 4092
	lu12i.w	$a7, -1
	lu52i.d	$s2, $zero, 1022
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	st.d	$a5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 224                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_1:                                # %for.cond1.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
                                        #     Child Loop BB0_24 Depth 2
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_48 Depth 3
                                        #     Child Loop BB0_54 Depth 2
                                        #     Child Loop BB0_56 Depth 2
                                        #     Child Loop BB0_58 Depth 2
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_64 Depth 3
	move	$a0, $zero
	move	$a1, $a5
	fmov.s	$fa7, $fa0
	fmov.s	$fa6, $fa0
	.p2align	4, , 16
.LBB0_2:                                # %for.cond4.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
	move	$a2, $zero
	.p2align	4, , 16
.LBB0_3:                                # %for.body6
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.s	$ft0, $a1, $a2
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft0, $ft0
	addi.d	$a2, $a2, 4
	fadd.s	$fa6, $fa6, $ft0
	bne	$a2, $s1, .LBB0_3
# %bb.4:                                # %for.inc10
                                        #   in Loop: Header=BB0_2 Depth=2
	addi.d	$a0, $a0, 1
	add.d	$a1, $a1, $t0
	bne	$a0, $a3, .LBB0_2
# %bb.5:                                # %for.end12
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.s	$ft0, $a5, 0
	fsub.s	$ft1, $ft0, $ft0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	fst.s	$ft1, $a3, 0
	fldx.s	$ft1, $a5, $t0
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.s	$ft2, $a0, %pc_lo12(.LCPI0_0)
	fsub.s	$ft1, $ft1, $ft0
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	fst.s	$ft1, $a2, 0
	fld.s	$ft1, $a5, 0
	fmul.s	$fa7, $fa7, $ft2
	fsub.s	$ft1, $ft1, $ft0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	fst.s	$ft1, $a1, 0
	fld.s	$ft1, $a5, 4
	fmul.s	$fa6, $fa6, $ft2
	fmul.s	$fa7, $fa7, $fa7
	fsub.s	$fa6, $fa6, $fa7
	fsub.s	$ft1, $ft1, $ft0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	fst.s	$ft1, $a0, 0
	fld.s	$ft2, $a3, 0
	fld.s	$ft3, $a2, 0
	fdiv.s	$fa6, $fa6, $fa7
	fld.s	$fa7, $a1, 0
	fmul.s	$ft4, $ft2, $ft2
	fmul.s	$ft5, $ft3, $ft3
	fadd.s	$ft4, $ft4, $ft5
	fmul.s	$ft5, $fa7, $fa7
	fadd.s	$ft4, $ft4, $ft5
	fmul.s	$ft5, $ft1, $ft1
	fadd.s	$ft4, $ft5, $ft4
	fmul.s	$ft5, $ft0, $ft0
	fdiv.s	$ft4, $ft4, $ft5
	fadd.s	$ft2, $ft2, $ft3
	fadd.s	$fa7, $ft2, $fa7
	fadd.s	$fa7, $ft1, $fa7
	fdiv.s	$ft0, $fa7, $ft0
	fcvt.d.s	$ft1, $ft4
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa7, $a0, %pc_lo12(.LCPI0_1)
	fmul.d	$ft1, $ft1, $fa1
	fmul.s	$ft2, $ft0, $ft0
	fcvt.d.s	$ft2, $ft2
	fmul.d	$ft2, $ft2, $fa7
	fadd.d	$ft1, $ft1, $ft2
	fcvt.s.d	$ft1, $ft1
	fcvt.d.s	$ft0, $ft0
	fmul.d	$ft0, $ft0, $fa2
	fadd.d	$ft0, $ft0, $fa3
	fcvt.s.d	$ft0, $ft0
	fmul.s	$ft0, $ft0, $ft0
	fdiv.s	$ft0, $ft1, $ft0
	fsub.s	$ft1, $ft0, $fa6
	fadd.s	$ft0, $fa6, $fa4
	fmul.s	$ft0, $fa6, $ft0
	fdiv.s	$ft1, $ft1, $ft0
	fcvt.d.s	$ft1, $ft1
	fadd.d	$ft2, $ft1, $fa3
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$ft1, $a0, %pc_lo12(.LCPI0_2)
	frecip.d	$ft2, $ft2
	fcvt.s.d	$ft3, $ft2
	fst.s	$ft3, $a6, 0
	fcmp.clt.d	$fcc0, $ft2, $ft1
	pcalau12i	$fp, %pc_hi20(.LCPI0_3)
	fmov.s	$ft3, $fa0
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 104                   # 8-byte Folded Reload
	bcnez	$fcc0, .LBB0_8
# %bb.6:                                # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.d	$ft3, $fp, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $ft2, $ft3
	bcnez	$fcc0, .LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr11, -1168
.LBB0_8:                                # %if.end163.sink.split
                                        #   in Loop: Header=BB0_1 Depth=1
	fst.s	$ft3, $a6, 0
.LBB0_9:                                # %if.end163
                                        #   in Loop: Header=BB0_1 Depth=1
	fldx.s	$ft2, $a5, $t8
	fsub.s	$ft3, $ft2, $ft2
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	fstx.s	$ft3, $a3, $t8
	ori	$s0, $t0, 4092
	fldx.s	$ft3, $a5, $s0
	fsub.s	$ft3, $ft3, $ft2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	fstx.s	$ft3, $a2, $t8
	ori	$a0, $zero, 4088
	fldx.s	$ft3, $a5, $a0
	fsub.s	$ft3, $ft3, $ft2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	fstx.s	$ft3, $a1, $t8
	fldx.s	$ft3, $a5, $t8
	fsub.s	$ft3, $ft3, $ft2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	fstx.s	$ft3, $a0, $t8
	fldx.s	$ft4, $a3, $t8
	fldx.s	$ft5, $a2, $t8
	fldx.s	$ft6, $a1, $t8
	fmul.s	$ft7, $ft4, $ft4
	fmul.s	$ft8, $ft5, $ft5
	fadd.s	$ft7, $ft7, $ft8
	fmul.s	$ft8, $ft6, $ft6
	fadd.s	$ft7, $ft7, $ft8
	fmul.s	$ft8, $ft3, $ft3
	fadd.s	$ft7, $ft8, $ft7
	fmul.s	$ft8, $ft2, $ft2
	fdiv.s	$ft7, $ft7, $ft8
	fadd.s	$ft4, $ft4, $ft5
	fadd.s	$ft4, $ft4, $ft6
	fadd.s	$ft3, $ft3, $ft4
	fdiv.s	$ft2, $ft3, $ft2
	fcvt.d.s	$ft3, $ft7
	fmul.d	$ft3, $ft3, $fa1
	fmul.s	$ft4, $ft2, $ft2
	fcvt.d.s	$ft4, $ft4
	fmul.d	$ft4, $ft4, $fa7
	fadd.d	$ft3, $ft3, $ft4
	fcvt.s.d	$ft3, $ft3
	fcvt.d.s	$ft2, $ft2
	fmul.d	$ft2, $ft2, $fa2
	fadd.d	$ft2, $ft2, $fa3
	fcvt.s.d	$ft2, $ft2
	fmul.s	$ft2, $ft2, $ft2
	fdiv.s	$ft2, $ft3, $ft2
	fsub.s	$ft2, $ft2, $fa6
	fdiv.s	$ft2, $ft2, $ft0
	fcvt.d.s	$ft2, $ft2
	fadd.d	$ft2, $ft2, $fa3
	frecip.d	$ft2, $ft2
	fcvt.s.d	$ft3, $ft2
	fcmp.clt.d	$fcc0, $ft2, $ft1
	fstx.s	$ft3, $a6, $t8
	fmov.s	$ft3, $fa0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	bcnez	$fcc0, .LBB0_12
# %bb.10:                               # %if.else297
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.d	$ft3, $fp, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $ft2, $ft3
	bcnez	$fcc0, .LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr11, -1168
.LBB0_12:                               # %if.end310.sink.split
                                        #   in Loop: Header=BB0_1 Depth=1
	fstx.s	$ft3, $a6, $t8
.LBB0_13:                               # %if.end310
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	fldx.s	$ft2, $a1, $t0
	fld.s	$ft3, $a1, 0
	fsub.s	$ft3, $ft3, $ft2
	fst.s	$ft3, $a4, 0
	fldx.s	$ft3, $a1, $t0
	fsub.s	$ft3, $ft3, $ft2
	fst.s	$ft3, $t2, 0
	fldx.s	$ft3, $a1, $t0
	fsub.s	$ft3, $ft3, $ft2
	fst.s	$ft3, $t6, 0
	fldx.s	$ft3, $a1, $t1
	fsub.s	$ft3, $ft3, $ft2
	fst.s	$ft3, $t7, 0
	fld.s	$ft4, $a4, 0
	fld.s	$ft5, $t2, 0
	fld.s	$ft6, $t6, 0
	fmul.s	$ft7, $ft4, $ft4
	fmul.s	$ft8, $ft5, $ft5
	fadd.s	$ft7, $ft7, $ft8
	fmul.s	$ft8, $ft6, $ft6
	fadd.s	$ft7, $ft7, $ft8
	fmul.s	$ft8, $ft3, $ft3
	fadd.s	$ft7, $ft8, $ft7
	fmul.s	$ft8, $ft2, $ft2
	fdiv.s	$ft7, $ft7, $ft8
	fadd.s	$ft4, $ft4, $ft5
	fadd.s	$ft4, $ft4, $ft6
	fadd.s	$ft3, $ft3, $ft4
	fdiv.s	$ft2, $ft3, $ft2
	fcvt.d.s	$ft3, $ft7
	fmul.d	$ft3, $ft3, $fa1
	fmul.s	$ft4, $ft2, $ft2
	fcvt.d.s	$ft4, $ft4
	fmul.d	$ft4, $ft4, $fa7
	fadd.d	$ft3, $ft3, $ft4
	fcvt.s.d	$ft3, $ft3
	fcvt.d.s	$ft2, $ft2
	fmul.d	$ft2, $ft2, $fa2
	fadd.d	$ft2, $ft2, $fa3
	fcvt.s.d	$ft2, $ft2
	fmul.s	$ft2, $ft2, $ft2
	fdiv.s	$ft2, $ft3, $ft2
	fsub.s	$ft2, $ft2, $fa6
	fdiv.s	$ft2, $ft2, $ft0
	fcvt.d.s	$ft2, $ft2
	fadd.d	$ft2, $ft2, $fa3
	frecip.d	$ft2, $ft2
	fcvt.s.d	$ft3, $ft2
	fcmp.clt.d	$fcc0, $ft2, $ft1
	fst.s	$ft3, $a0, 0
	fmov.s	$ft3, $fa0
	bcnez	$fcc0, .LBB0_16
# %bb.14:                               # %if.else446
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.d	$ft3, $fp, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $ft2, $ft3
	bcnez	$fcc0, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr11, -1168
.LBB0_16:                               # %if.end459.sink.split
                                        #   in Loop: Header=BB0_1 Depth=1
	fst.s	$ft3, $a0, 0
.LBB0_17:                               # %if.end459
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	fldx.s	$ft2, $a1, $s0
	fldx.s	$ft3, $a1, $t8
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $a4, $t8
	fldx.s	$ft3, $a1, $s0
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $t2, $t8
	ori	$a0, $t0, 4088
	fldx.s	$ft3, $a1, $a0
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $t6, $t8
	fldx.s	$ft3, $a1, $s0
	fsub.s	$ft3, $ft3, $ft2
	fstx.s	$ft3, $t7, $t8
	fldx.s	$ft4, $a4, $t8
	fldx.s	$ft5, $t2, $t8
	fldx.s	$ft6, $t6, $t8
	fmul.s	$ft7, $ft4, $ft4
	fmul.s	$ft8, $ft5, $ft5
	fadd.s	$ft7, $ft7, $ft8
	fmul.s	$ft8, $ft6, $ft6
	fadd.s	$ft7, $ft7, $ft8
	fmul.s	$ft8, $ft3, $ft3
	fadd.s	$ft7, $ft8, $ft7
	fmul.s	$ft8, $ft2, $ft2
	fdiv.s	$ft7, $ft7, $ft8
	fadd.s	$ft4, $ft4, $ft5
	fadd.s	$ft4, $ft4, $ft6
	fadd.s	$ft3, $ft3, $ft4
	fdiv.s	$ft2, $ft3, $ft2
	fcvt.d.s	$ft3, $ft7
	fmul.d	$ft3, $ft3, $fa1
	fmul.s	$ft4, $ft2, $ft2
	fcvt.d.s	$ft4, $ft4
	fmul.d	$ft4, $ft4, $fa7
	fadd.d	$ft3, $ft3, $ft4
	fcvt.s.d	$ft3, $ft3
	fcvt.d.s	$ft2, $ft2
	fmul.d	$ft2, $ft2, $fa2
	fadd.d	$ft2, $ft2, $fa3
	fcvt.s.d	$ft2, $ft2
	fmul.s	$ft2, $ft2, $ft2
	fdiv.s	$ft2, $ft3, $ft2
	fsub.s	$ft2, $ft2, $fa6
	fdiv.s	$ft2, $ft2, $ft0
	fcvt.d.s	$ft2, $ft2
	fadd.d	$ft2, $ft2, $fa3
	frecip.d	$ft2, $ft2
	fcvt.s.d	$ft3, $ft2
	fcmp.clt.d	$fcc0, $ft2, $ft1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fst.s	$ft3, $a0, 0
	bceqz	$fcc0, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_1 Depth=1
	movgr2fr.w	$ft2, $zero
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_19:                               # %if.else593
                                        #   in Loop: Header=BB0_1 Depth=1
	fld.d	$ft3, $fp, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $ft2, $ft3
	bcnez	$fcc0, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_1 Depth=1
	vldi	$vr10, -1168
.LBB0_21:                               # %if.end606.sink.split
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fst.s	$ft2, $a0, 0
.LBB0_22:                               # %for.cond613.preheader.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	move	$s0, $zero
	xvreplve0.w	$xr10, $xr6
	xvreplve0.w	$xr11, $xr8
	ori	$t8, $zero, 1
	ld.d	$t7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_24
	.p2align	4, , 16
.LBB0_23:                               # %for.cond.cleanup616
                                        #   in Loop: Header=BB0_24 Depth=2
	addi.d	$t8, $t8, 1
	add.d	$s0, $s0, $t0
	add.d	$t6, $t6, $t0
	add.d	$a1, $a1, $t0
	add.d	$s4, $s4, $t0
	add.d	$s7, $s7, $t0
	add.d	$s3, $s3, $t0
	add.d	$t7, $t7, $t0
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	ori	$a0, $zero, 2047
	lu52i.d	$s2, $zero, 1022
	beq	$t8, $a0, .LBB0_51
.LBB0_24:                               # %for.cond613.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_48 Depth 3
	ori	$a0, $zero, 1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_44
# %bb.25:                               # %vector.body748.preheader
                                        #   in Loop: Header=BB0_24 Depth=2
	ori	$a3, $zero, 1016
	move	$a4, $s0
	b	.LBB0_27
	.p2align	4, , 16
.LBB0_26:                               # %pred.store.continue771
                                        #   in Loop: Header=BB0_27 Depth=3
	addi.d	$a3, $a3, -8
	addi.d	$a4, $a4, 32
	beqz	$a3, .LBB0_43
.LBB0_27:                               # %vector.body748
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvldx	$xr12, $s6, $a4
	add.d	$a0, $a5, $a4
	xvld	$xr13, $a0, 4
	add.d	$a0, $s6, $a4
	xvldx	$xr14, $s5, $a4
	xvfsub.s	$xr13, $xr13, $xr12
	xvstx	$xr13, $s8, $a4
	xvld	$xr15, $a0, -4
	xvfsub.s	$xr14, $xr14, $xr12
	xvld	$xr16, $a0, 4
	xvstx	$xr14, $t3, $a4
	xvfsub.s	$xr15, $xr15, $xr12
	xvstx	$xr15, $t4, $a4
	xvfsub.s	$xr16, $xr16, $xr12
	xvstx	$xr16, $t5, $a4
	xvfmul.s	$xr17, $xr13, $xr13
	xvfmul.s	$xr18, $xr14, $xr14
	xvfadd.s	$xr17, $xr17, $xr18
	xvfmul.s	$xr18, $xr15, $xr15
	xvfadd.s	$xr17, $xr17, $xr18
	xvfmul.s	$xr18, $xr16, $xr16
	xvfadd.s	$xr17, $xr18, $xr17
	xvfmul.s	$xr18, $xr12, $xr12
	xvfdiv.s	$xr17, $xr17, $xr18
	xvfadd.s	$xr13, $xr13, $xr14
	xvfadd.s	$xr13, $xr13, $xr15
	xvfadd.s	$xr13, $xr16, $xr13
	xvfdiv.s	$xr12, $xr13, $xr12
	xvpermi.q	$xr13, $xr17, 1
	vreplvei.w	$vr14, $vr13, 1
	fcvt.d.s	$ft6, $ft6
	vreplvei.w	$vr15, $vr13, 0
	fcvt.d.s	$ft7, $ft7
	xvinsve0.d	$xr15, $xr14, 1
	vreplvei.w	$vr14, $vr13, 2
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr15, $xr14, 2
	vreplvei.w	$vr13, $vr13, 3
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr15, $xr13, 3
	vreplvei.w	$vr13, $vr17, 1
	fcvt.d.s	$ft5, $ft5
	vreplvei.w	$vr14, $vr17, 0
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr14, $xr13, 1
	vreplvei.w	$vr13, $vr17, 2
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr14, $xr13, 2
	vreplvei.w	$vr13, $vr17, 3
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr14, $xr13, 3
	xvreplgr2vr.d	$xr13, $s2
	xvfmul.d	$xr14, $xr14, $xr13
	xvfmul.d	$xr13, $xr15, $xr13
	xvfmul.s	$xr15, $xr12, $xr12
	xvpermi.q	$xr16, $xr15, 1
	vreplvei.w	$vr17, $vr16, 1
	fcvt.d.s	$ft9, $ft9
	vreplvei.w	$vr18, $vr16, 0
	fcvt.d.s	$ft10, $ft10
	xvinsve0.d	$xr18, $xr17, 1
	vreplvei.w	$vr17, $vr16, 2
	fcvt.d.s	$ft9, $ft9
	xvinsve0.d	$xr18, $xr17, 2
	vreplvei.w	$vr16, $vr16, 3
	fcvt.d.s	$ft8, $ft8
	xvinsve0.d	$xr18, $xr16, 3
	vreplvei.w	$vr16, $vr15, 1
	fcvt.d.s	$ft8, $ft8
	vreplvei.w	$vr17, $vr15, 0
	fcvt.d.s	$ft9, $ft9
	xvinsve0.d	$xr17, $xr16, 1
	vreplvei.w	$vr16, $vr15, 2
	fcvt.d.s	$ft8, $ft8
	xvinsve0.d	$xr17, $xr16, 2
	vreplvei.w	$vr15, $vr15, 3
	fcvt.d.s	$ft7, $ft7
	xvinsve0.d	$xr17, $xr15, 3
	lu52i.d	$a0, $zero, -1029
	xvreplgr2vr.d	$xr15, $a0
	xvfmul.d	$xr16, $xr17, $xr15
	xvfmul.d	$xr15, $xr18, $xr15
	xvfadd.d	$xr15, $xr13, $xr15
	xvfadd.d	$xr14, $xr14, $xr16
	xvpickve.d	$xr13, $xr14, 1
	fcvt.s.d	$ft8, $ft5
	xvpickve.d	$xr13, $xr14, 0
	fcvt.s.d	$ft5, $ft5
	xvinsve0.w	$xr13, $xr16, 1
	xvpickve.d	$xr16, $xr14, 2
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr13, $xr16, 2
	xvpickve.d	$xr14, $xr14, 3
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr13, $xr14, 3
	xvpickve.d	$xr14, $xr15, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr13, $xr14, 4
	xvpickve.d	$xr14, $xr15, 1
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr13, $xr14, 5
	xvpickve.d	$xr14, $xr15, 2
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr13, $xr14, 6
	xvpickve.d	$xr14, $xr15, 3
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr13, $xr14, 7
	xvpermi.q	$xr14, $xr12, 1
	vreplvei.w	$vr15, $vr14, 1
	fcvt.d.s	$ft7, $ft7
	vreplvei.w	$vr16, $vr14, 0
	fcvt.d.s	$ft8, $ft8
	xvinsve0.d	$xr16, $xr15, 1
	vreplvei.w	$vr15, $vr14, 2
	fcvt.d.s	$ft7, $ft7
	xvinsve0.d	$xr16, $xr15, 2
	vreplvei.w	$vr14, $vr14, 3
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr16, $xr14, 3
	vreplvei.w	$vr14, $vr12, 1
	fcvt.d.s	$ft6, $ft6
	vreplvei.w	$vr15, $vr12, 0
	fcvt.d.s	$ft7, $ft7
	xvinsve0.d	$xr15, $xr14, 1
	vreplvei.w	$vr14, $vr12, 2
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr15, $xr14, 2
	vreplvei.w	$vr12, $vr12, 3
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr15, $xr12, 3
	lu52i.d	$a0, $zero, 1021
	xvreplgr2vr.d	$xr12, $a0
	xvfmul.d	$xr14, $xr15, $xr12
	xvfmul.d	$xr15, $xr16, $xr12
	lu52i.d	$a0, $zero, 1023
	xvreplgr2vr.d	$xr12, $a0
	xvfadd.d	$xr15, $xr15, $xr12
	xvfadd.d	$xr14, $xr14, $xr12
	xvpickve.d	$xr16, $xr14, 1
	fcvt.s.d	$ft8, $ft8
	xvpickve.d	$xr17, $xr14, 0
	fcvt.s.d	$ft9, $ft9
	xvinsve0.w	$xr17, $xr16, 1
	xvpickve.d	$xr16, $xr14, 2
	fcvt.s.d	$ft8, $ft8
	xvinsve0.w	$xr17, $xr16, 2
	xvpickve.d	$xr14, $xr14, 3
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr17, $xr14, 3
	xvpickve.d	$xr14, $xr15, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr17, $xr14, 4
	xvpickve.d	$xr14, $xr15, 1
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr17, $xr14, 5
	xvpickve.d	$xr14, $xr15, 2
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr17, $xr14, 6
	xvpickve.d	$xr14, $xr15, 3
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr17, $xr14, 7
	xvfmul.s	$xr14, $xr17, $xr17
	xvfdiv.s	$xr13, $xr13, $xr14
	xvfsub.s	$xr13, $xr13, $xr10
	xvfdiv.s	$xr13, $xr13, $xr11
	xvpermi.q	$xr14, $xr13, 1
	vreplvei.w	$vr15, $vr14, 1
	fcvt.d.s	$ft7, $ft7
	vreplvei.w	$vr16, $vr14, 0
	fcvt.d.s	$ft8, $ft8
	xvinsve0.d	$xr16, $xr15, 1
	vreplvei.w	$vr15, $vr14, 2
	fcvt.d.s	$ft7, $ft7
	xvinsve0.d	$xr16, $xr15, 2
	vreplvei.w	$vr14, $vr14, 3
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr16, $xr14, 3
	vreplvei.w	$vr14, $vr13, 1
	fcvt.d.s	$ft6, $ft6
	vreplvei.w	$vr15, $vr13, 0
	fcvt.d.s	$ft7, $ft7
	xvinsve0.d	$xr15, $xr14, 1
	vreplvei.w	$vr14, $vr13, 2
	fcvt.d.s	$ft6, $ft6
	xvinsve0.d	$xr15, $xr14, 2
	vreplvei.w	$vr13, $vr13, 3
	fcvt.d.s	$ft5, $ft5
	xvinsve0.d	$xr15, $xr13, 3
	xvfadd.d	$xr13, $xr15, $xr12
	xvfadd.d	$xr12, $xr16, $xr12
	xvfrecip.d	$xr12, $xr12
	xvfrecip.d	$xr13, $xr13
	xvpickve.d	$xr14, $xr13, 1
	fcvt.s.d	$ft6, $ft6
	xvpickve.d	$xr15, $xr13, 0
	fcvt.s.d	$ft7, $ft7
	xvinsve0.w	$xr15, $xr14, 1
	xvpickve.d	$xr14, $xr13, 2
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr15, $xr14, 2
	xvpickve.d	$xr14, $xr13, 3
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr15, $xr14, 3
	xvpickve.d	$xr14, $xr12, 0
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr15, $xr14, 4
	xvpickve.d	$xr14, $xr12, 1
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr15, $xr14, 5
	xvpickve.d	$xr14, $xr12, 2
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr15, $xr14, 6
	xvpickve.d	$xr14, $xr12, 3
	fcvt.s.d	$ft6, $ft6
	xvinsve0.w	$xr15, $xr14, 7
	add.d	$a0, $a6, $a4
	xvstx	$xr15, $a0, $t1
	lu52i.d	$a2, $zero, -1175
	xvreplgr2vr.d	$xr14, $a2
	xvfcmp.clt.d	$xr15, $xr13, $xr14
	xvpickve2gr.d	$a2, $xr15, 0
	xvinsgr2vr.w	$xr16, $a2, 0
	xvpickve2gr.d	$a2, $xr15, 1
	xvinsgr2vr.w	$xr16, $a2, 1
	xvpickve2gr.d	$a2, $xr15, 2
	xvinsgr2vr.w	$xr16, $a2, 2
	xvpickve2gr.d	$a2, $xr15, 3
	xvinsgr2vr.w	$xr16, $a2, 3
	xvfcmp.clt.d	$xr14, $xr12, $xr14
	xvpickve2gr.d	$a2, $xr14, 0
	xvinsgr2vr.w	$xr16, $a2, 4
	xvpickve2gr.d	$a2, $xr14, 1
	xvinsgr2vr.w	$xr16, $a2, 5
	xvpickve2gr.d	$a2, $xr14, 2
	xvinsgr2vr.w	$xr16, $a2, 6
	xvpickve2gr.d	$a2, $xr14, 3
	xvinsgr2vr.w	$xr16, $a2, 7
	xvreplgr2vr.d	$xr14, $ra
	xvfcmp.clt.d	$xr13, $xr14, $xr13
	xvpickve2gr.d	$a2, $xr13, 0
	xvinsgr2vr.w	$xr15, $a2, 0
	xvpickve2gr.d	$a2, $xr13, 1
	xvinsgr2vr.w	$xr15, $a2, 1
	xvpickve2gr.d	$a2, $xr13, 2
	xvinsgr2vr.w	$xr15, $a2, 2
	xvpickve2gr.d	$a2, $xr13, 3
	xvinsgr2vr.w	$xr15, $a2, 3
	xvfcmp.clt.d	$xr12, $xr14, $xr12
	xvpickve2gr.d	$a2, $xr12, 0
	xvinsgr2vr.w	$xr15, $a2, 4
	xvpickve2gr.d	$a2, $xr12, 1
	xvinsgr2vr.w	$xr15, $a2, 5
	xvpickve2gr.d	$a2, $xr12, 2
	xvinsgr2vr.w	$xr15, $a2, 6
	xvpickve2gr.d	$a2, $xr12, 3
	xvinsgr2vr.w	$xr15, $a2, 7
	xvor.v	$xr14, $xr15, $xr16
	xvpickve2gr.w	$a2, $xr14, 0
	lu12i.w	$t2, 260096
	xvreplgr2vr.w	$xr12, $t2
	xvrepli.b	$xr13, 0
	andi	$t2, $a2, 1
	xvbitsel.v	$xr12, $xr12, $xr13, $xr16
	beqz	$t2, .LBB0_29
# %bb.28:                               # %pred.store.if
                                        #   in Loop: Header=BB0_27 Depth=3
	add.d	$t2, $a0, $t1
	xvstelm.w	$xr12, $t2, 0, 0
.LBB0_29:                               # %pred.store.continue
                                        #   in Loop: Header=BB0_27 Depth=3
	vinsgr2vr.h	$vr13, $a2, 0
	xvpickve2gr.w	$a2, $xr14, 1
	vinsgr2vr.h	$vr13, $a2, 1
	xvpickve2gr.w	$a2, $xr14, 2
	vinsgr2vr.h	$vr13, $a2, 2
	xvpickve2gr.w	$a2, $xr14, 3
	vinsgr2vr.h	$vr13, $a2, 3
	xvpickve2gr.w	$a2, $xr14, 4
	vinsgr2vr.h	$vr13, $a2, 4
	xvpickve2gr.w	$a2, $xr14, 5
	vinsgr2vr.h	$vr13, $a2, 5
	xvpickve2gr.w	$a2, $xr14, 6
	vinsgr2vr.h	$vr13, $a2, 6
	xvpickve2gr.w	$a2, $xr14, 7
	vinsgr2vr.h	$vr13, $a2, 7
	vpickve2gr.h	$a2, $vr13, 1
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_36
# %bb.30:                               # %pred.store.continue759
                                        #   in Loop: Header=BB0_27 Depth=3
	vpickve2gr.h	$a2, $vr13, 2
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_37
.LBB0_31:                               # %pred.store.continue761
                                        #   in Loop: Header=BB0_27 Depth=3
	vpickve2gr.h	$a2, $vr13, 3
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_38
.LBB0_32:                               # %pred.store.continue763
                                        #   in Loop: Header=BB0_27 Depth=3
	vpickve2gr.h	$a2, $vr13, 4
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_39
.LBB0_33:                               # %pred.store.continue765
                                        #   in Loop: Header=BB0_27 Depth=3
	vpickve2gr.h	$a2, $vr13, 5
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_40
.LBB0_34:                               # %pred.store.continue767
                                        #   in Loop: Header=BB0_27 Depth=3
	vpickve2gr.h	$a2, $vr13, 6
	andi	$a2, $a2, 1
	bnez	$a2, .LBB0_41
.LBB0_35:                               # %pred.store.continue769
                                        #   in Loop: Header=BB0_27 Depth=3
	vpickve2gr.h	$a2, $vr13, 7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_26
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_36:                               # %pred.store.if758
                                        #   in Loop: Header=BB0_27 Depth=3
	ori	$a2, $t0, 8
	add.d	$a2, $a0, $a2
	xvstelm.w	$xr12, $a2, 0, 1
	vpickve2gr.h	$a2, $vr13, 2
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_31
.LBB0_37:                               # %pred.store.if760
                                        #   in Loop: Header=BB0_27 Depth=3
	ori	$a2, $t0, 12
	add.d	$a2, $a0, $a2
	xvstelm.w	$xr12, $a2, 0, 2
	vpickve2gr.h	$a2, $vr13, 3
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_32
.LBB0_38:                               # %pred.store.if762
                                        #   in Loop: Header=BB0_27 Depth=3
	ori	$a2, $t0, 16
	add.d	$a2, $a0, $a2
	xvstelm.w	$xr12, $a2, 0, 3
	vpickve2gr.h	$a2, $vr13, 4
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_33
.LBB0_39:                               # %pred.store.if764
                                        #   in Loop: Header=BB0_27 Depth=3
	ori	$a2, $t0, 20
	add.d	$a2, $a0, $a2
	xvstelm.w	$xr12, $a2, 0, 4
	vpickve2gr.h	$a2, $vr13, 5
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_34
.LBB0_40:                               # %pred.store.if766
                                        #   in Loop: Header=BB0_27 Depth=3
	ori	$a2, $t0, 24
	add.d	$a2, $a0, $a2
	xvstelm.w	$xr12, $a2, 0, 5
	vpickve2gr.h	$a2, $vr13, 6
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_35
.LBB0_41:                               # %pred.store.if768
                                        #   in Loop: Header=BB0_27 Depth=3
	ori	$a2, $t0, 28
	add.d	$a2, $a0, $a2
	xvstelm.w	$xr12, $a2, 0, 6
	vpickve2gr.h	$a2, $vr13, 7
	andi	$a2, $a2, 1
	beqz	$a2, .LBB0_26
.LBB0_42:                               # %pred.store.if770
                                        #   in Loop: Header=BB0_27 Depth=3
	ori	$a2, $t0, 32
	add.d	$a0, $a0, $a2
	xvstelm.w	$xr12, $a0, 0, 7
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_43:                               #   in Loop: Header=BB0_24 Depth=2
	ori	$a0, $zero, 1017
.LBB0_44:                               # %for.body617.preheader
                                        #   in Loop: Header=BB0_24 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 4092
	move	$a3, $t7
	move	$a4, $s3
	move	$a5, $s7
	move	$a6, $s4
	move	$s8, $a1
	move	$s2, $t6
	b	.LBB0_48
	.p2align	4, , 16
.LBB0_45:                               #   in Loop: Header=BB0_48 Depth=3
	movgr2fr.w	$ft4, $zero
.LBB0_46:                               # %for.inc773.sink.split
                                        #   in Loop: Header=BB0_48 Depth=3
	fstx.s	$ft4, $s2, $a0
.LBB0_47:                               # %for.inc773
                                        #   in Loop: Header=BB0_48 Depth=3
	addi.d	$s2, $s2, 4
	addi.d	$s8, $s8, 4
	addi.d	$a6, $a6, 4
	addi.d	$a5, $a5, 4
	addi.d	$a2, $a2, -4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	beq	$a0, $a2, .LBB0_23
.LBB0_48:                               # %for.body617
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t2, $a3, $a0
	fldx.s	$ft4, $a3, $a0
	fldx.s	$ft5, $t2, $a7
	fsub.s	$ft5, $ft5, $ft4
	fstx.s	$ft5, $a4, $a0
	fldx.s	$ft5, $t2, $t0
	fsub.s	$ft5, $ft5, $ft4
	fstx.s	$ft5, $a5, $a0
	fld.s	$ft5, $t2, -4
	fsub.s	$ft5, $ft5, $ft4
	fstx.s	$ft5, $a6, $a0
	fld.s	$ft5, $t2, 4
	fsub.s	$ft5, $ft5, $ft4
	fstx.s	$ft5, $s8, $a0
	fldx.s	$ft6, $a4, $a0
	fldx.s	$ft7, $a5, $a0
	fldx.s	$ft8, $a6, $a0
	fmul.s	$ft9, $ft6, $ft6
	fmul.s	$ft10, $ft7, $ft7
	fadd.s	$ft9, $ft9, $ft10
	fmul.s	$ft10, $ft8, $ft8
	fadd.s	$ft9, $ft9, $ft10
	fmul.s	$ft10, $ft5, $ft5
	fadd.s	$ft9, $ft10, $ft9
	fmul.s	$ft10, $ft4, $ft4
	fdiv.s	$ft9, $ft9, $ft10
	fadd.s	$ft6, $ft6, $ft7
	fadd.s	$ft6, $ft6, $ft8
	fadd.s	$ft5, $ft5, $ft6
	fdiv.s	$ft4, $ft5, $ft4
	fcvt.d.s	$ft5, $ft9
	fmul.d	$ft5, $ft5, $fa1
	fmul.s	$ft6, $ft4, $ft4
	fcvt.d.s	$ft6, $ft6
	fmul.d	$ft6, $ft6, $fa7
	fadd.d	$ft5, $ft5, $ft6
	fcvt.s.d	$ft5, $ft5
	fcvt.d.s	$ft4, $ft4
	fmul.d	$ft4, $ft4, $fa2
	fadd.d	$ft4, $ft4, $fa3
	fcvt.s.d	$ft4, $ft4
	fmul.s	$ft4, $ft4, $ft4
	fdiv.s	$ft4, $ft5, $ft4
	fsub.s	$ft4, $ft4, $fa6
	fdiv.s	$ft4, $ft4, $ft0
	fcvt.d.s	$ft4, $ft4
	fadd.d	$ft4, $ft4, $fa3
	frecip.d	$ft4, $ft4
	fcvt.s.d	$ft5, $ft4
	fcmp.clt.d	$fcc0, $ft4, $ft1
	fstx.s	$ft5, $s2, $a0
	bcnez	$fcc0, .LBB0_45
# %bb.49:                               # %if.else759
                                        #   in Loop: Header=BB0_48 Depth=3
	fld.d	$ft5, $fp, %pc_lo12(.LCPI0_3)
	fcmp.cule.d	$fcc0, $ft4, $ft5
	bcnez	$fcc0, .LBB0_47
# %bb.50:                               #   in Loop: Header=BB0_48 Depth=3
	vldi	$vr12, -1168
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_51:                               # %vector.memcheck632
                                        #   in Loop: Header=BB0_1 Depth=1
	lu52i.d	$a0, $zero, 1020
	xvreplgr2vr.d	$xr6, $a0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_53
# %bb.52:                               #   in Loop: Header=BB0_1 Depth=1
	move	$a3, $zero
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_53:                               # %vector.body660.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	ori	$a3, $zero, 1016
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	move	$a4, $fp
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	move	$t7, $s0
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	move	$a2, $s2
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	move	$t2, $s3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ori	$a1, $zero, 1016
	ld.d	$t8, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_54:                               # %vector.body660
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr7, $t8, -4
	xvld	$xr8, $a4, 0
	xvld	$xr9, $t7, 0
	xvld	$xr10, $t8, 0
	xvfmul.s	$xr8, $xr7, $xr8
	xvld	$xr11, $a2, 0
	xvfmul.s	$xr9, $xr7, $xr9
	xvfadd.s	$xr8, $xr8, $xr9
	xvld	$xr9, $t2, 0
	xvfmul.s	$xr7, $xr7, $xr11
	xvld	$xr11, $a0, 0
	xvfadd.s	$xr7, $xr8, $xr7
	xvfmul.s	$xr8, $xr10, $xr9
	xvfadd.s	$xr7, $xr7, $xr8
	xvpermi.q	$xr9, $xr11, 1
	vreplvei.w	$vr8, $vr9, 1
	fcvt.d.s	$ft2, $ft0
	vreplvei.w	$vr8, $vr9, 0
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr8, $xr10, 1
	vreplvei.w	$vr10, $vr9, 2
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr8, $xr10, 2
	vreplvei.w	$vr9, $vr9, 3
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr8, $xr9, 3
	vreplvei.w	$vr9, $vr11, 1
	fcvt.d.s	$ft2, $ft1
	vreplvei.w	$vr9, $vr11, 0
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr9, $xr10, 1
	vreplvei.w	$vr10, $vr11, 2
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr9, $xr10, 2
	vreplvei.w	$vr10, $vr11, 3
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr9, $xr10, 3
	xvpermi.q	$xr10, $xr7, 1
	vreplvei.w	$vr11, $vr10, 1
	fcvt.d.s	$ft3, $ft3
	vreplvei.w	$vr12, $vr10, 0
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr12, $xr11, 1
	vreplvei.w	$vr11, $vr10, 2
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr12, $xr11, 2
	vreplvei.w	$vr10, $vr10, 3
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr12, $xr10, 3
	vreplvei.w	$vr10, $vr7, 1
	fcvt.d.s	$ft2, $ft2
	vreplvei.w	$vr11, $vr7, 0
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr11, $xr10, 1
	vreplvei.w	$vr10, $vr7, 2
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr11, $xr10, 2
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr11, $xr7, 3
	xvfmul.d	$xr7, $xr11, $xr6
	xvfmul.d	$xr10, $xr12, $xr6
	xvfadd.d	$xr8, $xr10, $xr8
	xvfadd.d	$xr7, $xr7, $xr9
	xvpickve.d	$xr9, $xr7, 1
	fcvt.s.d	$ft1, $ft1
	xvpickve.d	$xr10, $xr7, 0
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr10, $xr9, 1
	xvpickve.d	$xr9, $xr7, 2
	fcvt.s.d	$ft1, $ft1
	xvinsve0.w	$xr10, $xr9, 2
	xvpickve.d	$xr7, $xr7, 3
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 3
	xvpickve.d	$xr7, $xr8, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 4
	xvpickve.d	$xr7, $xr8, 1
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 5
	xvpickve.d	$xr7, $xr8, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 6
	xvpickve.d	$xr7, $xr8, 3
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 7
	xvst	$xr10, $a0, 0
	addi.d	$t8, $t8, 32
	addi.d	$a1, $a1, -8
	addi.d	$a0, $a0, 32
	addi.d	$t2, $t2, 32
	addi.d	$a2, $a2, 32
	addi.d	$t7, $t7, 32
	addi.d	$a4, $a4, 32
	bnez	$a1, .LBB0_54
.LBB0_55:                               # %for.body785.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	slli.d	$a0, $a3, 2
	addi.d	$a1, $a3, -1023
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	move	$a3, $fp
	move	$a4, $s0
	move	$t8, $s2
	move	$t7, $s3
	ld.d	$t6, $sp, 88                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_56:                               # %for.body785
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t2, $a2, $a0
	fld.s	$fa7, $t2, -4
	fldx.s	$ft0, $a3, $a0
	fldx.s	$ft1, $a4, $a0
	fldx.s	$ft2, $a2, $a0
	fmul.s	$ft0, $fa7, $ft0
	fldx.s	$ft3, $t8, $a0
	fmul.s	$ft1, $fa7, $ft1
	fadd.s	$ft0, $ft0, $ft1
	fldx.s	$ft1, $t7, $a0
	fmul.s	$fa7, $fa7, $ft3
	fldx.s	$ft3, $t6, $a0
	fadd.s	$fa7, $ft0, $fa7
	fmul.s	$ft0, $ft2, $ft1
	fadd.s	$fa7, $fa7, $ft0
	fcvt.d.s	$ft0, $ft3
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft0
	fcvt.s.d	$fa7, $fa7
	fstx.s	$fa7, $t6, $a0
	addi.d	$t6, $t6, 4
	addi.d	$t7, $t7, 4
	addi.d	$t8, $t8, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_56
# %bb.57:                               # %for.cond.cleanup784
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	fld.s	$fa7, $a0, 0
	ori	$a0, $zero, 4092
	fldx.s	$ft0, $fp, $a0
	fldx.s	$ft1, $s0, $a0
	move	$a3, $zero
	fmul.s	$ft0, $fa7, $ft0
	fldx.s	$ft2, $s2, $a0
	fmul.s	$ft1, $fa7, $ft1
	fadd.s	$ft0, $ft0, $ft1
	fldx.s	$ft1, $s3, $a0
	fmul.s	$ft2, $fa7, $ft2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	fldx.s	$ft3, $a0, $a1
	fadd.s	$ft0, $ft0, $ft2
	fmul.s	$fa7, $fa7, $ft1
	fadd.s	$fa7, $ft0, $fa7
	fcvt.d.s	$ft0, $ft3
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft0
	fcvt.s.d	$fa7, $fa7
	fstx.s	$fa7, $a0, $a1
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_58:                               # %for.cond902.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_61 Depth 3
                                        #       Child Loop BB0_64 Depth 3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=2
	move	$s3, $zero
	b	.LBB0_63
	.p2align	4, , 16
.LBB0_60:                               # %vector.body.preheader
                                        #   in Loop: Header=BB0_58 Depth=2
	ori	$s3, $zero, 1016
	move	$s4, $a4
	move	$s7, $t7
	move	$s8, $t8
	move	$fp, $a2
	move	$s0, $a5
	ori	$a0, $zero, 1016
	move	$s2, $a6
	.p2align	4, , 16
.LBB0_61:                               # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr7, $s2, 0
	xvld	$xr8, $s4, 0
	xvldx	$xr9, $s2, $t0
	xvld	$xr10, $s7, 0
	xvld	$xr11, $s2, 4
	xvfmul.s	$xr8, $xr7, $xr8
	xvld	$xr12, $s8, 0
	xvfmul.s	$xr9, $xr9, $xr10
	xvfadd.s	$xr8, $xr8, $xr9
	xvld	$xr9, $fp, 0
	xvfmul.s	$xr7, $xr7, $xr12
	xvld	$xr10, $s0, 0
	xvfadd.s	$xr7, $xr8, $xr7
	xvfmul.s	$xr8, $xr11, $xr9
	xvfadd.s	$xr7, $xr7, $xr8
	xvpermi.q	$xr9, $xr10, 1
	vreplvei.w	$vr8, $vr9, 1
	fcvt.d.s	$ft3, $ft0
	vreplvei.w	$vr8, $vr9, 0
	fcvt.d.s	$ft0, $ft0
	xvinsve0.d	$xr8, $xr11, 1
	vreplvei.w	$vr11, $vr9, 2
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr8, $xr11, 2
	vreplvei.w	$vr9, $vr9, 3
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr8, $xr9, 3
	vreplvei.w	$vr9, $vr10, 1
	fcvt.d.s	$ft3, $ft1
	vreplvei.w	$vr9, $vr10, 0
	fcvt.d.s	$ft1, $ft1
	xvinsve0.d	$xr9, $xr11, 1
	vreplvei.w	$vr11, $vr10, 2
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr9, $xr11, 2
	vreplvei.w	$vr10, $vr10, 3
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr9, $xr10, 3
	xvpermi.q	$xr10, $xr7, 1
	vreplvei.w	$vr11, $vr10, 1
	fcvt.d.s	$ft3, $ft3
	vreplvei.w	$vr12, $vr10, 0
	fcvt.d.s	$ft4, $ft4
	xvinsve0.d	$xr12, $xr11, 1
	vreplvei.w	$vr11, $vr10, 2
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr12, $xr11, 2
	vreplvei.w	$vr10, $vr10, 3
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr12, $xr10, 3
	vreplvei.w	$vr10, $vr7, 1
	fcvt.d.s	$ft2, $ft2
	vreplvei.w	$vr11, $vr7, 0
	fcvt.d.s	$ft3, $ft3
	xvinsve0.d	$xr11, $xr10, 1
	vreplvei.w	$vr10, $vr7, 2
	fcvt.d.s	$ft2, $ft2
	xvinsve0.d	$xr11, $xr10, 2
	vreplvei.w	$vr7, $vr7, 3
	fcvt.d.s	$fa7, $fa7
	xvinsve0.d	$xr11, $xr7, 3
	xvfmul.d	$xr7, $xr11, $xr6
	xvfmul.d	$xr10, $xr12, $xr6
	xvfadd.d	$xr8, $xr10, $xr8
	xvfadd.d	$xr7, $xr7, $xr9
	xvpickve.d	$xr9, $xr7, 1
	fcvt.s.d	$ft1, $ft1
	xvpickve.d	$xr10, $xr7, 0
	fcvt.s.d	$ft2, $ft2
	xvinsve0.w	$xr10, $xr9, 1
	xvpickve.d	$xr9, $xr7, 2
	fcvt.s.d	$ft1, $ft1
	xvinsve0.w	$xr10, $xr9, 2
	xvpickve.d	$xr7, $xr7, 3
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 3
	xvpickve.d	$xr7, $xr8, 0
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 4
	xvpickve.d	$xr7, $xr8, 1
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 5
	xvpickve.d	$xr7, $xr8, 2
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 6
	xvpickve.d	$xr7, $xr8, 3
	fcvt.s.d	$fa7, $fa7
	xvinsve0.w	$xr10, $xr7, 7
	xvst	$xr10, $s0, 0
	addi.d	$s2, $s2, 32
	addi.d	$a0, $a0, -8
	addi.d	$s0, $s0, 32
	addi.d	$fp, $fp, 32
	addi.d	$s8, $s8, 32
	addi.d	$s7, $s7, 32
	addi.d	$s4, $s4, 32
	bnez	$a0, .LBB0_61
# %bb.62:                               #   in Loop: Header=BB0_58 Depth=2
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
.LBB0_63:                               # %for.body906.preheader
                                        #   in Loop: Header=BB0_58 Depth=2
	slli.d	$a0, $s3, 2
	addi.d	$a1, $s3, -1023
	move	$t6, $a6
	move	$fp, $a4
	move	$s0, $t7
	move	$s2, $t8
	move	$s3, $a2
	move	$s4, $a5
	.p2align	4, , 16
.LBB0_64:                               # %for.body906
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_58 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t2, $t6, $a0
	fldx.s	$fa7, $t2, $t0
	fldx.s	$ft0, $s0, $a0
	fldx.s	$ft1, $t6, $a0
	fldx.s	$ft2, $fp, $a0
	fld.s	$ft3, $t2, 4
	fmul.s	$fa7, $fa7, $ft0
	fldx.s	$ft0, $s2, $a0
	fmul.s	$ft2, $ft1, $ft2
	fadd.s	$fa7, $ft2, $fa7
	fldx.s	$ft2, $s3, $a0
	fmul.s	$ft0, $ft1, $ft0
	fldx.s	$ft1, $s4, $a0
	fadd.s	$fa7, $fa7, $ft0
	fmul.s	$ft0, $ft3, $ft2
	fadd.s	$fa7, $fa7, $ft0
	fcvt.d.s	$ft0, $ft1
	fcvt.d.s	$fa7, $fa7
	fmul.d	$fa7, $fa7, $fa5
	fadd.d	$fa7, $fa7, $ft0
	fcvt.s.d	$fa7, $fa7
	fstx.s	$fa7, $s4, $a0
	addi.d	$s4, $s4, 4
	addi.d	$s3, $s3, 4
	addi.d	$s2, $s2, 4
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, 4
	addi.d	$a1, $a1, 1
	addi.d	$t6, $t6, 4
	bnez	$a1, .LBB0_64
# %bb.65:                               # %for.cond.cleanup905
                                        #   in Loop: Header=BB0_58 Depth=2
	addi.d	$a3, $a3, 1
	add.d	$a6, $a6, $t0
	add.d	$a5, $a5, $t0
	add.d	$a2, $a2, $t0
	add.d	$t8, $t8, $t0
	add.d	$t7, $t7, $t0
	add.d	$a4, $a4, $t0
	ori	$a0, $zero, 2047
	bne	$a3, $a0, .LBB0_58
# %bb.66:                               # %for.cond.cleanup899
                                        #   in Loop: Header=BB0_1 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	ld.d	$a6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 208                   # 8-byte Folded Reload
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a3, $zero, 128
	ori	$t8, $zero, 4092
	ori	$a1, $zero, 10
	lu52i.d	$s2, $zero, 1022
	bne	$a0, $a1, .LBB0_1
# %bb.67:                               # %for.end969
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.Lfunc_end0:
	.size	srad_kernel, .Lfunc_end0-srad_kernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
