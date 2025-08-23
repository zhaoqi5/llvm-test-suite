	.file	"traits.c"
	.text
	.globl	write_node_info                 # -- Begin function write_node_info
	.p2align	5
	.type	write_node_info,@function
write_node_info:                        # @write_node_info
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(trait_file)
	ld.d	$s0, $s2, %pc_lo12(trait_file)
	move	$fp, $a1
	bnez	$s0, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	move	$s1, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	st.d	$s0, $s2, %pc_lo12(trait_file)
	beqz	$s0, .LBB0_65
.LBB0_2:                                # %if.end4
	addi.d	$a1, $fp, -1
	sltui	$s1, $a1, 1
	pcaddu18i	$ra, %call36(u64bit_to_string)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	ori	$a0, $zero, 72
	masknez	$a0, $a0, $s1
	ori	$a1, $zero, 86
	maskeqz	$a1, $a1, $s1
	or	$a2, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(g_board_size)
	ld.d	$s4, $a0, %got_pc_lo12(g_board_size)
	slli.d	$a0, $fp, 2
	ldx.w	$a0, $s4, $a0
	ori	$s1, $zero, 1
	slli.d	$s6, $fp, 7
	blt	$a0, $s1, .LBB0_5
# %bb.3:                                # %for.body.lr.ph.i
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	add.d	$a2, $a1, $s6
	ldx.w	$a6, $a1, $s6
	ld.w	$a4, $a2, 4
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB0_6
# %bb.4:
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB0_11
.LBB0_5:
	move	$a2, $zero
	b	.LBB0_13
.LBB0_6:                                # %vector.ph
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a3, $a2, 4
	xvinsgr2vr.w	$xr0, $a4, 7
	xvinsgr2vr.w	$xr5, $a6, 7
	move	$s3, $s6
	add.d	$a2, $s6, $a1
	addi.d	$a2, $a2, 40
	xvrepli.b	$xr1, 0
	xvrepli.b	$xr2, -1
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	lu12i.w	$a5, 15
	ori	$a5, $a5, 4095
	xvreplgr2vr.w	$xr3, $a5
	move	$a5, $a3
	xvori.b	$xr4, $xr1, 0
	.p2align	4, , 16
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr6, $a2, -32
	xvpickve2gr.w	$a6, $xr0, 7
	xvld	$xr0, $a2, 0
	vinsgr2vr.w	$vr7, $a6, 0
	xvpickve2gr.w	$a6, $xr6, 0
	vinsgr2vr.w	$vr7, $a6, 1
	xvpickve2gr.w	$a6, $xr6, 1
	vinsgr2vr.w	$vr7, $a6, 2
	xvpickve2gr.w	$a6, $xr6, 2
	vinsgr2vr.w	$vr7, $a6, 3
	xvpickve2gr.w	$a6, $xr6, 3
	vinsgr2vr.w	$vr8, $a6, 0
	xvpickve2gr.w	$a6, $xr6, 4
	vinsgr2vr.w	$vr8, $a6, 1
	xvpickve2gr.w	$a6, $xr6, 5
	vinsgr2vr.w	$vr8, $a6, 2
	xvpickve2gr.w	$a6, $xr6, 6
	vinsgr2vr.w	$vr8, $a6, 3
	xvpickve2gr.w	$a7, $xr7, 2
	xvpermi.q	$xr7, $xr8, 2
	xvpickve2gr.w	$a6, $xr0, 3
	vinsgr2vr.w	$vr8, $a6, 0
	xvpickve2gr.w	$a6, $xr0, 4
	vinsgr2vr.w	$vr8, $a6, 1
	xvpickve2gr.w	$a6, $xr0, 5
	vinsgr2vr.w	$vr8, $a6, 2
	xvpickve2gr.w	$a6, $xr0, 6
	vinsgr2vr.w	$vr8, $a6, 3
	xvpickve2gr.w	$t0, $xr6, 7
	xvpickve2gr.w	$t1, $xr5, 7
	vinsgr2vr.w	$vr5, $t0, 0
	xvpickve2gr.w	$t0, $xr0, 0
	vinsgr2vr.w	$vr5, $t0, 1
	xvpickve2gr.w	$t0, $xr0, 1
	vinsgr2vr.w	$vr5, $t0, 2
	xvpickve2gr.w	$t0, $xr0, 2
	vinsgr2vr.w	$vr5, $t0, 3
	xvpermi.q	$xr5, $xr8, 2
	xvpickve2gr.w	$t0, $xr7, 0
	vinsgr2vr.w	$vr8, $t1, 0
	vinsgr2vr.w	$vr8, $t0, 1
	xvpickve2gr.w	$t0, $xr7, 1
	vinsgr2vr.w	$vr8, $t0, 2
	vinsgr2vr.w	$vr8, $a7, 3
	xvpickve2gr.w	$a7, $xr7, 3
	vinsgr2vr.w	$vr9, $a7, 0
	xvpickve2gr.w	$a7, $xr7, 4
	vinsgr2vr.w	$vr9, $a7, 1
	xvpickve2gr.w	$a7, $xr7, 5
	vinsgr2vr.w	$vr9, $a7, 2
	xvpickve2gr.w	$a7, $xr7, 6
	vinsgr2vr.w	$vr9, $a7, 3
	xvpermi.q	$xr8, $xr9, 2
	xvpickve2gr.d	$a7, $xr0, 1
	vinsgr2vr.d	$vr9, $a7, 0
	xvpickve2gr.d	$a7, $xr0, 2
	vinsgr2vr.d	$vr9, $a7, 1
	xvpickve2gr.d	$a7, $xr6, 3
	vinsgr2vr.d	$vr10, $a7, 0
	xvpickve2gr.d	$a7, $xr0, 0
	vinsgr2vr.d	$vr10, $a7, 1
	xvpermi.q	$xr10, $xr9, 2
	xvand.v	$xr6, $xr6, $xr8
	xvand.v	$xr8, $xr0, $xr10
	xvxor.v	$xr9, $xr7, $xr2
	xvxor.v	$xr10, $xr5, $xr2
	xvsrli.w	$xr11, $xr6, 1
	xvsrli.w	$xr12, $xr8, 1
	xvand.v	$xr6, $xr11, $xr6
	xvand.v	$xr8, $xr12, $xr8
	xvsrli.w	$xr9, $xr9, 1
	xvsrli.w	$xr10, $xr10, 1
	xvnor.v	$xr6, $xr6, $xr7
	xvnor.v	$xr7, $xr8, $xr5
	xvand.v	$xr8, $xr9, $xr6
	xvand.v	$xr9, $xr10, $xr7
	xvand.v	$xr11, $xr8, $xr3
	xvand.v	$xr10, $xr9, $xr3
	xvpermi.q	$xr12, $xr11, 1
	vpickve2gr.w	$a7, $vr12, 2
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr6, $a7, 0
	vpickve2gr.w	$a7, $vr12, 3
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr6, $a7, 1
	xvpermi.q	$xr6, $xr6, 2
	vpickve2gr.w	$a7, $vr12, 0
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr7, $a7, 0
	vpickve2gr.w	$a7, $vr12, 1
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr7, $a7, 1
	vpickve2gr.w	$a7, $vr11, 2
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr12, $a7, 0
	vpickve2gr.w	$a7, $vr11, 3
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr12, $a7, 1
	xvpermi.q	$xr12, $xr12, 2
	vpickve2gr.w	$a7, $vr11, 0
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr13, $a7, 0
	vpickve2gr.w	$a7, $vr11, 1
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr13, $a7, 1
	xvpermi.q	$xr11, $xr10, 1
	vpickve2gr.w	$a7, $vr11, 2
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr14, $a7, 0
	vpickve2gr.w	$a7, $vr11, 3
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr14, $a7, 1
	xvpermi.q	$xr14, $xr14, 2
	vpickve2gr.w	$a7, $vr11, 0
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr15, $a7, 0
	vpickve2gr.w	$a7, $vr11, 1
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr15, $a7, 1
	vpickve2gr.w	$a7, $vr10, 2
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr11, $a7, 0
	vpickve2gr.w	$a7, $vr10, 3
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr11, $a7, 1
	xvpermi.q	$xr11, $xr11, 2
	vpickve2gr.w	$a7, $vr10, 0
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr16, $a7, 0
	vpickve2gr.w	$a7, $vr10, 1
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.d	$vr16, $a7, 1
	xvpickve2gr.d	$a7, $xr13, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr13, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr12, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr12, 3
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr7, 0
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr7, 1
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr6, 2
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr6, 3
	slli.d	$t6, $t6, 2
	xvpickve2gr.d	$t7, $xr16, 0
	slli.d	$t7, $t7, 2
	xvpickve2gr.d	$t8, $xr16, 1
	slli.d	$t8, $t8, 2
	xvpickve2gr.d	$s0, $xr11, 2
	slli.d	$s0, $s0, 2
	xvpickve2gr.d	$s5, $xr11, 3
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr15, 0
	slli.d	$s6, $s6, 2
	xvpickve2gr.d	$s7, $xr15, 1
	slli.d	$s7, $s7, 2
	xvpickve2gr.d	$s8, $xr14, 2
	slli.d	$s8, $s8, 2
	xvpickve2gr.d	$ra, $xr14, 3
	slli.d	$ra, $ra, 2
	ldx.w	$a7, $a4, $a7
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	ldx.w	$t2, $a4, $t2
	ldx.w	$t3, $a4, $t3
	ldx.w	$t4, $a4, $t4
	ldx.w	$t5, $a4, $t5
	ldx.w	$t6, $a4, $t6
	vinsgr2vr.w	$vr6, $a7, 0
	vinsgr2vr.w	$vr6, $t0, 1
	vinsgr2vr.w	$vr6, $t1, 2
	vinsgr2vr.w	$vr6, $t2, 3
	vinsgr2vr.w	$vr7, $t3, 0
	vinsgr2vr.w	$vr7, $t4, 1
	vinsgr2vr.w	$vr7, $t5, 2
	vinsgr2vr.w	$vr7, $t6, 3
	xvpermi.q	$xr6, $xr7, 2
	ldx.w	$a7, $a4, $t7
	ldx.w	$t0, $a4, $t8
	ldx.w	$t1, $a4, $s0
	ldx.w	$t2, $a4, $s5
	ldx.w	$t3, $a4, $s6
	ldx.w	$t4, $a4, $s7
	ldx.w	$t5, $a4, $s8
	ldx.w	$t6, $a4, $ra
	vinsgr2vr.w	$vr7, $a7, 0
	vinsgr2vr.w	$vr7, $t0, 1
	vinsgr2vr.w	$vr7, $t1, 2
	vinsgr2vr.w	$vr7, $t2, 3
	vinsgr2vr.w	$vr10, $t3, 0
	vinsgr2vr.w	$vr10, $t4, 1
	vinsgr2vr.w	$vr10, $t5, 2
	vinsgr2vr.w	$vr10, $t6, 3
	xvpermi.q	$xr7, $xr10, 2
	xvsrli.w	$xr11, $xr8, 16
	xvsrli.w	$xr10, $xr9, 16
	xvpermi.q	$xr12, $xr11, 1
	vpickve2gr.w	$a7, $vr12, 2
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr8, $a7, 0
	vpickve2gr.w	$a7, $vr12, 3
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr8, $a7, 1
	xvpermi.q	$xr8, $xr8, 2
	vpickve2gr.w	$a7, $vr12, 0
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr9, $a7, 0
	vpickve2gr.w	$a7, $vr12, 1
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr9, $a7, 1
	vpickve2gr.w	$a7, $vr11, 2
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr12, $a7, 0
	vpickve2gr.w	$a7, $vr11, 3
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr12, $a7, 1
	xvpermi.q	$xr12, $xr12, 2
	vpickve2gr.w	$a7, $vr11, 0
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr13, $a7, 0
	vpickve2gr.w	$a7, $vr11, 1
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr13, $a7, 1
	xvpermi.q	$xr11, $xr10, 1
	vpickve2gr.w	$a7, $vr11, 2
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr14, $a7, 0
	vpickve2gr.w	$a7, $vr11, 3
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr14, $a7, 1
	xvpermi.q	$xr14, $xr14, 2
	vpickve2gr.w	$a7, $vr11, 0
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr15, $a7, 0
	vpickve2gr.w	$a7, $vr11, 1
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr15, $a7, 1
	vpickve2gr.w	$a7, $vr10, 2
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr11, $a7, 0
	vpickve2gr.w	$a7, $vr10, 3
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr11, $a7, 1
	xvpermi.q	$xr11, $xr11, 2
	vpickve2gr.w	$a7, $vr10, 0
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr16, $a7, 0
	vpickve2gr.w	$a7, $vr10, 1
	bstrpick.d	$a7, $a7, 14, 0
	vinsgr2vr.d	$vr16, $a7, 1
	xvpickve2gr.d	$a7, $xr13, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr13, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr12, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr12, 3
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr9, 0
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr9, 1
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr8, 2
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr8, 3
	slli.d	$t6, $t6, 2
	xvpickve2gr.d	$t7, $xr16, 0
	slli.d	$t7, $t7, 2
	xvpickve2gr.d	$t8, $xr16, 1
	slli.d	$t8, $t8, 2
	xvpickve2gr.d	$s0, $xr11, 2
	slli.d	$s0, $s0, 2
	xvpickve2gr.d	$s5, $xr11, 3
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr15, 0
	slli.d	$s6, $s6, 2
	xvpickve2gr.d	$s7, $xr15, 1
	slli.d	$s7, $s7, 2
	xvpickve2gr.d	$s8, $xr14, 2
	slli.d	$s8, $s8, 2
	xvpickve2gr.d	$ra, $xr14, 3
	slli.d	$ra, $ra, 2
	ldx.w	$a7, $a4, $a7
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	ldx.w	$t2, $a4, $t2
	ldx.w	$t3, $a4, $t3
	ldx.w	$t4, $a4, $t4
	ldx.w	$t5, $a4, $t5
	ldx.w	$t6, $a4, $t6
	vinsgr2vr.w	$vr8, $a7, 0
	vinsgr2vr.w	$vr8, $t0, 1
	vinsgr2vr.w	$vr8, $t1, 2
	vinsgr2vr.w	$vr8, $t2, 3
	vinsgr2vr.w	$vr9, $t3, 0
	vinsgr2vr.w	$vr9, $t4, 1
	vinsgr2vr.w	$vr9, $t5, 2
	vinsgr2vr.w	$vr9, $t6, 3
	xvpermi.q	$xr8, $xr9, 2
	ldx.w	$a7, $a4, $t7
	ldx.w	$t0, $a4, $t8
	ldx.w	$t1, $a4, $s0
	ldx.w	$t2, $a4, $s5
	ldx.w	$t3, $a4, $s6
	ldx.w	$t4, $a4, $s7
	ldx.w	$t5, $a4, $s8
	ldx.w	$t6, $a4, $ra
	vinsgr2vr.w	$vr9, $a7, 0
	vinsgr2vr.w	$vr9, $t0, 1
	vinsgr2vr.w	$vr9, $t1, 2
	vinsgr2vr.w	$vr9, $t2, 3
	vinsgr2vr.w	$vr10, $t3, 0
	vinsgr2vr.w	$vr10, $t4, 1
	vinsgr2vr.w	$vr10, $t5, 2
	vinsgr2vr.w	$vr10, $t6, 3
	xvpermi.q	$xr9, $xr10, 2
	xvadd.w	$xr1, $xr6, $xr1
	xvadd.w	$xr4, $xr7, $xr4
	xvadd.w	$xr1, $xr1, $xr8
	xvadd.w	$xr4, $xr4, $xr9
	addi.d	$a5, $a5, -16
	addi.d	$a2, $a2, 64
	bnez	$a5, .LBB0_7
