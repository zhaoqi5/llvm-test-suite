	.file	"XzIn.c"
	.text
	.globl	Xz_ReadHeader                   # -- Begin function Xz_ReadHeader
	.p2align	5
	.type	Xz_ReadHeader,@function
Xz_ReadHeader:                          # @Xz_ReadHeader
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	move	$a4, $a1
	move	$fp, $a0
	addi.d	$a1, $sp, 4
	ori	$a2, $zero, 12
	ori	$a3, $zero, 17
	move	$a0, $a4
	pcaddu18i	$ra, %call36(SeqInStream_Read2)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_2
.LBB0_1:                                # %cleanup8
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB0_2:                                # %cleanup.cont
	pcalau12i	$a0, %got_pc_hi20(XZ_SIG)
	ld.d	$a1, $a0, %got_pc_lo12(XZ_SIG)
	addi.d	$a0, $sp, 4
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 17
	bnez	$a1, .LBB0_1
# %bb.3:                                # %if.end5
	addi.d	$a1, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(Xz_ParseHeader)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	Xz_ReadHeader, .Lfunc_end0-Xz_ReadHeader
                                        # -- End function
	.globl	XzBlock_ReadHeader              # -- Begin function XzBlock_ReadHeader
	.p2align	5
	.type	XzBlock_ReadHeader,@function
XzBlock_ReadHeader:                     # @XzBlock_ReadHeader
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1072
	st.d	$ra, $sp, 1064                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1032                  # 8-byte Folded Spill
	move	$s1, $a3
	move	$s2, $a2
	move	$s0, $a1
	move	$fp, $a0
	st.w	$zero, $a3, 0
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(SeqInStream_ReadByte)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_3
# %bb.1:                                # %if.end5
	ld.bu	$a0, $sp, 8
	slli.d	$a0, $a0, 2
	addi.d	$a1, $a0, 4
	st.w	$zero, $s2, 0
	st.w	$a1, $s1, 0
	addi.d	$a1, $sp, 9
	addi.d	$a2, $a0, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(SeqInStream_Read)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_3
# %bb.2:                                # %cleanup.cont15
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(XzBlock_Parse)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %cleanup18
	ld.d	$s2, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1064                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1072
	ret
.Lfunc_end1:
	.size	XzBlock_ReadHeader, .Lfunc_end1-XzBlock_ReadHeader
                                        # -- End function
	.globl	Xz_GetUnpackSize                # -- Begin function Xz_GetUnpackSize
	.p2align	5
	.type	Xz_GetUnpackSize,@function
Xz_GetUnpackSize:                       # @Xz_GetUnpackSize
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB2_5
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a2, $a0, 24
	move	$a0, $zero
	addi.w	$a3, $zero, -1
	.p2align	4, , 16
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	add.d	$a0, $a4, $a0
	bltu	$a0, $a4, .LBB2_6
# %bb.3:                                # %for.cond
                                        #   in Loop: Header=BB2_2 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 16
	bnez	$a1, .LBB2_2
# %bb.4:                                # %cleanup2
	ret
.LBB2_5:
	move	$a0, $zero
	ret
.LBB2_6:
	move	$a0, $a3
	ret
.Lfunc_end2:
	.size	Xz_GetUnpackSize, .Lfunc_end2-Xz_GetUnpackSize
                                        # -- End function
	.globl	Xz_GetPackSize                  # -- Begin function Xz_GetPackSize
	.p2align	5
	.type	Xz_GetPackSize,@function
Xz_GetPackSize:                         # @Xz_GetPackSize
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB3_5
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a2, $a0, 24
	move	$a0, $zero
	addi.d	$a3, $a2, 8
	addi.w	$a2, $zero, -1
	.p2align	4, , 16
.LBB3_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 0
	addi.d	$a4, $a4, 3
	bstrins.d	$a4, $zero, 1, 0
	add.d	$a0, $a4, $a0
	bltu	$a0, $a4, .LBB3_6
# %bb.3:                                # %for.cond
                                        #   in Loop: Header=BB3_2 Depth=1
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB3_2
# %bb.4:                                # %cleanup3
	ret
