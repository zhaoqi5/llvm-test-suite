	.file	"slice.c"
	.text
	.globl	init_ref_pic_list_reordering    # -- Begin function init_ref_pic_list_reordering
	.p2align	5
	.type	init_ref_pic_list_reordering,@function
init_ref_pic_list_reordering:           # @init_ref_pic_list_reordering
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$a0, $a0, 0
	ldptr.d	$a0, $a0, 14216
	st.w	$zero, $a0, 48
	st.w	$zero, $a0, 80
	ret
.Lfunc_end0:
	.size	init_ref_pic_list_reordering, .Lfunc_end0-init_ref_pic_list_reordering
                                        # -- End function
	.globl	start_slice                     # -- Begin function start_slice
	.p2align	5
	.type	start_slice,@function
start_slice:                            # @start_slice
# %bb.0:                                # %if.end6.peel
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$s2, $a1, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s2, 0
	ldptr.d	$a2, $a0, 14208
	ldptr.d	$s3, $a0, 14216
	ori	$a3, $zero, 4016
	ldx.w	$s4, $a1, $a3
	ld.w	$s5, $a2, 4
	ldptr.w	$a0, $a0, 14248
	pcaddu18i	$ra, %call36(RTPUpdateTimestamp)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	ld.d	$s0, $a0, 0
	st.w	$zero, $s0, 40
	move	$a0, $zero
	pcaddu18i	$ra, %call36(SliceHeader)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldptr.w	$a1, $a1, 4008
	ori	$a2, $zero, 1
	move	$fp, $a0
	bne	$a1, $a2, .LBB1_2
# %bb.1:                                # %if.then8.peel
	ld.d	$a0, $s3, 24
	ld.w	$a1, $s0, 4
	addi.d	$s1, $a0, 8
	addi.d	$a0, $a1, -8
	sltui	$a0, $a0, 1
	masknez	$a0, $a1, $a0
	add.w	$fp, $a0, $fp
	move	$a0, $s0
	pcaddu18i	$ra, %call36(writeVlcByteAlign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 32
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(arienco_start_encoding)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cabac_new_slice)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB1_3
	b	.LBB1_9
.LBB1_2:                                # %if.else17.peel
	pcaddu18i	$ra, %call36(CAVLC_init)
	jirl	$ra, $ra, 0
	bnez	$s5, .LBB1_9
.LBB1_3:                                # %for.inc.peel
	beqz	$s4, .LBB1_9
# %bb.4:                                # %if.end6
	ld.d	$a0, $s3, 24
	ld.d	$s0, $a0, 104
	st.w	$zero, $s0, 40
	ori	$a0, $zero, 1
	ori	$s4, $zero, 1
	pcaddu18i	$ra, %call36(Partition_BC_Header)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldptr.w	$a1, $a1, 4008
	add.d	$s1, $a0, $fp
	bne	$a1, $s4, .LBB1_6
# %bb.5:                                # %if.then8
	ld.d	$a0, $s3, 24
	ld.w	$a1, $s0, 4
	addi.d	$fp, $a0, 112
	addi.d	$a0, $a1, -8
	sltui	$a0, $a0, 1
	masknez	$a0, $a1, $a0
	add.d	$s1, $a0, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(writeVlcByteAlign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 32
	move	$a0, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(arienco_start_encoding)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cabac_new_slice)
	jirl	$ra, $ra, 0
	b	.LBB1_7
.LBB1_6:                                # %if.else17
	pcaddu18i	$ra, %call36(CAVLC_init)
	jirl	$ra, $ra, 0
.LBB1_7:                                # %for.inc
	ld.d	$a0, $s3, 24
	ld.d	$s0, $a0, 208
	st.w	$zero, $s0, 40
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(Partition_BC_Header)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	ldptr.w	$a1, $a1, 4008
	ori	$a2, $zero, 1
	add.w	$fp, $a0, $s1
	bne	$a1, $a2, .LBB1_12
# %bb.8:                                # %if.then8.1
	ld.d	$a0, $s3, 24
	ld.w	$a1, $s0, 4
	addi.d	$s1, $a0, 216
	addi.d	$a0, $a1, -8
	sltui	$a0, $a0, 1
	masknez	$a0, $a1, $a0
	add.w	$fp, $a0, $fp
	move	$a0, $s0
	pcaddu18i	$ra, %call36(writeVlcByteAlign)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 32
	move	$a0, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(arienco_start_encoding)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cabac_new_slice)
	jirl	$ra, $ra, 0
.LBB1_9:                                # %for.end
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_11
.LBB1_10:                               # %if.then21
	pcaddu18i	$ra, %call36(init_contexts)
	jirl	$ra, $ra, 0
.LBB1_11:                               # %if.end22
	move	$a0, $fp
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
.LBB1_12:                               # %if.else17.1
	pcaddu18i	$ra, %call36(CAVLC_init)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_10
	b	.LBB1_11
.Lfunc_end1:
	.size	start_slice, .Lfunc_end1-start_slice
                                        # -- End function
	.globl	terminate_slice                 # -- Begin function terminate_slice
	.p2align	5
	.type	terminate_slice,@function
terminate_slice:                        # @terminate_slice
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	pcalau12i	$a2, %got_pc_hi20(input)
	ld.d	$s3, $a2, %got_pc_lo12(input)
	ld.d	$s4, $a1, %got_pc_lo12(img)
	ld.d	$a1, $s3, 0
	ld.d	$a2, $s4, 0
	ldptr.w	$a1, $a1, 4008
	ldptr.d	$fp, $a2, 14216
	ori	$s0, $zero, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bne	$a1, $s0, .LBB2_2
# %bb.1:                                # %if.then
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(write_terminating_bit)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %if.end
	ld.w	$a0, $fp, 16
	blt	$a0, $s0, .LBB2_12
# %bb.3:                                # %for.body.lr.ph
	move	$s5, $zero
	move	$s6, $zero
	move	$s7, $zero
	pcalau12i	$a0, %got_pc_hi20(stats)
	ld.d	$s8, $a0, %got_pc_lo12(stats)
	lu12i.w	$a0, 3
	ori	$s0, $a0, 3312
	ori	$a1, $a0, 3156
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(active_sps)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(terminate_slice.MbWidthC)
	addi.d	$a1, $a1, %pc_lo12(terminate_slice.MbWidthC)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(terminate_slice.MbHeightC)
	addi.d	$a1, $a1, %pc_lo12(terminate_slice.MbHeightC)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a1, $a0, 3160
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $a0, 3060
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_4:                                # %if.end43
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.w	$a2, $s1, 0
	ld.d	$a0, $s1, 32
	add.w	$a3, $a2, $s7
	move	$a1, $zero
.LBB2_5:                                # %for.inc
                                        #   in Loop: Header=BB2_6 Depth=1
	pcaddu18i	$ra, %call36(RBSPtoEBSP)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 0
	sub.w	$a0, $a0, $s2
	ld.d	$a1, $s8, 0
	ldptr.d	$a1, $a1, 2248
	ld.w	$a2, $a1, 0
	alsl.d	$a0, $a0, $a2, 3
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, 16
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 104
	bge	$s6, $a0, .LBB2_12
.LBB2_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s3, 0
	ld.d	$a0, $fp, 24
	ldptr.w	$a1, $a1, 4008
	ldx.d	$s1, $a0, $s5
	beqz	$a1, .LBB2_11
# %bb.7:                                # %if.else
                                        #   in Loop: Header=BB2_6 Depth=1
	add.d	$s2, $a0, $s5
	addi.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(arienco_done_encoding)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ld.w	$a1, $s2, 20
	ld.w	$s2, $s1, 0
	ldx.w	$a2, $a0, $s0
	st.w	$a1, $s1, 4
	st.b	$zero, $s1, 8
	add.d	$a1, $a2, $s2
	stptr.w	$a1, $a0, 15600
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beqz	$a1, .LBB2_4
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.w	$a1, $fp, 16
	addi.d	$a1, $a1, -1
	bstrpick.d	$a1, $a1, 31, 0
	bne	$s6, $a1, .LBB2_4
# %bb.9:                                # %if.then18
                                        #   in Loop: Header=BB2_6 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(active_sps)
	ld.wu	$a1, $a1, 32
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a2, $a0, $a2
	slli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ldx.w	$a3, $a3, $a1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a1, $a4, $a1
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ldx.w	$a0, $a0, $a4
	slli.d	$a2, $a2, 8
	mul.d	$a1, $a3, $a1
	mul.d	$a0, $a1, $a0
	move	$s8, $s3
	move	$s3, $s7
	move	$s7, $s0
	alsl.w	$s0, $a0, $a2, 1
	pcaddu18i	$ra, %call36(get_pic_bin_count)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a2, $a1, $a2
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 5
	mul.d	$a2, $s0, $a2
	move	$s0, $s7
	move	$s7, $s3
	move	$s3, $s8
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a2, 1
	sub.d	$a0, $a0, $a2
	addi.w	$a2, $a0, 1023
	ldptr.w	$a0, $a1, 15600
	bstrpick.d	$a1, $a2, 62, 53
	add.w	$a1, $a2, $a1
	srai.d	$a1, $a1, 10
	bge	$a0, $a1, .LBB2_4
# %bb.10:                               # %if.then37
                                        #   in Loop: Header=BB2_6 Depth=1
	sub.w	$s7, $a1, $a0
	bstrpick.d	$a0, $s7, 31, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	srli.d	$a1, $a0, 33
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_11:                               # %if.then4
                                        #   in Loop: Header=BB2_6 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(SODBtoRBSP)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 32
	ld.w	$s2, $s1, 0
	move	$a1, $zero
	move	$a2, $s2
	move	$a3, $zero
	b	.LBB2_5
.LBB2_12:                               # %for.end
	ld.d	$a0, $s3, 0
	ldptr.w	$a0, $a0, 4008
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_14
# %bb.13:                               # %if.then58
	pcaddu18i	$ra, %call36(store_contexts)
	jirl	$ra, $ra, 0
.LBB2_14:                               # %if.end59
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free_ref_pic_list_reordering_buffer)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.Lfunc_end2:
	.size	terminate_slice, .Lfunc_end2-terminate_slice
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function encode_one_slice
.LCPI3_0:
	.dword	0x7fefffffffffffff              # double 1.7976931348623157E+308
	.text
	.globl	encode_one_slice
	.p2align	5
	.type	encode_one_slice,@function
encode_one_slice:                       # @encode_one_slice
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$s8, $a1, %got_pc_lo12(img)
	ld.d	$a1, $s8, 0
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $sp, 116
	st.w	$zero, $a1, 144
	pcaddu18i	$ra, %call36(FmoGetFirstMacroblockInSlice)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ldptr.d	$fp, $a1, 14208
	ld.w	$a2, $fp, 0
	move	$s0, $a0
	st.w	$a0, $a1, 12
	addi.d	$a0, $a2, 1
	ori	$a1, $zero, 99
	st.w	$a0, $fp, 0
	blt	$a2, $a1, .LBB3_2
# %bb.1:                                # %if.then.i
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	addi.w	$a1, $zero, -1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB3_2:                                # %if.end.i
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$s3, $a0, 0
	ld.w	$a0, $s3, 264
	ori	$a1, $zero, 1
	lu12i.w	$a3, 3
	beq	$a0, $a1, .LBB3_5
# %bb.3:                                # %if.end.i
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_6
# %bb.4:                                # %sw.bb.i.i
	ld.w	$a0, $s3, 268
	slli.w	$s2, $a0, 1
	b	.LBB3_8
.LBB3_5:                                # %sw.bb1.i.i
	ld.d	$a0, $s8, 0
	ori	$a1, $a3, 3156
	ldx.w	$a1, $a0, $a1
	ori	$a2, $a3, 3160
	ldx.w	$a0, $a0, $a2
	ld.w	$a2, $s3, 268
	slli.d	$a1, $a1, 8
	slli.d	$a0, $a0, 9
	add.d	$a0, $a0, $a1
	addi.d	$a0, $a0, 128
	mul.d	$a0, $a0, $a2
	b	.LBB3_7
.LBB3_6:                                # %sw.default.i.i
	ld.d	$a0, $s8, 0
	ori	$a1, $a3, 3156
	ldx.w	$a1, $a0, $a1
	ori	$a2, $a3, 3160
	ldx.w	$a2, $a0, $a2
	ori	$a3, $a3, 3064
	ldx.w	$a0, $a0, $a3
	slli.d	$a1, $a1, 8
	slli.d	$a2, $a2, 9
	add.d	$a1, $a2, $a1
	addi.d	$a1, $a1, 128
	mul.d	$a0, $a1, $a0
.LBB3_7:                                # %sw.epilog.i.i
	addi.w	$s2, $a0, 500
.LBB3_8:                                # %sw.epilog.i.i
	ori	$a0, $zero, 1
	ori	$a1, $zero, 144
	ori	$s4, $zero, 1
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$a0, .LBB3_22
# %bb.9:                                # %if.end.i.i
	ldptr.w	$a0, $s3, 4008
	bne	$a0, $s4, .LBB3_11
.LBB3_10:                               # %if.then17.i.i
	pcaddu18i	$ra, %call36(create_contexts_MotionInfo)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 32
	pcaddu18i	$ra, %call36(create_contexts_TextureInfo)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $a1, 0
	st.d	$a0, $s1, 40
.LBB3_11:                               # %if.end20.i.i
	ori	$a0, $zero, 4016
	ld.d	$a1, $s8, 0
	ldx.w	$a0, $s3, $a0
	ldptr.d	$a1, $a1, 14208
	sltui	$a2, $a0, 1
	ori	$a3, $zero, 3
	masknez	$a3, $a3, $a2
	ld.w	$a1, $a1, 4
	ori	$a4, $zero, 1
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	sltui	$a1, $a1, 1
	maskeqz	$a2, $a2, $a1
	pcalau12i	$a3, %got_pc_hi20(assignSE2partition)
	ld.d	$a3, $a3, %got_pc_lo12(assignSE2partition)
	pcalau12i	$a5, %got_pc_hi20(assignSE2partition_NoDP)
	ld.d	$a5, $a5, %got_pc_lo12(assignSE2partition_NoDP)
	masknez	$a4, $a4, $a1
	or	$s3, $a2, $a4
	st.w	$s3, $s1, 16
	st.d	$a5, $a3, 0
	pcalau12i	$a2, %got_pc_hi20(assignSE2partition_DP)
	ld.d	$a2, $a2, %got_pc_lo12(assignSE2partition_DP)
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	masknez	$a4, $a5, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 104
	move	$a0, $s3
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$a0, $s1, 24
	bnez	$a0, .LBB3_13
# %bb.12:                               # %if.then36.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
.LBB3_13:                               # %if.end37.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$s5, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s6, $a0, %pc_lo12(.L.str.6)
	b	.LBB3_15
	.p2align	4, , 16
.LBB3_14:                               # %for.inc.i.i
                                        #   in Loop: Header=BB3_15 Depth=1
	addi.d	$s3, $s3, -1
	addi.d	$s4, $s4, 104
	beqz	$s3, .LBB3_19
.LBB3_15:                               # %for.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 1
	ori	$a1, $zero, 48
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.d	$a0, $s4, 0
	bnez	$a0, .LBB3_17
# %bb.16:                               # %if.then45.i.i
                                        #   in Loop: Header=BB3_15 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$s7, $s4, 0
.LBB3_17:                               # %if.end46.i.i
                                        #   in Loop: Header=BB3_15 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 32
	bnez	$a0, .LBB3_14
# %bb.18:                               # %if.then52.i.i
                                        #   in Loop: Header=BB3_15 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	b	.LBB3_14
.LBB3_19:                               # %malloc_slice.exit.i
	ld.w	$a0, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$s1, $a0, $fp
	ld.d	$a1, $s8, 0
	ldptr.w	$a0, $a1, 14248
	bstrpick.d	$a2, $a0, 62, 55
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 8
	slli.d	$a2, $a2, 8
	sub.d	$a0, $a0, $a2
	ld.w	$a2, $a1, 36
	st.w	$a0, $s1, 0
	pcalau12i	$a0, %got_pc_hi20(dummy_slice_too_big)
	ld.d	$a3, $a0, %got_pc_lo12(dummy_slice_too_big)
	st.w	$a2, $s1, 4
	ld.w	$a0, $s1, 16
	stptr.d	$s1, $a1, 14216
	st.d	$a3, $s1, 112
	ori	$a3, $zero, 1
	st.w	$s0, $s1, 12
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_28
# %bb.20:                               # %for.body.lr.ph.i
	ld.d	$a2, $s1, 24
	bne	$a0, $a3, .LBB3_23
# %bb.21:
	move	$a3, $zero
	b	.LBB3_26
.LBB3_22:                               # %if.then.i.i
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $a0, 0
	ldptr.w	$a0, $s3, 4008
	beq	$a0, $s4, .LBB3_10
	b	.LBB3_11
.LBB3_23:                               # %vector.ph
	bstrpick.d	$a3, $a0, 30, 1
	slli.d	$a3, $a3, 1
	ori	$a4, $zero, 0
	lu32i.d	$a4, 8
	move	$a5, $a3
	move	$a6, $a2
	.p2align	4, , 16
.LBB3_24:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	ld.d	$t0, $a6, 104
	st.d	$a4, $a7, 0
	st.d	$a4, $t0, 0
	st.b	$zero, $a7, 8
	st.b	$zero, $t0, 8
	addi.d	$a5, $a5, -2
	addi.d	$a6, $a6, 208
	bnez	$a5, .LBB3_24