# %bb.8:                                # %middle.block
	xvadd.w	$xr1, $xr4, $xr1
	xvpermi.d	$xr2, $xr1, 78
	xvshuf4i.w	$xr2, $xr2, 228
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvshuf4i.w	$xr2, $xr2, 14
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvrepl128vei.w	$xr2, $xr2, 1
	xvadd.w	$xr1, $xr1, $xr2
	xvpickve2gr.w	$a2, $xr1, 0
	bne	$a3, $a0, .LBB0_10
# %bb.9:
	move	$s6, $s3
	b	.LBB0_13
.LBB0_10:
	xvpickve2gr.w	$a4, $xr0, 7
	move	$s6, $s3
.LBB0_11:                               # %for.body.i.preheader
	sub.d	$a0, $a0, $a3
	alsl.d	$a3, $a3, $s6, 2
	add.d	$a3, $a3, $a1
	pcalau12i	$a1, %got_pc_hi20(countbits16)
	ld.d	$a1, $a1, %got_pc_lo12(countbits16)
	addi.d	$a3, $a3, 8
	lu12i.w	$a5, 31
	ori	$a5, $a5, 4092
	.p2align	4, , 16
.LBB0_12:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a7, $a4
	ld.w	$a4, $a3, 0
	and	$a6, $a4, $a6
	nor	$t0, $a7, $zero
	bstrpick.d	$t1, $a6, 31, 1
	and	$a6, $t1, $a6
	bstrpick.d	$t0, $t0, 31, 1
	or	$a6, $a6, $a7
	andn	$a6, $t0, $a6
	bstrpick.d	$t0, $a6, 15, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a1, $t0
	srli.d	$a6, $a6, 14
	and	$a6, $a6, $a5
	ldx.w	$a6, $a1, $a6
	add.d	$a2, $t0, $a2
	add.w	$a2, $a2, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	move	$a6, $a7
	bnez	$a0, .LBB0_12
.LBB0_13:                               # %tr_total_non_safe_moves.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	xori	$s0, $fp, 1
	slli.d	$a0, $s0, 2
	ldx.w	$a0, $s4, $a0
	blt	$a0, $s1, .LBB0_16
# %bb.14:                               # %for.body.lr.ph.i21
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	slli.d	$a3, $s0, 7
	add.d	$a2, $a1, $a3
	ldx.w	$a7, $a1, $a3
	ld.w	$a5, $a2, 4
	ori	$a2, $zero, 16
	bgeu	$a0, $a2, .LBB0_17
# %bb.15:
	move	$a4, $zero
	move	$a2, $zero
	b	.LBB0_22
.LBB0_16:
	move	$a2, $zero
	b	.LBB0_24
.LBB0_17:                               # %vector.ph98
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a2, $a0, 30, 4
	slli.d	$a4, $a2, 4
	xvinsgr2vr.w	$xr0, $a5, 7
	xvinsgr2vr.w	$xr5, $a7, 7
	add.d	$a2, $a3, $a1
	addi.d	$a2, $a2, 40
	xvrepli.b	$xr1, 0
	xvrepli.b	$xr2, -1
	pcalau12i	$a5, %got_pc_hi20(countbits16)
	ld.d	$a5, $a5, %got_pc_lo12(countbits16)
	lu12i.w	$a6, 15
	ori	$a6, $a6, 4095
	xvreplgr2vr.w	$xr3, $a6
	move	$a6, $a4
	xvori.b	$xr4, $xr1, 0
	.p2align	4, , 16