.LBB3_5:
	move	$a0, $zero
	ret
.LBB3_6:
	move	$a0, $a2
	ret
.Lfunc_end3:
	.size	Xz_GetPackSize, .Lfunc_end3-Xz_GetPackSize
                                        # -- End function
	.globl	Xzs_Construct                   # -- Begin function Xzs_Construct
	.p2align	5
	.type	Xzs_Construct,@function
Xzs_Construct:                          # @Xzs_Construct
# %bb.0:                                # %entry
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	ret
.Lfunc_end4:
	.size	Xzs_Construct, .Lfunc_end4-Xzs_Construct
                                        # -- End function
	.globl	Xzs_Free                        # -- Begin function Xzs_Free
	.p2align	5
	.type	Xzs_Free,@function
Xzs_Free:                               # @Xzs_Free
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	move	$s0, $a1
	beqz	$a0, .LBB5_3
# %bb.1:                                # %for.body.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	.p2align	4, , 16
.LBB5_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 16
	add.d	$a0, $a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(Xz_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 40
	bltu	$s2, $a0, .LBB5_2
.LBB5_3:                                # %for.end
	ld.d	$a2, $s0, 8
	ld.d	$a1, $fp, 16
	move	$a0, $s0
	jirl	$ra, $a2, 0
	st.d	$zero, $fp, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	Xzs_Free, .Lfunc_end5-Xzs_Free
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function Xzs_GetNumBlocks
.LCPI6_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	Xzs_GetNumBlocks
	.p2align	5
	.type	Xzs_GetNumBlocks,@function
Xzs_GetNumBlocks:                       # @Xzs_GetNumBlocks
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB6_3
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a2, $a0, 16
	ori	$a0, $zero, 8
	bgeu	$a1, $a0, .LBB6_4
# %bb.2:
	move	$a3, $zero
	move	$a0, $zero
	b	.LBB6_7
.LBB6_3:
	move	$a0, $zero
	ret
.LBB6_4:                                # %vector.ph
	move	$a3, $a1
	bstrins.d	$a3, $zero, 2, 0
	xvrepli.b	$xr0, 0
	addi.d	$a0, $a2, 168
	move	$a4, $a3
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB6_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a0, -160
	ld.d	$a6, $a0, -120
	ld.d	$a7, $a0, -80
	ld.d	$t0, $a0, -40
	xvinsgr2vr.d	$xr2, $a5, 0
	xvinsgr2vr.d	$xr2, $a6, 1
	xvinsgr2vr.d	$xr2, $a7, 2
	xvinsgr2vr.d	$xr2, $t0, 3
	ld.d	$a5, $a0, 0
	ld.d	$a6, $a0, 40
	ld.d	$a7, $a0, 80
	ld.d	$t0, $a0, 120
	xvinsgr2vr.d	$xr3, $a5, 0
	xvinsgr2vr.d	$xr3, $a6, 1
	xvinsgr2vr.d	$xr3, $a7, 2
	xvinsgr2vr.d	$xr3, $t0, 3
	xvadd.d	$xr0, $xr2, $xr0
	xvadd.d	$xr1, $xr3, $xr1
	addi.d	$a4, $a4, -8
	addi.d	$a0, $a0, 320
	bnez	$a4, .LBB6_5
# %bb.6:                                # %middle.block
	pcalau12i	$a0, %pc_hi20(.LCPI6_0)
	xvld	$xr2, $a0, %pc_lo12(.LCPI6_0)
	xvadd.d	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf.d	$xr2, $xr0, $xr1
	xvadd.d	$xr0, $xr0, $xr2
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.d	$xr1, $xr1, 1
	xvadd.d	$xr0, $xr0, $xr1
	xvpickve2gr.d	$a0, $xr0, 0
	beq	$a1, $a3, .LBB6_9
.LBB6_7:                                # %for.body.preheader
	sub.d	$a1, $a1, $a3
	slli.d	$a4, $a3, 5
	alsl.d	$a3, $a3, $a4, 3
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, 8
	.p2align	4, , 16
.LBB6_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 0
	add.d	$a0, $a3, $a0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 40
	bnez	$a1, .LBB6_8
.LBB6_9:                                # %for.end
	ret
.Lfunc_end6:
	.size	Xzs_GetNumBlocks, .Lfunc_end6-Xzs_GetNumBlocks
                                        # -- End function
	.globl	Xzs_GetUnpackSize               # -- Begin function Xzs_GetUnpackSize
	.p2align	5
	.type	Xzs_GetUnpackSize,@function
Xzs_GetUnpackSize:                      # @Xzs_GetUnpackSize
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB7_11
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a2, $a0, 16
	move	$a3, $zero
	move	$a0, $zero
	addi.w	$a4, $zero, -1
	.p2align	4, , 16
.LBB7_2:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	slli.d	$a5, $a3, 5
	alsl.d	$a5, $a3, $a5, 3
	add.d	$a6, $a2, $a5
	ld.d	$a5, $a6, 8
	beqz	$a5, .LBB7_6
# %bb.3:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB7_2 Depth=1
	ld.d	$a7, $a6, 24
	move	$a6, $zero
	.p2align	4, , 16
.LBB7_4:                                # %for.body.i
                                        #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t0, $a7, 0
	add.d	$a6, $t0, $a6
	bltu	$a6, $t0, .LBB7_8
# %bb.5:                                # %for.cond.i
                                        #   in Loop: Header=BB7_4 Depth=2
	addi.d	$a5, $a5, -1
	addi.d	$a7, $a7, 16
	bnez	$a5, .LBB7_4
	b	.LBB7_7
	.p2align	4, , 16
.LBB7_6:                                #   in Loop: Header=BB7_2 Depth=1
	move	$a6, $zero
.LBB7_7:                                # %Xz_GetUnpackSize.exit
                                        #   in Loop: Header=BB7_2 Depth=1
	add.d	$a0, $a6, $a0
	bgeu	$a0, $a6, .LBB7_9
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_8:                                #   in Loop: Header=BB7_2 Depth=1
	move	$a6, $a4
	add.d	$a0, $a6, $a0
	bltu	$a0, $a6, .LBB7_12
.LBB7_9:                                # %for.cond
                                        #   in Loop: Header=BB7_2 Depth=1
	addi.d	$a3, $a3, 1
	bne	$a3, $a1, .LBB7_2
# %bb.10:                               # %cleanup2
	ret
.LBB7_11:
	move	$a0, $zero
	ret
.LBB7_12:
	move	$a0, $a4
	ret
.Lfunc_end7:
	.size	Xzs_GetUnpackSize, .Lfunc_end7-Xzs_GetUnpackSize
                                        # -- End function
	.globl	Xzs_ReadBackward                # -- Begin function Xzs_ReadBackward
	.p2align	5
	.type	Xzs_ReadBackward,@function
Xzs_ReadBackward:                       # @Xzs_ReadBackward
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1232
	st.d	$ra, $sp, 1224                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1160                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1152                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1144                  # 8-byte Folded Spill
	move	$fp, $a1
	ld.d	$a5, $a1, 24
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a0
	st.d	$zero, $sp, 88
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a5, 0
	beqz	$a0, .LBB8_2
.LBB8_1:                                # %cleanup51
	ld.d	$s8, $sp, 1144                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1152                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1224                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1232
	ret
.LBB8_2:                                # %cleanup.cont
	ld.d	$a0, $sp, 88
	st.d	$a0, $s2, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(Xz_Construct)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ori	$a2, $zero, 12
	ori	$a0, $zero, 17
	blt	$a1, $a2, .LBB8_1
# %bb.3:                                # %cleanup.cont
	andi	$a1, $a1, 3
	bnez	$a1, .LBB8_1
# %bb.4:                                # %if.end.i.lr.ph
	addi.d	$s8, $sp, 1142
	addi.d	$s6, $sp, 1136
	addi.d	$s7, $sp, 103
	addi.w	$a0, $zero, -12
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s4, $zero, 1
	pcalau12i	$a0, %got_pc_hi20(XZ_FOOTER_SIG)
	ld.d	$a0, $a0, %got_pc_lo12(XZ_FOOTER_SIG)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -16
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
.LBB8_5:                                # %if.end.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
                                        #       Child Loop BB8_13 Depth 3
                                        #     Child Loop BB8_29 Depth 2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $s2, 0
	ld.d	$a3, $fp, 24
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s2
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB8_1
# %bb.6:                                # %cleanup.cont.i
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a1, $sp, 1132
	ori	$a2, $zero, 12
	ori	$a3, $zero, 17
	move	$a0, $fp
	pcaddu18i	$ra, %call36(LookInStream_Read2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_1
# %bb.7:                                # %cleanup.cont12.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, 0
	ld.hu	$a1, $s8, 0
	beq	$a1, $a0, .LBB8_23
# %bb.8:                                # %if.then16.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a1, $s2, 0
	addi.d	$a0, $a1, 12
	st.d	$a0, $s2, 0
	bltz	$a1, .LBB8_51
# %bb.9:                                # %if.end21.i.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	move	$s6, $s8
	move	$s8, $zero
.LBB8_10:                               # %if.end21.i
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_13 Depth 3
	sltui	$a1, $a0, 1024
	ori	$a2, $zero, 1024
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s5, $a0, $a2
	sub.d	$a0, $zero, $s5
	st.d	$a0, $s2, 0
	ld.d	$a3, $fp, 24
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s2
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB8_48
# %bb.11:                               # %cleanup.cont31.i
                                        #   in Loop: Header=BB8_10 Depth=2
	addi.d	$a1, $sp, 104
	ori	$a3, $zero, 17
	move	$a0, $fp
	move	$a2, $s5
	pcaddu18i	$ra, %call36(LookInStream_Read2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_49
# %bb.12:                               # %for.cond41.i.preheader
                                        #   in Loop: Header=BB8_10 Depth=2
	add.d	$s8, $s5, $s8
	.p2align	4, , 16
.LBB8_13:                               # %for.cond41.i
                                        #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	blt	$s5, $s4, .LBB8_15
# %bb.14:                               # %for.body.i
                                        #   in Loop: Header=BB8_13 Depth=3
	ldx.bu	$a1, $s7, $s5
	addi.d	$a0, $s5, -1
	move	$s5, $a0
	beqz	$a1, .LBB8_13
	b	.LBB8_17
.LBB8_15:                               # %cleanup92.i
                                        #   in Loop: Header=BB8_10 Depth=2
	ld.d	$a0, $s2, 0
	ori	$s5, $zero, 17
	ori	$a1, $zero, 12
	blt	$a0, $a1, .LBB8_47
# %bb.16:                               # %cleanup92.i
                                        #   in Loop: Header=BB8_10 Depth=2
	lu12i.w	$a1, 16
	bgeu	$a1, $s8, .LBB8_10
	b	.LBB8_47
.LBB8_17:                               # %if.then52.i
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a1, $a0, 1
	ori	$s5, $zero, 17
	andi	$a1, $a1, 3
	bnez	$a1, .LBB8_47
# %bb.18:                               # %if.end57.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a1, $s2, 0
	add.d	$a0, $a1, $a0
	addi.d	$a1, $a0, 1
	st.d	$a1, $s2, 0
	ori	$a2, $zero, 12
	blt	$a1, $a2, .LBB8_47
# %bb.19:                               # %if.end63.i
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a0, $a0, -11
	st.d	$a0, $s2, 0
	ld.d	$a3, $fp, 24
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $zero
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB8_52
# %bb.20:                               # %cleanup.cont73.i
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a1, $sp, 1132
	ori	$a2, $zero, 12
	ori	$a3, $zero, 17
	move	$a0, $fp
	pcaddu18i	$ra, %call36(LookInStream_Read2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_53
# %bb.21:                               # %cleanup.cont83.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.hu	$a0, $a0, 0
	ld.hu	$a1, $s6, 0
	bne	$a1, $a0, .LBB8_47
# %bb.22:                               # %cleanup98.thread.i
                                        #   in Loop: Header=BB8_5 Depth=1
	move	$s8, $s6
	addi.d	$s6, $sp, 1136
.LBB8_23:                               # %if.end101.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.hu	$a0, $sp, 1140
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	st.h	$a0, $sp, 48
	ori	$a1, $zero, 15
	bltu	$a1, $a0, .LBB8_50
# %bb.24:                               # %if.end117.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.w	$s5, $sp, 1132
	ori	$a1, $zero, 6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 16
	bne	$s5, $a1, .LBB8_1
# %bb.25:                               # %if.end142.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.bu	$a0, $sp, 1139
	ld.bu	$a1, $sp, 1138
	ld.bu	$a2, $sp, 1137
	ld.bu	$a3, $sp, 1136
	slli.d	$a0, $a0, 26
	slli.d	$a1, $a1, 18
	slli.d	$a2, $a2, 10
	slli.d	$a3, $a3, 2
	or	$a2, $a2, $a3
	or	$a1, $a2, $a1
	or	$s5, $a1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s5
	st.d	$a0, $s2, 0
	ld.d	$a3, $fp, 24
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s2
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB8_1
# %bb.26:                               # %cleanup.cont178.i
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a2, $s5, 4
	addi.d	$a0, $sp, 48
	move	$a1, $fp
	move	$a3, $s0
	pcaddu18i	$ra, %call36(Xz_ReadIndex)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_1
# %bb.27:                               # %cleanup.cont187.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a1, $sp, 56
	beqz	$a1, .LBB8_31
# %bb.28:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 72
	move	$a2, $zero
	addi.d	$a3, $a0, 8
	ori	$a0, $zero, 16
	.p2align	4, , 16
.LBB8_29:                               # %for.body.i.i
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	addi.d	$a4, $a4, 3
	bstrins.d	$a4, $zero, 1, 0
	add.d	$a2, $a4, $a2
	bltu	$a2, $a4, .LBB8_1
# %bb.30:                               # %for.cond.i.i
                                        #   in Loop: Header=BB8_29 Depth=2
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB8_29
	b	.LBB8_32
.LBB8_31:                               #   in Loop: Header=BB8_5 Depth=1
	move	$a2, $zero
	ori	$a0, $zero, 16
.LBB8_32:                               # %Xz_GetPackSize.exit.i
                                        #   in Loop: Header=BB8_5 Depth=1
	bltz	$a2, .LBB8_1
# %bb.33:                               # %Xz_GetPackSize.exit.i
                                        #   in Loop: Header=BB8_5 Depth=1
	add.d	$a1, $s5, $a2
	addi.d	$a1, $a1, 16
	bltz	$a1, .LBB8_1
# %bb.34:                               # %cleanup211.i
                                        #   in Loop: Header=BB8_5 Depth=1
	sub.d	$a0, $zero, $a1
	st.d	$a0, $s2, 0
	ld.d	$a3, $fp, 24
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s2
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB8_1
# %bb.35:                               # %cleanup.cont214.i
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(SecToRead_CreateVTable)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 112
	addi.d	$a0, $sp, 102
	addi.d	$a1, $sp, 104
	pcaddu18i	$ra, %call36(Xz_ReadHeader)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_1
# %bb.36:                               # %cleanup.cont223.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.hu	$a0, $sp, 48
	ld.hu	$a1, $sp, 102
	bne	$a0, $a1, .LBB8_54
# %bb.37:                               # %cleanup.cont9
                                        #   in Loop: Header=BB8_5 Depth=1
	st.d	$s0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s3, 0
	ld.d	$a2, $s3, 8
	st.d	$a1, $sp, 80
	bne	$a0, $a2, .LBB8_40
# %bb.38:                               # %if.then11
                                        #   in Loop: Header=BB8_5 Depth=1
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $s6
	move	$s6, $s8
	srli.d	$a1, $a0, 2
	add.d	$a0, $a0, $a1
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $s0, 0
	addi.d	$s8, $a0, 1
	slli.d	$a0, $s8, 5
	alsl.d	$a1, $s8, $a0, 3
	move	$a0, $s0
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB8_57
# %bb.39:                               # %cleanup24
                                        #   in Loop: Header=BB8_5 Depth=1
	move	$s5, $a0
	ld.d	$a0, $s3, 0
	ld.d	$a1, $s3, 16
	st.d	$s8, $s3, 8
	slli.d	$a2, $a0, 5
	alsl.d	$a2, $a0, $a2, 3
	move	$a0, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 8
	ld.d	$a1, $s3, 16
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a0, $s3, 0
	st.d	$s5, $s3, 16
	move	$s8, $s6
	move	$s6, $s1
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	b	.LBB8_41
.LBB8_40:                               # %cleanup.cont9.if.end28_crit_edge
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$s5, $s3, 16
.LBB8_41:                               # %if.end28
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a1, $a0, 1
	xvld	$xr0, $sp, 48
	st.d	$a1, $s3, 0
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	xvstx	$xr0, $s5, $a0
	ld.d	$a1, $sp, 80
	add.d	$a0, $s5, $a0
	st.d	$a1, $a0, 32
	ld.d	$a0, $s2, 0
	beqz	$a0, .LBB8_55
# %bb.42:                               # %if.end33
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a3, $fp, 24
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $zero
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB8_1
# %bb.43:                               # %cleanup.cont42
                                        #   in Loop: Header=BB8_5 Depth=1
	beqz	$s1, .LBB8_45
# %bb.44:                               # %land.lhs.true
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a0, $sp, 88
	ld.d	$a1, $s2, 0
	ld.d	$a3, $s1, 0
	sub.d	$a1, $a0, $a1
	addi.w	$a2, $zero, -1
	move	$a0, $s1
	jirl	$ra, $a3, 0
	bnez	$a0, .LBB8_56
.LBB8_45:                               # %cleanup47
                                        #   in Loop: Header=BB8_5 Depth=1
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(Xz_Construct)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 17
	ori	$a2, $zero, 12
	blt	$a1, $a2, .LBB8_1
# %bb.46:                               # %cleanup47
                                        #   in Loop: Header=BB8_5 Depth=1
	andi	$a1, $a1, 3
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB8_5
	b	.LBB8_1
.LBB8_47:                               # %cleanup98.i
	move	$a0, $s5
	b	.LBB8_1
.LBB8_48:
	b	.LBB8_1
.LBB8_49:
	b	.LBB8_1
.LBB8_50:
	ori	$a0, $zero, 4
	b	.LBB8_1
.LBB8_51:
	ori	$a0, $zero, 17
	b	.LBB8_1
.LBB8_52:
	b	.LBB8_1
.LBB8_53:
	b	.LBB8_1
.LBB8_54:
	ori	$a0, $zero, 16
	b	.LBB8_1
.LBB8_55:
	move	$a0, $zero
	b	.LBB8_1
.LBB8_56:
	ori	$a0, $zero, 10
	b	.LBB8_1
.LBB8_57:
	ori	$a0, $zero, 2
	b	.LBB8_1
.Lfunc_end8:
	.size	Xzs_ReadBackward, .Lfunc_end8-Xzs_ReadBackward
                                        # -- End function
	.p2align	5                               # -- Begin function Xz_ReadIndex
	.type	Xz_ReadIndex,@function
Xz_ReadIndex:                           # @Xz_ReadIndex
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
	move	$s2, $a1
	move	$s1, $a0
	lu12i.w	$a1, -524288
	lu32i.d	$a1, 0
	ori	$a0, $zero, 4
	bltu	$a1, $a2, .LBB9_11
# %bb.1:                                # %if.end3
	move	$fp, $a3
	move	$s3, $a2
	ld.d	$a2, $a3, 0
	move	$a0, $a3
	move	$a1, $s3
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB9_10
# %bb.2:                                # %if.end6
	move	$s0, $a0
	ori	$a3, $zero, 4
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(LookInStream_Read2)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB9_9
# %bb.3:                                # %if.then9
	ori	$a1, $zero, 5
	ori	$a0, $zero, 16
	bltu	$s3, $a1, .LBB9_9
# %bb.4:                                # %lor.lhs.false.i
	ld.bu	$a1, $s0, 0
	bnez	$a1, .LBB9_9
# %bb.5:                                # %if.end.i
	addi.d	$s2, $s3, -4
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(CrcCalc)
	jirl	$ra, $ra, 0
	ldx.w	$a1, $s0, $s2
	bne	$a0, $a1, .LBB9_8
# %bb.6:                                # %if.end21.i
	addi.d	$a0, $s0, 1
	addi.d	$a1, $s3, -5
	addi.d	$a2, $sp, 16
	pcaddu18i	$ra, %call36(Xz_ReadVarInt)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_8
# %bb.7:                                # %cleanup37.i
	ld.d	$s4, $sp, 16
	slli.d	$a1, $s4, 1
	bgeu	$s2, $a1, .LBB9_12
.LBB9_8:                                # %cleanup37.thread.i
	ori	$a0, $zero, 16
.LBB9_9:                                # %if.end11
	ld.d	$a2, $fp, 8
	move	$s1, $a0
	move	$a0, $fp
	move	$a1, $s0
	jirl	$ra, $a2, 0
	move	$a0, $s1
	b	.LBB9_11
.LBB9_10:
	ori	$a0, $zero, 2
.LBB9_11:                               # %cleanup
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
.LBB9_12:                               # %cleanup.cont39.i
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s5, $a0, 1
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(Xz_Free)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB9_19
# %bb.13:                               # %if.then42.i
	ld.d	$a2, $fp, 0
	st.d	$s4, $s1, 8
	st.d	$s4, $s1, 16
	slli.d	$a1, $s4, 4
	move	$a0, $fp
	jirl	$ra, $a2, 0
	st.d	$a0, $s1, 24
	beqz	$a0, .LBB9_23
# %bb.14:                               # %for.body.i.preheader
	move	$a1, $s1
	ori	$s6, $zero, 8
.LBB9_15:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 24
	add.d	$s3, $a0, $s6
	add.d	$a0, $s0, $s5
	sub.d	$a1, $s2, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(Xz_ReadVarInt)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_8
# %bb.16:                               # %cleanup.cont67.i
                                        #   in Loop: Header=BB9_15 Depth=1
	addi.d	$a2, $s3, -8
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s5, $s5, $a0
	add.d	$a0, $s0, $s5
	sub.d	$a1, $s2, $s5
	pcaddu18i	$ra, %call36(Xz_ReadVarInt)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_8
# %bb.17:                               # %cleanup86.i
                                        #   in Loop: Header=BB9_15 Depth=1
	ld.d	$a1, $s3, 0
	beqz	$a1, .LBB9_8
# %bb.18:                               # %for.cond.i
                                        #   in Loop: Header=BB9_15 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s5, $s5, $a0
	addi.d	$s4, $s4, -1
	addi.d	$s6, $s6, 16
	move	$a1, $s1
	bnez	$s4, .LBB9_15
.LBB9_19:                               # %if.end89.i
	sub.d	$a0, $zero, $s5
	andi	$a0, $a0, 3
	add.d	$a1, $a0, $s5
	ori	$a0, $zero, 16
.LBB9_20:                               # %while.cond.i
                                        # =>This Inner Loop Header: Depth=1
	andi	$a2, $s5, 3
	beqz	$a2, .LBB9_22
# %bb.21:                               # %while.body.i
                                        #   in Loop: Header=BB9_20 Depth=1
	ldx.bu	$a2, $s0, $s5
	addi.d	$s5, $s5, 1
	beqz	$a2, .LBB9_20
	b	.LBB9_9
.LBB9_22:                               # %while.end.i
	xor	$a0, $a1, $s2
	sltu	$a0, $zero, $a0
	slli.d	$a0, $a0, 4
	b	.LBB9_9
.LBB9_23:
	ori	$a0, $zero, 2
	b	.LBB9_9
.Lfunc_end9:
	.size	Xz_ReadIndex, .Lfunc_end9-Xz_ReadIndex
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym XZ_SIG
	.addrsig_sym XZ_FOOTER_SIG