# %bb.25:                               # %middle.block
	beq	$a3, $a0, .LBB3_28
.LBB3_26:                               # %for.body.i.preheader
	sub.d	$a0, $a0, $a3
	ori	$a4, $zero, 104
	mul.d	$a3, $a3, $a4
	add.d	$a2, $a2, $a3
	ori	$a3, $zero, 0
	lu32i.d	$a3, 8
	.p2align	4, , 16
.LBB3_27:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	st.d	$a3, $a4, 0
	st.b	$zero, $a4, 8
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 104
	bnez	$a0, .LBB3_27
.LBB3_28:                               # %for.end.i
	pcalau12i	$s5, %pc_hi20(active_pps)
	ld.d	$a0, $s5, %pc_lo12(active_pps)
	ld.d	$a3, $fp, 0
	ld.w	$a2, $a0, 184
	ld.w	$a0, $a0, 188
	ldptr.w	$a5, $a3, 5084
	addi.w	$a4, $a2, 1
	stptr.w	$a4, $a1, 14456
	addi.w	$a2, $a0, 1
	stptr.w	$a2, $a1, 14460
	beqz	$a5, .LBB3_32
# %bb.29:                               # %if.then14.i
	pcalau12i	$a0, %pc_hi20(redundant_coding)
	ld.w	$a0, $a0, %pc_lo12(redundant_coding)
	ori	$a4, $zero, 1
	bnez	$a0, .LBB3_31
# %bb.30:                               # %if.then16.i
	ld.w	$a0, $a1, 0
	ldptr.w	$a4, $a3, 5768
	slt	$a5, $a0, $a4
	masknez	$a4, $a4, $a5
	maskeqz	$a0, $a0, $a5
	or	$a4, $a0, $a4
.LBB3_31:                               # %if.end21.sink.split.i
	stptr.w	$a4, $a1, 14456
.LBB3_32:                               # %if.end21.i
	lu12i.w	$s7, 3
	ld.w	$a0, $a1, 20
	ori	$a5, $zero, 3
	beq	$a0, $a5, .LBB3_35
# %bb.33:                               # %if.end21.i
	ori	$a5, $zero, 1
	beq	$a0, $a5, .LBB3_38
# %bb.34:                               # %if.end21.i
	bnez	$a0, .LBB3_42
.LBB3_35:                               # %land.lhs.true.i
	ld.w	$a5, $a3, 36
	beqz	$a5, .LBB3_37
# %bb.36:                               # %if.then26.i
	ld.w	$a6, $a1, 24
	sltu	$a6, $zero, $a6
	sll.w	$a5, $a5, $a6
	slt	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	stptr.w	$a4, $a1, 14456
.LBB3_37:                               # %if.end33.i
	ori	$a5, $zero, 1
	bne	$a0, $a5, .LBB3_42
.LBB3_38:                               # %if.then37.i
	ld.w	$a5, $a3, 40
	beqz	$a5, .LBB3_40
# %bb.39:                               # %if.then39.i
	ld.w	$a6, $a1, 24
	sltu	$a6, $zero, $a6
	sll.w	$a5, $a5, $a6
	slt	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a4, $a4, $a5
	stptr.w	$a4, $a1, 14456
.LBB3_40:                               # %if.end49.i
	ld.w	$a3, $a3, 44
	beqz	$a3, .LBB3_42
# %bb.41:                               # %if.then51.i
	ld.w	$a4, $a1, 24
	sltu	$a4, $zero, $a4
	sll.w	$a3, $a3, $a4
	slt	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	stptr.w	$a2, $a1, 14460
.LBB3_42:                               # %if.end62.i
	ld.w	$a1, $a1, 24
	pcaddu18i	$ra, %call36(init_lists)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(listXsize)
	ld.d	$s3, $a0, %got_pc_lo12(listXsize)
	ld.d	$a0, $s8, 0
	ld.d	$a2, $s3, 0
	ldptr.w	$a3, $a0, 15360
	ld.d	$a1, $fp, 0
	stptr.d	$a2, $a0, 14456
	pcalau12i	$s4, %pc_hi20(active_sps)
	beqz	$a3, .LBB3_46
# %bb.43:                               # %land.lhs.true68.i
	ldptr.w	$a2, $a1, 4004
	beqz	$a2, .LBB3_46
# %bb.44:                               # %land.lhs.true70.i
	pcalau12i	$a2, %got_pc_hi20(dpb)
	ld.d	$a2, $a2, %got_pc_lo12(dpb)
	ld.d	$a3, $s4, %pc_lo12(active_sps)
	ld.w	$a2, $a2, 32
	ld.w	$a3, $a3, 1132
	bne	$a2, $a3, .LBB3_46
# %bb.45:                               # %if.then73.i
	ldptr.w	$a0, $a0, 15332
	pcaddu18i	$ra, %call36(poc_based_ref_management)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
.LBB3_46:                               # %if.end74.i
	ld.w	$a0, $a1, 1564
	beqz	$a0, .LBB3_59
# %bb.47:                               # %for.cond77.preheader.i
	ld.w	$a3, $s3, 0
	ld.d	$a0, $s8, 0
	ori	$a2, $zero, 1
	blt	$a3, $a2, .LBB3_53
# %bb.48:                               # %for.body80.lr.ph.i
	pcalau12i	$a4, %got_pc_hi20(listX)
	ld.d	$a4, $a4, %got_pc_lo12(listX)
	ld.d	$a4, $a4, 0
	ldptr.w	$a5, $a0, 15596
	move	$a6, $zero
	b	.LBB3_50
	.p2align	4, , 16
.LBB3_49:                               # %for.inc93.i
                                        #   in Loop: Header=BB3_50 Depth=1
	addi.w	$a6, $a6, 1
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	beqz	$a3, .LBB3_53
.LBB3_50:                               # %for.body80.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a4, 0
	ld.w	$a7, $a7, 4
	bge	$a7, $a5, .LBB3_49
# %bb.51:                               # %land.lhs.true85.i
                                        #   in Loop: Header=BB3_50 Depth=1
	ldptr.w	$a7, $a0, 15328
	bge	$a5, $a7, .LBB3_49
# %bb.52:                               # %if.then89.i
	ori	$a3, $zero, 1
	slt	$a4, $a3, $a6
	masknez	$a3, $a3, $a4
	maskeqz	$a4, $a6, $a4
	or	$a3, $a4, $a3
	stptr.w	$a3, $a0, 14456
	st.w	$a3, $s3, 0
.LBB3_53:                               # %for.end95.i
	ld.w	$a3, $s3, 4
	blt	$a3, $a2, .LBB3_60
# %bb.54:                               # %for.body99.lr.ph.i
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a2, $a2, %got_pc_lo12(listX)
	ld.d	$a2, $a2, 8
	ldptr.w	$a4, $a0, 15596
	move	$a5, $zero
	b	.LBB3_56
	.p2align	4, , 16
.LBB3_55:                               # %for.inc115.i
                                        #   in Loop: Header=BB3_56 Depth=1
	addi.w	$a5, $a5, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 8
	beqz	$a3, .LBB3_60
.LBB3_56:                               # %for.body99.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a2, 0
	ld.w	$a6, $a6, 4
	bge	$a6, $a4, .LBB3_55
# %bb.57:                               # %land.lhs.true106.i
                                        #   in Loop: Header=BB3_56 Depth=1
	ldptr.w	$a6, $a0, 15328
	bge	$a4, $a6, .LBB3_55
# %bb.58:                               # %if.then111.i
	ori	$a2, $zero, 1
	slt	$a3, $a2, $a5
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a5, $a3
	or	$a2, $a3, $a2
	stptr.w	$a2, $a0, 14460
	st.w	$a2, $s3, 4
	b	.LBB3_60
.LBB3_59:                               # %if.end74.if.end118_crit_edge.i
	ld.d	$a0, $s8, 0
.LBB3_60:                               # %if.end118.i
	ldptr.d	$a2, $a0, 14216
	ld.w	$a3, $a0, 20
	st.w	$zero, $a2, 48
	st.w	$zero, $a2, 80
	beqz	$a3, .LBB3_63
.LBB3_61:                               # %if.end202.i
	ld.w	$a1, $a0, 24
	beqz	$a1, .LBB3_80
# %bb.62:                               # %if.end207.i
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_81
	b	.LBB3_91
.LBB3_63:                               # %land.lhs.true122.i
	ldptr.w	$a1, $a1, 4000
	beqz	$a1, .LBB3_61
# %bb.64:                               # %if.then124.i
	move	$a0, $s1
	pcaddu18i	$ra, %call36(alloc_ref_pic_list_reordering_buffer)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.w	$a3, $a0, 20
	ori	$a2, $zero, 2
	beq	$a3, $a2, .LBB3_75
# %bb.65:                               # %if.then124.i
	ori	$a1, $zero, 4
	beq	$a3, $a1, .LBB3_75
# %bb.66:                               # %for.cond134.preheader.i
	ldptr.w	$a1, $a0, 14456
	bltz	$a1, .LBB3_70
# %bb.67:                               # %for.body139.lr.ph.i
	ld.d	$a3, $s1, 56
	ld.d	$a4, $s1, 64
	ld.d	$a5, $s1, 72
	addi.w	$a6, $zero, -1
	ori	$a7, $zero, 3
	.p2align	4, , 16
.LBB3_68:                               # %for.body139.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a7, $a3, 0
	st.w	$zero, $a4, 0
	st.w	$zero, $a5, 0
	ldptr.w	$a1, $a0, 14456
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 4
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	blt	$a6, $a1, .LBB3_68
# %bb.69:                               # %for.end148.loopexit.i
	ld.w	$a3, $a0, 20
.LBB3_70:                               # %for.end148.i
	ori	$a4, $zero, 1
	bne	$a3, $a4, .LBB3_75
# %bb.71:                               # %for.cond153.preheader.i
	ldptr.w	$a3, $a0, 14460
	bltz	$a3, .LBB3_78
# %bb.72:                               # %for.body158.lr.ph.i
	ld.d	$a1, $s1, 88
	ld.d	$a3, $s1, 96
	ld.d	$a4, $s1, 104
	addi.w	$a5, $zero, -1
	ori	$a6, $zero, 3
	.p2align	4, , 16
.LBB3_73:                               # %for.body158.i
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a6, $a1, 0
	st.w	$zero, $a3, 0
	st.w	$zero, $a4, 0
	ldptr.w	$a7, $a0, 14460
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 4
	addi.d	$a1, $a1, 4
	blt	$a5, $a7, .LBB3_73
# %bb.74:                               # %if.end169thread-pre-split.loopexit.i
	ld.w	$a3, $a0, 20
.LBB3_75:                               # %if.end169.i
	beq	$a3, $a2, .LBB3_61
# %bb.76:                               # %if.end169.i
	ori	$a1, $zero, 4
	beq	$a3, $a1, .LBB3_61
# %bb.77:                               # %if.end169.i.if.then177.i_crit_edge
	ori	$a1, $s7, 2168
	ldx.w	$a1, $a0, $a1
.LBB3_78:                               # %if.then177.i
	pcalau12i	$a0, %got_pc_hi20(listX)
	ld.d	$fp, $a0, %got_pc_lo12(listX)
	ld.d	$a0, $fp, 0
	ld.d	$a2, $s1, 56
	ld.d	$a3, $s1, 64
	move	$a5, $zero
	pcaddu18i	$ra, %call36(poc_ref_pic_reorder)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $fp, 0
	ori	$a2, $s7, 2168
	ldx.w	$a1, $a1, $a2
	ld.d	$a3, $s1, 56
	ld.d	$a4, $s1, 64
	ld.d	$a5, $s1, 72
	addi.w	$a2, $a1, -1
	pcalau12i	$a1, %got_pc_hi20(listXsize)
	ld.d	$s2, $a1, %got_pc_lo12(listXsize)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(reorder_ref_pic_list)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.w	$a1, $a0, 20
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB3_61
# %bb.79:                               # %if.then190.i
	ldptr.w	$a1, $a0, 14460
	ld.d	$a0, $fp, 8
	ld.d	$a2, $s1, 88
	ld.d	$a3, $s1, 96
	ori	$a5, $zero, 1
	pcaddu18i	$ra, %call36(poc_ref_pic_reorder)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	ld.d	$a0, $fp, 8
	ori	$a2, $s7, 2172
	ldx.w	$a1, $a1, $a2
	ld.d	$a3, $s1, 88
	ld.d	$a4, $s1, 96
	ld.d	$a5, $s1, 104
	addi.w	$a2, $a1, -1
	addi.d	$a1, $s2, 4
	pcaddu18i	$ra, %call36(reorder_ref_pic_list)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	b	.LBB3_61
.LBB3_80:                               # %if.then206.i
	pcaddu18i	$ra, %call36(init_mbaff_lists)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.w	$a0, $a0, 20
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB3_91
.LBB3_81:                               # %land.lhs.true211.i
	ld.d	$a1, $s5, %pc_lo12(active_pps)
	ld.w	$a3, $a1, 192
	ori	$a2, $zero, 1
	bne	$a3, $a2, .LBB3_88
# %bb.82:                               # %if.then221.i
	ori	$a1, $zero, 3
	beq	$a0, $a1, .LBB3_84
# %bb.83:                               # %if.then221.i
	bnez	$a0, .LBB3_90
.LBB3_84:                               # %if.then229.i
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.w	$a1, $a0, 1576
	beqz	$a1, .LBB3_212
# %bb.85:                               # %land.lhs.true231.i
	ldptr.w	$a0, $a0, 2940
	beqz	$a0, .LBB3_212
# %bb.86:                               # %if.then233.i
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	pcalau12i	$a1, %got_pc_hi20(enc_frame_picture2)
	ld.d	$a1, $a1, %got_pc_lo12(enc_frame_picture2)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	beq	$a0, $a1, .LBB3_212
# %bb.87:                               # %if.else237.i
	ori	$a0, $zero, 1
	b	.LBB3_213
.LBB3_88:                               # %lor.lhs.false214.i
	bne	$a0, $a2, .LBB3_91
# %bb.89:                               # %lor.lhs.false214.i
	ld.w	$a0, $a1, 196
	beqz	$a0, .LBB3_91
.LBB3_90:                               # %if.else241.i
	pcaddu18i	$ra, %call36(estimate_weighting_factor_B_slice)
	jirl	$ra, $ra, 0
.LBB3_91:                               # %if.end243.i
	ld.w	$a1, $s3, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB3_94
.LBB3_92:                               # %for.body.lr.ph.i.i
	pcalau12i	$a2, %got_pc_hi20(enc_picture)
	ld.d	$a2, $a2, %got_pc_lo12(enc_picture)
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ld.d	$a4, $a2, 0
	ld.d	$a2, $a3, 0
	addi.d	$a3, $a4, 2047
	addi.d	$a3, $a3, 1145
	.p2align	4, , 16
.LBB3_93:                               # %for.body.i89.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 4
	ld.w	$a6, $a4, 0
	slli.w	$a5, $a5, 1
	addi.d	$a6, $a6, -2
	sltui	$a6, $a6, 1
	ld.w	$a7, $a4, 16
	or	$a5, $a5, $a6
	stptr.d	$a5, $a3, -3168
	ld.w	$a5, $a4, 8
	slli.w	$a6, $a7, 1
	ld.w	$a4, $a4, 12
	st.d	$a6, $a3, -1584
	slli.w	$a5, $a5, 1
	st.d	$a5, $a3, 0
	slli.d	$a4, $a4, 1
	addi.w	$a4, $a4, 1
	st.d	$a4, $a3, 1584
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 8
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB3_93
.LBB3_94:                               # %for.cond21.preheader.i.i
	ld.w	$a1, $s3, 4
	blt	$a1, $a0, .LBB3_97
# %bb.95:                               # %for.body24.lr.ph.i.i
	pcalau12i	$a0, %got_pc_hi20(enc_picture)
	ld.d	$a0, $a0, %got_pc_lo12(enc_picture)
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a2, $a2, %got_pc_lo12(listX)
	ld.d	$a3, $a0, 0
	ld.d	$a0, $a2, 8
	addi.d	$a2, $a3, 2047
	addi.d	$a2, $a2, 1409
	.p2align	4, , 16
.LBB3_96:                               # %for.body24.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 0
	ld.w	$a4, $a3, 4
	ld.w	$a5, $a3, 0
	slli.w	$a4, $a4, 1
	addi.d	$a5, $a5, -2
	sltui	$a5, $a5, 1
	ld.w	$a6, $a3, 16
	or	$a4, $a4, $a5
	stptr.d	$a4, $a2, -3168
	ld.w	$a4, $a3, 8
	slli.w	$a5, $a6, 1
	ld.w	$a3, $a3, 12
	st.d	$a5, $a2, -1584
	slli.w	$a4, $a4, 1
	st.d	$a4, $a2, 0
	slli.d	$a3, $a3, 1
	addi.w	$a3, $a3, 1
	st.d	$a3, $a2, 1584
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB3_96
.LBB3_97:                               # %for.end63.i.i
	ld.d	$a0, $s4, %pc_lo12(active_sps)
	ld.w	$a1, $a0, 1148
	ld.d	$a0, $s8, 0
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_111
# %bb.98:                               # %land.lhs.true.i.i
	ld.w	$a1, $a0, 24
	bnez	$a1, .LBB3_111