.LBB0_18:                               # %vector.body101
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr6, $a2, -32
	xvpickve2gr.w	$a7, $xr0, 7
	xvld	$xr0, $a2, 0
	vinsgr2vr.w	$vr7, $a7, 0
	xvpickve2gr.w	$a7, $xr6, 0
	vinsgr2vr.w	$vr7, $a7, 1
	xvpickve2gr.w	$a7, $xr6, 1
	vinsgr2vr.w	$vr7, $a7, 2
	xvpickve2gr.w	$a7, $xr6, 2
	vinsgr2vr.w	$vr7, $a7, 3
	xvpickve2gr.w	$a7, $xr6, 3
	vinsgr2vr.w	$vr8, $a7, 0
	xvpickve2gr.w	$a7, $xr6, 4
	vinsgr2vr.w	$vr8, $a7, 1
	xvpickve2gr.w	$a7, $xr6, 5
	vinsgr2vr.w	$vr8, $a7, 2
	xvpickve2gr.w	$a7, $xr6, 6
	vinsgr2vr.w	$vr8, $a7, 3
	xvpickve2gr.w	$t0, $xr7, 2
	xvpermi.q	$xr7, $xr8, 2
	xvpickve2gr.w	$a7, $xr0, 3
	vinsgr2vr.w	$vr8, $a7, 0
	xvpickve2gr.w	$a7, $xr0, 4
	vinsgr2vr.w	$vr8, $a7, 1
	xvpickve2gr.w	$a7, $xr0, 5
	vinsgr2vr.w	$vr8, $a7, 2
	xvpickve2gr.w	$a7, $xr0, 6
	vinsgr2vr.w	$vr8, $a7, 3
	xvpickve2gr.w	$t1, $xr6, 7
	xvpickve2gr.w	$t2, $xr5, 7
	vinsgr2vr.w	$vr5, $t1, 0
	xvpickve2gr.w	$t1, $xr0, 0
	vinsgr2vr.w	$vr5, $t1, 1
	xvpickve2gr.w	$t1, $xr0, 1
	vinsgr2vr.w	$vr5, $t1, 2
	xvpickve2gr.w	$t1, $xr0, 2
	vinsgr2vr.w	$vr5, $t1, 3
	xvpermi.q	$xr5, $xr8, 2
	xvpickve2gr.w	$t1, $xr7, 0
	vinsgr2vr.w	$vr8, $t2, 0
	vinsgr2vr.w	$vr8, $t1, 1
	xvpickve2gr.w	$t1, $xr7, 1
	vinsgr2vr.w	$vr8, $t1, 2
	vinsgr2vr.w	$vr8, $t0, 3
	xvpickve2gr.w	$t0, $xr7, 3
	vinsgr2vr.w	$vr9, $t0, 0
	xvpickve2gr.w	$t0, $xr7, 4
	vinsgr2vr.w	$vr9, $t0, 1
	xvpickve2gr.w	$t0, $xr7, 5
	vinsgr2vr.w	$vr9, $t0, 2
	xvpickve2gr.w	$t0, $xr7, 6
	vinsgr2vr.w	$vr9, $t0, 3
	xvpermi.q	$xr8, $xr9, 2
	xvpickve2gr.d	$t0, $xr0, 1
	vinsgr2vr.d	$vr9, $t0, 0
	xvpickve2gr.d	$t0, $xr0, 2
	vinsgr2vr.d	$vr9, $t0, 1
	xvpickve2gr.d	$t0, $xr6, 3
	vinsgr2vr.d	$vr10, $t0, 0
	xvpickve2gr.d	$t0, $xr0, 0
	vinsgr2vr.d	$vr10, $t0, 1
	xvpermi.q	$xr10, $xr9, 2
	xvand.v	$xr6, $xr6, $xr8
	xvand.v	$xr8, $xr0, $xr10
	xvxor.v	$xr9, $xr7, $xr2
	xvxor.v	$xr10, $xr5, $xr2
	xvsrli.w	$xr11, $xr6, 1
	xvsrli.w	$xr12, $xr8, 1
	xvand.v	$xr6, $xr11, $xr6
	xvand.v	$xr8, $xr12, $xr8
	xvsrli.w	$xr9, $xr9, 1
	xvsrli.w	$xr10, $xr10, 1
	xvnor.v	$xr6, $xr6, $xr7
	xvnor.v	$xr7, $xr8, $xr5
	xvand.v	$xr8, $xr9, $xr6
	xvand.v	$xr9, $xr10, $xr7
	xvand.v	$xr11, $xr8, $xr3
	xvand.v	$xr10, $xr9, $xr3
	xvpermi.q	$xr12, $xr11, 1
	vpickve2gr.w	$t0, $vr12, 2
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr6, $t0, 0
	vpickve2gr.w	$t0, $vr12, 3
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr6, $t0, 1
	xvpermi.q	$xr6, $xr6, 2
	vpickve2gr.w	$t0, $vr12, 0
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr7, $t0, 0
	vpickve2gr.w	$t0, $vr12, 1
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr7, $t0, 1
	vpickve2gr.w	$t0, $vr11, 2
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr12, $t0, 0
	vpickve2gr.w	$t0, $vr11, 3
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr12, $t0, 1
	xvpermi.q	$xr12, $xr12, 2
	vpickve2gr.w	$t0, $vr11, 0
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr13, $t0, 0
	vpickve2gr.w	$t0, $vr11, 1
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr13, $t0, 1
	xvpermi.q	$xr11, $xr10, 1
	vpickve2gr.w	$t0, $vr11, 2
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr14, $t0, 0
	vpickve2gr.w	$t0, $vr11, 3
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr14, $t0, 1
	xvpermi.q	$xr14, $xr14, 2
	vpickve2gr.w	$t0, $vr11, 0
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr15, $t0, 0
	vpickve2gr.w	$t0, $vr11, 1
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr15, $t0, 1
	vpickve2gr.w	$t0, $vr10, 2
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr11, $t0, 0
	vpickve2gr.w	$t0, $vr10, 3
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr11, $t0, 1
	xvpermi.q	$xr11, $xr11, 2
	vpickve2gr.w	$t0, $vr10, 0
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr16, $t0, 0
	vpickve2gr.w	$t0, $vr10, 1
	bstrpick.d	$t0, $t0, 15, 0
	vinsgr2vr.d	$vr16, $t0, 1
	xvpickve2gr.d	$t0, $xr13, 0
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr13, 1
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr12, 2
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr12, 3
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr7, 0
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr7, 1
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr6, 2
	slli.d	$t6, $t6, 2
	xvpickve2gr.d	$t7, $xr6, 3
	slli.d	$t7, $t7, 2
	xvpickve2gr.d	$t8, $xr16, 0
	slli.d	$t8, $t8, 2
	xvpickve2gr.d	$s1, $xr16, 1
	slli.d	$s1, $s1, 2
	xvpickve2gr.d	$s5, $xr11, 2
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr11, 3
	slli.d	$s6, $s6, 2
	xvpickve2gr.d	$s7, $xr15, 0
	slli.d	$s7, $s7, 2
	xvpickve2gr.d	$s8, $xr15, 1
	slli.d	$s8, $s8, 2
	xvpickve2gr.d	$ra, $xr14, 2
	slli.d	$ra, $ra, 2
	xvpickve2gr.d	$s3, $xr14, 3
	slli.d	$s3, $s3, 2
	ldx.w	$t0, $a5, $t0
	ldx.w	$t1, $a5, $t1
	ldx.w	$t2, $a5, $t2
	ldx.w	$t3, $a5, $t3
	ldx.w	$t4, $a5, $t4
	ldx.w	$t5, $a5, $t5
	ldx.w	$t6, $a5, $t6
	ldx.w	$t7, $a5, $t7
	vinsgr2vr.w	$vr6, $t0, 0
	vinsgr2vr.w	$vr6, $t1, 1
	vinsgr2vr.w	$vr6, $t2, 2
	vinsgr2vr.w	$vr6, $t3, 3
	vinsgr2vr.w	$vr7, $t4, 0
	vinsgr2vr.w	$vr7, $t5, 1
	vinsgr2vr.w	$vr7, $t6, 2
	vinsgr2vr.w	$vr7, $t7, 3
	xvpermi.q	$xr6, $xr7, 2
	ldx.w	$t0, $a5, $t8
	ldx.w	$t1, $a5, $s1
	ldx.w	$t2, $a5, $s5
	ldx.w	$t3, $a5, $s6
	ldx.w	$t4, $a5, $s7
	ldx.w	$t5, $a5, $s8
	ldx.w	$t6, $a5, $ra
	ldx.w	$t7, $a5, $s3
	vinsgr2vr.w	$vr7, $t0, 0
	vinsgr2vr.w	$vr7, $t1, 1
	vinsgr2vr.w	$vr7, $t2, 2
	vinsgr2vr.w	$vr7, $t3, 3
	vinsgr2vr.w	$vr10, $t4, 0
	vinsgr2vr.w	$vr10, $t5, 1
	vinsgr2vr.w	$vr10, $t6, 2
	vinsgr2vr.w	$vr10, $t7, 3
	xvpermi.q	$xr7, $xr10, 2
	xvsrli.w	$xr11, $xr8, 16
	xvsrli.w	$xr10, $xr9, 16
	xvpermi.q	$xr12, $xr11, 1
	vpickve2gr.w	$t0, $vr12, 2
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr8, $t0, 0
	vpickve2gr.w	$t0, $vr12, 3
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr8, $t0, 1
	xvpermi.q	$xr8, $xr8, 2
	vpickve2gr.w	$t0, $vr12, 0
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr9, $t0, 0
	vpickve2gr.w	$t0, $vr12, 1
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr9, $t0, 1
	vpickve2gr.w	$t0, $vr11, 2
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr12, $t0, 0
	vpickve2gr.w	$t0, $vr11, 3
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr12, $t0, 1
	xvpermi.q	$xr12, $xr12, 2
	vpickve2gr.w	$t0, $vr11, 0
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr13, $t0, 0
	vpickve2gr.w	$t0, $vr11, 1
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr13, $t0, 1
	xvpermi.q	$xr11, $xr10, 1
	vpickve2gr.w	$t0, $vr11, 2
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr14, $t0, 0
	vpickve2gr.w	$t0, $vr11, 3
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr14, $t0, 1
	xvpermi.q	$xr14, $xr14, 2
	vpickve2gr.w	$t0, $vr11, 0
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr15, $t0, 0
	vpickve2gr.w	$t0, $vr11, 1
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr15, $t0, 1
	vpickve2gr.w	$t0, $vr10, 2
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr11, $t0, 0
	vpickve2gr.w	$t0, $vr10, 3
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr11, $t0, 1
	xvpermi.q	$xr11, $xr11, 2
	vpickve2gr.w	$t0, $vr10, 0
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr16, $t0, 0
	vpickve2gr.w	$t0, $vr10, 1
	bstrpick.d	$t0, $t0, 14, 0
	vinsgr2vr.d	$vr16, $t0, 1
	xvpickve2gr.d	$t0, $xr13, 0
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr13, 1
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr12, 2
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr12, 3
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr9, 0
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr9, 1
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr8, 2
	slli.d	$t6, $t6, 2
	xvpickve2gr.d	$t7, $xr8, 3
	slli.d	$t7, $t7, 2
	xvpickve2gr.d	$t8, $xr16, 0
	slli.d	$t8, $t8, 2
	xvpickve2gr.d	$s1, $xr16, 1
	slli.d	$s1, $s1, 2
	xvpickve2gr.d	$s3, $xr11, 2
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$s5, $xr11, 3
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr15, 0
	slli.d	$s6, $s6, 2
	xvpickve2gr.d	$s7, $xr15, 1
	slli.d	$s7, $s7, 2
	xvpickve2gr.d	$s8, $xr14, 2
	slli.d	$s8, $s8, 2
	xvpickve2gr.d	$ra, $xr14, 3
	slli.d	$ra, $ra, 2
	ldx.w	$t0, $a5, $t0
	ldx.w	$t1, $a5, $t1
	ldx.w	$t2, $a5, $t2
	ldx.w	$t3, $a5, $t3
	ldx.w	$t4, $a5, $t4
	ldx.w	$t5, $a5, $t5
	ldx.w	$t6, $a5, $t6
	ldx.w	$t7, $a5, $t7
	vinsgr2vr.w	$vr8, $t0, 0
	vinsgr2vr.w	$vr8, $t1, 1
	vinsgr2vr.w	$vr8, $t2, 2
	vinsgr2vr.w	$vr8, $t3, 3
	vinsgr2vr.w	$vr9, $t4, 0
	vinsgr2vr.w	$vr9, $t5, 1
	vinsgr2vr.w	$vr9, $t6, 2
	vinsgr2vr.w	$vr9, $t7, 3
	xvpermi.q	$xr8, $xr9, 2
	ldx.w	$t0, $a5, $t8
	ldx.w	$t1, $a5, $s1
	ldx.w	$t2, $a5, $s3
	ldx.w	$t3, $a5, $s5
	ldx.w	$t4, $a5, $s6
	ldx.w	$t5, $a5, $s7
	ldx.w	$t6, $a5, $s8
	ldx.w	$t7, $a5, $ra
	vinsgr2vr.w	$vr9, $t0, 0
	vinsgr2vr.w	$vr9, $t1, 1
	vinsgr2vr.w	$vr9, $t2, 2
	vinsgr2vr.w	$vr9, $t3, 3
	vinsgr2vr.w	$vr10, $t4, 0
	vinsgr2vr.w	$vr10, $t5, 1
	vinsgr2vr.w	$vr10, $t6, 2
	vinsgr2vr.w	$vr10, $t7, 3
	xvpermi.q	$xr9, $xr10, 2
	xvadd.w	$xr1, $xr6, $xr1
	xvadd.w	$xr4, $xr7, $xr4
	xvadd.w	$xr1, $xr1, $xr8
	xvadd.w	$xr4, $xr4, $xr9
	addi.d	$a6, $a6, -16
	addi.d	$a2, $a2, 64
	bnez	$a6, .LBB0_18
# %bb.19:                               # %middle.block112
	xvadd.w	$xr1, $xr4, $xr1
	xvpermi.d	$xr2, $xr1, 78
	xvshuf4i.w	$xr2, $xr2, 228
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvshuf4i.w	$xr2, $xr2, 14
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvrepl128vei.w	$xr2, $xr2, 1
	xvadd.w	$xr1, $xr1, $xr2
	xvpickve2gr.w	$a2, $xr1, 0
	bne	$a4, $a0, .LBB0_21
# %bb.20:
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_24
.LBB0_21:
	xvpickve2gr.w	$a5, $xr0, 7
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
.LBB0_22:                               # %for.body.i27.preheader
	sub.d	$a0, $a0, $a4
	alsl.d	$a3, $a4, $a3, 2
	add.d	$a3, $a3, $a1
	pcalau12i	$a1, %got_pc_hi20(countbits16)
	ld.d	$a1, $a1, %got_pc_lo12(countbits16)
	addi.d	$a3, $a3, 8
	lu12i.w	$a4, 31
	ori	$a4, $a4, 4092
	.p2align	4, , 16
.LBB0_23:                               # %for.body.i27
                                        # =>This Inner Loop Header: Depth=1
	move	$a6, $a5
	ld.w	$a5, $a3, 0
	and	$a7, $a5, $a7
	nor	$t0, $a6, $zero
	bstrpick.d	$t1, $a7, 31, 1
	and	$a7, $t1, $a7
	bstrpick.d	$t0, $t0, 31, 1
	or	$a7, $a7, $a6
	andn	$a7, $t0, $a7
	bstrpick.d	$t0, $a7, 15, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a1, $t0
	srli.d	$a7, $a7, 14
	and	$a7, $a7, $a4
	ldx.w	$a7, $a1, $a7
	add.d	$a2, $t0, $a2
	add.w	$a2, $a2, $a7
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	move	$a7, $a6
	bnez	$a0, .LBB0_23