# %bb.99:                               # %for.cond67.preheader.i.i
	pcalau12i	$a1, %got_pc_hi20(enc_picture)
	ld.d	$a1, $a1, %got_pc_lo12(enc_picture)
	ld.d	$a1, $a1, 0
	ld.w	$a4, $s3, 8
	ori	$a3, $zero, 1
	addi.d	$a2, $a1, 2047
	blt	$a4, $a3, .LBB3_102
# %bb.100:                              # %for.body76.lr.ph.i.i
	pcalau12i	$a5, %got_pc_hi20(listX)
	ld.d	$a5, $a5, %got_pc_lo12(listX)
	ld.d	$a5, $a5, 16
	addi.d	$a6, $a2, 1673
	.p2align	4, , 16
.LBB3_101:                              # %for.body76.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, 0
	ld.w	$t0, $a7, 4
	ld.w	$t1, $a7, 0
	slli.w	$t0, $t0, 1
	addi.d	$t1, $t1, -2
	sltui	$t1, $t1, 1
	ld.w	$t2, $a7, 16
	or	$t0, $t0, $t1
	stptr.d	$t0, $a6, -3168
	ld.w	$t0, $a7, 8
	slli.w	$t1, $t2, 1
	ld.w	$a7, $a7, 12
	st.d	$t1, $a6, -1584
	slli.w	$t0, $t0, 1
	st.d	$t0, $a6, 0
	slli.d	$a7, $a7, 1
	addi.w	$a7, $a7, 1
	st.d	$a7, $a6, 1584
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB3_101
.LBB3_102:                              # %for.inc122.i.i
	ld.w	$a4, $s3, 12
	blt	$a4, $a3, .LBB3_105
# %bb.103:                              # %for.body76.lr.ph.1.i.i
	pcalau12i	$a3, %got_pc_hi20(listX)
	ld.d	$a3, $a3, %got_pc_lo12(listX)
	ld.d	$a3, $a3, 24
	addi.d	$a2, $a2, 1937
	.p2align	4, , 16
.LBB3_104:                              # %for.body76.1.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a3, 0
	ld.w	$a6, $a5, 4
	ld.w	$a7, $a5, 0
	slli.w	$a6, $a6, 1
	addi.d	$a7, $a7, -2
	sltui	$a7, $a7, 1
	ld.w	$t0, $a5, 16
	or	$a6, $a6, $a7
	stptr.d	$a6, $a2, -3168
	ld.w	$a6, $a5, 8
	slli.w	$a7, $t0, 1
	ld.w	$a5, $a5, 12
	st.d	$a7, $a2, -1584
	slli.w	$a6, $a6, 1
	st.d	$a6, $a2, 0
	slli.d	$a5, $a5, 1
	addi.w	$a5, $a5, 1
	st.d	$a5, $a2, 1584
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	bnez	$a4, .LBB3_104
.LBB3_105:                              # %for.inc122.1.i.i
	ld.w	$a3, $s3, 16
	ori	$a2, $zero, 1
	blt	$a3, $a2, .LBB3_108
# %bb.106:                              # %for.body76.lr.ph.2.i.i
	pcalau12i	$a4, %got_pc_hi20(listX)
	ld.d	$a4, $a4, %got_pc_lo12(listX)
	ld.d	$a4, $a4, 32
	lu12i.w	$a5, 1
	ori	$a5, $a5, 152
	add.d	$a5, $a1, $a5
	.p2align	4, , 16
.LBB3_107:                              # %for.body76.2.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	ld.w	$a7, $a6, 4
	ld.w	$t0, $a6, 0
	slli.w	$a7, $a7, 1
	addi.d	$t0, $t0, -2
	sltui	$t0, $t0, 1
	ld.w	$t1, $a6, 16
	or	$a7, $a7, $t0
	stptr.d	$a7, $a5, -3168
	ld.w	$a7, $a6, 8
	slli.w	$t0, $t1, 1
	ld.w	$a6, $a6, 12
	st.d	$t0, $a5, -1584
	slli.w	$a7, $a7, 1
	st.d	$a7, $a5, 0
	slli.d	$a6, $a6, 1
	addi.w	$a6, $a6, 1
	st.d	$a6, $a5, 1584
	addi.d	$a3, $a3, -1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB3_107
.LBB3_108:                              # %for.inc122.2.i.i
	ld.w	$a3, $s3, 20
	blt	$a3, $a2, .LBB3_111
# %bb.109:                              # %for.body76.lr.ph.3.i.i
	pcalau12i	$a2, %got_pc_hi20(listX)
	ld.d	$a2, $a2, %got_pc_lo12(listX)
	ld.d	$a2, $a2, 40
	lu12i.w	$a4, 1
	ori	$a4, $a4, 416
	add.d	$a1, $a1, $a4
	.p2align	4, , 16
.LBB3_110:                              # %for.body76.3.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 0
	ld.w	$a5, $a4, 4
	ld.w	$a6, $a4, 0
	slli.w	$a5, $a5, 1
	addi.d	$a6, $a6, -2
	sltui	$a6, $a6, 1
	ld.w	$a7, $a4, 16
	or	$a5, $a5, $a6
	stptr.d	$a5, $a1, -3168
	ld.w	$a5, $a4, 8
	slli.w	$a6, $a7, 1
	ld.w	$a4, $a4, 12
	st.d	$a6, $a1, -1584
	slli.w	$a5, $a5, 1
	st.d	$a5, $a1, 0
	slli.d	$a4, $a4, 1
	addi.w	$a4, $a4, 1
	st.d	$a4, $a1, 1584
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	bnez	$a3, .LBB3_110
.LBB3_111:                              # %set_ref_pic_num.exit.i
	ld.w	$a1, $a0, 20
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB3_113
# %bb.112:                              # %if.then247.i
	pcalau12i	$a0, %got_pc_hi20(Co_located)
	ld.d	$a0, $a0, %got_pc_lo12(Co_located)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	pcaddu18i	$ra, %call36(compute_colocated)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ld.w	$a1, $a0, 20
.LBB3_113:                              # %if.end248.i
	ld.d	$a0, $s4, 0
	ori	$a2, $zero, 2
	beq	$a1, $a2, .LBB3_116
# %bb.114:                              # %land.lhs.true252.i
	ldptr.w	$a1, $a0, 5244
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB3_116
# %bb.115:                              # %if.then255.i
	pcalau12i	$a0, %got_pc_hi20(EPZSCo_located)
	ld.d	$a0, $a0, %got_pc_lo12(EPZSCo_located)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(listX)
	ld.d	$a1, $a1, %got_pc_lo12(listX)
	pcaddu18i	$ra, %call36(EPZSSliceInit)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
.LBB3_116:                              # %if.end256.i
	ldptr.w	$a0, $a0, 4008
	beqz	$a0, .LBB3_118
# %bb.117:                              # %if.else279.i
	pcalau12i	$a0, %got_pc_hi20(writeMB_typeInfo)
	ld.d	$a0, $a0, %got_pc_lo12(writeMB_typeInfo)
	pcalau12i	$a1, %got_pc_hi20(writeMB_typeInfo_CABAC)
	ld.d	$a1, $a1, %got_pc_lo12(writeMB_typeInfo_CABAC)
	st.d	$a1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(writeIntraPredMode)
	ld.d	$a0, $a0, %got_pc_lo12(writeIntraPredMode)
	pcalau12i	$a1, %got_pc_hi20(writeIntraPredMode_CABAC)
	ld.d	$a1, $a1, %got_pc_lo12(writeIntraPredMode_CABAC)
	pcalau12i	$a2, %got_pc_hi20(writeB8_typeInfo)
	ld.d	$a2, $a2, %got_pc_lo12(writeB8_typeInfo)
	pcalau12i	$a3, %got_pc_hi20(writeB8_typeInfo_CABAC)
	ld.d	$a4, $a3, %got_pc_lo12(writeB8_typeInfo_CABAC)
	ld.w	$a5, $s3, 0
	pcalau12i	$a3, %got_pc_hi20(writeRefFrame_CABAC)
	ld.d	$a3, $a3, %got_pc_lo12(writeRefFrame_CABAC)
	st.d	$a1, $a0, 0
	st.d	$a4, $a2, 0
	sltui	$a0, $a5, 2
	masknez	$a1, $a3, $a0
	pcalau12i	$a2, %got_pc_hi20(writeSE_Dummy)
	ld.d	$a7, $a2, %got_pc_lo12(writeSE_Dummy)
	pcalau12i	$a2, %got_pc_hi20(writeRefFrame)
	ld.d	$a2, $a2, %got_pc_lo12(writeRefFrame)
	ld.w	$a4, $s3, 4
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $a2, 0
	sltui	$a0, $a4, 2
	masknez	$a1, $a3, $a0
	vld	$vr0, $s3, 8
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $a2, 8
	vslti.wu	$vr0, $vr0, 2
	vpickve2gr.w	$a0, $vr0, 0
	andi	$a0, $a0, 1
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $a2, 16
	vpickve2gr.w	$a0, $vr0, 1
	andi	$a0, $a0, 1
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $a2, 24
	vpickve2gr.w	$a0, $vr0, 2
	andi	$a0, $a0, 1
	masknez	$a1, $a3, $a0
	maskeqz	$a0, $a7, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $a2, 32
	vpickve2gr.w	$a0, $vr0, 3
	andi	$t0, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(writeMB_transform_size_CABAC)
	ld.d	$a2, $a0, %got_pc_lo12(writeMB_transform_size_CABAC)
	pcalau12i	$a0, %got_pc_hi20(writeFieldModeInfo_CABAC)
	ld.d	$a1, $a0, %got_pc_lo12(writeFieldModeInfo_CABAC)
	pcalau12i	$a0, %got_pc_hi20(writeCIPredMode_CABAC)
	ld.d	$a0, $a0, %got_pc_lo12(writeCIPredMode_CABAC)
	pcalau12i	$a4, %got_pc_hi20(writeDquant_CABAC)
	ld.d	$a6, $a4, %got_pc_lo12(writeDquant_CABAC)
	pcalau12i	$a4, %got_pc_hi20(writeCBP_CABAC)
	ld.d	$a4, $a4, %got_pc_lo12(writeCBP_CABAC)
	pcalau12i	$a5, %got_pc_hi20(writeMVD_CABAC)
	ld.d	$a5, $a5, %got_pc_lo12(writeMVD_CABAC)
	masknez	$a3, $a3, $t0
	maskeqz	$a7, $a7, $t0
	or	$a3, $a7, $a3
	b	.LBB3_132
.LBB3_118:                              # %if.then259.i
	pcalau12i	$a0, %got_pc_hi20(writeMB_typeInfo)
	ld.d	$a1, $a0, %got_pc_lo12(writeMB_typeInfo)
	pcalau12i	$a0, %got_pc_hi20(writeSE_UVLC)
	ld.d	$a0, $a0, %got_pc_lo12(writeSE_UVLC)
	pcalau12i	$a2, %got_pc_hi20(writeIntraPredMode)
	ld.d	$a2, $a2, %got_pc_lo12(writeIntraPredMode)
	pcalau12i	$a3, %got_pc_hi20(writeIntraPredMode_CAVLC)
	ld.d	$a3, $a3, %got_pc_lo12(writeIntraPredMode_CAVLC)
	pcalau12i	$a4, %got_pc_hi20(writeB8_typeInfo)
	ld.d	$a4, $a4, %got_pc_lo12(writeB8_typeInfo)
	st.d	$a0, $a1, 0
	st.d	$a3, $a2, 0
	ld.w	$a3, $s3, 0
	st.d	$a0, $a4, 0
	ori	$a1, $zero, 2
	pcalau12i	$a2, %pc_hi20(.Lswitch.table.encode_one_slice.5)
	addi.d	$a2, $a2, %pc_lo12(.Lswitch.table.encode_one_slice.5)
	move	$a4, $a0
	bltu	$a1, $a3, .LBB3_120
# %bb.119:                              # %switch.lookup
	slli.d	$a3, $a3, 3
	ldx.d	$a4, $a2, $a3
.LBB3_120:                              # %for.inc276.i
	pcalau12i	$a3, %got_pc_hi20(writeRefFrame)
	ld.d	$a3, $a3, %got_pc_lo12(writeRefFrame)
	ld.w	$a5, $s3, 4
	st.d	$a4, $a3, 0
	move	$a4, $a0
	bltu	$a1, $a5, .LBB3_122
# %bb.121:                              # %switch.lookup103
	slli.d	$a1, $a5, 3
	ldx.d	$a4, $a2, $a1
.LBB3_122:                              # %for.inc276.1.i
	ld.w	$a5, $s3, 8
	ori	$a1, $zero, 2
	st.d	$a4, $a3, 8
	move	$a4, $a0
	bltu	$a1, $a5, .LBB3_124
# %bb.123:                              # %switch.lookup106
	slli.d	$a4, $a5, 3
	ldx.d	$a4, $a2, $a4
.LBB3_124:                              # %for.inc276.2.i
	ld.w	$a5, $s3, 12
	st.d	$a4, $a3, 16
	move	$a4, $a0
	bltu	$a1, $a5, .LBB3_126
# %bb.125:                              # %switch.lookup109
	slli.d	$a1, $a5, 3
	ldx.d	$a4, $a2, $a1
.LBB3_126:                              # %for.inc276.3.i
	ld.w	$a1, $s3, 16
	ori	$a5, $zero, 2
	st.d	$a4, $a3, 24
	move	$a6, $a0
	bltu	$a5, $a1, .LBB3_128
# %bb.127:                              # %switch.lookup112
	slli.d	$a1, $a1, 3
	ldx.d	$a6, $a2, $a1
.LBB3_128:                              # %for.inc276.4.i
	ld.w	$a7, $s3, 20
	pcalau12i	$a1, %got_pc_hi20(writeSE_Flag)
	ld.d	$a1, $a1, %got_pc_lo12(writeSE_Flag)
	pcalau12i	$a4, %got_pc_hi20(writeCBP_VLC)
	ld.d	$a4, $a4, %got_pc_lo12(writeCBP_VLC)
	pcalau12i	$a5, %got_pc_hi20(writeSE_SVLC)
	ld.d	$a5, $a5, %got_pc_lo12(writeSE_SVLC)
	ori	$t0, $zero, 3
	st.d	$a6, $a3, 32
	bgeu	$a7, $t0, .LBB3_130
# %bb.129:                              # %switch.lookup115
	slli.d	$a3, $a7, 3
	ldx.d	$a3, $a2, $a3
	b	.LBB3_131
.LBB3_130:
	move	$a3, $a0
.LBB3_131:                              # %init_slice.exit
	move	$a6, $a5
	move	$a2, $a1
.LBB3_132:                              # %init_slice.exit
	pcalau12i	$a7, %got_pc_hi20(writeRefFrame)
	ld.d	$a7, $a7, %got_pc_lo12(writeRefFrame)
	pcalau12i	$t0, %got_pc_hi20(writeMVD)
	ld.d	$t0, $t0, %got_pc_lo12(writeMVD)
	pcalau12i	$t1, %got_pc_hi20(writeCBP)
	ld.d	$t1, $t1, %got_pc_lo12(writeCBP)
	pcalau12i	$t2, %got_pc_hi20(writeDquant)
	ld.d	$t2, $t2, %got_pc_lo12(writeDquant)
	st.d	$a3, $a7, 40
	st.d	$a5, $t0, 0
	st.d	$a4, $t1, 0
	st.d	$a6, $t2, 0
	ld.d	$a3, $s8, 0
	pcalau12i	$a4, %got_pc_hi20(writeCIPredMode)
	ld.d	$a4, $a4, %got_pc_lo12(writeCIPredMode)
	pcalau12i	$a5, %got_pc_hi20(writeFieldModeInfo)
	ldptr.d	$a3, $a3, 14216
	ld.d	$a5, $a5, %got_pc_lo12(writeFieldModeInfo)
	pcalau12i	$a6, %got_pc_hi20(writeMB_transform_size)
	ld.d	$a6, $a6, %got_pc_lo12(writeMB_transform_size)
	ld.d	$a3, $a3, 24
	st.d	$a0, $a4, 0
	st.d	$a1, $a5, 0
	st.d	$a2, $a6, 0
	ld.d	$a0, $a3, 0
	ld.w	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(Bytes_After_Header)
	st.w	$a0, $a1, %pc_lo12(Bytes_After_Header)
	pcaddu18i	$ra, %call36(SetLagrangianMultipliers)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ldptr.w	$a1, $a0, 4008
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB3_134
# %bb.133:                              # %if.then
	pcaddu18i	$ra, %call36(SetCtxModelNumber)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
.LBB3_134:                              # %if.end
	ldptr.w	$a1, $a0, 4168
	beqz	$a1, .LBB3_137
# %bb.135:                              # %land.lhs.true
	ldptr.w	$a1, $a0, 4732
	ld.d	$a0, $s8, 0
	beqz	$a1, .LBB3_138
# %bb.136:                              # %land.rhs
	ld.w	$a1, $a0, 20
	sltui	$a2, $a1, 1
	addi.d	$a1, $a1, -3
	sltui	$a1, $a1, 1
	or	$a1, $a2, $a1
	b	.LBB3_139
.LBB3_137:                              # %if.end.land.end_crit_edge
	ld.d	$a0, $s8, 0
.LBB3_138:
	move	$a1, $zero
.LBB3_139:                              # %land.end
	ori	$a2, $s7, 3304
	stx.h	$a1, $a0, $a2
	pcaddu18i	$ra, %call36(start_slice)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	ldptr.w	$a2, $a1, 5116
	ld.d	$a1, $s8, 0
	pcalau12i	$a3, %pc_hi20(generic_RC)
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	beqz	$a2, .LBB3_142
# %bb.140:                              # %if.then7
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $a2, %pc_lo12(generic_RC)
	ld.w	$a3, $a2, 16
	ldptr.w	$a4, $a1, 15404
	ldptr.w	$a5, $a1, 15352
	add.d	$a3, $a3, $a0
	st.w	$a3, $a2, 16
	bgeu	$a4, $a5, .LBB3_142
# %bb.141:                              # %if.then10
	ld.w	$a3, $a2, 24
	add.d	$a3, $a3, $a0
	st.w	$a3, $a2, 24
.LBB3_142:                              # %if.end13
	pcalau12i	$a2, %got_pc_hi20(stats)
	ld.d	$a2, $a2, %got_pc_lo12(stats)
	ld.d	$a2, $a2, 0
	ld.w	$a3, $a1, 20
	ld.w	$a4, $a2, 32
	alsl.d	$a3, $a3, $a2, 3
	ld.d	$a5, $a3, 2040
	ld.w	$a6, $sp, 116
	add.d	$a4, $a4, $a0
	st.w	$a4, $a2, 32
	add.d	$a0, $a5, $a0
	st.d	$a0, $a3, 2040
	beqz	$a6, .LBB3_144
# %bb.143:
	move	$fp, $zero
	b	.LBB3_216
.LBB3_144:                              # %while.body.preheader
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI3_0)
	pcalau12i	$s6, %pc_hi20(rdopt)
	pcalau12i	$a0, %pc_hi20(rddata_top_frame_mb)
	addi.d	$a0, $a0, %pc_lo12(rddata_top_frame_mb)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(encode_one_macroblock)
	ori	$fp, $zero, 1
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$a0, $a0, %pc_lo12(errortext)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a1, $a0, 612
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ori	$s2, $zero, 2
	ori	$a0, $a0, 1020
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(quadratic_RC_init)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(quadratic_RC)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(rddata_bot_frame_mb)
	addi.d	$a0, $a0, %pc_lo12(rddata_bot_frame_mb)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$s5, %pc_hi20(MBPairIsField)
	b	.LBB3_148
.LBB3_145:                              # %if.then37
                                        #   in Loop: Header=BB3_148 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FmoGetNextMBNr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB3_211
.LBB3_146:                              # %if.end42
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(proceed2nextMacroblock)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_147:                              # %if.end301
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.w	$a0, $sp, 116
	bnez	$a0, .LBB3_215
.LBB3_148:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 0
	ldptr.w	$a1, $a0, 15260
	beqz	$a1, .LBB3_153
# %bb.149:                              # %land.lhs.true22
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a1, $s4, 0
	ldptr.w	$a1, $a1, 5656
	beqz	$a1, .LBB3_153
# %bb.150:                              # %land.lhs.true24
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.w	$a0, $a0, 12
	mod.w	$a0, $a0, $a1
	bnez	$a0, .LBB3_153
# %bb.151:                              # %if.then28
                                        #   in Loop: Header=BB3_148 Depth=1
	pcaddu18i	$ra, %call36(CalculateOffsetParam)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ldptr.w	$a0, $a0, 5100
	beqz	$a0, .LBB3_153
# %bb.152:                              # %if.then30
                                        #   in Loop: Header=BB3_148 Depth=1
	pcaddu18i	$ra, %call36(CalculateOffset8Param)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_153:                              # %if.end32
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a2, $s8, 0
	ldptr.w	$a0, $a2, 15268
	beqz	$a0, .LBB3_183
# %bb.154:                              # %if.else53
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.wu	$a1, $a0, $a1
	stptr.w	$zero, $a2, 15408
	bstrpick.d	$a3, $a1, 31, 1
	slli.w	$a3, $a3, 1
	addi.w	$s4, $s0, 1
	bne	$a3, $s2, .LBB3_171
# %bb.155:                              # %if.then59
                                        #   in Loop: Header=BB3_148 Depth=1
	stptr.d	$zero, $a2, 14464
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $a3
	st.w	$zero, $sp, 112
	stptr.w	$zero, $a2, 15412
	bne	$a1, $s2, .LBB3_160
# %bb.156:                              # %if.then59
                                        #   in Loop: Header=BB3_148 Depth=1
	beqz	$a3, .LBB3_160
# %bb.157:                              # %land.lhs.true67
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a1, $a2, 15388
	blt	$a1, $fp, .LBB3_161
# %bb.158:                              # %land.lhs.true70
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a2, $a2, 15404
	mod.wu	$a1, $a1, $a2
	bnez	$a1, .LBB3_161
# %bb.159:                              # %if.then76
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC_init)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $a1
.LBB3_160:                              # %if.end77
                                        #   in Loop: Header=BB3_148 Depth=1
	beqz	$a3, .LBB3_163
.LBB3_161:                              # %land.lhs.true80
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a0, $a0, 4708
	bne	$a0, $s2, .LBB3_163
# %bb.162:                              # %if.then84
                                        #   in Loop: Header=BB3_148 Depth=1
	pcalau12i	$a0, %pc_hi20(generic_RC_init)
	ld.d	$a0, $a0, %pc_lo12(generic_RC_init)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
.LBB3_163:                              # %if.end85
                                        #   in Loop: Header=BB3_148 Depth=1
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(encode_one_macroblock)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $s6, %pc_lo12(rdopt)
	jirl	$ra, $a0, 0
	ld.d	$a0, $s6, %pc_lo12(rdopt)
	ld.d	$a1, $s8, 0
	fld.d	$fs0, $a0, 0
	stptr.w	$fp, $a1, 15412
	stptr.w	$zero, $a1, 14464
	move	$a0, $s4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(encode_one_macroblock)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $s6, %pc_lo12(rdopt)
	jirl	$ra, $a0, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 5116
	beqz	$a1, .LBB3_170
# %bb.164:                              # %land.lhs.true91
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a1, $a0, 4708
	bne	$a1, $s2, .LBB3_168
# %bb.165:                              # %land.lhs.true95
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a1, $s8, 0
	ldptr.w	$a2, $a1, 15388
	blt	$a2, $fp, .LBB3_168
# %bb.166:                              # %land.lhs.true99
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a1, $a1, 15404
	mod.wu	$a1, $a2, $a1
	bnez	$a1, .LBB3_168
# %bb.167:                              # %if.end106
                                        #   in Loop: Header=BB3_148 Depth=1
	pcalau12i	$a0, %pc_hi20(quadratic_RC_best)
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC_best)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldptr.w	$a1, $a0, 5116
	beqz	$a1, .LBB3_170
.LBB3_168:                              # %land.lhs.true109
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a1, $a0, 4708
	bne	$a1, $s2, .LBB3_170
# %bb.169:                              # %if.then113
                                        #   in Loop: Header=BB3_148 Depth=1
	pcalau12i	$a0, %pc_hi20(generic_RC_best)
	ld.d	$a0, $a0, %pc_lo12(generic_RC_best)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(generic_RC)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
.LBB3_170:                              # %if.end114
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a1, $s6, %pc_lo12(rdopt)
	fld.d	$fa0, $a1, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a1, $a0, $a1
	ld.d	$a2, $s8, 0
	fadd.d	$fs0, $fs0, $fa0
.LBB3_171:                              # %if.end117
                                        #   in Loop: Header=BB3_148 Depth=1
	addi.w	$a3, $a1, -1
	ori	$s1, $s7, 2168
	pcalau12i	$a4, %pc_hi20(rddata_top_field_mb)
	move	$a5, $s7
	addi.d	$s7, $a4, %pc_lo12(rddata_top_field_mb)
	bgeu	$a3, $s2, .LBB3_186
# %bb.172:                              # %if.then125
                                        #   in Loop: Header=BB3_148 Depth=1
	ori	$a3, $zero, 1
	ori	$a4, $a5, 2952
	ldx.w	$a4, $a2, $a4
	lu32i.d	$a3, 1
	stptr.d	$a3, $a2, 14464
	ld.w	$a3, $a0, 32
	slli.d	$a4, $a4, 1
	ldx.w	$a5, $a2, $s1
	stptr.w	$a4, $a2, 15240
	slli.d	$a3, $a3, 1
	st.w	$a3, $a0, 32
	slli.d	$a3, $a5, 1
	addi.d	$a4, $a3, 1
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $a3
	stptr.w	$a4, $a2, 14456
	addi.w	$a1, $a1, 0
	stptr.w	$zero, $a2, 15412
	bne	$a1, $s2, .LBB3_177
# %bb.173:                              # %if.then125
                                        #   in Loop: Header=BB3_148 Depth=1
	beqz	$a3, .LBB3_177
# %bb.174:                              # %land.lhs.true139
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a1, $a2, 15388
	blt	$a1, $fp, .LBB3_178
# %bb.175:                              # %land.lhs.true143
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a2, $a2, 15404
	mod.wu	$a1, $a1, $a2
	bnez	$a1, .LBB3_178
# %bb.176:                              # %if.then149
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC)
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC_init)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$a3, $a0, $a1
.LBB3_177:                              # %if.end150
                                        #   in Loop: Header=BB3_148 Depth=1
	beqz	$a3, .LBB3_180
.LBB3_178:                              # %land.lhs.true153
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a0, $a0, 4708
	bne	$a0, $s2, .LBB3_180
# %bb.179:                              # %if.then157
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	pcalau12i	$a1, %pc_hi20(generic_RC_init)
	ld.d	$a1, $a1, %pc_lo12(generic_RC_init)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
.LBB3_180:                              # %if.end165
                                        #   in Loop: Header=BB3_148 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(encode_one_macroblock)
	st.d	$s7, $s6, %pc_lo12(rdopt)
	jirl	$ra, $a0, 0
	ld.d	$a0, $s6, %pc_lo12(rdopt)
	ld.d	$a1, $s8, 0
	fld.d	$fs1, $a0, 0
	stptr.w	$fp, $a1, 15412
	stptr.w	$zero, $a1, 14468
	ori	$a1, $zero, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(encode_one_macroblock)
	pcalau12i	$a1, %pc_hi20(rddata_bot_field_mb)
	addi.d	$a1, $a1, %pc_lo12(rddata_bot_field_mb)
	st.d	$a1, $s6, %pc_lo12(rdopt)
	jirl	$ra, $a0, 0
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $s4, 0
	ld.d	$a3, $s6, %pc_lo12(rdopt)
	ld.d	$a2, $s8, 0
	ldptr.w	$a1, $a0, 4708
	fld.d	$fa0, $a3, 0
	stptr.w	$zero, $a2, 15416
	addi.d	$a3, $a1, -2
	sltui	$a3, $a3, 1
	bne	$a1, $s2, .LBB3_187
# %bb.181:                              # %if.end165
                                        #   in Loop: Header=BB3_148 Depth=1
	fadd.d	$fa0, $fs1, $fa0
	fcmp.clt.d	$fcc0, $fs0, $fa0
	bceqz	$fcc0, .LBB3_187
# %bb.182:                              # %if.then181
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a1, $a2, 15240
	stptr.w	$zero, $a2, 14464
	st.w	$zero, $s5, %pc_lo12(MBPairIsField)
	ld.w	$a4, $a0, 32
	srli.d	$a1, $a1, 1
	ldx.w	$a5, $a2, $s1
	stptr.w	$a1, $a2, 15240
	srli.d	$a1, $a4, 1
	st.w	$a1, $a0, 32
	addi.w	$a1, $a5, -1
	srli.d	$a1, $a1, 1
	stptr.w	$a1, $a2, 14456
	ldptr.w	$a1, $a0, 5116
	bnez	$a1, .LBB3_189
	b	.LBB3_195
	.p2align	4, , 16
.LBB3_183:                              # %if.then34
                                        #   in Loop: Header=BB3_148 Depth=1
	st.w	$zero, $sp, 112
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$a0, $s6, %pc_lo12(rdopt)
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, %pc_lo12(encode_one_macroblock)
	jirl	$ra, $a0, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(write_one_macroblock)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 116
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(terminate_macroblock)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 112
	beqz	$a0, .LBB3_145
# %bb.184:                              # %if.else
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a0, $s8, 0
	ld.w	$a0, $a0, 12
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	st.w	$a0, $a1, 12
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB3_147
# %bb.185:                              # %if.then49
                                        #   in Loop: Header=BB3_148 Depth=1
	ori	$a2, $zero, 84
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	move	$a0, $s1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 300
	move	$a0, $s1
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
	b	.LBB3_147
	.p2align	4, , 16
.LBB3_186:                              # %if.end165.thread
                                        #   in Loop: Header=BB3_148 Depth=1
	move	$a3, $zero
	stptr.w	$zero, $a2, 15416
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
.LBB3_187:                              # %lor.lhs.false172
                                        #   in Loop: Header=BB3_148 Depth=1
	addi.w	$a1, $a1, 0
	ori	$a4, $zero, 3
	bne	$a1, $a4, .LBB3_196
# %bb.188:                              # %if.then176.thread
                                        #   in Loop: Header=BB3_148 Depth=1
	stptr.w	$zero, $a2, 14464
	st.w	$zero, $s5, %pc_lo12(MBPairIsField)
	ldptr.w	$a1, $a0, 5116
	beqz	$a1, .LBB3_195
.LBB3_189:                              # %land.lhs.true191
                                        #   in Loop: Header=BB3_148 Depth=1
	beqz	$a3, .LBB3_193
# %bb.190:                              # %land.lhs.true195
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a1, $a2, 15388
	blt	$a1, $fp, .LBB3_193
# %bb.191:                              # %land.lhs.true199
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a2, $a2, 15404
	mod.wu	$a1, $a1, $a2
	bnez	$a1, .LBB3_193
# %bb.192:                              # %if.end206
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(quadratic_RC)
	pcalau12i	$a1, %pc_hi20(quadratic_RC_best)
	ld.d	$a1, $a1, %pc_lo12(quadratic_RC_best)
	pcaddu18i	$ra, %call36(copy_rc_jvt)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	ldptr.w	$a1, $a0, 5116
	beqz	$a1, .LBB3_195
	.p2align	4, , 16
.LBB3_193:                              # %land.lhs.true209
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a0, $a0, 4708
	bne	$a0, $s2, .LBB3_195
# %bb.194:                              # %if.then213
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(generic_RC)
	pcalau12i	$a1, %pc_hi20(generic_RC_best)
	ld.d	$a1, $a1, %pc_lo12(generic_RC_best)
	pcaddu18i	$ra, %call36(copy_rc_generic)
	jirl	$ra, $ra, 0
.LBB3_195:                              # %if.end218
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a2, $s8, 0
	ld.w	$a0, $s5, %pc_lo12(MBPairIsField)
	ori	$a1, $zero, 1
	stptr.w	$a1, $a2, 15416
	ori	$fp, $zero, 1
	stptr.w	$a1, $a2, 15408
	sltu	$a0, $zero, $a0
	b	.LBB3_197
	.p2align	4, , 16
.LBB3_196:                              # %if.end218.thread
                                        #   in Loop: Header=BB3_148 Depth=1
	ori	$a0, $zero, 1
	stptr.w	$a0, $a2, 14464
	st.w	$a0, $s5, %pc_lo12(MBPairIsField)
	stptr.w	$a0, $a2, 15408
.LBB3_197:                              # %if.end225
                                        #   in Loop: Header=BB3_148 Depth=1
	ldptr.w	$a1, $a2, 14464
	stptr.w	$a0, $a2, 14468
	stptr.w	$zero, $a2, 15412
	move	$a0, $s0
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ldptr.w	$a0, $a0, 14464
	sltui	$a0, $a0, 1
	masknez	$a1, $s7, $a0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $s6, %pc_lo12(rdopt)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(copy_rdopt_data)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(write_one_macroblock)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 116
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(terminate_macroblock)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 112
	beqz	$a0, .LBB3_204
# %bb.198:                              # %if.else268
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a0, $s8, 0
	ld.w	$a0, $a0, 12
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	st.w	$a0, $a1, 12
	lu12i.w	$s7, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB3_200
.LBB3_199:                              # %if.then275
                                        #   in Loop: Header=BB3_148 Depth=1
	pcalau12i	$a0, %pc_hi20(errortext)
	addi.d	$s4, $a0, %pc_lo12(errortext)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 84
	move	$a0, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 300
	move	$a0, $s4
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(error)
	jirl	$ra, $ra, 0
.LBB3_200:                              # %if.end278
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.w	$a1, $s5, %pc_lo12(MBPairIsField)
	ld.d	$a0, $s8, 0
	beqz	$a1, .LBB3_202
.LBB3_201:                              # %if.then280
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a1, $s4, 0
	ldptr.w	$a2, $a0, 15240
	ld.w	$a3, $a1, 32
	srli.d	$a2, $a2, 1
	ldx.w	$a4, $a0, $s1
	stptr.w	$a2, $a0, 15240
	srli.d	$a2, $a3, 1
	st.w	$a2, $a1, 32
	addi.w	$a1, $a4, -1
	srli.d	$a1, $a1, 1
	stptr.w	$a1, $a0, 14456