.LBB0_24:                               # %tr_total_non_safe_moves.exit47
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	alsl.d	$s5, $fp, $s4, 2
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$s1, $a1, %pc_lo12(.L.str.5)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(tr_non_safe_moves_a_little_touchy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	move	$a2, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$fp, $a0, %pc_lo12(.L.str.4)
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(tr_non_safe_moves_a_little_touchy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	ori	$a2, $zero, 1
	ori	$s0, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	blt	$a0, $s0, .LBB0_27
# %bb.25:                               # %iter.check
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB0_28
# %bb.26:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_37
.LBB0_27:
	move	$a2, $zero
	b	.LBB0_39
.LBB0_28:                               # %vector.main.loop.iter.check
	ori	$a1, $zero, 16
	bgeu	$a0, $a1, .LBB0_30
# %bb.29:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_34
.LBB0_30:                               # %vector.ph125
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a1, $a1, %got_pc_lo12(g_board)
	addi.d	$a2, $a1, 36
	bstrpick.d	$a1, $a0, 30, 4
	slli.d	$a1, $a1, 4
	xvrepli.b	$xr0, 0
	xvrepli.b	$xr1, -1
	pcalau12i	$a3, %got_pc_hi20(countbits16)
	ld.d	$a3, $a3, %got_pc_lo12(countbits16)
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4095
	xvreplgr2vr.w	$xr2, $a4
	move	$a4, $a1
	xvori.b	$xr3, $xr0, 0
	.p2align	4, , 16
.LBB0_31:                               # %vector.body128
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a2, -32
	xvld	$xr5, $a2, 0
	xvxor.v	$xr6, $xr4, $xr1
	xvxor.v	$xr7, $xr5, $xr1
	xvand.v	$xr9, $xr6, $xr2
	xvand.v	$xr8, $xr7, $xr2
	xvpermi.q	$xr10, $xr9, 1
	vpickve2gr.w	$a5, $vr10, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr4, $a5, 0
	vpickve2gr.w	$a5, $vr10, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr4, $a5, 1
	xvpermi.q	$xr4, $xr4, 2
	vpickve2gr.w	$a5, $vr10, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr5, $a5, 0
	vpickve2gr.w	$a5, $vr10, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr5, $a5, 1
	vpickve2gr.w	$a5, $vr9, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr10, $a5, 0
	vpickve2gr.w	$a5, $vr9, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr10, $a5, 1
	xvpermi.q	$xr10, $xr10, 2
	vpickve2gr.w	$a5, $vr9, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr11, $a5, 0
	vpickve2gr.w	$a5, $vr9, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr11, $a5, 1
	xvpermi.q	$xr9, $xr8, 1
	vpickve2gr.w	$a5, $vr9, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr12, $a5, 0
	vpickve2gr.w	$a5, $vr9, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr12, $a5, 1
	xvpermi.q	$xr12, $xr12, 2
	vpickve2gr.w	$a5, $vr9, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr13, $a5, 0
	vpickve2gr.w	$a5, $vr9, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr13, $a5, 1
	vpickve2gr.w	$a5, $vr8, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr9, $a5, 0
	vpickve2gr.w	$a5, $vr8, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr9, $a5, 1
	xvpermi.q	$xr9, $xr9, 2
	vpickve2gr.w	$a5, $vr8, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr14, $a5, 0
	vpickve2gr.w	$a5, $vr8, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr14, $a5, 1
	xvpickve2gr.d	$a5, $xr11, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr11, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr10, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr10, 3
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr5, 0
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr5, 1
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr4, 2
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr4, 3
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr14, 0
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr14, 1
	slli.d	$t6, $t6, 2
	xvpickve2gr.d	$t7, $xr9, 2
	slli.d	$t7, $t7, 2
	xvpickve2gr.d	$t8, $xr9, 3
	slli.d	$t8, $t8, 2
	xvpickve2gr.d	$fp, $xr13, 0
	slli.d	$fp, $fp, 2
	xvpickve2gr.d	$s0, $xr13, 1
	slli.d	$s0, $s0, 2
	xvpickve2gr.d	$s1, $xr12, 2
	slli.d	$s1, $s1, 2
	xvpickve2gr.d	$s3, $xr12, 3
	slli.d	$s3, $s3, 2
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	ldx.w	$t1, $a3, $t1
	ldx.w	$t2, $a3, $t2
	ldx.w	$t3, $a3, $t3
	ldx.w	$t4, $a3, $t4
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	vinsgr2vr.w	$vr5, $t1, 0
	vinsgr2vr.w	$vr5, $t2, 1
	vinsgr2vr.w	$vr5, $t3, 2
	vinsgr2vr.w	$vr5, $t4, 3
	xvpermi.q	$xr4, $xr5, 2
	ldx.w	$a5, $a3, $t5
	ldx.w	$a6, $a3, $t6
	ldx.w	$a7, $a3, $t7
	ldx.w	$t0, $a3, $t8
	ldx.w	$t1, $a3, $fp
	ldx.w	$t2, $a3, $s0
	ldx.w	$t3, $a3, $s1
	ldx.w	$t4, $a3, $s3
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	vinsgr2vr.w	$vr8, $t1, 0
	vinsgr2vr.w	$vr8, $t2, 1
	vinsgr2vr.w	$vr8, $t3, 2
	vinsgr2vr.w	$vr8, $t4, 3
	xvpermi.q	$xr5, $xr8, 2
	xvsrli.w	$xr9, $xr6, 16
	xvsrli.w	$xr8, $xr7, 16
	xvpermi.q	$xr10, $xr9, 1
	vpickve2gr.w	$a5, $vr10, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr6, $a5, 0
	vpickve2gr.w	$a5, $vr10, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr6, $a5, 1
	xvpermi.q	$xr6, $xr6, 2
	vpickve2gr.w	$a5, $vr10, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr7, $a5, 0
	vpickve2gr.w	$a5, $vr10, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr7, $a5, 1
	vpickve2gr.w	$a5, $vr9, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr10, $a5, 0
	vpickve2gr.w	$a5, $vr9, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr10, $a5, 1
	xvpermi.q	$xr10, $xr10, 2
	vpickve2gr.w	$a5, $vr9, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr11, $a5, 0
	vpickve2gr.w	$a5, $vr9, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr11, $a5, 1
	xvpermi.q	$xr9, $xr8, 1
	vpickve2gr.w	$a5, $vr9, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr12, $a5, 0
	vpickve2gr.w	$a5, $vr9, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr12, $a5, 1
	xvpermi.q	$xr12, $xr12, 2
	vpickve2gr.w	$a5, $vr9, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr13, $a5, 0
	vpickve2gr.w	$a5, $vr9, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr13, $a5, 1
	vpickve2gr.w	$a5, $vr8, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr9, $a5, 0
	vpickve2gr.w	$a5, $vr8, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr9, $a5, 1
	xvpermi.q	$xr9, $xr9, 2
	vpickve2gr.w	$a5, $vr8, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr14, $a5, 0
	vpickve2gr.w	$a5, $vr8, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr14, $a5, 1
	xvpickve2gr.d	$a5, $xr11, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr11, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr10, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr10, 3
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr7, 0
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr7, 1
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr6, 2
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr6, 3
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr14, 0
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr14, 1
	slli.d	$t6, $t6, 2
	xvpickve2gr.d	$t7, $xr9, 2
	slli.d	$t7, $t7, 2
	xvpickve2gr.d	$t8, $xr9, 3
	slli.d	$t8, $t8, 2
	xvpickve2gr.d	$fp, $xr13, 0
	slli.d	$fp, $fp, 2
	xvpickve2gr.d	$s0, $xr13, 1
	slli.d	$s0, $s0, 2
	xvpickve2gr.d	$s1, $xr12, 2
	slli.d	$s1, $s1, 2
	xvpickve2gr.d	$s3, $xr12, 3
	slli.d	$s3, $s3, 2
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	ldx.w	$t1, $a3, $t1
	ldx.w	$t2, $a3, $t2
	ldx.w	$t3, $a3, $t3
	ldx.w	$t4, $a3, $t4
	vinsgr2vr.w	$vr6, $a5, 0
	vinsgr2vr.w	$vr6, $a6, 1
	vinsgr2vr.w	$vr6, $a7, 2
	vinsgr2vr.w	$vr6, $t0, 3
	vinsgr2vr.w	$vr7, $t1, 0
	vinsgr2vr.w	$vr7, $t2, 1
	vinsgr2vr.w	$vr7, $t3, 2
	vinsgr2vr.w	$vr7, $t4, 3
	xvpermi.q	$xr6, $xr7, 2
	ldx.w	$a5, $a3, $t5
	ldx.w	$a6, $a3, $t6
	ldx.w	$a7, $a3, $t7
	ldx.w	$t0, $a3, $t8
	ldx.w	$t1, $a3, $fp
	ldx.w	$t2, $a3, $s0
	ldx.w	$t3, $a3, $s1
	ldx.w	$t4, $a3, $s3
	vinsgr2vr.w	$vr7, $a5, 0
	vinsgr2vr.w	$vr7, $a6, 1
	vinsgr2vr.w	$vr7, $a7, 2
	vinsgr2vr.w	$vr7, $t0, 3
	vinsgr2vr.w	$vr8, $t1, 0
	vinsgr2vr.w	$vr8, $t2, 1
	vinsgr2vr.w	$vr8, $t3, 2
	vinsgr2vr.w	$vr8, $t4, 3
	xvpermi.q	$xr7, $xr8, 2
	xvadd.w	$xr0, $xr4, $xr0
	xvadd.w	$xr3, $xr5, $xr3
	xvadd.w	$xr0, $xr0, $xr6
	xvadd.w	$xr3, $xr3, $xr7
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	bnez	$a4, .LBB0_31
# %bb.32:                               # %middle.block135
	xvadd.w	$xr0, $xr3, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a2, $xr0, 0
	beq	$a1, $a0, .LBB0_39
# %bb.33:                               # %vec.epilog.iter.check
	andi	$a3, $a0, 12
	beqz	$a3, .LBB0_37
.LBB0_34:                               # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $a0, 30, 2
	pcalau12i	$a3, %got_pc_hi20(g_board)
	ld.d	$a3, $a3, %got_pc_lo12(g_board)
	slli.d	$a1, $a1, 2
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a2, 0
	alsl.d	$a3, $a4, $a3, 2
	pcalau12i	$a2, %got_pc_hi20(countbits16)
	ld.d	$a2, $a2, %got_pc_lo12(countbits16)
	addi.d	$a3, $a3, 4
	sub.d	$a4, $a4, $a1
	vrepli.b	$vr1, -1
	.p2align	4, , 16
.LBB0_35:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, 0
	vxor.v	$vr2, $vr2, $vr1
	vpickve2gr.w	$a5, $vr2, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr3, $a5, 0
	vpickve2gr.w	$a5, $vr2, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr3, $a5, 1
	xvpermi.q	$xr3, $xr3, 2
	vpickve2gr.w	$a5, $vr2, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr4, $a5, 0
	vpickve2gr.w	$a5, $vr2, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr4, $a5, 1
	xvpickve2gr.d	$a5, $xr4, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	ldx.w	$a5, $a2, $a5
	ldx.w	$a6, $a2, $a6
	ldx.w	$a7, $a2, $a7
	ldx.w	$t0, $a2, $t0
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr3, $a7, 2
	vinsgr2vr.w	$vr3, $t0, 3
	vsrli.w	$vr2, $vr2, 16
	vpickve2gr.w	$a5, $vr2, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr4, $a5, 0
	vpickve2gr.w	$a5, $vr2, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr4, $a5, 1
	xvpermi.q	$xr4, $xr4, 2
	vpickve2gr.w	$a5, $vr2, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr5, $a5, 0
	vpickve2gr.w	$a5, $vr2, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr5, $a5, 1
	xvpickve2gr.d	$a5, $xr5, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr5, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr4, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr4, 3
	slli.d	$t0, $t0, 2
	ldx.w	$a5, $a2, $a5
	ldx.w	$a6, $a2, $a6
	ldx.w	$a7, $a2, $a7
	ldx.w	$t0, $a2, $t0
	vinsgr2vr.w	$vr2, $a5, 0
	vinsgr2vr.w	$vr2, $a6, 1
	vinsgr2vr.w	$vr2, $a7, 2
	vinsgr2vr.w	$vr2, $t0, 3
	vadd.w	$vr0, $vr3, $vr0
	vadd.w	$vr0, $vr0, $vr2
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB0_35
# %bb.36:                               # %vec.epilog.middle.block
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a1, $a0, .LBB0_39
.LBB0_37:                               # %for.body.i50.preheader
	pcalau12i	$a3, %got_pc_hi20(g_board)
	ld.d	$a3, $a3, %got_pc_lo12(g_board)
	sub.d	$a0, $a0, $a1
	alsl.d	$a3, $a1, $a3, 2
	pcalau12i	$a1, %got_pc_hi20(countbits16)
	ld.d	$a1, $a1, %got_pc_lo12(countbits16)
	addi.d	$a3, $a3, 4
	lu12i.w	$a4, -16
	lu32i.d	$a4, 0
	.p2align	4, , 16
.LBB0_38:                               # %for.body.i50
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a3, 0
	andn	$a6, $a4, $a5
	nor	$a5, $a5, $zero
	bstrpick.d	$a5, $a5, 15, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	srli.d	$a6, $a6, 14
	ldx.w	$a6, $a1, $a6
	add.d	$a2, $a5, $a2
	add.w	$a2, $a2, $a6
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB0_38
.LBB0_39:                               # %tr_total_empty_squares.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s5, 0
	bltz	$a2, .LBB0_42
# %bb.40:                               # %for.body.lr.ph.i61
	pcalau12i	$a0, %got_pc_hi20(g_board)
	ld.d	$a0, $a0, %got_pc_lo12(g_board)
	ldx.w	$a4, $a0, $s6
	addi.d	$a1, $a2, 1
	ori	$a3, $zero, 15
	bstrpick.d	$a1, $a1, 31, 0
	bgeu	$a2, $a3, .LBB0_43
# %bb.41:
	move	$a3, $zero
	move	$a2, $zero
	b	.LBB0_47
.LBB0_42:
	move	$a2, $zero
	b	.LBB0_49
.LBB0_43:                               # %vector.ph150
	bstrpick.d	$a2, $a1, 31, 4
	slli.d	$a3, $a2, 4
	xvinsgr2vr.w	$xr0, $a4, 7
	add.d	$a2, $s6, $a0
	addi.d	$a2, $a2, 36
	xvrepli.b	$xr1, 0
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	lu12i.w	$a5, 15
	ori	$a5, $a5, 4095
	xvreplgr2vr.w	$xr2, $a5
	move	$a5, $a3
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB0_44:                               # %vector.body153
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr4, $a2, -32
	xvpickve2gr.w	$a6, $xr0, 7
	xvld	$xr0, $a2, 0
	vinsgr2vr.w	$vr5, $a6, 0
	xvpickve2gr.w	$a6, $xr4, 0
	vinsgr2vr.w	$vr5, $a6, 1
	xvpickve2gr.w	$a6, $xr4, 1
	vinsgr2vr.w	$vr5, $a6, 2
	xvpickve2gr.w	$a6, $xr4, 2
	vinsgr2vr.w	$vr5, $a6, 3
	xvpickve2gr.w	$a6, $xr4, 3
	vinsgr2vr.w	$vr6, $a6, 0
	xvpickve2gr.w	$a6, $xr4, 4
	vinsgr2vr.w	$vr6, $a6, 1
	xvpickve2gr.w	$a6, $xr4, 5
	vinsgr2vr.w	$vr6, $a6, 2
	xvpickve2gr.w	$a6, $xr4, 6
	vinsgr2vr.w	$vr6, $a6, 3
	xvpermi.q	$xr5, $xr6, 2
	xvpickve2gr.w	$a6, $xr0, 3
	vinsgr2vr.w	$vr6, $a6, 0
	xvpickve2gr.w	$a6, $xr0, 4
	vinsgr2vr.w	$vr6, $a6, 1
	xvpickve2gr.w	$a6, $xr0, 5
	vinsgr2vr.w	$vr6, $a6, 2
	xvpickve2gr.w	$a6, $xr0, 6
	vinsgr2vr.w	$vr6, $a6, 3
	xvpickve2gr.w	$a6, $xr4, 7
	vinsgr2vr.w	$vr7, $a6, 0
	xvpickve2gr.w	$a6, $xr0, 0
	vinsgr2vr.w	$vr7, $a6, 1
	xvpickve2gr.w	$a6, $xr0, 1
	vinsgr2vr.w	$vr7, $a6, 2
	xvpickve2gr.w	$a6, $xr0, 2
	vinsgr2vr.w	$vr7, $a6, 3
	xvpermi.q	$xr7, $xr6, 2
	xvxor.v	$xr6, $xr4, $xr5
	xvxor.v	$xr7, $xr0, $xr7
	xvand.v	$xr9, $xr6, $xr2
	xvand.v	$xr8, $xr7, $xr2
	xvpermi.q	$xr10, $xr9, 1
	vpickve2gr.w	$a6, $vr10, 2
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr4, $a6, 0
	vpickve2gr.w	$a6, $vr10, 3
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr4, $a6, 1
	xvpermi.q	$xr4, $xr4, 2
	vpickve2gr.w	$a6, $vr10, 0
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr5, $a6, 0
	vpickve2gr.w	$a6, $vr10, 1
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr5, $a6, 1
	vpickve2gr.w	$a6, $vr9, 2
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr10, $a6, 0
	vpickve2gr.w	$a6, $vr9, 3
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr10, $a6, 1
	xvpermi.q	$xr10, $xr10, 2
	vpickve2gr.w	$a6, $vr9, 0
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr11, $a6, 0
	vpickve2gr.w	$a6, $vr9, 1
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr11, $a6, 1
	xvpermi.q	$xr9, $xr8, 1
	vpickve2gr.w	$a6, $vr9, 2
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr12, $a6, 0
	vpickve2gr.w	$a6, $vr9, 3
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr12, $a6, 1
	xvpermi.q	$xr12, $xr12, 2
	vpickve2gr.w	$a6, $vr9, 0
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr13, $a6, 0
	vpickve2gr.w	$a6, $vr9, 1
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr13, $a6, 1
	vpickve2gr.w	$a6, $vr8, 2
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr9, $a6, 0
	vpickve2gr.w	$a6, $vr8, 3
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr9, $a6, 1
	xvpermi.q	$xr9, $xr9, 2
	vpickve2gr.w	$a6, $vr8, 0
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr14, $a6, 0
	vpickve2gr.w	$a6, $vr8, 1
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr14, $a6, 1
	xvpickve2gr.d	$a6, $xr11, 0
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 1
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr10, 2
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr10, 3
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr5, 0
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr5, 1
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr4, 2
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr4, 3
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr14, 0
	slli.d	$t6, $t6, 2
	xvpickve2gr.d	$t7, $xr14, 1
	slli.d	$t7, $t7, 2
	xvpickve2gr.d	$t8, $xr9, 2
	slli.d	$t8, $t8, 2
	xvpickve2gr.d	$fp, $xr9, 3
	slli.d	$fp, $fp, 2
	xvpickve2gr.d	$s0, $xr13, 0
	slli.d	$s0, $s0, 2
	xvpickve2gr.d	$s1, $xr13, 1
	slli.d	$s1, $s1, 2
	xvpickve2gr.d	$s3, $xr12, 2
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$s4, $xr12, 3
	slli.d	$s4, $s4, 2
	ldx.w	$a6, $a4, $a6
	ldx.w	$a7, $a4, $a7
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	ldx.w	$t2, $a4, $t2
	ldx.w	$t3, $a4, $t3
	ldx.w	$t4, $a4, $t4
	ldx.w	$t5, $a4, $t5
	vinsgr2vr.w	$vr4, $a6, 0
	vinsgr2vr.w	$vr4, $a7, 1
	vinsgr2vr.w	$vr4, $t0, 2
	vinsgr2vr.w	$vr4, $t1, 3
	vinsgr2vr.w	$vr5, $t2, 0
	vinsgr2vr.w	$vr5, $t3, 1
	vinsgr2vr.w	$vr5, $t4, 2
	vinsgr2vr.w	$vr5, $t5, 3
	xvpermi.q	$xr4, $xr5, 2
	ldx.w	$a6, $a4, $t6
	ldx.w	$a7, $a4, $t7
	ldx.w	$t0, $a4, $t8
	ldx.w	$t1, $a4, $fp
	ldx.w	$t2, $a4, $s0
	ldx.w	$t3, $a4, $s1
	ldx.w	$t4, $a4, $s3
	ldx.w	$t5, $a4, $s4
	vinsgr2vr.w	$vr5, $a6, 0
	vinsgr2vr.w	$vr5, $a7, 1
	vinsgr2vr.w	$vr5, $t0, 2
	vinsgr2vr.w	$vr5, $t1, 3
	vinsgr2vr.w	$vr8, $t2, 0
	vinsgr2vr.w	$vr8, $t3, 1
	vinsgr2vr.w	$vr8, $t4, 2
	vinsgr2vr.w	$vr8, $t5, 3
	xvpermi.q	$xr5, $xr8, 2
	xvsrli.w	$xr9, $xr6, 16
	xvsrli.w	$xr8, $xr7, 16
	xvpermi.q	$xr10, $xr9, 1
	vpickve2gr.w	$a6, $vr10, 2
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr6, $a6, 0
	vpickve2gr.w	$a6, $vr10, 3
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr6, $a6, 1
	xvpermi.q	$xr6, $xr6, 2
	vpickve2gr.w	$a6, $vr10, 0
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr7, $a6, 0
	vpickve2gr.w	$a6, $vr10, 1
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr7, $a6, 1
	vpickve2gr.w	$a6, $vr9, 2
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr10, $a6, 0
	vpickve2gr.w	$a6, $vr9, 3
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr10, $a6, 1
	xvpermi.q	$xr10, $xr10, 2
	vpickve2gr.w	$a6, $vr9, 0
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr11, $a6, 0
	vpickve2gr.w	$a6, $vr9, 1
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr11, $a6, 1
	xvpermi.q	$xr9, $xr8, 1
	vpickve2gr.w	$a6, $vr9, 2
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr12, $a6, 0
	vpickve2gr.w	$a6, $vr9, 3
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr12, $a6, 1
	xvpermi.q	$xr12, $xr12, 2
	vpickve2gr.w	$a6, $vr9, 0
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr13, $a6, 0
	vpickve2gr.w	$a6, $vr9, 1
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr13, $a6, 1
	vpickve2gr.w	$a6, $vr8, 2
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr9, $a6, 0
	vpickve2gr.w	$a6, $vr8, 3
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr9, $a6, 1
	xvpermi.q	$xr9, $xr9, 2
	vpickve2gr.w	$a6, $vr8, 0
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr14, $a6, 0
	vpickve2gr.w	$a6, $vr8, 1
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.d	$vr14, $a6, 1
	xvpickve2gr.d	$a6, $xr11, 0
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr11, 1
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr10, 2
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr10, 3
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr7, 0
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr7, 1
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr6, 2
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr6, 3
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr14, 0
	slli.d	$t6, $t6, 2
	xvpickve2gr.d	$t7, $xr14, 1
	slli.d	$t7, $t7, 2
	xvpickve2gr.d	$t8, $xr9, 2
	slli.d	$t8, $t8, 2
	xvpickve2gr.d	$fp, $xr9, 3
	slli.d	$fp, $fp, 2
	xvpickve2gr.d	$s0, $xr13, 0
	slli.d	$s0, $s0, 2
	xvpickve2gr.d	$s1, $xr13, 1
	slli.d	$s1, $s1, 2
	xvpickve2gr.d	$s3, $xr12, 2
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$s4, $xr12, 3
	slli.d	$s4, $s4, 2
	ldx.w	$a6, $a4, $a6
	ldx.w	$a7, $a4, $a7
	ldx.w	$t0, $a4, $t0
	ldx.w	$t1, $a4, $t1
	ldx.w	$t2, $a4, $t2
	ldx.w	$t3, $a4, $t3
	ldx.w	$t4, $a4, $t4
	ldx.w	$t5, $a4, $t5
	vinsgr2vr.w	$vr6, $a6, 0
	vinsgr2vr.w	$vr6, $a7, 1
	vinsgr2vr.w	$vr6, $t0, 2
	vinsgr2vr.w	$vr6, $t1, 3
	vinsgr2vr.w	$vr7, $t2, 0
	vinsgr2vr.w	$vr7, $t3, 1
	vinsgr2vr.w	$vr7, $t4, 2
	vinsgr2vr.w	$vr7, $t5, 3
	xvpermi.q	$xr6, $xr7, 2
	ldx.w	$a6, $a4, $t6
	ldx.w	$a7, $a4, $t7
	ldx.w	$t0, $a4, $t8
	ldx.w	$t1, $a4, $fp
	ldx.w	$t2, $a4, $s0
	ldx.w	$t3, $a4, $s1
	ldx.w	$t4, $a4, $s3
	ldx.w	$t5, $a4, $s4
	vinsgr2vr.w	$vr7, $a6, 0
	vinsgr2vr.w	$vr7, $a7, 1
	vinsgr2vr.w	$vr7, $t0, 2
	vinsgr2vr.w	$vr7, $t1, 3
	vinsgr2vr.w	$vr8, $t2, 0
	vinsgr2vr.w	$vr8, $t3, 1
	vinsgr2vr.w	$vr8, $t4, 2
	vinsgr2vr.w	$vr8, $t5, 3
	xvpermi.q	$xr7, $xr8, 2
	xvadd.w	$xr1, $xr4, $xr1
	xvadd.w	$xr3, $xr5, $xr3
	xvadd.w	$xr1, $xr1, $xr6
	xvadd.w	$xr3, $xr3, $xr7
	addi.d	$a5, $a5, -16
	addi.d	$a2, $a2, 64
	bnez	$a5, .LBB0_44
# %bb.45:                               # %middle.block162
	xvadd.w	$xr1, $xr3, $xr1
	xvpermi.d	$xr2, $xr1, 78
	xvshuf4i.w	$xr2, $xr2, 228
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvshuf4i.w	$xr2, $xr2, 14
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvrepl128vei.w	$xr2, $xr2, 1
	xvadd.w	$xr1, $xr1, $xr2
	xvpickve2gr.w	$a2, $xr1, 0
	beq	$a3, $a1, .LBB0_49
# %bb.46:
	xvpickve2gr.w	$a4, $xr0, 7
.LBB0_47:                               # %for.body.i65.preheader
	sub.d	$a1, $a1, $a3
	alsl.d	$a3, $a3, $s6, 2
	add.d	$a3, $a3, $a0
	pcalau12i	$a0, %got_pc_hi20(countbits16)
	ld.d	$a0, $a0, %got_pc_lo12(countbits16)
	addi.d	$a3, $a3, 4
	lu12i.w	$a5, -16
	lu32i.d	$a5, 0
	.p2align	4, , 16
.LBB0_48:                               # %for.body.i65
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, 0
	xor	$a4, $a6, $a4
	and	$a7, $a4, $a5
	bstrpick.d	$a4, $a4, 15, 0
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a0, $a4
	srli.d	$a7, $a7, 14
	ldx.w	$a7, $a0, $a7
	add.d	$a2, $a4, $a2
	add.w	$a2, $a2, $a7
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 4
	move	$a4, $a6
	bnez	$a1, .LBB0_48
.LBB0_49:                               # %tr_border_length_col.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s5, 0
	bltz	$a1, .LBB0_52
# %bb.50:                               # %iter.check172
	addi.d	$a0, $a1, 1
	ori	$a2, $zero, 3
	bstrpick.d	$a0, $a0, 31, 0
	bgeu	$a1, $a2, .LBB0_53
# %bb.51:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_62
.LBB0_52:
	move	$a2, $zero
	b	.LBB0_64
.LBB0_53:                               # %vector.main.loop.iter.check174
	ori	$a2, $zero, 15
	bgeu	$a1, $a2, .LBB0_55
# %bb.54:
	move	$a1, $zero
	move	$a2, $zero
	b	.LBB0_59
.LBB0_55:                               # %vector.ph175
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a2, $a1, %got_pc_lo12(g_board)
	bstrpick.d	$a1, $a0, 31, 4
	slli.d	$a1, $a1, 4
	add.d	$a2, $s6, $a2
	addi.d	$a2, $a2, 36
	xvrepli.b	$xr0, 0
	pcalau12i	$a3, %got_pc_hi20(countbits16)
	ld.d	$a3, $a3, %got_pc_lo12(countbits16)
	lu12i.w	$a4, 15
	ori	$a4, $a4, 4095
	xvreplgr2vr.w	$xr1, $a4
	move	$a4, $a1
	xvori.b	$xr2, $xr0, 0
	.p2align	4, , 16
.LBB0_56:                               # %vector.body178
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr3, $a2, -32
	xvld	$xr4, $a2, 0
	xvsrli.w	$xr5, $xr3, 1
	xvsrli.w	$xr6, $xr4, 1
	xvbitclri.w	$xr3, $xr3, 31
	xvbitclri.w	$xr4, $xr4, 31
	xvxor.v	$xr5, $xr5, $xr3
	xvxor.v	$xr6, $xr6, $xr4
	xvand.v	$xr8, $xr5, $xr1
	xvand.v	$xr7, $xr6, $xr1
	xvpermi.q	$xr9, $xr8, 1
	vpickve2gr.w	$a5, $vr9, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr3, $a5, 0
	vpickve2gr.w	$a5, $vr9, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr3, $a5, 1
	xvpermi.q	$xr3, $xr3, 2
	vpickve2gr.w	$a5, $vr9, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr4, $a5, 0
	vpickve2gr.w	$a5, $vr9, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr4, $a5, 1
	vpickve2gr.w	$a5, $vr8, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr9, $a5, 0
	vpickve2gr.w	$a5, $vr8, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr9, $a5, 1
	xvpermi.q	$xr9, $xr9, 2
	vpickve2gr.w	$a5, $vr8, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr10, $a5, 0
	vpickve2gr.w	$a5, $vr8, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr10, $a5, 1
	xvpermi.q	$xr8, $xr7, 1
	vpickve2gr.w	$a5, $vr8, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr11, $a5, 0
	vpickve2gr.w	$a5, $vr8, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr11, $a5, 1
	xvpermi.q	$xr11, $xr11, 2
	vpickve2gr.w	$a5, $vr8, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr12, $a5, 0
	vpickve2gr.w	$a5, $vr8, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr12, $a5, 1
	vpickve2gr.w	$a5, $vr7, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr8, $a5, 0
	vpickve2gr.w	$a5, $vr7, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr8, $a5, 1
	xvpermi.q	$xr8, $xr8, 2
	vpickve2gr.w	$a5, $vr7, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr13, $a5, 0
	vpickve2gr.w	$a5, $vr7, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr13, $a5, 1
	xvpickve2gr.d	$a5, $xr10, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr10, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr9, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr9, 3
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr4, 0
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr4, 1
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr3, 2
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr3, 3
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr13, 0
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr13, 1
	slli.d	$t6, $t6, 2
	xvpickve2gr.d	$t7, $xr8, 2
	slli.d	$t7, $t7, 2
	xvpickve2gr.d	$t8, $xr8, 3
	slli.d	$t8, $t8, 2
	xvpickve2gr.d	$fp, $xr12, 0
	slli.d	$fp, $fp, 2
	xvpickve2gr.d	$s0, $xr12, 1
	slli.d	$s0, $s0, 2
	xvpickve2gr.d	$s1, $xr11, 2
	slli.d	$s1, $s1, 2
	xvpickve2gr.d	$s3, $xr11, 3
	slli.d	$s3, $s3, 2
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	ldx.w	$t1, $a3, $t1
	ldx.w	$t2, $a3, $t2
	ldx.w	$t3, $a3, $t3
	ldx.w	$t4, $a3, $t4
	vinsgr2vr.w	$vr3, $a5, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr3, $a7, 2
	vinsgr2vr.w	$vr3, $t0, 3
	vinsgr2vr.w	$vr4, $t1, 0
	vinsgr2vr.w	$vr4, $t2, 1
	vinsgr2vr.w	$vr4, $t3, 2
	vinsgr2vr.w	$vr4, $t4, 3
	xvpermi.q	$xr3, $xr4, 2
	ldx.w	$a5, $a3, $t5
	ldx.w	$a6, $a3, $t6
	ldx.w	$a7, $a3, $t7
	ldx.w	$t0, $a3, $t8
	ldx.w	$t1, $a3, $fp
	ldx.w	$t2, $a3, $s0
	ldx.w	$t3, $a3, $s1
	ldx.w	$t4, $a3, $s3
	vinsgr2vr.w	$vr4, $a5, 0
	vinsgr2vr.w	$vr4, $a6, 1
	vinsgr2vr.w	$vr4, $a7, 2
	vinsgr2vr.w	$vr4, $t0, 3
	vinsgr2vr.w	$vr7, $t1, 0
	vinsgr2vr.w	$vr7, $t2, 1
	vinsgr2vr.w	$vr7, $t3, 2
	vinsgr2vr.w	$vr7, $t4, 3
	xvpermi.q	$xr4, $xr7, 2
	xvsrli.w	$xr8, $xr5, 16
	xvsrli.w	$xr7, $xr6, 16
	xvpermi.q	$xr9, $xr8, 1
	vpickve2gr.w	$a5, $vr9, 2
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr5, $a5, 0
	vpickve2gr.w	$a5, $vr9, 3
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr5, $a5, 1
	xvpermi.q	$xr5, $xr5, 2
	vpickve2gr.w	$a5, $vr9, 0
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr6, $a5, 0
	vpickve2gr.w	$a5, $vr9, 1
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr6, $a5, 1
	vpickve2gr.w	$a5, $vr8, 2
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr9, $a5, 0
	vpickve2gr.w	$a5, $vr8, 3
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr9, $a5, 1
	xvpermi.q	$xr9, $xr9, 2
	vpickve2gr.w	$a5, $vr8, 0
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr10, $a5, 0
	vpickve2gr.w	$a5, $vr8, 1
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr10, $a5, 1
	xvpermi.q	$xr8, $xr7, 1
	vpickve2gr.w	$a5, $vr8, 2
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr11, $a5, 0
	vpickve2gr.w	$a5, $vr8, 3
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr11, $a5, 1
	xvpermi.q	$xr11, $xr11, 2
	vpickve2gr.w	$a5, $vr8, 0
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr12, $a5, 0
	vpickve2gr.w	$a5, $vr8, 1
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr12, $a5, 1
	vpickve2gr.w	$a5, $vr7, 2
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr8, $a5, 0
	vpickve2gr.w	$a5, $vr7, 3
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr8, $a5, 1
	xvpermi.q	$xr8, $xr8, 2
	vpickve2gr.w	$a5, $vr7, 0
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr13, $a5, 0
	vpickve2gr.w	$a5, $vr7, 1
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr13, $a5, 1
	xvpickve2gr.d	$a5, $xr10, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr10, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr9, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr9, 3
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr6, 0
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr6, 1
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr5, 2
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr5, 3
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr13, 0
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr13, 1
	slli.d	$t6, $t6, 2
	xvpickve2gr.d	$t7, $xr8, 2
	slli.d	$t7, $t7, 2
	xvpickve2gr.d	$t8, $xr8, 3
	slli.d	$t8, $t8, 2
	xvpickve2gr.d	$fp, $xr12, 0
	slli.d	$fp, $fp, 2
	xvpickve2gr.d	$s0, $xr12, 1
	slli.d	$s0, $s0, 2
	xvpickve2gr.d	$s1, $xr11, 2
	slli.d	$s1, $s1, 2
	xvpickve2gr.d	$s3, $xr11, 3
	slli.d	$s3, $s3, 2
	ldx.w	$a5, $a3, $a5
	ldx.w	$a6, $a3, $a6
	ldx.w	$a7, $a3, $a7
	ldx.w	$t0, $a3, $t0
	ldx.w	$t1, $a3, $t1
	ldx.w	$t2, $a3, $t2
	ldx.w	$t3, $a3, $t3
	ldx.w	$t4, $a3, $t4
	vinsgr2vr.w	$vr5, $a5, 0
	vinsgr2vr.w	$vr5, $a6, 1
	vinsgr2vr.w	$vr5, $a7, 2
	vinsgr2vr.w	$vr5, $t0, 3
	vinsgr2vr.w	$vr6, $t1, 0
	vinsgr2vr.w	$vr6, $t2, 1
	vinsgr2vr.w	$vr6, $t3, 2
	vinsgr2vr.w	$vr6, $t4, 3
	xvpermi.q	$xr5, $xr6, 2
	ldx.w	$a5, $a3, $t5
	ldx.w	$a6, $a3, $t6
	ldx.w	$a7, $a3, $t7
	ldx.w	$t0, $a3, $t8
	ldx.w	$t1, $a3, $fp
	ldx.w	$t2, $a3, $s0
	ldx.w	$t3, $a3, $s1
	ldx.w	$t4, $a3, $s3
	vinsgr2vr.w	$vr6, $a5, 0
	vinsgr2vr.w	$vr6, $a6, 1
	vinsgr2vr.w	$vr6, $a7, 2
	vinsgr2vr.w	$vr6, $t0, 3
	vinsgr2vr.w	$vr7, $t1, 0
	vinsgr2vr.w	$vr7, $t2, 1
	vinsgr2vr.w	$vr7, $t3, 2
	vinsgr2vr.w	$vr7, $t4, 3
	xvpermi.q	$xr6, $xr7, 2
	xvadd.w	$xr0, $xr3, $xr0
	xvadd.w	$xr2, $xr4, $xr2
	xvadd.w	$xr0, $xr0, $xr5
	xvadd.w	$xr2, $xr2, $xr6
	addi.d	$a4, $a4, -16
	addi.d	$a2, $a2, 64
	bnez	$a4, .LBB0_56
# %bb.57:                               # %middle.block185
	xvadd.w	$xr0, $xr2, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a2, $xr0, 0
	beq	$a1, $a0, .LBB0_64
# %bb.58:                               # %vec.epilog.iter.check192
	andi	$a3, $a0, 12
	beqz	$a3, .LBB0_62
.LBB0_59:                               # %vec.epilog.ph191
	move	$a4, $a1
	bstrpick.d	$a1, $a0, 31, 2
	slli.d	$a1, $a1, 2
	vrepli.b	$vr0, 0
	vinsgr2vr.w	$vr0, $a2, 0
	pcalau12i	$a2, %got_pc_hi20(g_board)
	ld.d	$a3, $a2, %got_pc_lo12(g_board)
	alsl.d	$a5, $a4, $s6, 2
	pcalau12i	$a2, %got_pc_hi20(countbits16)
	ld.d	$a2, $a2, %got_pc_lo12(countbits16)
	add.d	$a3, $a5, $a3
	addi.d	$a3, $a3, 4
	sub.d	$a4, $a4, $a1
	.p2align	4, , 16
.LBB0_60:                               # %vec.epilog.vector.body197
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vsrli.w	$vr2, $vr1, 1
	vbitclri.w	$vr1, $vr1, 31
	vxor.v	$vr1, $vr2, $vr1
	vpickve2gr.w	$a5, $vr1, 2
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr2, $a5, 0
	vpickve2gr.w	$a5, $vr1, 3
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr2, $a5, 1
	xvpermi.q	$xr2, $xr2, 2
	vpickve2gr.w	$a5, $vr1, 0
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr3, $a5, 0
	vpickve2gr.w	$a5, $vr1, 1
	bstrpick.d	$a5, $a5, 15, 0
	vinsgr2vr.d	$vr3, $a5, 1
	xvpickve2gr.d	$a5, $xr3, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr2, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr2, 3
	slli.d	$t0, $t0, 2
	ldx.w	$a5, $a2, $a5
	ldx.w	$a6, $a2, $a6
	ldx.w	$a7, $a2, $a7
	ldx.w	$t0, $a2, $t0
	vinsgr2vr.w	$vr2, $a5, 0
	vinsgr2vr.w	$vr2, $a6, 1
	vinsgr2vr.w	$vr2, $a7, 2
	vinsgr2vr.w	$vr2, $t0, 3
	vsrli.w	$vr1, $vr1, 16
	vpickve2gr.w	$a5, $vr1, 2
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr3, $a5, 0
	vpickve2gr.w	$a5, $vr1, 3
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr3, $a5, 1
	xvpermi.q	$xr3, $xr3, 2
	vpickve2gr.w	$a5, $vr1, 0
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr4, $a5, 0
	vpickve2gr.w	$a5, $vr1, 1
	bstrpick.d	$a5, $a5, 14, 0
	vinsgr2vr.d	$vr4, $a5, 1
	xvpickve2gr.d	$a5, $xr4, 0
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr4, 1
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 2
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 3
	slli.d	$t0, $t0, 2
	ldx.w	$a5, $a2, $a5
	ldx.w	$a6, $a2, $a6
	ldx.w	$a7, $a2, $a7
	ldx.w	$t0, $a2, $t0
	vinsgr2vr.w	$vr1, $a5, 0
	vinsgr2vr.w	$vr1, $a6, 1
	vinsgr2vr.w	$vr1, $a7, 2
	vinsgr2vr.w	$vr1, $t0, 3
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr0, $vr0, $vr1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 16
	bnez	$a4, .LBB0_60
# %bb.61:                               # %vec.epilog.middle.block202
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a2, $vr0, 0
	beq	$a1, $a0, .LBB0_64
.LBB0_62:                               # %for.body.i78.preheader
	pcalau12i	$a3, %got_pc_hi20(g_board)
	ld.d	$a3, $a3, %got_pc_lo12(g_board)
	sub.d	$a0, $a0, $a1
	alsl.d	$a1, $a1, $s6, 2
	add.d	$a3, $a1, $a3
	pcalau12i	$a1, %got_pc_hi20(countbits16)
	ld.d	$a1, $a1, %got_pc_lo12(countbits16)
	addi.d	$a3, $a3, 4
	lu12i.w	$a4, 31
	ori	$a4, $a4, 4092
	.p2align	4, , 16
.LBB0_63:                               # %for.body.i78
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a5, $a3, 0
	srli.d	$a6, $a5, 1
	bstrpick.d	$a5, $a5, 30, 0
	xor	$a5, $a6, $a5
	bstrpick.d	$a6, $a5, 15, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a1, $a6
	srli.d	$a5, $a5, 14
	and	$a5, $a5, $a4
	ldx.w	$a5, $a1, $a5
	add.d	$a2, $a6, $a2
	add.w	$a2, $a2, $a5
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB0_63
.LBB0_64:                               # %tr_border_length_row.exit
	ld.d	$a0, $s2, %pc_lo12(trait_file)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, %pc_lo12(trait_file)
	ori	$a0, $zero, 10
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.LBB0_65:                               # %if.then2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ori	$a1, $zero, 28
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s0, $s2, %pc_lo12(trait_file)
	b	.LBB0_2
.Lfunc_end0:
	.size	write_node_info, .Lfunc_end0-write_node_info
                                        # -- End function
	.p2align	5                               # -- Begin function tr_non_safe_moves_a_little_touchy
	.type	tr_non_safe_moves_a_little_touchy,@function
tr_non_safe_moves_a_little_touchy:      # @tr_non_safe_moves_a_little_touchy
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
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(g_board_size)
	ld.d	$a1, $a1, %got_pc_lo12(g_board_size)
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $a1, $a2
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB1_3
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a1, %got_pc_hi20(g_board)
	ld.d	$a3, $a1, %got_pc_lo12(g_board)
	slli.d	$a4, $a0, 7
	add.d	$a1, $a3, $a4
	ldx.w	$t0, $a3, $a4
	ld.w	$a6, $a1, 4
	ori	$a1, $zero, 16
	bgeu	$a2, $a1, .LBB1_4
# %bb.2:
	move	$a5, $zero
	move	$a1, $zero
	b	.LBB1_8
.LBB1_3:
	move	$a1, $zero
	b	.LBB1_11
.LBB1_4:                                # %vector.ph
	bstrpick.d	$a1, $a2, 30, 4
	slli.d	$a5, $a1, 4
	xvinsgr2vr.w	$xr0, $a6, 7
	xvinsgr2vr.w	$xr4, $t0, 7
	add.d	$a1, $a4, $a3
	addi.d	$a1, $a1, 40
	xvrepli.b	$xr1, 0
	pcalau12i	$a6, %got_pc_hi20(countbits16)
	ld.d	$a6, $a6, %got_pc_lo12(countbits16)
	lu12i.w	$a7, 15
	ori	$a7, $a7, 4095
	xvreplgr2vr.w	$xr2, $a7
	move	$a7, $a5
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr5, $a1, -32
	xvpickve2gr.w	$t0, $xr0, 7
	xvld	$xr0, $a1, 0
	vinsgr2vr.w	$vr6, $t0, 0
	xvpickve2gr.w	$t0, $xr5, 0
	vinsgr2vr.w	$vr6, $t0, 1
	xvpickve2gr.w	$t0, $xr5, 1
	vinsgr2vr.w	$vr6, $t0, 2
	xvpickve2gr.w	$t0, $xr5, 2
	vinsgr2vr.w	$vr6, $t0, 3
	xvpickve2gr.w	$t0, $xr5, 3
	vinsgr2vr.w	$vr7, $t0, 0
	xvpickve2gr.w	$t0, $xr5, 4
	vinsgr2vr.w	$vr7, $t0, 1
	xvpickve2gr.w	$t0, $xr5, 5
	vinsgr2vr.w	$vr7, $t0, 2
	xvpickve2gr.w	$t0, $xr5, 6
	vinsgr2vr.w	$vr7, $t0, 3
	xvpickve2gr.w	$t1, $xr6, 2
	xvpermi.q	$xr6, $xr7, 2
	xvpickve2gr.w	$t0, $xr0, 3
	vinsgr2vr.w	$vr7, $t0, 0
	xvpickve2gr.w	$t0, $xr0, 4
	vinsgr2vr.w	$vr7, $t0, 1
	xvpickve2gr.w	$t0, $xr0, 5
	vinsgr2vr.w	$vr7, $t0, 2
	xvpickve2gr.w	$t0, $xr0, 6
	vinsgr2vr.w	$vr7, $t0, 3
	xvpickve2gr.w	$t2, $xr5, 7
	xvpickve2gr.w	$t3, $xr4, 7
	vinsgr2vr.w	$vr4, $t2, 0
	xvpickve2gr.w	$t2, $xr0, 0
	vinsgr2vr.w	$vr4, $t2, 1
	xvpickve2gr.w	$t2, $xr0, 1
	vinsgr2vr.w	$vr4, $t2, 2
	xvpickve2gr.w	$t2, $xr0, 2
	vinsgr2vr.w	$vr4, $t2, 3
	xvpermi.q	$xr4, $xr7, 2
	xvpickve2gr.w	$t2, $xr6, 0
	vinsgr2vr.w	$vr7, $t3, 0
	vinsgr2vr.w	$vr7, $t2, 1
	xvpickve2gr.w	$t2, $xr6, 1
	vinsgr2vr.w	$vr7, $t2, 2
	vinsgr2vr.w	$vr7, $t1, 3
	xvpickve2gr.w	$t1, $xr6, 3
	vinsgr2vr.w	$vr8, $t1, 0
	xvpickve2gr.w	$t1, $xr6, 4
	vinsgr2vr.w	$vr8, $t1, 1
	xvpickve2gr.w	$t1, $xr6, 5
	vinsgr2vr.w	$vr8, $t1, 2
	xvpickve2gr.w	$t1, $xr6, 6
	vinsgr2vr.w	$vr8, $t1, 3
	xvpermi.q	$xr7, $xr8, 2
	xvpickve2gr.d	$t1, $xr0, 1
	vinsgr2vr.d	$vr8, $t1, 0
	xvpickve2gr.d	$t1, $xr0, 2
	vinsgr2vr.d	$vr8, $t1, 1
	xvpickve2gr.d	$t1, $xr5, 3
	vinsgr2vr.d	$vr9, $t1, 0
	xvpickve2gr.d	$t1, $xr0, 0
	vinsgr2vr.d	$vr9, $t1, 1
	xvpermi.q	$xr9, $xr8, 2
	xvor.v	$xr5, $xr5, $xr7
	xvor.v	$xr7, $xr0, $xr9
	xvsrli.w	$xr8, $xr6, 1
	xvsrli.w	$xr9, $xr4, 1
	xvor.v	$xr5, $xr5, $xr6
	xvor.v	$xr10, $xr7, $xr4
	xvslli.w	$xr7, $xr5, 1
	xvslli.w	$xr11, $xr10, 1
	xvslli.w	$xr6, $xr6, 2
	xvslli.w	$xr12, $xr4, 2
	xvor.v	$xr6, $xr8, $xr6
	xvor.v	$xr8, $xr9, $xr12
	xvor.v	$xr6, $xr6, $xr7
	xvor.v	$xr8, $xr8, $xr11
	xvnor.v	$xr7, $xr5, $xr6
	xvnor.v	$xr8, $xr10, $xr8
	xvand.v	$xr10, $xr7, $xr2
	xvand.v	$xr9, $xr8, $xr2
	xvpermi.q	$xr11, $xr10, 1
	vpickve2gr.w	$t1, $vr11, 2
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr5, $t1, 0
	vpickve2gr.w	$t1, $vr11, 3
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr5, $t1, 1
	xvpermi.q	$xr5, $xr5, 2
	vpickve2gr.w	$t1, $vr11, 0
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr6, $t1, 0
	vpickve2gr.w	$t1, $vr11, 1
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr6, $t1, 1
	vpickve2gr.w	$t1, $vr10, 2
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr11, $t1, 0
	vpickve2gr.w	$t1, $vr10, 3
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr11, $t1, 1
	xvpermi.q	$xr11, $xr11, 2
	vpickve2gr.w	$t1, $vr10, 0
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr12, $t1, 0
	vpickve2gr.w	$t1, $vr10, 1
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr12, $t1, 1
	xvpermi.q	$xr10, $xr9, 1
	vpickve2gr.w	$t1, $vr10, 2
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr13, $t1, 0
	vpickve2gr.w	$t1, $vr10, 3
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr13, $t1, 1
	xvpermi.q	$xr13, $xr13, 2
	vpickve2gr.w	$t1, $vr10, 0
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr14, $t1, 0
	vpickve2gr.w	$t1, $vr10, 1
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr14, $t1, 1
	vpickve2gr.w	$t1, $vr9, 2
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr10, $t1, 0
	vpickve2gr.w	$t1, $vr9, 3
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr10, $t1, 1
	xvpermi.q	$xr10, $xr10, 2
	vpickve2gr.w	$t1, $vr9, 0
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr15, $t1, 0
	vpickve2gr.w	$t1, $vr9, 1
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr15, $t1, 1
	xvpickve2gr.d	$t1, $xr12, 0
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr12, 1
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr11, 2
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr11, 3
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr6, 0
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr6, 1
	slli.d	$t6, $t6, 2
	xvpickve2gr.d	$t7, $xr5, 2
	slli.d	$t7, $t7, 2
	xvpickve2gr.d	$t8, $xr5, 3
	slli.d	$t8, $t8, 2
	xvpickve2gr.d	$fp, $xr15, 0
	slli.d	$fp, $fp, 2
	xvpickve2gr.d	$s0, $xr15, 1
	slli.d	$s0, $s0, 2
	xvpickve2gr.d	$s1, $xr10, 2
	slli.d	$s1, $s1, 2
	xvpickve2gr.d	$s2, $xr10, 3
	slli.d	$s2, $s2, 2
	xvpickve2gr.d	$s3, $xr14, 0
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$s4, $xr14, 1
	slli.d	$s4, $s4, 2
	xvpickve2gr.d	$s5, $xr13, 2
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr13, 3
	slli.d	$s6, $s6, 2
	ldx.w	$t1, $a6, $t1
	ldx.w	$t2, $a6, $t2
	ldx.w	$t3, $a6, $t3
	ldx.w	$t4, $a6, $t4
	ldx.w	$t5, $a6, $t5
	ldx.w	$t6, $a6, $t6
	ldx.w	$t7, $a6, $t7
	ldx.w	$t8, $a6, $t8
	vinsgr2vr.w	$vr5, $t1, 0
	vinsgr2vr.w	$vr5, $t2, 1
	vinsgr2vr.w	$vr5, $t3, 2
	vinsgr2vr.w	$vr5, $t4, 3
	vinsgr2vr.w	$vr6, $t5, 0
	vinsgr2vr.w	$vr6, $t6, 1
	vinsgr2vr.w	$vr6, $t7, 2
	vinsgr2vr.w	$vr6, $t8, 3
	xvpermi.q	$xr5, $xr6, 2
	ldx.w	$t1, $a6, $fp
	ldx.w	$t2, $a6, $s0
	ldx.w	$t3, $a6, $s1
	ldx.w	$t4, $a6, $s2
	ldx.w	$t5, $a6, $s3
	ldx.w	$t6, $a6, $s4
	ldx.w	$t7, $a6, $s5
	ldx.w	$t8, $a6, $s6
	vinsgr2vr.w	$vr6, $t1, 0
	vinsgr2vr.w	$vr6, $t2, 1
	vinsgr2vr.w	$vr6, $t3, 2
	vinsgr2vr.w	$vr6, $t4, 3
	vinsgr2vr.w	$vr9, $t5, 0
	vinsgr2vr.w	$vr9, $t6, 1
	vinsgr2vr.w	$vr9, $t7, 2
	vinsgr2vr.w	$vr9, $t8, 3
	xvpermi.q	$xr6, $xr9, 2
	xvsrli.w	$xr10, $xr7, 16
	xvsrli.w	$xr9, $xr8, 16
	xvpermi.q	$xr11, $xr10, 1
	vpickve2gr.w	$t1, $vr11, 2
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr7, $t1, 0
	vpickve2gr.w	$t1, $vr11, 3
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr7, $t1, 1
	xvpermi.q	$xr7, $xr7, 2
	vpickve2gr.w	$t1, $vr11, 0
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr8, $t1, 0
	vpickve2gr.w	$t1, $vr11, 1
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr8, $t1, 1
	vpickve2gr.w	$t1, $vr10, 2
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr11, $t1, 0
	vpickve2gr.w	$t1, $vr10, 3
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr11, $t1, 1
	xvpermi.q	$xr11, $xr11, 2
	vpickve2gr.w	$t1, $vr10, 0
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr12, $t1, 0
	vpickve2gr.w	$t1, $vr10, 1
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr12, $t1, 1
	xvpermi.q	$xr10, $xr9, 1
	vpickve2gr.w	$t1, $vr10, 2
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr13, $t1, 0
	vpickve2gr.w	$t1, $vr10, 3
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr13, $t1, 1
	xvpermi.q	$xr13, $xr13, 2
	vpickve2gr.w	$t1, $vr10, 0
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr14, $t1, 0
	vpickve2gr.w	$t1, $vr10, 1
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr14, $t1, 1
	vpickve2gr.w	$t1, $vr9, 2
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr10, $t1, 0
	vpickve2gr.w	$t1, $vr9, 3
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr10, $t1, 1
	xvpermi.q	$xr10, $xr10, 2
	vpickve2gr.w	$t1, $vr9, 0
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr15, $t1, 0
	vpickve2gr.w	$t1, $vr9, 1
	bstrpick.d	$t1, $t1, 15, 0
	vinsgr2vr.d	$vr15, $t1, 1
	xvpickve2gr.d	$t1, $xr12, 0
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr12, 1
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr11, 2
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr11, 3
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr8, 0
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr8, 1
	slli.d	$t6, $t6, 2
	xvpickve2gr.d	$t7, $xr7, 2
	slli.d	$t7, $t7, 2
	xvpickve2gr.d	$t8, $xr7, 3
	slli.d	$t8, $t8, 2
	xvpickve2gr.d	$fp, $xr15, 0
	slli.d	$fp, $fp, 2
	xvpickve2gr.d	$s0, $xr15, 1
	slli.d	$s0, $s0, 2
	xvpickve2gr.d	$s1, $xr10, 2
	slli.d	$s1, $s1, 2
	xvpickve2gr.d	$s2, $xr10, 3
	slli.d	$s2, $s2, 2
	xvpickve2gr.d	$s3, $xr14, 0
	slli.d	$s3, $s3, 2
	xvpickve2gr.d	$s4, $xr14, 1
	slli.d	$s4, $s4, 2
	xvpickve2gr.d	$s5, $xr13, 2
	slli.d	$s5, $s5, 2
	xvpickve2gr.d	$s6, $xr13, 3
	slli.d	$s6, $s6, 2
	ldx.w	$t1, $a6, $t1
	ldx.w	$t2, $a6, $t2
	ldx.w	$t3, $a6, $t3
	ldx.w	$t4, $a6, $t4
	ldx.w	$t5, $a6, $t5
	ldx.w	$t6, $a6, $t6
	ldx.w	$t7, $a6, $t7
	ldx.w	$t8, $a6, $t8
	vinsgr2vr.w	$vr7, $t1, 0
	vinsgr2vr.w	$vr7, $t2, 1
	vinsgr2vr.w	$vr7, $t3, 2
	vinsgr2vr.w	$vr7, $t4, 3
	vinsgr2vr.w	$vr8, $t5, 0
	vinsgr2vr.w	$vr8, $t6, 1
	vinsgr2vr.w	$vr8, $t7, 2
	vinsgr2vr.w	$vr8, $t8, 3
	xvpermi.q	$xr7, $xr8, 2
	ldx.w	$t1, $a6, $fp
	ldx.w	$t2, $a6, $s0
	ldx.w	$t3, $a6, $s1
	ldx.w	$t4, $a6, $s2
	ldx.w	$t5, $a6, $s3
	ldx.w	$t6, $a6, $s4
	ldx.w	$t7, $a6, $s5
	ldx.w	$t8, $a6, $s6
	vinsgr2vr.w	$vr8, $t1, 0
	vinsgr2vr.w	$vr8, $t2, 1
	vinsgr2vr.w	$vr8, $t3, 2
	vinsgr2vr.w	$vr8, $t4, 3
	vinsgr2vr.w	$vr9, $t5, 0
	vinsgr2vr.w	$vr9, $t6, 1
	vinsgr2vr.w	$vr9, $t7, 2
	vinsgr2vr.w	$vr9, $t8, 3
	xvpermi.q	$xr8, $xr9, 2
	xvadd.w	$xr1, $xr5, $xr1
	xvadd.w	$xr3, $xr6, $xr3
	xvadd.w	$xr1, $xr1, $xr7
	xvadd.w	$xr3, $xr3, $xr8
	addi.d	$a7, $a7, -16
	addi.d	$a1, $a1, 64
	bnez	$a7, .LBB1_5
# %bb.6:                                # %middle.block
	xvadd.w	$xr1, $xr3, $xr1
	xvpermi.d	$xr2, $xr1, 78
	xvshuf4i.w	$xr2, $xr2, 228
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvshuf4i.w	$xr2, $xr2, 14
	xvadd.w	$xr1, $xr1, $xr2
	xvpermi.d	$xr2, $xr1, 68
	xvrepl128vei.w	$xr2, $xr2, 1
	xvadd.w	$xr1, $xr1, $xr2
	xvpickve2gr.w	$a1, $xr1, 0
	beq	$a5, $a2, .LBB1_10
# %bb.7:
	xvpickve2gr.w	$a6, $xr0, 7
.LBB1_8:                                # %for.body.preheader
	alsl.d	$a4, $a5, $a4, 2
	add.d	$a3, $a4, $a3
	addi.d	$a3, $a3, 8
	pcalau12i	$a4, %got_pc_hi20(countbits16)
	ld.d	$a4, $a4, %got_pc_lo12(countbits16)
	sub.d	$a2, $a2, $a5
	lu12i.w	$a5, -16
	lu32i.d	$a5, 0
	.p2align	4, , 16
.LBB1_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a7, $a6
	ld.w	$a6, $a3, 0
	or	$t0, $a6, $t0
	bstrpick.d	$t1, $a7, 31, 1
	or	$t0, $t0, $a7
	slli.d	$t2, $t0, 1
	slli.d	$t3, $a7, 2
	or	$t1, $t1, $t3
	or	$t1, $t1, $t2
	or	$t2, $t0, $t1
	andn	$t2, $a5, $t2
	nor	$t0, $t0, $t1
	bstrpick.d	$t0, $t0, 15, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a4, $t0
	srli.d	$t1, $t2, 14
	ldx.w	$t1, $a4, $t1
	add.d	$a1, $t0, $a1
	add.w	$a1, $a1, $t1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 4
	move	$t0, $a7
	bnez	$a2, .LBB1_9
.LBB1_10:                               # %for.end
	addi.w	$a2, $zero, -1
	beq	$a1, $a2, .LBB1_12
.LBB1_11:                               # %if.end
	move	$a0, $a1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB1_12:                               # %if.then
	move	$fp, $a0
	pcaddu18i	$ra, %call36(print_board)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	addi.w	$a2, $zero, -1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	tr_non_safe_moves_a_little_touchy, .Lfunc_end1-tr_non_safe_moves_a_little_touchy
                                        # -- End function
	.type	trait_file,@object              # @trait_file
	.local	trait_file
	.comm	trait_file,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"trait_file"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"w"
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Couldn't open \"trait_file\".\n"
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%c %15s :"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" %2d"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" %2d :"
	.size	.L.str.5, 7

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%d %d\n"
	.size	.L.str.7, 7

	.section	".note.GNU-stack","",@progbits
	.addrsig