.LBB3_202:                              # %if.end289
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.w	$a1, $sp, 116
	stptr.d	$zero, $a0, 14464
	bnez	$a1, .LBB3_215
# %bb.203:                              # %if.then293
                                        #   in Loop: Header=BB3_148 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FmoMB2SliceGroup)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(FmoGetLastCodedMBOfSliceGroup)
	jirl	$ra, $ra, 0
	bne	$s0, $a0, .LBB3_147
	b	.LBB3_214
	.p2align	4, , 16
.LBB3_204:                              # %if.then232
                                        #   in Loop: Header=BB3_148 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FmoGetNextMBNr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	lu12i.w	$s7, 3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bne	$s0, $a0, .LBB3_206
# %bb.205:                              # %if.then236
                                        #   in Loop: Header=BB3_148 Depth=1
	st.w	$fp, $sp, 116
.LBB3_206:                              # %if.end237
                                        #   in Loop: Header=BB3_148 Depth=1
	pcaddu18i	$ra, %call36(proceed2nextMacroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ldptr.w	$a1, $a0, 14464
	stptr.w	$fp, $a0, 15412
	stptr.w	$zero, $a0, 14468
	move	$a0, $s0
	pcaddu18i	$ra, %call36(start_macroblock)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	ldptr.w	$a0, $a0, 14464
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(rddata_bot_field_mb)
	addi.d	$a1, $a1, %pc_lo12(rddata_bot_field_mb)
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	st.d	$a0, $s6, %pc_lo12(rdopt)
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(copy_rdopt_data)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(write_one_macroblock)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 116
	addi.d	$a1, $sp, 112
	pcaddu18i	$ra, %call36(terminate_macroblock)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 112
	beqz	$a0, .LBB3_208
# %bb.207:                              # %if.else254
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a0, $s8, 0
	ld.w	$a0, $a0, 12
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	st.w	$a0, $a1, 12
	pcaddu18i	$ra, %call36(FmoGetPreviousMBNr)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	st.w	$a0, $a1, 12
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB3_200
	b	.LBB3_199
.LBB3_208:                              # %if.then247
                                        #   in Loop: Header=BB3_148 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(FmoGetNextMBNr)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bne	$s0, $a0, .LBB3_210
# %bb.209:                              # %if.then251
                                        #   in Loop: Header=BB3_148 Depth=1
	st.w	$fp, $sp, 116
.LBB3_210:                              # %if.end252
                                        #   in Loop: Header=BB3_148 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(proceed2nextMacroblock)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, %pc_lo12(MBPairIsField)
	ld.d	$a0, $s8, 0
	bnez	$a1, .LBB3_201
	b	.LBB3_202
.LBB3_211:                              # %if.then41
                                        #   in Loop: Header=BB3_148 Depth=1
	st.w	$fp, $sp, 116
	b	.LBB3_146
.LBB3_212:                              # %if.then236.i
	move	$a0, $zero
.LBB3_213:                              # %if.end243.i
	pcaddu18i	$ra, %call36(estimate_weighting_factor_P_slice)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	ori	$a0, $zero, 1
	bge	$a1, $a0, .LBB3_92
	b	.LBB3_94
.LBB3_214:                              # %if.then298
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 116
.LBB3_215:                              # %while.end.loopexit
	ld.d	$a1, $s8, 0
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
.LBB3_216:                              # %while.end
	ldptr.w	$a0, $a1, 15348
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.w	$a1, $fp, $a1
	slt	$a0, $a1, $a0
	xori	$a0, $a0, 1
	pcaddu18i	$ra, %call36(terminate_slice)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end3:
	.size	encode_one_slice, .Lfunc_end3-encode_one_slice
                                        # -- End function
	.globl	free_slice_list                 # -- Begin function free_slice_list
	.p2align	5
	.type	free_slice_list,@function
free_slice_list:                        # @free_slice_list
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
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	ori	$s1, $zero, 1
	blt	$a0, $s1, .LBB4_17
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a1, %got_pc_hi20(input)
	ld.d	$s2, $a1, %got_pc_lo12(input)
	move	$s3, $zero
	addi.d	$s4, $fp, 8
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_2:                                # %if.end21.i
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
.LBB4_3:                                # %free_slice.exit
                                        #   in Loop: Header=BB4_4 Depth=1
	alsl.d	$a1, $s3, $s4, 3
	addi.d	$s3, $s3, 1
	st.d	$zero, $a1, 0
	bge	$s3, $a0, .LBB4_17
.LBB4_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
	slli.d	$a1, $s3, 3
	ldx.d	$s0, $s4, $a1
	beqz	$s0, .LBB4_3
# %bb.5:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a0, $s0, 16
	blt	$a0, $s1, .LBB4_13
# %bb.6:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s7, $s0, 24
	beqz	$s7, .LBB4_13
# %bb.7:                                # %for.body.i.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s5, $zero
	ori	$s6, $zero, 1
	beqz	$s7, .LBB4_11
	.p2align	4, , 16
.LBB4_8:                                # %if.then3.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ldx.d	$a0, $s7, $s5
	ld.d	$a1, $a0, 32
	beqz	$a1, .LBB4_10
# %bb.9:                                # %if.end.i
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ldx.d	$a0, $s7, $s5
	beqz	$a0, .LBB4_11
.LBB4_10:                               # %if.then10.i
                                        #   in Loop: Header=BB4_4 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %for.inc.i
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s0, 16
	bge	$s6, $a0, .LBB4_13
# %bb.12:                               # %for.bodythread-pre-split.i
                                        #   in Loop: Header=BB4_11 Depth=2
	ld.d	$s7, $s0, 24
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 104
	bnez	$s7, .LBB4_8
	b	.LBB4_11
	.p2align	4, , 16
.LBB4_13:                               # %for.end.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s0, 24
	beqz	$a0, .LBB4_15
# %bb.14:                               # %if.then16.i
                                        #   in Loop: Header=BB4_4 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_15:                               # %if.end18.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s2, 0
	ldptr.w	$a0, $a0, 4008
	bne	$a0, $s1, .LBB4_2
# %bb.16:                               # %if.then20.i
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s0, 32
	pcaddu18i	$ra, %call36(delete_contexts_MotionInfo)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 40
	pcaddu18i	$ra, %call36(delete_contexts_TextureInfo)
	jirl	$ra, $ra, 0
	b	.LBB4_2
.LBB4_17:                               # %for.end
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
.Lfunc_end4:
	.size	free_slice_list, .Lfunc_end4-free_slice_list
                                        # -- End function
	.globl	poc_ref_pic_reorder             # -- Begin function poc_ref_pic_reorder
	.p2align	5
	.type	poc_ref_pic_reorder,@function
poc_ref_pic_reorder:                    # @poc_ref_pic_reorder
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -784
	st.d	$ra, $sp, 776                   # 8-byte Folded Spill
	st.d	$fp, $sp, 768                   # 8-byte Folded Spill
	st.d	$s0, $sp, 760                   # 8-byte Folded Spill
	st.d	$s1, $sp, 752                   # 8-byte Folded Spill
	st.d	$s2, $sp, 744                   # 8-byte Folded Spill
	st.d	$s3, $sp, 736                   # 8-byte Folded Spill
	st.d	$s4, $sp, 728                   # 8-byte Folded Spill
	st.d	$s5, $sp, 720                   # 8-byte Folded Spill
	st.d	$s6, $sp, 712                   # 8-byte Folded Spill
	st.d	$s7, $sp, 704                   # 8-byte Folded Spill
	st.d	$s8, $sp, 696                   # 8-byte Folded Spill
	lu12i.w	$a4, 1
	bstrpick.d	$ra, $a1, 31, 0
	beqz	$a1, .LBB5_8
# %bb.1:                                # %for.body.preheader
	ori	$a6, $zero, 8
	bgeu	$a1, $a6, .LBB5_3
# %bb.2:
	move	$a6, $zero
	b	.LBB5_6
.LBB5_3:                                # %vector.ph
	bstrpick.d	$a6, $ra, 31, 3
	slli.d	$a6, $a6, 3
	addi.d	$a7, $a0, 32
	addi.d	$t0, $sp, 584
	ori	$t1, $a4, 2268
	move	$t2, $a6
	.p2align	4, , 16
.LBB5_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t3, $a7, -32
	ld.d	$t4, $a7, -24
	ld.d	$t5, $a7, -16
	ld.d	$t6, $a7, -8
	ld.d	$t7, $a7, 0
	ld.d	$t8, $a7, 8
	ld.d	$fp, $a7, 16
	ld.d	$s0, $a7, 24
	ldx.w	$t3, $t3, $t1
	ldx.w	$t4, $t4, $t1
	ldx.w	$t5, $t5, $t1
	ldx.w	$t6, $t6, $t1
	vinsgr2vr.w	$vr0, $t3, 0
	vinsgr2vr.w	$vr0, $t4, 1
	vinsgr2vr.w	$vr0, $t5, 2
	vinsgr2vr.w	$vr0, $t6, 3
	ldx.w	$t3, $t7, $t1
	ldx.w	$t4, $t8, $t1
	ldx.w	$t5, $fp, $t1
	ldx.w	$t6, $s0, $t1
	vinsgr2vr.w	$vr1, $t3, 0
	vinsgr2vr.w	$vr1, $t4, 1
	vinsgr2vr.w	$vr1, $t5, 2
	vinsgr2vr.w	$vr1, $t6, 3
	vst	$vr0, $t0, -16
	vst	$vr1, $t0, 0
	addi.d	$t2, $t2, -8
	addi.d	$a7, $a7, 64
	addi.d	$t0, $t0, 32
	bnez	$t2, .LBB5_4
# %bb.5:                                # %middle.block
	beq	$a6, $ra, .LBB5_8
.LBB5_6:                                # %for.body.preheader211
	alsl.d	$a0, $a6, $a0, 3
	addi.d	$a7, $sp, 568
	alsl.d	$a7, $a6, $a7, 2
	sub.d	$a6, $ra, $a6
	ori	$t0, $a4, 2268
	.p2align	4, , 16
.LBB5_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a0, 0
	ldx.w	$t1, $t1, $t0
	st.w	$t1, $a7, 0
	addi.d	$a0, $a0, 8
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 4
	bnez	$a6, .LBB5_7
.LBB5_8:                                # %for.cond7.preheader
	pcalau12i	$a0, %got_pc_hi20(dpb)
	ld.d	$a7, $a0, %got_pc_lo12(dpb)
	ld.w	$a6, $a7, 32
	bstrpick.d	$a0, $a6, 31, 0
	beqz	$a6, .LBB5_19
# %bb.9:                                # %for.body9.lr.ph
	pcalau12i	$t0, %got_pc_hi20(enc_picture)
	ld.d	$t0, $t0, %got_pc_lo12(enc_picture)
	ld.d	$a7, $a7, 8
	ld.d	$t0, $t0, 0
	addi.d	$t1, $sp, 440
	addi.d	$t2, $sp, 56
	addi.d	$t3, $sp, 184
	ori	$a4, $a4, 2268
	ori	$t4, $zero, 3
	sltui	$t5, $a5, 1
	move	$t6, $a0
	b	.LBB5_11
	.p2align	4, , 16
.LBB5_10:                               # %for.inc55
                                        #   in Loop: Header=BB5_11 Depth=1
	addi.d	$a7, $a7, 8
	addi.d	$t1, $t1, 4
	addi.d	$t2, $t2, 4
	addi.d	$t6, $t6, -1
	addi.d	$t3, $t3, 4
	beqz	$t6, .LBB5_15
.LBB5_11:                               # %for.body9
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t8, $a7, 0
	ld.d	$t7, $t8, 40
	ldx.w	$fp, $t7, $a4
	ld.w	$t8, $t8, 0
	st.w	$fp, $t1, 0
	bne	$t8, $t4, .LBB5_10
# %bb.12:                               # %land.lhs.true
                                        #   in Loop: Header=BB5_11 Depth=1
	ldptr.w	$t8, $t7, 6380
	beqz	$t8, .LBB5_10
# %bb.13:                               # %land.lhs.true21
                                        #   in Loop: Header=BB5_11 Depth=1
	ldptr.w	$t8, $t7, 6376
	bnez	$t8, .LBB5_10
# %bb.14:                               # %if.then26
                                        #   in Loop: Header=BB5_11 Depth=1
	ld.w	$t7, $t7, 4
	ld.w	$t8, $t0, 4
	sub.w	$fp, $t7, $t8
	srai.d	$s0, $fp, 31
	xor	$fp, $fp, $s0
	sub.d	$fp, $fp, $s0
	st.w	$fp, $t2, 0
	slt	$fp, $t7, $t8
	slt	$t7, $t8, $t7
	masknez	$t8, $fp, $t5
	maskeqz	$t7, $t7, $t5
	or	$t7, $t7, $t8
	addi.d	$t7, $t7, -1
	ori	$t7, $t7, 1
	st.w	$t7, $t3, 0
	b	.LBB5_10
.LBB5_15:                               # %for.cond58.preheader
	addi.w	$a4, $a6, -1
	bnez	$a4, .LBB5_20
.LBB5_16:                               # %for.cond114.preheader
	beqz	$a1, .LBB5_54
# %bb.17:                               # %iter.check
	ori	$a0, $zero, 3
	bltu	$a0, $a1, .LBB5_30
# %bb.18:
	move	$a0, $zero
	ori	$a4, $zero, 1
	b	.LBB5_39
.LBB5_19:
	addi.w	$a4, $zero, -1
.LBB5_20:                               # %for.body61.preheader
	move	$t3, $zero
	bstrpick.d	$a6, $a4, 31, 0
	addi.d	$a7, $sp, 188
	addi.d	$t0, $sp, 60
	addi.d	$t1, $sp, 444
	addi.d	$t2, $sp, 56
	addi.d	$t4, $sp, 184
	addi.d	$t5, $sp, 440
	b	.LBB5_22
	.p2align	4, , 16
.LBB5_21:                               # %for.cond58.loopexit
                                        #   in Loop: Header=BB5_22 Depth=1
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	addi.d	$a4, $a4, -1
	beq	$t3, $a6, .LBB5_16
.LBB5_22:                               # %for.body61
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_27 Depth 2
	move	$t8, $t3
	addi.d	$t3, $t3, 1
	bgeu	$t3, $a0, .LBB5_21
# %bb.23:                               # %for.body65.lr.ph
                                        #   in Loop: Header=BB5_22 Depth=1
	alsl.d	$t6, $t8, $t2, 2
	alsl.d	$t7, $t8, $t4, 2
	alsl.d	$t8, $t8, $t5, 2
	move	$fp, $a4
	move	$s1, $t1
	move	$s2, $t0
	move	$s3, $a7
	b	.LBB5_27
	.p2align	4, , 16
.LBB5_24:                               # %for.body65.if.then82_crit_edge
                                        #   in Loop: Header=BB5_27 Depth=2
	ld.w	$s6, $t7, 0
	ld.w	$s7, $s3, 0
.LBB5_25:                               # %if.then82
                                        #   in Loop: Header=BB5_27 Depth=2
	ld.w	$s0, $s1, 0
	ld.w	$s8, $t8, 0
	st.w	$s5, $t6, 0
	st.w	$s4, $s2, 0
	st.w	$s0, $t8, 0
	st.w	$s8, $s1, 0
	st.w	$s7, $t7, 0
	st.w	$s6, $s3, 0
.LBB5_26:                               # %for.inc108
                                        #   in Loop: Header=BB5_27 Depth=2
	addi.d	$s3, $s3, 4
	addi.d	$s2, $s2, 4
	addi.w	$fp, $fp, -1
	addi.d	$s1, $s1, 4
	beqz	$fp, .LBB5_21
.LBB5_27:                               # %for.body65
                                        #   Parent Loop BB5_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s4, $t6, 0
	ld.w	$s5, $s2, 0
	blt	$s5, $s4, .LBB5_24
# %bb.28:                               # %lor.lhs.false
                                        #   in Loop: Header=BB5_27 Depth=2
	bne	$s4, $s5, .LBB5_26
# %bb.29:                               # %land.lhs.true76
                                        #   in Loop: Header=BB5_27 Depth=2
	ld.w	$s7, $s3, 0
	ld.w	$s6, $t7, 0
	blt	$s6, $s7, .LBB5_25
	b	.LBB5_26
.LBB5_30:                               # %vector.main.loop.iter.check
	ori	$a0, $zero, 16
	bgeu	$a1, $a0, .LBB5_32
# %bb.31:
	move	$a0, $zero
	ori	$a4, $zero, 1
	b	.LBB5_36
.LBB5_32:                               # %vector.ph181
	bstrpick.d	$a0, $ra, 31, 4
	slli.d	$a0, $a0, 4
	addi.d	$a4, $sp, 472
	vrepli.b	$vr0, 0
	addi.d	$a6, $sp, 600
	xvrepli.b	$xr1, -1
	move	$a7, $a0
	vori.b	$vr2, $vr0, 0
	.p2align	4, , 16
.LBB5_33:                               # %vector.body184
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a6, -32
	xvld	$xr4, $a4, -32
	xvld	$xr5, $a6, 0
	xvld	$xr6, $a4, 0
	xvseq.w	$xr3, $xr3, $xr4
	xvxor.v	$xr3, $xr3, $xr1
	xvpickve2gr.w	$t0, $xr3, 0
	vinsgr2vr.h	$vr4, $t0, 0
	xvpickve2gr.w	$t0, $xr3, 1
	vinsgr2vr.h	$vr4, $t0, 1
	xvpickve2gr.w	$t0, $xr3, 2
	vinsgr2vr.h	$vr4, $t0, 2
	xvpickve2gr.w	$t0, $xr3, 3
	vinsgr2vr.h	$vr4, $t0, 3
	xvpickve2gr.w	$t0, $xr3, 4
	vinsgr2vr.h	$vr4, $t0, 4
	xvpickve2gr.w	$t0, $xr3, 5
	vinsgr2vr.h	$vr4, $t0, 5
	xvpickve2gr.w	$t0, $xr3, 6
	vinsgr2vr.h	$vr4, $t0, 6
	xvpickve2gr.w	$t0, $xr3, 7
	vinsgr2vr.h	$vr4, $t0, 7
	xvseq.w	$xr3, $xr5, $xr6
	xvxor.v	$xr3, $xr3, $xr1
	xvpickve2gr.w	$t0, $xr3, 0
	vinsgr2vr.h	$vr5, $t0, 0
	xvpickve2gr.w	$t0, $xr3, 1
	vinsgr2vr.h	$vr5, $t0, 1
	xvpickve2gr.w	$t0, $xr3, 2
	vinsgr2vr.h	$vr5, $t0, 2
	xvpickve2gr.w	$t0, $xr3, 3
	vinsgr2vr.h	$vr5, $t0, 3
	xvpickve2gr.w	$t0, $xr3, 4
	vinsgr2vr.h	$vr5, $t0, 4
	xvpickve2gr.w	$t0, $xr3, 5
	vinsgr2vr.h	$vr5, $t0, 5
	xvpickve2gr.w	$t0, $xr3, 6
	vinsgr2vr.h	$vr5, $t0, 6
	xvpickve2gr.w	$t0, $xr3, 7
	vinsgr2vr.h	$vr5, $t0, 7
	vor.v	$vr0, $vr0, $vr4
	vor.v	$vr2, $vr2, $vr5
	addi.d	$a7, $a7, -16
	addi.d	$a4, $a4, 64
	addi.d	$a6, $a6, 64
	bnez	$a7, .LBB5_33
# %bb.34:                               # %middle.block192
	vor.v	$vr0, $vr2, $vr0
	vslli.h	$vr0, $vr0, 15
	vmskltz.h	$vr0, $vr0
	vpickve2gr.hu	$a4, $vr0, 0
	sltui	$a4, $a4, 1
	beq	$a0, $ra, .LBB5_41
# %bb.35:                               # %vec.epilog.iter.check
	andi	$a6, $ra, 12
	beqz	$a6, .LBB5_39
.LBB5_36:                               # %vec.epilog.ph
	move	$a7, $a0
	sltui	$a4, $a4, 1
	bstrpick.d	$a0, $ra, 31, 2
	slli.d	$a0, $a0, 2
	vreplgr2vr.w	$vr0, $a4
	sub.d	$a4, $a7, $a0
	addi.d	$a6, $sp, 440
	alsl.d	$a6, $a7, $a6, 2
	addi.d	$t0, $sp, 568
	alsl.d	$a7, $a7, $t0, 2
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB5_37:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a7, 0
	vld	$vr3, $a6, 0
	vseq.w	$vr2, $vr2, $vr3
	vxor.v	$vr2, $vr2, $vr1
	vor.v	$vr0, $vr0, $vr2
	addi.d	$a4, $a4, 4
	addi.d	$a6, $a6, 16
	addi.d	$a7, $a7, 16
	bnez	$a4, .LBB5_37
# %bb.38:                               # %vec.epilog.middle.block
	vslli.w	$vr0, $vr0, 31
	vmskltz.w	$vr0, $vr0
	vpickve2gr.hu	$a4, $vr0, 0
	sltui	$a4, $a4, 1
	beq	$a0, $ra, .LBB5_41
.LBB5_39:                               # %for.body116.preheader
	addi.d	$a6, $sp, 568
	alsl.d	$a6, $a0, $a6, 2
	addi.d	$a7, $sp, 440
	alsl.d	$a7, $a0, $a7, 2
	sub.d	$a0, $ra, $a0
	.p2align	4, , 16
.LBB5_40:                               # %for.body116
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t0, $a6, 0
	ld.w	$t1, $a7, 0
	xor	$t0, $t0, $t1
	sltui	$t0, $t0, 1
	maskeqz	$a4, $a4, $t0
	addi.d	$a6, $a6, 4
	addi.d	$a0, $a0, -1
	addi.d	$a7, $a7, 4
	bnez	$a0, .LBB5_40
.LBB5_41:                               # %for.end126
	bnez	$a4, .LBB5_54
# %bb.42:                               # %for.body131.lr.ph
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ld.d	$s3, $a0, 0
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3044
	ldx.w	$a0, $s3, $a0
	move	$s2, $zero
	ld.w	$a4, $s3, 24
	pcalau12i	$a6, %pc_hi20(log2_max_frame_num_minus4)
	slli.d	$a7, $a0, 1
	ld.w	$a6, $a6, %pc_lo12(log2_max_frame_num_minus4)
	sltui	$a4, $a4, 1
	addi.w	$a7, $a7, 1
	ori	$t0, $zero, 2
	addi.d	$a6, $a6, 4
	maskeqz	$a0, $a0, $a4
	masknez	$a7, $a7, $a4
	sub.d	$a4, $t0, $a4
	or	$s7, $a0, $a7
	sll.w	$a0, $a4, $a6
	addi.d	$t2, $a0, -1
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$s4, $a0, 2
	addi.w	$s5, $a1, -1
	bstrpick.d	$t5, $s5, 31, 0
	addi.d	$t6, $sp, 568
	ori	$s6, $zero, 4
	addi.d	$fp, $sp, 440
	addi.d	$s1, $sp, 312
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.d	$t2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$t5, $sp, 8                     # 8-byte Folded Spill
.LBB5_43:                               # %for.body131
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_45 Depth 2
                                        #     Child Loop BB5_49 Depth 2
	move	$a0, $s7
	slli.d	$a4, $s2, 2
	ldx.w	$s7, $a4, $fp
	sub.w	$a6, $s7, $a0
	slt	$a7, $zero, $a6
	nor	$t0, $a6, $zero
	xor	$a0, $s7, $a0
	sltui	$a0, $a0, 1
	masknez	$t0, $t0, $a0
	maskeqz	$a0, $t2, $a0
	or	$a0, $a0, $t0
	addi.d	$a6, $a6, -1
	maskeqz	$a6, $a6, $a7
	masknez	$a0, $a0, $a7
	or	$a0, $a6, $a0
	stx.w	$a7, $a2, $a4
	stx.w	$a0, $a3, $a4
	stx.w	$s7, $a4, $s1
	move	$a0, $ra
	move	$a4, $t6
	move	$a6, $s2
	b	.LBB5_45
	.p2align	4, , 16
.LBB5_44:                               # %for.inc180
                                        #   in Loop: Header=BB5_45 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a4, $a4, 4
	beqz	$a0, .LBB5_47
.LBB5_45:                               # %for.body167
                                        #   Parent Loop BB5_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a4, 0
	beq	$a7, $s7, .LBB5_44
# %bb.46:                               # %if.then173
                                        #   in Loop: Header=BB5_45 Depth=2
	addi.w	$a6, $a6, 1
	bstrpick.d	$t0, $a6, 31, 0
	slli.d	$t0, $t0, 2
	stx.w	$a7, $t0, $s1
	b	.LBB5_44
	.p2align	4, , 16
.LBB5_47:                               # %for.end182
                                        #   in Loop: Header=BB5_43 Depth=1
	beq	$s2, $t5, .LBB5_53
# %bb.48:                               #   in Loop: Header=BB5_43 Depth=1
	st.d	$t6, $sp, 48                    # 8-byte Folded Spill
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	addi.d	$s2, $s2, 1
	move	$a0, $s5
	move	$a1, $s6
	.p2align	4, , 16
.LBB5_49:                               # %for.body186
                                        #   Parent Loop BB5_43 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.w	$a3, $a1, $s1
	ldx.w	$a4, $a1, $fp
	bne	$a3, $a4, .LBB5_51
# %bb.50:                               # %for.cond184
                                        #   in Loop: Header=BB5_49 Depth=2
	addi.w	$a0, $a0, -1
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB5_49
	b	.LBB5_52
	.p2align	4, , 16
.LBB5_51:                               # %for.body203.preheader
                                        #   in Loop: Header=BB5_43 Depth=1
	addi.d	$a0, $sp, 568
	addi.d	$a1, $sp, 312
	move	$s0, $a2
	move	$a2, $s4
	move	$s8, $a5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a2, $s0
	move	$a5, $s8
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	addi.d	$t6, $t6, 4
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$ra, $ra, -1
	addi.d	$s6, $s6, 4
	addi.d	$s5, $s5, -1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 8                     # 8-byte Folded Reload
	b	.LBB5_43
.LBB5_52:                               # %for.end213.loopexit
	move	$a1, $s2
.LBB5_53:                               # %for.end213
	bstrpick.d	$a0, $a1, 31, 0
	slli.d	$a0, $a0, 2
	ori	$a1, $zero, 3
	stx.w	$a1, $a2, $a0
	sltui	$a0, $a5, 1
	ori	$a1, $zero, 80
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 48
	ldptr.d	$a3, $s3, 14216
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 1
	stx.w	$a1, $a3, $a0
.LBB5_54:                               # %if.end231
	ld.d	$s8, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 728                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 736                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 760                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 768                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 776                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 784
	ret
.Lfunc_end5:
	.size	poc_ref_pic_reorder, .Lfunc_end5-poc_ref_pic_reorder
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function SetLagrangianMultipliers
.LCPI6_0:
	.dword	0x3fa999999999999a              # double 0.050000000000000003
.LCPI6_1:
	.dword	0x3fee666666666666              # double 0.94999999999999996
.LCPI6_2:
	.dword	0x40f0000000000000              # double 65536
.LCPI6_3:
	.dword	0x3feb333333333333              # double 0.84999999999999998
.LCPI6_4:
	.dword	0x3ff6666666666666              # double 1.3999999999999999
.LCPI6_5:
	.dword	0x3fe5c28f5c28f5c3              # double 0.68000000000000005
.LCPI6_6:
	.dword	0x3fe999999999999a              # double 0.80000000000000004
.LCPI6_7:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
.LCPI6_8:
	.dword	0x3fd999999999999a              # double 0.40000000000000002
.LCPI6_9:
	.dword	0x3fe62e42fefa39ef              # double 0.69314718055994529
	.text
	.globl	SetLagrangianMultipliers
	.p2align	5
	.type	SetLagrangianMultipliers,@function
SetLagrangianMultipliers:               # @SetLagrangianMultipliers
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 96                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	ldptr.w	$a1, $s0, 4168
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a4, $a0, 0
	addi.w	$a0, $zero, -51
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LCPI6_2)
	pcalau12i	$a2, %pc_hi20(.LCPI6_9)
	beqz	$a1, .LBB6_128
# %bb.1:                                # %for.body.preheader
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a1, $s0, 20
	pcalau12i	$a2, %pc_hi20(.LCPI6_0)
	fld.d	$fa0, $a2, %pc_lo12(.LCPI6_0)
	move	$s2, $zero
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fmul.d	$fa0, $fa1, $fa0
	movgr2fr.d	$fa1, $zero
	fmax.d	$fa0, $fa0, $fa1
	vldi	$vr1, -928
	fmin.d	$fa0, $fa0, $fa1
	vldi	$vr1, -912
	fsub.d	$fs1, $fa1, $fa0
	ori	$s5, $zero, 2
	lu12i.w	$a1, 1
	ori	$a2, $a1, 1248
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.LCPI6_1)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	fld.d	$fs2, $a2, %pc_lo12(.LCPI6_1)
	ori	$a5, $zero, 1
	vldi	$vr4, -928
	fld.d	$fs3, $a0, %pc_lo12(.LCPI6_2)
	ori	$a0, $a1, 1288
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %for.inc589
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$s2, $s2, 1
	ori	$a0, $zero, 5
	beq	$s2, $a0, .LBB6_139
.LBB6_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_7 Depth 2
	ldptr.w	$a0, $a4, 15452
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB6_2
# %bb.4:                                # %for.body6.lr.ph
                                        #   in Loop: Header=BB6_3 Depth=1
	sub.w	$s4, $zero, $a0
	slli.d	$a0, $a0, 3
	sub.d	$s7, $zero, $a0
	slli.d	$a0, $s2, 3
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$s8, $s4
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	b	.LBB6_7
	.p2align	4, , 16
.LBB6_5:                                #   in Loop: Header=BB6_7 Depth=2
	ori	$s5, $zero, 2
.LBB6_6:                                # %for.inc586
                                        #   in Loop: Header=BB6_7 Depth=2
	addi.d	$s8, $s8, 1
	bstrpick.d	$a0, $s8, 31, 0
	addi.d	$s7, $s7, 8
	addi.w	$s4, $s4, 1
	ori	$a1, $zero, 52
	beq	$a0, $a1, .LBB6_2
.LBB6_7:                                # %for.body6
                                        #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldptr.w	$a0, $s0, 5288
	beq	$a0, $s5, .LBB6_11
# %bb.8:                                # %for.body6
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a1, $a4, 15452
	movgr2fr.w	$fa0, $s4
	ffint.d.w	$fa0, $fa0
	movgr2fr.w	$fa1, $a1
	ffint.d.w	$fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	vldi	$vr1, -856
	fadd.d	$fs0, $fa0, $fa1
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB6_15
# %bb.9:                                # %if.then13
                                        #   in Loop: Header=BB6_7 Depth=2
	alsl.d	$a0, $s2, $s0, 3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1200
	fldx.d	$fs4, $a0, $a1
	vldi	$vr0, -1016
	fdiv.d	$fs0, $fs0, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ldptr.w	$a0, $s0, 5784
	bne	$a0, $s5, .LBB6_19
# %bb.10:                               # %land.rhs
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5788
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa1, $a1, %pc_lo12(.LCPI6_1)
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	movgr2cf	$fcc0, $a0
	vldi	$vr2, -912
	fsel	$fa1, $fa1, $fa2, $fcc0
	b	.LBB6_20
	.p2align	4, , 16
.LBB6_11:                               # %if.then160
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5784
	fmov.d	$fa0, $fs2
	bne	$a0, $s5, .LBB6_13
# %bb.12:                               # %land.rhs172
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5788
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	movgr2cf	$fcc0, $a0
	vldi	$vr0, -912
	fsel	$fa0, $fs2, $fa0, $fcc0
.LBB6_13:                               # %land.end177
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.d	$fp, $a4, 15488
	alsl.d	$a0, $s2, $s0, 3
	ldptr.d	$s5, $a4, 15496
	ldptr.d	$s6, $a4, 15480
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a1, $fp, $a3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	fldx.d	$fa1, $a0, $a2
	ldx.d	$a0, $s5, $a3
	ldx.d	$s2, $s6, $a3
	ldx.d	$s3, $a1, $s7
	ldptr.w	$a1, $s0, 5780
	ldx.d	$s1, $a0, $s7
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $s2, $s7
	bne	$a1, $a5, .LBB6_32
# %bb.14:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_33
	.p2align	4, , 16
.LBB6_15:                               # %if.else315
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$fp, $s0, 2096
	vldi	$vr0, -1016
	fdiv.d	$fa0, $fs0, $fa0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 1
	blt	$fp, $a5, .LBB6_45
# %bb.16:                               # %if.then318
                                        #   in Loop: Header=BB6_7 Depth=2
	ori	$a0, $zero, 3
	beq	$s2, $a0, .LBB6_69
# %bb.17:                               # %if.then318
                                        #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr4, -928
	bne	$s2, $a5, .LBB6_70
# %bb.18:                               # %cond.true324
                                        #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr1, -1000
	fdiv.d	$fa1, $fs0, $fa1
	vldi	$vr2, -1024
	fmax.d	$fa1, $fa1, $fa2
	vldi	$vr2, -1008
	fmin.d	$fa1, $fa1, $fa2
	b	.LBB6_71
.LBB6_19:                               #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(.LCPI6_1)
.LBB6_20:                               # %land.end
                                        #   in Loop: Header=BB6_7 Depth=2
	ori	$a5, $zero, 1
	vldi	$vr4, -928
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ldptr.d	$a0, $a4, 15488
	ldptr.d	$a1, $a4, 15496
	ldptr.d	$a2, $a4, 15480
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a3
	ldx.d	$a1, $a1, $a3
	ldx.d	$s1, $a2, $a3
	ldx.d	$s3, $a0, $s7
	ldptr.w	$a0, $s0, 5780
	ldx.d	$fp, $a1, $s7
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_22
# %bb.21:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_23
.LBB6_22:                               # %cond.false
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_110
.LBB6_23:                               # %cond.end
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s3, 0
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 0
	ldptr.w	$a0, $s0, 5784
	fldx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_25
# %bb.24:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_26
.LBB6_25:                               # %cond.false.1
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_111
.LBB6_26:                               # %cond.end.1
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s3, 8
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 4
	ldptr.w	$a0, $s0, 5788
	fldx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_28
# %bb.27:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_29
.LBB6_28:                               # %cond.false.2
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_112
.LBB6_29:                               # %cond.end.2
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s3, 16
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 8
	bne	$s2, $a5, .LBB6_6
# %bb.30:                               # %if.then82
                                        #   in Loop: Header=BB6_7 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1240
	fldx.d	$fs4, $s0, $a0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(exp2)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	ldptr.w	$a0, $s0, 5784
	bne	$a0, $s5, .LBB6_48
# %bb.31:                               # %land.rhs96
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5788
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa1, $a1, %pc_lo12(.LCPI6_1)
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	movgr2cf	$fcc0, $a0
	vldi	$vr2, -912
	fsel	$fa1, $fa1, $fa2, $fcc0
	b	.LBB6_49
.LBB6_32:                               # %cond.false205
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_113
.LBB6_33:                               # %cond.end212
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s3, 0
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s1, 0
	ldptr.w	$a0, $s0, 5784
	fldx.d	$fa1, $s2, $s7
	bne	$a0, $a5, .LBB6_35
# %bb.34:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_36
.LBB6_35:                               # %cond.false205.1
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_114
.LBB6_36:                               # %cond.end212.1
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s3, 8
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s1, 4
	ldptr.w	$a0, $s0, 5788
	fldx.d	$fa1, $s2, $s7
	bne	$a0, $a5, .LBB6_39
# %bb.37:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
.LBB6_38:                               # %cond.end212.2
                                        #   in Loop: Header=BB6_7 Depth=2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB6_40
.LBB6_39:                               # %cond.false205.2
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	bceqz	$fcc0, .LBB6_115
.LBB6_40:                               # %cond.end212.2
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s3, 16
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s1, 8
	bne	$s2, $a5, .LBB6_5
# %bb.41:                               # %if.then242
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5784
	fmov.d	$fa0, $fs2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB6_43
# %bb.42:                               # %land.rhs253
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5788
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	movgr2cf	$fcc0, $a0
	vldi	$vr0, -912
	fsel	$fa0, $fs2, $fa0, $fcc0
.LBB6_43:                               # %land.end258
                                        #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a0, $fp, 40
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	fldx.d	$fa1, $s0, $a1
	ld.d	$a1, $s5, 40
	ld.d	$s2, $s6, 40
	ldx.d	$s1, $a0, $s7
	ldptr.w	$a0, $s0, 5780
	ldx.d	$fp, $a1, $s7
	fmul.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $s2, $s7
	bne	$a0, $a5, .LBB6_59
# %bb.44:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	ori	$s5, $zero, 2
	b	.LBB6_60
.LBB6_45:                               # %if.else344
                                        #   in Loop: Header=BB6_7 Depth=2
	beq	$s2, $a5, .LBB6_72
# %bb.46:                               # %if.else344
                                        #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr4, -928
	ori	$a0, $zero, 3
	bne	$s2, $a0, .LBB6_73
# %bb.47:                               # %cond.true354
                                        #   in Loop: Header=BB6_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.LCPI6_4)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI6_4)
	vldi	$vr2, -984
	fdiv.d	$fa2, $fs0, $fa2
	fmax.d	$fa1, $fa2, $fa1
	vldi	$vr2, -1016
	fmin.d	$fa1, $fa1, $fa2
	b	.LBB6_74
.LBB6_48:                               #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa1, $a0, %pc_lo12(.LCPI6_1)
.LBB6_49:                               # %land.end101
                                        #   in Loop: Header=BB6_7 Depth=2
	ori	$a5, $zero, 1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ldptr.d	$a0, $a4, 15488
	ldptr.d	$a1, $a4, 15496
	ldptr.d	$a2, $a4, 15480
	ld.d	$a0, $a0, 40
	ld.d	$a1, $a1, 40
	ld.d	$s1, $a2, 40
	ldx.d	$s3, $a0, $s7
	ldptr.w	$a0, $s0, 5780
	ldx.d	$fp, $a1, $s7
	fmul.d	$fa0, $fs4, $fa0
	fmul.d	$fa1, $fa0, $fa1
	fstx.d	$fa1, $s1, $s7
	vldi	$vr4, -928
	bne	$a0, $a5, .LBB6_51
# %bb.50:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_52
.LBB6_51:                               # %cond.false126
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_119
.LBB6_52:                               # %cond.end132
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s3, 0
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 0
	ldptr.w	$a0, $s0, 5784
	fldx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_54
# %bb.53:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_55
.LBB6_54:                               # %cond.false126.1
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_120
.LBB6_55:                               # %cond.end132.1
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s3, 8
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 4
	ldptr.w	$a0, $s0, 5788
	fldx.d	$fa1, $s1, $s7
	bne	$a0, $a5, .LBB6_57
# %bb.56:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_58
.LBB6_57:                               # %cond.false126.2
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_121
.LBB6_58:                               # %cond.end132.2
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s3, 16
	b	.LBB6_68
.LBB6_59:                               # %cond.false283
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ori	$s5, $zero, 2
	bceqz	$fcc0, .LBB6_122
.LBB6_60:                               # %cond.end289
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s1, 0
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 0
	ldptr.w	$a0, $s0, 5784
	fldx.d	$fa1, $s2, $s7
	bne	$a0, $a5, .LBB6_62
# %bb.61:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_63
.LBB6_62:                               # %cond.false283.1
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_123
.LBB6_63:                               # %cond.end289.1
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s1, 8
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 4
	ldptr.w	$a0, $s0, 5788
	fldx.d	$fa1, $s2, $s7
	bne	$a0, $a5, .LBB6_66
# %bb.64:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
.LBB6_65:                               # %cond.end289.2
                                        #   in Loop: Header=BB6_7 Depth=2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB6_67
.LBB6_66:                               # %cond.false283.2
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	bceqz	$fcc0, .LBB6_124
.LBB6_67:                               # %cond.end289.2
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s1, 16
.LBB6_68:                               # %for.inc586
                                        #   in Loop: Header=BB6_7 Depth=2
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $fp, 8
	b	.LBB6_6
.LBB6_69:                               # %cond.true330
                                        #   in Loop: Header=BB6_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.LCPI6_4)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI6_4)
	vldi	$vr2, -984
	fdiv.d	$fa2, $fs0, $fa2
	fmax.d	$fa1, $fa2, $fa1
	vldi	$vr2, -1016
	fmin.d	$fa1, $fa1, $fa2
	vldi	$vr4, -928
	b	.LBB6_71
.LBB6_70:                               #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr1, -912
.LBB6_71:                               # %cond.end336
                                        #   in Loop: Header=BB6_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.LCPI6_5)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI6_5)
	b	.LBB6_75
.LBB6_72:                               #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr1, -1008
	vldi	$vr4, -928
	b	.LBB6_74
.LBB6_73:                               # %cond.end360.fold.split
                                        #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr1, -912
.LBB6_74:                               # %cond.end360
                                        #   in Loop: Header=BB6_7 Depth=2
	pcalau12i	$a0, %pc_hi20(.LCPI6_3)
	fld.d	$fa2, $a0, %pc_lo12(.LCPI6_3)
.LBB6_75:                               # %if.end368
                                        #   in Loop: Header=BB6_7 Depth=2
	fmul.d	$fa0, $fa0, $fa2
	fmul.d	$fa0, $fa0, $fa1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ldptr.d	$a0, $a4, 15480
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $a1, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$fp, $a0, $a1
	ldptr.w	$a1, $s0, 5784
	fstx.d	$fa0, $fp, $s7
	bne	$a1, $s5, .LBB6_78
# %bb.76:                               # %land.rhs373
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a1, $s0, 5788
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa1, $a2, %pc_lo12(.LCPI6_1)
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	movgr2cf	$fcc0, $a1
	vldi	$vr2, -912
	fsel	$fa1, $fa1, $fa2, $fcc0
	fmul.d	$fa0, $fa1, $fa0
	beq	$s2, $a5, .LBB6_79
.LBB6_77:                               # %if.else496
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.d	$s5, $a4, 15488
	ldptr.d	$s6, $a4, 15496
	fmul.d	$fa0, $fs1, $fa0
	fstx.d	$fa0, $fp, $s7
	b	.LBB6_95
.LBB6_78:                               #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	fld.d	$fa1, $a1, %pc_lo12(.LCPI6_1)
	fmul.d	$fa0, $fa1, $fa0
	bne	$s2, $a5, .LBB6_77
.LBB6_79:                               # %land.lhs.true
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a1, $s0, 2964
	bne	$a1, $s5, .LBB6_82
# %bb.80:                               # %land.rhs395
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a1, $a4, 14364
	sltui	$a1, $a1, 1
	movgr2cf	$fcc0, $a1
	vldi	$vr1, -912
	fsel	$fa1, $fa1, $fa4, $fcc0
	ldptr.w	$a1, $s0, 2968
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $fp, $s7
	beq	$a1, $s5, .LBB6_83
.LBB6_81:                               #   in Loop: Header=BB6_7 Depth=2
	pcalau12i	$a1, %pc_hi20(.LCPI6_6)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI6_6)
	b	.LBB6_84
.LBB6_82:                               #   in Loop: Header=BB6_7 Depth=2
	vldi	$vr1, -912
	ldptr.w	$a1, $s0, 2968
	fmul.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $fp, $s7
	bne	$a1, $s5, .LBB6_81
.LBB6_83:                               # %if.then425
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a1, $a4, 14364
	pcalau12i	$a2, %pc_hi20(gop_structure)
	ld.d	$a2, $a2, %pc_lo12(gop_structure)
	slli.d	$a3, $a1, 4
	alsl.d	$a1, $a1, $a3, 3
	add.d	$a1, $a2, $a1
	ld.w	$a1, $a1, -8
	pcalau12i	$a2, %pc_hi20(.LCPI6_7)
	fld.d	$fa1, $a2, %pc_lo12(.LCPI6_7)
	pcalau12i	$a2, %pc_hi20(.LCPI6_8)
	fld.d	$fa2, $a2, %pc_lo12(.LCPI6_8)
	movgr2fr.w	$fa3, $a1
	ffint.d.w	$fa3, $fa3
	fmul.d	$fa1, $fa3, $fa1
	fcmp.clt.d	$fcc0, $fa2, $fa1
	fsel	$fa1, $fa1, $fa2, $fcc0
	vldi	$vr2, -912
	fsub.d	$fa1, $fa2, $fa1
.LBB6_84:                               # %if.end445
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.d	$s5, $a4, 15488
	ldptr.d	$s6, $a4, 15496
	ld.d	$a1, $s5, 40
	ld.d	$a2, $s6, 40
	ld.d	$s2, $a0, 40
	ldx.d	$s1, $a1, $s7
	ldptr.w	$a0, $s0, 5780
	ldx.d	$s3, $a2, $s7
	fmul.d	$fa0, $fa0, $fa1
	fmul.d	$fa1, $fs1, $fa0
	fstx.d	$fa1, $s2, $s7
	bne	$a0, $a5, .LBB6_86
# %bb.85:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_87
.LBB6_86:                               # %cond.false465
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_125
.LBB6_87:                               # %cond.end471
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s1, 0
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s3, 0
	ldptr.w	$a0, $s0, 5784
	fldx.d	$fa1, $s2, $s7
	bne	$a0, $a5, .LBB6_89
# %bb.88:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_90
.LBB6_89:                               # %cond.false465.1
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_126
.LBB6_90:                               # %cond.end471.1
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s1, 8
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s3, 4
	ldptr.w	$a0, $s0, 5788
	fldx.d	$fa1, $s2, $s7
	bne	$a0, $a5, .LBB6_93
# %bb.91:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
.LBB6_92:                               # %cond.end471.2
                                        #   in Loop: Header=BB6_7 Depth=2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB6_94
.LBB6_93:                               # %cond.false465.2
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	bceqz	$fcc0, .LBB6_127
.LBB6_94:                               # %cond.end471.2
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s1, 16
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s3, 8
.LBB6_95:                               # %if.end503
                                        #   in Loop: Header=BB6_7 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$s5, $s5, $a0
	ldx.d	$a0, $s6, $a0
	ldx.d	$s6, $s5, $s7
	ldx.d	$s3, $a0, $s7
	ldptr.w	$a0, $s0, 5780
	fldx.d	$fa1, $fp, $s7
	bne	$a0, $a5, .LBB6_97
# %bb.96:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_98
.LBB6_97:                               # %cond.false519
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_116
.LBB6_98:                               # %cond.end526
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s6, 0
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s3, 0
	ldptr.w	$a0, $s0, 5784
	fldx.d	$fa1, $fp, $s7
	bne	$a0, $a5, .LBB6_100
# %bb.99:                               #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_101
.LBB6_100:                              # %cond.false519.1
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_117
.LBB6_101:                              # %cond.end526.1
                                        #   in Loop: Header=BB6_7 Depth=2
	fst.d	$fa0, $s6, 8
	fmadd.d	$fa0, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a0, $fa0
	st.w	$a0, $s3, 4
	ldptr.w	$a0, $s0, 5788
	fldx.d	$fa1, $fp, $s7
	bne	$a0, $a5, .LBB6_103
# %bb.102:                              #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	b	.LBB6_104
.LBB6_103:                              # %cond.false519.2
                                        #   in Loop: Header=BB6_7 Depth=2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB6_118
.LBB6_104:                              # %cond.end526.2
                                        #   in Loop: Header=BB6_7 Depth=2
	fmadd.d	$fa1, $fa0, $fs3, $fa4
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	st.w	$a0, $s3, 8
	ldptr.w	$a0, $s0, 4172
	fst.d	$fa0, $s6, 16
	bne	$a0, $a5, .LBB6_5
# %bb.105:                              # %if.then556
                                        #   in Loop: Header=BB6_7 Depth=2
	ori	$a0, $zero, 32
	blt	$s8, $a0, .LBB6_107
# %bb.106:                              # %land.lhs.true559
                                        #   in Loop: Header=BB6_7 Depth=2
	ldptr.w	$a0, $s0, 5116
	beqz	$a0, .LBB6_109
.LBB6_107:                              # %cond.false564
                                        #   in Loop: Header=BB6_7 Depth=2
	move	$fp, $a4
	ori	$a1, $zero, 6
	slt	$a0, $a1, $s4
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, -6
.LBB6_108:                              # %cond.end567
                                        #   in Loop: Header=BB6_7 Depth=2
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s5, $a0
	fld.d	$fa0, $a0, 16
	vldi	$vr1, -912
	fadd.d	$fa0, $fa0, $fa1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	move	$a4, $fp
	ldptr.d	$a0, $fp, 15504
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	fld.d	$fa1, $a1, %pc_lo12(.LCPI6_9)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$a0, $a0, $a1
	fdiv.d	$fa0, $fa0, $fa1
	fstx.d	$fa0, $a0, $s7
	ori	$s5, $zero, 2
	ori	$a5, $zero, 1
	vldi	$vr4, -928
	b	.LBB6_6
.LBB6_109:                              # %cond.true561
                                        #   in Loop: Header=BB6_7 Depth=2
	move	$fp, $a4
	addi.w	$a0, $s4, -4
	b	.LBB6_108
.LBB6_110:                              # %call.sqrt
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s2, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB6_23
.LBB6_111:                              # %call.sqrt275
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s2, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB6_26
.LBB6_112:                              # %call.sqrt276
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	b	.LBB6_29
.LBB6_113:                              # %call.sqrt280
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	b	.LBB6_33
.LBB6_114:                              # %call.sqrt281
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	b	.LBB6_36
.LBB6_115:                              # %call.sqrt282
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s2, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s2
	b	.LBB6_38
.LBB6_116:                              # %call.sqrt289
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	b	.LBB6_98
.LBB6_117:                              # %call.sqrt290
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	b	.LBB6_101
.LBB6_118:                              # %call.sqrt291
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$fp, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $fp
	b	.LBB6_104
.LBB6_119:                              # %call.sqrt277
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s2, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB6_52
.LBB6_120:                              # %call.sqrt278
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s2, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB6_55
.LBB6_121:                              # %call.sqrt279
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s1, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s1
	b	.LBB6_58
.LBB6_122:                              # %call.sqrt283
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s3, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s3
	b	.LBB6_60
.LBB6_123:                              # %call.sqrt284
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s3, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s3
	b	.LBB6_63
.LBB6_124:                              # %call.sqrt285
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s2, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s2
	b	.LBB6_65
.LBB6_125:                              # %call.sqrt286
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	b	.LBB6_87
.LBB6_126:                              # %call.sqrt287
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	b	.LBB6_90
.LBB6_127:                              # %call.sqrt288
                                        #   in Loop: Header=BB6_7 Depth=2
	fmov.d	$fa0, $fa1
	move	$s2, $a4
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	vldi	$vr4, -928
	ori	$a5, $zero, 1
	move	$a4, $s2
	b	.LBB6_92
.LBB6_128:                              # %for.cond593.preheader
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	ori	$s1, $zero, 12
	pcalau12i	$a1, %got_pc_hi20(QP2QUANT)
	ld.d	$s3, $a1, %got_pc_lo12(QP2QUANT)
	vldi	$vr3, -912
	vldi	$vr4, -928
	fld.d	$fs0, $a0, %pc_lo12(.LCPI6_2)
	ori	$a6, $zero, 1
	fld.d	$fs1, $a2, %pc_lo12(.LCPI6_9)
	ori	$a7, $zero, 52
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	b	.LBB6_130
	.p2align	4, , 16
.LBB6_129:                              # %for.inc709
                                        #   in Loop: Header=BB6_130 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a1, $zero, 6
	beq	$a0, $a1, .LBB6_139
.LBB6_130:                              # %for.body596
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_135 Depth 2
	ldptr.w	$a0, $a4, 15452
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB6_129
# %bb.131:                              # %for.body602.lr.ph
                                        #   in Loop: Header=BB6_130 Depth=1
	ldptr.d	$a1, $a4, 15480
	ldptr.d	$a2, $a4, 15488
	ldptr.d	$a3, $a4, 15496
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	slli.d	$a5, $a5, 3
	ldx.d	$s5, $a1, $a5
	ldx.d	$s6, $a2, $a5
	move	$s2, $a5
	ldx.d	$fp, $a3, $a5
	sub.w	$s4, $zero, $a0
	slli.d	$a0, $a0, 3
	sub.d	$s7, $zero, $a0
	move	$s8, $s4
	b	.LBB6_135
	.p2align	4, , 16
.LBB6_132:                              # %cond.false685
                                        #   in Loop: Header=BB6_135 Depth=2
	ori	$a1, $zero, 6
	slt	$a0, $a1, $s4
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, -6
.LBB6_133:                              # %cond.end688
                                        #   in Loop: Header=BB6_135 Depth=2
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s6, $a0
	fld.d	$fa0, $a0, 16
	fadd.d	$fa0, $fa0, $fa3
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	vldi	$vr3, -912
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	ldptr.d	$a0, $a4, 15504
	ldx.d	$a0, $a0, $s2
	fdiv.d	$fa0, $fa0, $fs1
	fstx.d	$fa0, $a0, $s7
	vldi	$vr4, -928
	ori	$a6, $zero, 1
	ori	$a7, $zero, 52
.LBB6_134:                              # %for.inc706
                                        #   in Loop: Header=BB6_135 Depth=2
	addi.d	$s8, $s8, 1
	bstrpick.d	$a0, $s8, 31, 0
	addi.w	$s4, $s4, 1
	addi.d	$s7, $s7, 8
	beq	$a0, $a7, .LBB6_129
.LBB6_135:                              # %for.body602
                                        #   Parent Loop BB6_130 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slt	$a0, $s1, $s4
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	alsl.d	$a0, $a0, $s3, 2
	ld.w	$a0, $a0, -48
	ldptr.w	$a1, $s0, 5780
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	addi.d	$a0, $a1, -1
	sltui	$a0, $a0, 1
	ldx.d	$a1, $fp, $s7
	movgr2cf	$fcc0, $a0
	fsel	$fa1, $fa3, $fa0, $fcc0
	fmul.d	$fa1, $fa1, $fa0
	fmadd.d	$fa2, $fa1, $fs0, $fa4
	ftintrz.w.d	$fa2, $fa2
	movfr2gr.s	$a0, $fa2
	ldx.d	$a2, $s6, $s7
	st.w	$a0, $a1, 0
	ldptr.w	$a0, $s0, 5784
	fstx.d	$fa0, $s5, $s7
	fst.d	$fa1, $a2, 0
	fldx.d	$fa0, $s5, $s7
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	movgr2cf	$fcc0, $a0
	fsel	$fa1, $fa3, $fa0, $fcc0
	fmul.d	$fa0, $fa0, $fa1
	fmadd.d	$fa1, $fa0, $fs0, $fa4
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	st.w	$a0, $a1, 4
	ldptr.w	$a0, $s0, 5788
	fst.d	$fa0, $a2, 8
	fldx.d	$fa0, $s5, $s7
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	movgr2cf	$fcc0, $a0
	fsel	$fa1, $fa3, $fa0, $fcc0
	fmul.d	$fa0, $fa0, $fa1
	fmadd.d	$fa1, $fa0, $fs0, $fa4
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a0, $fa1
	st.w	$a0, $a1, 8
	ldptr.w	$a0, $s0, 4172
	fst.d	$fa0, $a2, 16
	bne	$a0, $a6, .LBB6_134
# %bb.136:                              # %if.then675
                                        #   in Loop: Header=BB6_135 Depth=2
	ori	$a0, $zero, 32
	blt	$s8, $a0, .LBB6_132
# %bb.137:                              # %land.lhs.true679
                                        #   in Loop: Header=BB6_135 Depth=2
	ldptr.w	$a0, $s0, 5116
	bnez	$a0, .LBB6_132
# %bb.138:                              # %cond.true682
                                        #   in Loop: Header=BB6_135 Depth=2
	addi.w	$a0, $s4, -4
	b	.LBB6_133
.LBB6_139:                              # %if.end712
	fld.d	$fs4, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 128                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end6:
	.size	SetLagrangianMultipliers, .Lfunc_end6-SetLagrangianMultipliers
                                        # -- End function
	.type	terminate_slice.MbWidthC,@object # @terminate_slice.MbWidthC
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
terminate_slice.MbWidthC:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	8                               # 0x8
	.word	16                              # 0x10
	.size	terminate_slice.MbWidthC, 16

	.type	terminate_slice.MbHeightC,@object # @terminate_slice.MbHeightC
	.p2align	2, 0x0
terminate_slice.MbHeightC:
	.word	0                               # 0x0
	.word	8                               # 0x8
	.word	16                              # 0x10
	.word	16                              # 0x10
	.size	terminate_slice.MbHeightC, 16

	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CABAC stuffing words = %6d\n"
	.size	.L.str, 28

	.type	Bytes_After_Header,@object      # @Bytes_After_Header
	.comm	Bytes_After_Header,4,4
	.type	generic_RC,@object              # @generic_RC
	.comm	generic_RC,8,8
	.type	rddata_top_frame_mb,@object     # @rddata_top_frame_mb
	.comm	rddata_top_frame_mb,1752,8
	.type	rdopt,@object                   # @rdopt
	.comm	rdopt,8,8
	.type	encode_one_macroblock,@object   # @encode_one_macroblock
	.comm	encode_one_macroblock,8,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.1:
	.asciz	"Error encoding first MB with specified parameter, bits of current MB may be too big"
	.size	.L.str.1, 84

	.type	quadratic_RC_init,@object       # @quadratic_RC_init
	.comm	quadratic_RC_init,8,8
	.type	quadratic_RC,@object            # @quadratic_RC
	.comm	quadratic_RC,8,8
	.type	generic_RC_init,@object         # @generic_RC_init
	.comm	generic_RC_init,8,8
	.type	rddata_bot_frame_mb,@object     # @rddata_bot_frame_mb
	.comm	rddata_bot_frame_mb,1752,8
	.type	quadratic_RC_best,@object       # @quadratic_RC_best
	.comm	quadratic_RC_best,8,8
	.type	generic_RC_best,@object         # @generic_RC_best
	.comm	generic_RC_best,8,8
	.type	rddata_top_field_mb,@object     # @rddata_top_field_mb
	.comm	rddata_top_field_mb,1752,8
	.type	rddata_bot_field_mb,@object     # @rddata_bot_field_mb
	.comm	rddata_bot_field_mb,1752,8
	.type	MBPairIsField,@object           # @MBPairIsField
	.comm	MBPairIsField,4,4
	.type	log2_max_frame_num_minus4,@object # @log2_max_frame_num_minus4
	.comm	log2_max_frame_num_minus4,4,4
	.type	gop_structure,@object           # @gop_structure
	.comm	gop_structure,8,8
	.type	color_formats,@object           # @color_formats
	.comm	color_formats,4,4
	.type	top_pic,@object                 # @top_pic
	.comm	top_pic,8,8
	.type	bottom_pic,@object              # @bottom_pic
	.comm	bottom_pic,8,8
	.type	frame_pic,@object               # @frame_pic
	.comm	frame_pic,8,8
	.type	frame_pic_1,@object             # @frame_pic_1
	.comm	frame_pic_1,8,8
	.type	frame_pic_2,@object             # @frame_pic_2
	.comm	frame_pic_2,8,8
	.type	frame_pic_3,@object             # @frame_pic_3
	.comm	frame_pic_3,8,8
	.type	frame_pic_si,@object            # @frame_pic_si
	.comm	frame_pic_si,8,8
	.type	Bit_Buffer,@object              # @Bit_Buffer
	.comm	Bit_Buffer,8,8
	.type	imgY_org,@object                # @imgY_org
	.comm	imgY_org,8,8
	.type	imgUV_org,@object               # @imgUV_org
	.comm	imgUV_org,8,8
	.type	imgY_sub_tmp,@object            # @imgY_sub_tmp
	.comm	imgY_sub_tmp,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	log2_max_pic_order_cnt_lsb_minus4,@object # @log2_max_pic_order_cnt_lsb_minus4
	.comm	log2_max_pic_order_cnt_lsb_minus4,4,4
	.type	me_tot_time,@object             # @me_tot_time
	.comm	me_tot_time,8,8
	.type	me_time,@object                 # @me_time
	.comm	me_time,8,8
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	dsr_new_search_range,@object    # @dsr_new_search_range
	.comm	dsr_new_search_range,4,4
	.type	mb_adaptive,@object             # @mb_adaptive
	.comm	mb_adaptive,4,4
	.type	wp_weight,@object               # @wp_weight
	.comm	wp_weight,8,8
	.type	wp_offset,@object               # @wp_offset
	.comm	wp_offset,8,8
	.type	wbp_weight,@object              # @wbp_weight
	.comm	wbp_weight,8,8
	.type	luma_log_weight_denom,@object   # @luma_log_weight_denom
	.comm	luma_log_weight_denom,4,4
	.type	chroma_log_weight_denom,@object # @chroma_log_weight_denom
	.comm	chroma_log_weight_denom,4,4
	.type	wp_luma_round,@object           # @wp_luma_round
	.comm	wp_luma_round,4,4
	.type	wp_chroma_round,@object         # @wp_chroma_round
	.comm	wp_chroma_round,4,4
	.type	imgY_org_top,@object            # @imgY_org_top
	.comm	imgY_org_top,8,8
	.type	imgY_org_bot,@object            # @imgY_org_bot
	.comm	imgY_org_bot,8,8
	.type	imgUV_org_top,@object           # @imgUV_org_top
	.comm	imgUV_org_top,8,8
	.type	imgUV_org_bot,@object           # @imgUV_org_bot
	.comm	imgUV_org_bot,8,8
	.type	imgY_org_frm,@object            # @imgY_org_frm
	.comm	imgY_org_frm,8,8
	.type	imgUV_org_frm,@object           # @imgUV_org_frm
	.comm	imgUV_org_frm,8,8
	.type	imgY_com,@object                # @imgY_com
	.comm	imgY_com,8,8
	.type	imgUV_com,@object               # @imgUV_com
	.comm	imgUV_com,8,8
	.type	direct_ref_idx,@object          # @direct_ref_idx
	.comm	direct_ref_idx,8,8
	.type	direct_pdir,@object             # @direct_pdir
	.comm	direct_pdir,8,8
	.type	pixel_map,@object               # @pixel_map
	.comm	pixel_map,8,8
	.type	refresh_map,@object             # @refresh_map
	.comm	refresh_map,8,8
	.type	intras,@object                  # @intras
	.comm	intras,4,4
	.type	frame_ctr,@object               # @frame_ctr
	.comm	frame_ctr,20,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	nextP_tr_fld,@object            # @nextP_tr_fld
	.comm	nextP_tr_fld,4,4
	.type	nextP_tr_frm,@object            # @nextP_tr_frm
	.comm	nextP_tr_frm,4,4
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	b8_ipredmode8x8,@object         # @b8_ipredmode8x8
	.comm	b8_ipredmode8x8,16,1
	.type	b8_intra_pred_modes8x8,@object  # @b8_intra_pred_modes8x8
	.comm	b8_intra_pred_modes8x8,16,1
	.type	p_stat,@object                  # @p_stat
	.comm	p_stat,8,8
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	p_trace,@object                 # @p_trace
	.comm	p_trace,8,8
	.type	p_in,@object                    # @p_in
	.comm	p_in,4,4
	.type	p_dec,@object                   # @p_dec
	.comm	p_dec,4,4
	.type	mb16x16_cost_frame,@object      # @mb16x16_cost_frame
	.comm	mb16x16_cost_frame,8,8
	.type	lrec,@object                    # @lrec
	.comm	lrec,8,8
	.type	lrec_uv,@object                 # @lrec_uv
	.comm	lrec_uv,8,8
	.type	si_frame_indicator,@object      # @si_frame_indicator
	.comm	si_frame_indicator,4,4
	.type	sp2_frame_indicator,@object     # @sp2_frame_indicator
	.comm	sp2_frame_indicator,4,4
	.type	number_sp2_frames,@object       # @number_sp2_frames
	.comm	number_sp2_frames,4,4
	.type	giRDOpt_B8OnlyFlag,@object      # @giRDOpt_B8OnlyFlag
	.comm	giRDOpt_B8OnlyFlag,4,4
	.type	imgY_tmp,@object                # @imgY_tmp
	.comm	imgY_tmp,8,8
	.type	imgUV_tmp,@object               # @imgUV_tmp
	.comm	imgUV_tmp,16,8
	.type	frameNuminGOP,@object           # @frameNuminGOP
	.comm	frameNuminGOP,4,4
	.type	redundant_coding,@object        # @redundant_coding
	.comm	redundant_coding,4,4
	.type	key_frame,@object               # @key_frame
	.comm	key_frame,4,4
	.type	redundant_ref_idx,@object       # @redundant_ref_idx
	.comm	redundant_ref_idx,4,4
	.type	img_pad_size_uv_x,@object       # @img_pad_size_uv_x
	.comm	img_pad_size_uv_x,4,4
	.type	img_pad_size_uv_y,@object       # @img_pad_size_uv_y
	.comm	img_pad_size_uv_y,4,4
	.type	chroma_mask_mv_y,@object        # @chroma_mask_mv_y
	.comm	chroma_mask_mv_y,1,1
	.type	chroma_mask_mv_x,@object        # @chroma_mask_mv_x
	.comm	chroma_mask_mv_x,1,1
	.type	chroma_shift_y,@object          # @chroma_shift_y
	.comm	chroma_shift_y,4,4
	.type	chroma_shift_x,@object          # @chroma_shift_x
	.comm	chroma_shift_x,4,4
	.type	shift_cr_x,@object              # @shift_cr_x
	.comm	shift_cr_x,4,4
	.type	shift_cr_y,@object              # @shift_cr_y
	.comm	shift_cr_y,4,4
	.type	img_padded_size_x,@object       # @img_padded_size_x
	.comm	img_padded_size_x,4,4
	.type	img_cr_padded_size_x,@object    # @img_cr_padded_size_x
	.comm	img_cr_padded_size_x,4,4
	.type	start_me_refinement_hp,@object  # @start_me_refinement_hp
	.comm	start_me_refinement_hp,4,4
	.type	start_me_refinement_qp,@object  # @start_me_refinement_qp
	.comm	start_me_refinement_qp,4,4
	.type	WriteNALU,@object               # @WriteNALU
	.comm	WriteNALU,8,8
	.type	diffy,@object                   # @diffy
	.comm	diffy,1024,4
	.type	qp_mbaff,@object                # @qp_mbaff
	.comm	qp_mbaff,16,4
	.type	delta_qp_mbaff,@object          # @delta_qp_mbaff
	.comm	delta_qp_mbaff,16,4
	.type	updateQP,@object                # @updateQP
	.comm	updateQP,8,8
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Too many slices per picture, increase MAXSLICEPERPICTURE in global.h."
	.size	.L.str.2, 70

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"malloc_slice: slice structure"
	.size	.L.str.3, 30

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"malloc_slice: partArr"
	.size	.L.str.4, 22

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"malloc_slice: Bitstream"
	.size	.L.str.5, 24

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"malloc_slice: StreamBuffer"
	.size	.L.str.6, 27

	.type	.Lswitch.table.encode_one_slice.5,@object # @switch.table.encode_one_slice.5
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table.encode_one_slice.5:
	.dword	0
	.dword	writeSE_Dummy
	.dword	writeSE_invFlag
	.size	.Lswitch.table.encode_one_slice.5, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dummy_slice_too_big
	.addrsig_sym writeSE_UVLC
	.addrsig_sym writeIntraPredMode_CAVLC
	.addrsig_sym writeSE_Dummy
	.addrsig_sym writeSE_invFlag
	.addrsig_sym writeSE_SVLC
	.addrsig_sym writeCBP_VLC
	.addrsig_sym writeSE_Flag
	.addrsig_sym writeMB_typeInfo_CABAC
	.addrsig_sym writeIntraPredMode_CABAC
	.addrsig_sym writeB8_typeInfo_CABAC
	.addrsig_sym writeRefFrame_CABAC
	.addrsig_sym writeMVD_CABAC
	.addrsig_sym writeCBP_CABAC
	.addrsig_sym writeDquant_CABAC
	.addrsig_sym writeCIPredMode_CABAC
	.addrsig_sym writeFieldModeInfo_CABAC
	.addrsig_sym writeMB_transform_size_CABAC
	.addrsig_sym rddata_top_frame_mb
	.addrsig_sym errortext
	.addrsig_sym rddata_bot_frame_mb
	.addrsig_sym rddata_top_field_mb
	.addrsig_sym rddata_bot_field_mb
	.addrsig_sym listXsize
	.addrsig_sym listX
	.addrsig_sym assignSE2partition_NoDP
	.addrsig_sym assignSE2partition_DP
