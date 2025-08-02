	.file	"mg.c"
	.text
	.globl	create_subdomain                # -- Begin function create_subdomain
	.p2align	5
	.type	create_subdomain,@function
create_subdomain:                       # @create_subdomain
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s2, $sp, 152
	ld.d	$t0, $sp, 144
	move	$fp, $a7
	st.w	$s2, $a0, 24
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	st.w	$t0, $a0, 28
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.w	$a1, $a0, 0
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.w	$a2, $a0, 4
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.w	$a3, $a0, 8
	move	$s5, $a4
	st.w	$a4, $a0, 12
	move	$s4, $a5
	st.w	$a5, $a0, 16
	move	$s3, $a6
	st.w	$a6, $a0, 20
	addi.d	$s7, $a0, 248
	ori	$a0, $zero, 216
	mul.d	$s6, $s2, $a0
	ori	$a1, $zero, 64
	move	$a0, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB0_5
# %bb.1:                                # %for.body.lr.ph
	move	$s8, $zero
	move	$s0, $zero
	addi.w	$a0, $s2, -1
	ori	$a1, $zero, 216
	mul.d	$s1, $a0, $a1
	mul.d	$s2, $s2, $a1
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s7, 0
	add.d	$a0, $a0, $s8
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	sra.w	$a2, $a2, $s0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	sra.w	$a3, $a3, $s0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	sra.w	$a4, $a4, $s0
	sra.w	$a5, $s5, $s0
	sra.w	$a6, $s4, $s0
	sra.w	$a7, $s3, $s0
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	st.d	$t0, $sp, 0
	pcaddu18i	$ra, %call36(create_box)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s6, $s6, $a0
	addi.d	$s8, $s8, 216
	addi.d	$s0, $s0, 1
	beq	$s2, $s8, .LBB0_5
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $fp
	bne	$s1, $s8, .LBB0_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB0_3 Depth=1
	pcaddu18i	$ra, %call36(IterativeSolver_NumGrids)
	jirl	$ra, $ra, 0
	add.w	$a1, $a0, $fp
	b	.LBB0_2
.LBB0_5:                                # %for.end
	addi.w	$a0, $s6, 0
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end0:
	.size	create_subdomain, .Lfunc_end0-create_subdomain
                                        # -- End function
	.globl	destroy_subdomain               # -- Begin function destroy_subdomain
	.p2align	5
	.type	destroy_subdomain,@function
destroy_subdomain:                      # @destroy_subdomain
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 24
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_3
# %bb.1:                                # %for.body.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 248
	add.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(destroy_box)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 24
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 216
	blt	$s1, $a0, .LBB1_2
.LBB1_3:                                # %for.end
	ld.d	$a0, $fp, 248
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	destroy_subdomain, .Lfunc_end1-destroy_subdomain
                                        # -- End function
	.globl	calculate_neighboring_subdomain_index # -- Begin function calculate_neighboring_subdomain_index
	.p2align	5
	.type	calculate_neighboring_subdomain_index,@function
calculate_neighboring_subdomain_index:  # @calculate_neighboring_subdomain_index
# %bb.0:                                # %entry
	ld.w	$a7, $a0, 1560
	add.d	$a1, $a4, $a1
	add.d	$a2, $a5, $a2
	ld.w	$a4, $a0, 1564
	add.w	$a1, $a1, $a7
	mod.w	$a1, $a1, $a7
	ld.w	$a0, $a0, 1568
	add.w	$a2, $a2, $a4
	mod.w	$a2, $a2, $a4
	add.d	$a3, $a6, $a3
	add.w	$a3, $a3, $a0
	mod.w	$a0, $a3, $a0
	mul.d	$a0, $a0, $a4
	add.d	$a0, $a0, $a2
	mul.d	$a0, $a0, $a7
	add.w	$a0, $a0, $a1
	ret
.Lfunc_end2:
	.size	calculate_neighboring_subdomain_index, .Lfunc_end2-calculate_neighboring_subdomain_index
                                        # -- End function
	.globl	calculate_neighboring_subdomain_rank # -- Begin function calculate_neighboring_subdomain_rank
	.p2align	5
	.type	calculate_neighboring_subdomain_rank,@function
calculate_neighboring_subdomain_rank:   # @calculate_neighboring_subdomain_rank
# %bb.0:                                # %entry
	ld.w	$t0, $a0, 1584
	beqz	$t0, .LBB3_3
# %bb.1:                                # %if.then
	ld.w	$t0, $a0, 1560
	mul.d	$t0, $t0, $a7
	add.d	$t1, $a4, $a1
	add.w	$t1, $t1, $t0
	addi.w	$t0, $zero, -1
	bltz	$t1, .LBB3_9
# %bb.2:                                # %if.end
	ld.w	$t2, $a0, 1572
	bge	$t1, $t2, .LBB3_9
.LBB3_3:                                # %if.end14
	ld.w	$t0, $a0, 1588
	ld.d	$t1, $sp, 0
	beqz	$t0, .LBB3_6
# %bb.4:                                # %if.then17
	ld.w	$t0, $a0, 1564
	mul.d	$t0, $t0, $t1
	add.d	$t2, $a5, $a2
	add.w	$t2, $t2, $t0
	addi.w	$t0, $zero, -1
	bltz	$t2, .LBB3_9
# %bb.5:                                # %if.end25
	ld.w	$t3, $a0, 1576
	bge	$t2, $t3, .LBB3_9
.LBB3_6:                                # %if.end36
	ld.d	$t2, $sp, 8
	ld.w	$t0, $a0, 1592
	ld.w	$t3, $a0, 1568
	beqz	$t0, .LBB3_10
# %bb.7:                                # %if.then39
	mul.d	$t0, $t3, $t2
	add.w	$a3, $a6, $a3
	add.w	$a6, $a3, $t0
	addi.w	$t0, $zero, -1
	bltz	$a6, .LBB3_9
# %bb.8:                                # %if.end47
	ld.w	$t4, $a0, 1580
	blt	$a6, $t4, .LBB3_11
.LBB3_9:                                # %return
	move	$a0, $t0
	ret
.LBB3_10:                               # %if.end36.if.end58_crit_edge
	add.w	$a3, $a6, $a3
.LBB3_11:                               # %if.end58
	add.w	$a1, $a4, $a1
	ld.w	$a4, $a0, 1560
	srli.d	$a6, $a1, 31
	ld.w	$t0, $a0, 1548
	add.d	$a6, $a7, $a6
	slt	$a1, $a1, $a4
	xori	$a1, $a1, 1
	add.d	$a4, $a6, $t0
	add.w	$a1, $a4, $a1
	add.w	$a2, $a5, $a2
	srli.d	$a4, $a2, 31
	ld.w	$a5, $a0, 1564
	add.d	$a4, $t1, $a4
	ld.w	$a6, $a0, 1552
	mod.w	$a1, $a1, $t0
	slt	$a2, $a2, $a5
	xori	$a2, $a2, 1
	add.d	$a4, $a4, $a6
	add.w	$a2, $a4, $a2
	mod.w	$a2, $a2, $a6
	srli.d	$a4, $a3, 31
	ld.w	$a0, $a0, 1556
	add.d	$a4, $t2, $a4
	slt	$a3, $a3, $t3
	xori	$a3, $a3, 1
	add.d	$a4, $a4, $a0
	add.w	$a3, $a4, $a3
	mod.w	$a0, $a3, $a0
	mul.d	$a0, $a0, $a6
	add.d	$a0, $a0, $a2
	mul.d	$a0, $a0, $t0
	add.w	$t0, $a0, $a1
	move	$a0, $t0
	ret
.Lfunc_end3:
	.size	calculate_neighboring_subdomain_rank, .Lfunc_end3-calculate_neighboring_subdomain_rank
                                        # -- End function
	.globl	create_domain                   # -- Begin function create_domain
	.p2align	5
	.type	create_domain,@function
create_domain:                          # @create_domain
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 616                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 752
	ld.d	$s3, $sp, 720
	ld.d	$t0, $sp, 744
	move	$s7, $a7
	st.d	$a6, $sp, 320                   # 8-byte Folded Spill
	move	$s4, $a0
	st.w	$s3, $a0, 1596
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	st.d	$a5, $sp, 352                   # 8-byte Folded Spill
	st.d	$a4, $sp, 376                   # 8-byte Folded Spill
	bnez	$s3, .LBB4_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$fp, $a3
	move	$s1, $t0
	move	$s0, $a2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 352                   # 8-byte Folded Reload
	move	$a2, $s0
	move	$t0, $s1
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	move	$a3, $fp
.LBB4_2:                                # %if.end
	addi.w	$a0, $s2, -1
	sra.w	$a6, $a1, $a0
	blt	$a6, $t0, .LBB4_191
# %bb.3:                                # %if.end13
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$t0, $sp, 296                   # 8-byte Folded Spill
	bne	$a1, $a2, .LBB4_193
# %bb.4:                                # %if.end13
	bne	$a2, $a3, .LBB4_193
# %bb.5:                                # %if.end24
	ld.d	$s0, $sp, 704
	ld.d	$fp, $sp, 736
	ld.d	$s5, $sp, 728
	ld.d	$s1, $sp, 712
	mul.w	$a1, $s0, $s7
	div.w	$a0, $s3, $a1
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	st.d	$a1, $sp, 480                   # 8-byte Folded Spill
	mul.d	$a0, $a0, $a1
	sub.w	$a0, $s3, $a0
	div.w	$a1, $a0, $s7
	st.d	$a1, $sp, 456                   # 8-byte Folded Spill
	mul.d	$a1, $a1, $s7
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	st.w	$s7, $s4, 1548
	st.w	$s0, $s4, 1552
	st.w	$s1, $s4, 1556
	st.w	$a4, $s4, 1560
	st.w	$a5, $s4, 1564
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	st.w	$a0, $s4, 1568
	mul.d	$a1, $s7, $a4
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.w	$a1, $s4, 1572
	mul.d	$a1, $s0, $a5
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.w	$a1, $s4, 1576
	mul.d	$a1, $s1, $a0
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.w	$a1, $s4, 1580
	mul.d	$a1, $a5, $a4
	st.d	$a1, $sp, 312                   # 8-byte Folded Spill
	mul.w	$a1, $a1, $a0
	st.w	$a1, $s4, 1600
	addi.d	$a0, $s4, 1776
	slli.d	$a2, $a1, 8
	ori	$a1, $zero, 64
	st.d	$a0, $sp, 496                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 1572
	ld.w	$a1, $s4, 1576
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $a3
	ld.w	$a2, $s4, 1580
	st.w	$a0, $s4, 1536
	mul.d	$a0, $a1, $a3
	st.w	$a0, $s4, 1540
	mul.d	$a0, $a2, $a3
	st.w	$a0, $s4, 1544
	ld.w	$a0, $s5, 0
	st.w	$a0, $s4, 1584
	ld.w	$a0, $s5, 4
	st.w	$a0, $s4, 1588
	ld.w	$a1, $s5, 8
	ld.w	$a0, $s4, 1600
	st.w	$a1, $s4, 1592
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	st.w	$a4, $s4, 1604
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.w	$fp, $s4, 1608
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	st.w	$a2, $s4, 1612
	blt	$a4, $a1, .LBB4_13
# %bb.6:                                # %for.body.lr.ph
	ori	$a1, $zero, 4
	bgeu	$a4, $a1, .LBB4_8
# %bb.7:
	move	$a1, $zero
	b	.LBB4_11
.LBB4_8:                                # %vector.ph
	addi.d	$a2, $s4, 1696
	bstrpick.d	$a1, $a4, 30, 2
	slli.d	$a1, $a1, 2
	lu52i.d	$a3, $zero, -1025
	xvreplgr2vr.d	$xr0, $a3
	move	$a3, $a1
	.p2align	4, , 16
.LBB4_9:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -80
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -4
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB4_9
# %bb.10:                               # %middle.block
	beq	$a1, $a4, .LBB4_13
.LBB4_11:                               # %for.body.preheader
	alsl.d	$a2, $a1, $s4, 3
	addi.d	$a2, $a2, 1696
	sub.d	$a1, $a4, $a1
	lu52i.d	$a3, $zero, -1025
	.p2align	4, , 16
.LBB4_12:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a3, $a2, -80
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB4_12
.LBB4_13:                               # %for.cond90.preheader
	slli.d	$a0, $a0, 8
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 488                   # 8-byte Folded Reload
	add.w	$a5, $t0, $s7
	addi.w	$a3, $a5, -1
	slt	$a0, $zero, $t0
	slt	$a1, $s7, $t0
	xori	$a1, $a1, 1
	and	$a4, $a0, $a1
	addi.w	$a0, $zero, -1
	slt	$a1, $a0, $t0
	slt	$a2, $t0, $s7
	and	$a6, $a1, $a2
	addi.w	$a1, $t0, 1
	add.w	$a7, $a1, $s7
	addi.w	$a2, $zero, -2
	slt	$a2, $a2, $t0
	slt	$a1, $a1, $s7
	and	$t0, $a2, $a1
	ld.d	$a1, $sp, 456                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s0
	addi.w	$a1, $a1, -1
	addi.d	$a2, $s4, 1328
	mod.w	$a3, $a3, $s7
	andi	$a4, $a4, 1
	mod.w	$a5, $a5, $s7
	andi	$a6, $a6, 1
	mod.w	$a7, $a7, $s7
	andi	$t0, $t0, 1
	ori	$t1, $zero, 2
	move	$t2, $a0
	b	.LBB4_15
	.p2align	4, , 16
.LBB4_14:                               # %for.inc194
                                        #   in Loop: Header=BB4_15 Depth=1
	addi.d	$t2, $t2, 1
	addi.d	$a2, $a2, 36
	beq	$t2, $t1, .LBB4_20
.LBB4_15:                               # %for.cond94.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
	ld.d	$t3, $sp, 408                   # 8-byte Folded Reload
	add.d	$t4, $t2, $t3
	add.w	$t3, $s1, $t4
	mod.w	$t3, $t3, $s1
	ld.d	$t5, $sp, 480                   # 8-byte Folded Reload
	mul.d	$t3, $t3, $t5
	slt	$t5, $a0, $t4
	slt	$t4, $t4, $s1
	and	$t4, $t5, $t4
	move	$t5, $a2
	move	$t6, $a1
	move	$t7, $a0
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_16:                               # %for.body101.us.preheader
                                        #   in Loop: Header=BB4_18 Depth=2
	add.d	$fp, $a3, $t8
	st.w	$fp, $t5, -8
	ld.w	$s2, $s4, 1584
	sltui	$s2, $s2, 1
	addi.d	$s3, $zero, -1
	masknez	$s5, $s3, $a4
	maskeqz	$s6, $fp, $a4
	or	$s5, $s6, $s5
	masknez	$s5, $s5, $s2
	maskeqz	$fp, $fp, $s2
	or	$fp, $fp, $s5
	st.w	$fp, $t5, -8
	ld.w	$s2, $s4, 1588
	sltui	$s2, $s2, 1
	maskeqz	$fp, $fp, $s2
	masknez	$s2, $s3, $s2
	or	$fp, $fp, $s2
	st.w	$fp, $t5, -8
	ld.w	$s2, $s4, 1592
	sltui	$s2, $s2, 1
	andi	$s5, $t4, 1
	maskeqz	$s6, $fp, $s5
	masknez	$s8, $s3, $s5
	or	$s6, $s6, $s8
	masknez	$s6, $s6, $s2
	maskeqz	$fp, $fp, $s2
	or	$fp, $fp, $s6
	st.w	$fp, $t5, -8
	add.d	$fp, $a5, $t8
	st.w	$fp, $t5, -4
	ld.w	$s2, $s4, 1584
	sltui	$s2, $s2, 1
	masknez	$s6, $s3, $a6
	maskeqz	$ra, $fp, $a6
	or	$s6, $ra, $s6
	masknez	$s6, $s6, $s2
	maskeqz	$fp, $fp, $s2
	or	$fp, $fp, $s6
	st.w	$fp, $t5, -4
	ld.w	$s2, $s4, 1588
	sltui	$s2, $s2, 1
	maskeqz	$fp, $fp, $s2
	masknez	$s2, $s3, $s2
	or	$fp, $fp, $s2
	st.w	$fp, $t5, -4
	ld.w	$s2, $s4, 1592
	sltui	$s2, $s2, 1
	maskeqz	$s6, $fp, $s5
	or	$s6, $s6, $s8
	masknez	$s6, $s6, $s2
	maskeqz	$fp, $fp, $s2
	or	$fp, $fp, $s6
	st.w	$fp, $t5, -4
	add.d	$t8, $a7, $t8
	st.w	$t8, $t5, 0
	ld.w	$fp, $s4, 1584
	sltui	$fp, $fp, 1
	masknez	$s2, $s3, $t0
	maskeqz	$s6, $t8, $t0
	or	$s2, $s6, $s2
	masknez	$s2, $s2, $fp
	maskeqz	$t8, $t8, $fp
	or	$t8, $t8, $s2
	st.w	$t8, $t5, 0
	ld.w	$fp, $s4, 1588
	sltui	$fp, $fp, 1
	maskeqz	$t8, $t8, $fp
	masknez	$fp, $s3, $fp
	or	$t8, $t8, $fp
	st.w	$t8, $t5, 0
	ld.w	$fp, $s4, 1592
	sltui	$fp, $fp, 1
	maskeqz	$s2, $t8, $s5
	or	$s2, $s2, $s8
	masknez	$s2, $s2, $fp
	maskeqz	$t8, $t8, $fp
	or	$t8, $t8, $s2
.LBB4_17:                               # %for.inc191
                                        #   in Loop: Header=BB4_18 Depth=2
	st.w	$t8, $t5, 0
	addi.d	$t7, $t7, 1
	addi.w	$t6, $t6, 1
	addi.d	$t5, $t5, 12
	beq	$t7, $t1, .LBB4_14
.LBB4_18:                               # %for.cond98.preheader
                                        #   Parent Loop BB4_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t8, $sp, 456                   # 8-byte Folded Reload
	add.d	$t8, $t8, $t7
	mod.w	$s3, $t6, $s0
	mul.d	$s3, $s3, $s7
	slti	$s5, $t8, 0
	slt	$t8, $t8, $s0
	xori	$t8, $t8, 1
	or	$s5, $s5, $t8
	add.d	$t8, $s3, $t3
	bnez	$s5, .LBB4_16
# %bb.19:                               # %for.body101.preheader
                                        #   in Loop: Header=BB4_18 Depth=2
	add.d	$s3, $a3, $t8
	st.w	$s3, $t5, -8
	ld.w	$s5, $s4, 1584
	sltui	$s5, $s5, 1
	addi.d	$s6, $zero, -1
	masknez	$s8, $s6, $a4
	maskeqz	$ra, $s3, $a4
	or	$s8, $ra, $s8
	masknez	$s8, $s8, $s5
	maskeqz	$s3, $s3, $s5
	or	$s3, $s3, $s8
	st.w	$s3, $t5, -8
	ld.w	$s5, $s4, 1592
	sltui	$s5, $s5, 1
	andi	$s8, $t4, 1
	maskeqz	$ra, $s3, $s8
	masknez	$fp, $s6, $s8
	or	$ra, $ra, $fp
	masknez	$ra, $ra, $s5
	maskeqz	$s3, $s3, $s5
	or	$s3, $s3, $ra
	st.w	$s3, $t5, -8
	add.d	$s3, $a5, $t8
	st.w	$s3, $t5, -4
	ld.w	$s5, $s4, 1584
	sltui	$s5, $s5, 1
	masknez	$ra, $s6, $a6
	maskeqz	$s2, $s3, $a6
	or	$s2, $s2, $ra
	masknez	$s2, $s2, $s5
	maskeqz	$s3, $s3, $s5
	or	$s2, $s3, $s2
	st.w	$s2, $t5, -4
	ld.w	$s3, $s4, 1592
	sltui	$s3, $s3, 1
	maskeqz	$s5, $s2, $s8
	or	$s5, $s5, $fp
	masknez	$s5, $s5, $s3
	maskeqz	$s2, $s2, $s3
	or	$s2, $s2, $s5
	st.w	$s2, $t5, -4
	add.d	$t8, $a7, $t8
	st.w	$t8, $t5, 0
	ld.w	$s2, $s4, 1584
	sltui	$s2, $s2, 1
	masknez	$s3, $s6, $t0
	maskeqz	$s5, $t8, $t0
	or	$s3, $s5, $s3
	masknez	$s3, $s3, $s2
	maskeqz	$t8, $t8, $s2
	or	$t8, $t8, $s3
	st.w	$t8, $t5, 0
	ld.w	$s2, $s4, 1592
	sltui	$s2, $s2, 1
	maskeqz	$s3, $t8, $s8
	or	$fp, $s3, $fp
	masknez	$fp, $fp, $s2
	maskeqz	$t8, $t8, $s2
	or	$t8, $t8, $fp
	b	.LBB4_17
.LBB4_20:                               # %for.cond197.preheader
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	blt	$a0, $a1, .LBB4_135
# %bb.21:                               # %for.cond201.preheader.lr.ph
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	blt	$a4, $a1, .LBB4_136
# %bb.22:                               # %for.cond201.preheader.us.preheader
	move	$a7, $zero
	move	$t0, $zero
	ori	$a0, $zero, 216
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a1, $s3, $a0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 472                   # 8-byte Folded Reload
	bstrpick.d	$a1, $a1, 31, 0
	bstrpick.d	$a2, $s3, 31, 0
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 408                   # 8-byte Folded Reload
	mul.d	$a3, $a6, $a3
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	mul.d	$a3, $a3, $a4
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	mul.d	$a3, $a3, $a5
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	mul.d	$a2, $a2, $a0
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	mul.d	$a0, $a1, $a0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	b	.LBB4_24
	.p2align	4, , 16
.LBB4_23:                               # %for.cond201.for.inc276_crit_edge.us
                                        #   in Loop: Header=BB4_24 Depth=1
	ld.d	$t0, $sp, 56                    # 8-byte Folded Reload
	addi.d	$t0, $t0, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	add.w	$a7, $a7, $a0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	beq	$t0, $a0, .LBB4_136
.LBB4_24:                               # %for.cond201.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_27 Depth 2
                                        #       Child Loop BB4_29 Depth 3
                                        #         Child Loop BB4_32 Depth 4
	ori	$a0, $zero, 1
	st.d	$a7, $sp, 64                    # 8-byte Folded Spill
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	blt	$a5, $a0, .LBB4_23
# %bb.25:                               # %for.cond205.preheader.us.us.preheader
                                        #   in Loop: Header=BB4_24 Depth=1
	move	$a3, $zero
	move	$a6, $zero
	ld.d	$a0, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t1, $a0, 0
	mul.d	$a0, $a4, $t0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a0, $t0
	mul.d	$a0, $a0, $s1
	st.d	$a0, $sp, 360                   # 8-byte Folded Spill
	b	.LBB4_27
	.p2align	4, , 16
.LBB4_26:                               # %for.cond205.for.inc273_crit_edge.us.us
                                        #   in Loop: Header=BB4_27 Depth=2
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	add.w	$a7, $a7, $a5
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	move	$a3, $a0
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 352                   # 8-byte Folded Reload
	beq	$a0, $a4, .LBB4_23
.LBB4_27:                               # %for.cond205.preheader.us.us
                                        #   Parent Loop BB4_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_29 Depth 3
                                        #         Child Loop BB4_32 Depth 4
	move	$a4, $zero
	st.d	$zero, $sp, 384                 # 8-byte Folded Spill
	addi.w	$a0, $a3, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	mul.d	$a1, $a1, $a5
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a3
	mul.d	$a1, $a1, $s1
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	addi.d	$a1, $a6, -1
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	addi.w	$a1, $a3, -1
	srli.d	$a1, $a1, 31
	ld.d	$a2, $sp, 456                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	srli.d	$a0, $a0, 31
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	st.d	$a6, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $a6, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a3, $sp, 232                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 0
	srli.d	$a0, $a0, 31
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	b	.LBB4_29
	.p2align	4, , 16
.LBB4_28:                               # %for.end269.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.w	$a0, $s1, 0
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 200                   # 8-byte Folded Reload
	addi.w	$a7, $a7, 1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	move	$a4, $a0
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	beq	$a0, $a5, .LBB4_26
.LBB4_29:                               # %for.body208.us.us
                                        #   Parent Loop BB4_24 Depth=1
                                        #     Parent Loop BB4_27 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_32 Depth 4
	st.d	$a7, $sp, 200                   # 8-byte Folded Spill
	slli.d	$fp, $a7, 8
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a4
	slli.d	$s0, $a0, 8
	add.d	$a0, $t1, $s0
	st.w	$s3, $a0, 24
	ld.d	$a1, $sp, 296                   # 8-byte Folded Reload
	st.w	$a1, $a0, 28
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a4, $sp, 240                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a4
	mul.d	$s2, $a1, $s1
	stx.w	$s2, $t1, $s0
	ld.d	$a1, $sp, 368                   # 8-byte Folded Reload
	st.w	$a1, $a0, 4
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	st.w	$a1, $a0, 8
	st.w	$s1, $a0, 12
	st.w	$s1, $a0, 16
	st.w	$s1, $a0, 20
	addi.d	$s7, $a0, 248
	ori	$a1, $zero, 64
	move	$a0, $s7
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	move	$a2, $s1
	pcaddu18i	$ra, %call36(posix_memalign)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB4_34
# %bb.30:                               # %for.body.i.us.us.preheader
                                        #   in Loop: Header=BB4_29 Depth=3
	move	$s3, $zero
	move	$s5, $zero
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	b	.LBB4_32
	.p2align	4, , 16
.LBB4_31:                               # %if.end.i.us.us
                                        #   in Loop: Header=BB4_32 Depth=4
	ld.d	$a0, $s7, 0
	add.d	$a0, $a0, $s5
	sra.w	$a2, $s2, $s3
	ld.d	$a3, $sp, 368                   # 8-byte Folded Reload
	sra.w	$a3, $a3, $s3
	ld.d	$a4, $sp, 360                   # 8-byte Folded Reload
	sra.w	$a4, $a4, $s3
	ld.d	$a5, $sp, 304                   # 8-byte Folded Reload
	sra.w	$a5, $a5, $s3
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	st.d	$a6, $sp, 0
	move	$a6, $a5
	move	$a7, $a5
	pcaddu18i	$ra, %call36(create_box)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s1, $s1, $a0
	addi.d	$s5, $s5, 216
	addi.d	$s3, $s3, 1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	beq	$a0, $s5, .LBB4_34
.LBB4_32:                               # %for.body.i.us.us
                                        #   Parent Loop BB4_24 Depth=1
                                        #     Parent Loop BB4_27 Depth=2
                                        #       Parent Loop BB4_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	bne	$a0, $s5, .LBB4_31
# %bb.33:                               # %if.then.i.us.us
                                        #   in Loop: Header=BB4_32 Depth=4
	pcaddu18i	$ra, %call36(IterativeSolver_NumGrids)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	b	.LBB4_31
	.p2align	4, , 16
.LBB4_34:                               # %create_subdomain.exit.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t8, $sp, 240                   # 8-byte Folded Reload
	addi.w	$a0, $t8, 0
	ld.d	$s2, $s4, 1776
	ld.w	$a1, $s4, 1584
	ld.w	$a2, $s4, 1560
	ld.w	$a3, $s4, 1564
	add.d	$a4, $s2, $s0
	addi.d	$a4, $a4, 32
	add.w	$a6, $a2, $t8
	ld.d	$t4, $sp, 232                   # 8-byte Folded Reload
	add.w	$a7, $a3, $t4
	ld.w	$a5, $s4, 1568
	addi.w	$t0, $a7, -1
	mod.w	$t0, $t0, $a3
	st.d	$t0, $sp, 440                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 384                   # 8-byte Folded Reload
	addi.d	$s0, $t3, -1
	addi.w	$t0, $t8, -1
	srli.d	$t0, $t0, 31
	ld.d	$t2, $sp, 488                   # 8-byte Folded Reload
	add.d	$s3, $t0, $t2
	addi.w	$t0, $a6, -1
	mod.w	$t1, $t0, $a2
	srli.d	$a0, $a0, 31
	add.d	$a0, $a0, $t2
	slt	$t0, $t8, $a2
	xori	$t0, $t0, 1
	add.d	$a0, $a0, $t0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	slt	$a0, $a3, $t4
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	add.d	$a0, $t0, $a0
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	mod.w	$t5, $a6, $a2
	mul.d	$a0, $a2, $t2
	add.w	$t6, $t3, $a0
	addi.w	$t7, $t6, 1
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	mul.d	$t3, $a3, $t0
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	add.w	$t0, $t0, $t3
	st.d	$t0, $sp, 432                   # 8-byte Folded Spill
	addi.d	$s5, $t8, 1
	addi.w	$t0, $s5, 0
	srli.d	$t0, $t0, 31
	add.d	$t0, $t0, $t2
	st.d	$s5, $sp, 184                   # 8-byte Folded Spill
	slt	$t2, $s5, $a2
	xori	$t2, $t2, 1
	add.d	$t0, $t0, $t2
	st.d	$t0, $sp, 264                   # 8-byte Folded Spill
	addi.w	$a6, $a6, 1
	mod.w	$ra, $a6, $a2
	mod.w	$a6, $a7, $a3
	st.d	$a6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	add.w	$a0, $s0, $a0
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.w	$t0, $a0, $t3
	slt	$a0, $a2, $t8
	st.d	$s3, $sp, 216                   # 8-byte Folded Spill
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	slt	$a0, $t4, $a3
	xori	$a0, $a0, 1
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	add.d	$a0, $a6, $a0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	addi.w	$a0, $a7, 1
	mod.w	$a0, $a0, $a3
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.w	$t8, $a0, $t3
	move	$t3, $t0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	slt	$a0, $a0, $a3
	xori	$a0, $a0, 1
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a6, $a0
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 192                   # 8-byte Folded Spill
	add.d	$a0, $s2, $fp
	addi.d	$t4, $a0, 92
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	mul.d	$a0, $a5, $a0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	addi.w	$a7, $zero, -1
	ori	$s0, $zero, 8
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$t0, $sp, 448                   # 8-byte Folded Spill
	st.d	$t8, $sp, 464                   # 8-byte Folded Spill
	beqz	$a1, .LBB4_37
	.p2align	4, , 16
.LBB4_35:                               # %if.then.i424.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 488                   # 8-byte Folded Reload
	mul.d	$fp, $a2, $t0
	ld.d	$t0, $sp, 344                   # 8-byte Folded Reload
	add.w	$fp, $t0, $fp
	addi.d	$s2, $zero, -1
	bltz	$fp, .LBB4_44
# %bb.36:                               # %if.end.i426.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s3, $s4, 1572
	bge	$fp, $s3, .LBB4_44
.LBB4_37:                               # %if.end14.i.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$fp, $s4, 1588
	beqz	$fp, .LBB4_40
# %bb.38:                               # %if.then17.i.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	mul.d	$fp, $a3, $t0
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	add.w	$fp, $t0, $fp
	addi.d	$s2, $zero, -1
	bltz	$fp, .LBB4_44
# %bb.39:                               # %if.end25.i.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s3, $s4, 1576
	bge	$fp, $s3, .LBB4_44
.LBB4_40:                               # %if.end36.i.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$fp, $s4, 1592
	beqz	$fp, .LBB4_43
# %bb.41:                               # %if.then39.i.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	add.w	$fp, $t0, $a0
	addi.d	$s2, $zero, -1
	bltz	$fp, .LBB4_44
# %bb.42:                               # %if.end47.i.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s3, $s4, 1580
	bge	$fp, $s3, .LBB4_44
.LBB4_43:                               # %if.end58.i.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$fp, $s4, 1548
	ld.d	$t0, $sp, 240                   # 8-byte Folded Reload
	slt	$s2, $a2, $t0
	ld.w	$s3, $s4, 1552
	ld.d	$t0, $sp, 216                   # 8-byte Folded Reload
	add.d	$s5, $t0, $fp
	add.w	$s2, $s5, $s2
	ld.d	$t0, $sp, 232                   # 8-byte Folded Reload
	slt	$s5, $a3, $t0
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	add.d	$s6, $t0, $s3
	add.w	$s5, $s6, $s5
	srli.d	$s6, $a0, 31
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	add.d	$s6, $s6, $t0
	slt	$s7, $a6, $a5
	xori	$s7, $s7, 1
	ld.w	$s8, $s4, 1556
	add.d	$s6, $s6, $s7
	mod.w	$s2, $s2, $fp
	mod.w	$s5, $s5, $s3
	add.w	$s6, $s6, $s8
	mod.w	$s6, $s6, $s8
	mul.d	$s3, $s6, $s3
	add.d	$s3, $s3, $s5
	mul.d	$fp, $s3, $fp
	add.d	$s2, $fp, $s2
	.p2align	4, , 16
.LBB4_44:                               # %calculate_neighboring_subdomain_rank.exit.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	add.w	$fp, $a5, $a0
	mod.w	$fp, $fp, $a5
	mul.d	$fp, $fp, $a3
	ld.d	$t0, $sp, 440                   # 8-byte Folded Reload
	add.d	$s3, $fp, $t0
	mul.d	$s3, $s3, $a2
	st.w	$s2, $t4, -60
	add.d	$s2, $s3, $t1
	st.w	$s2, $t4, -56
	beqz	$a1, .LBB4_47
# %bb.45:                               # %if.then.i424.us.us.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 488                   # 8-byte Folded Reload
	mul.d	$s2, $a2, $t0
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	add.w	$s5, $t0, $s2
	addi.d	$s2, $zero, -1
	bltz	$s5, .LBB4_54
# %bb.46:                               # %if.end.i426.us.us.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s6, $s4, 1572
	bge	$s5, $s6, .LBB4_54
.LBB4_47:                               # %if.end14.i.us.us.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s2, $s4, 1588
	beqz	$s2, .LBB4_50
# %bb.48:                               # %if.then17.i.us.us.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 456                   # 8-byte Folded Reload
	mul.d	$s2, $a3, $t0
	ld.d	$t0, $sp, 392                   # 8-byte Folded Reload
	add.w	$s5, $t0, $s2
	addi.d	$s2, $zero, -1
	bltz	$s5, .LBB4_54
# %bb.49:                               # %if.end25.i.us.us.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s6, $s4, 1576
	bge	$s5, $s6, .LBB4_54
.LBB4_50:                               # %if.end36.i.us.us.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s2, $s4, 1592
	beqz	$s2, .LBB4_53
# %bb.51:                               # %if.then39.i.us.us.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	add.w	$s5, $t0, $a0
	addi.d	$s2, $zero, -1
	bltz	$s5, .LBB4_54
# %bb.52:                               # %if.end47.i.us.us.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s6, $s4, 1580
	bge	$s5, $s6, .LBB4_54
.LBB4_53:                               # %if.end58.i.us.us.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$s2, $s4, 1548
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	add.w	$s5, $s2, $t0
	mod.w	$s5, $s5, $s2
	ld.w	$s6, $s4, 1552
	srli.d	$s7, $a0, 31
	ld.d	$t0, $sp, 408                   # 8-byte Folded Reload
	add.d	$s7, $s7, $t0
	slt	$s8, $a6, $a5
	xori	$s8, $s8, 1
	ld.w	$t0, $s4, 1556
	add.d	$s7, $s7, $s8
	ld.d	$t2, $sp, 256                   # 8-byte Folded Reload
	add.w	$s8, $s6, $t2
	mod.w	$s8, $s8, $s6
	add.w	$s7, $s7, $t0
	mod.w	$t0, $s7, $t0
	mul.d	$t0, $t0, $s6
	add.d	$t0, $t0, $s8
	mul.d	$t0, $t0, $s2
	add.d	$s2, $t0, $s5
	.p2align	4, , 16
.LBB4_54:                               # %calculate_neighboring_subdomain_rank.exit.us.us.1
                                        #   in Loop: Header=BB4_29 Depth=3
	st.w	$s2, $t4, -52
	add.d	$t0, $s3, $t5
	st.w	$t0, $t4, -48
	ld.d	$t2, $sp, 432                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_57
# %bb.55:                               # %if.then.i424.us.us.2
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s5, $zero, -1
	bltz	$t7, .LBB4_64
# %bb.56:                               # %if.end.i426.us.us.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	bge	$t7, $t0, .LBB4_64
.LBB4_57:                               # %if.end14.i.us.us.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_60
# %bb.58:                               # %if.then17.i.us.us.2
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s5, $zero, -1
	bltz	$t2, .LBB4_64
# %bb.59:                               # %if.end25.i.us.us.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$t2, $t0, .LBB4_64
.LBB4_60:                               # %if.end36.i.us.us.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_63
# %bb.61:                               # %if.then39.i.us.us.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	add.w	$s2, $t0, $a0
	addi.d	$s5, $zero, -1
	bltz	$s2, .LBB4_64
# %bb.62:                               # %if.end47.i.us.us.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s2, $t0, .LBB4_64
.LBB4_63:                               # %if.end58.i.us.us.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	add.w	$s2, $t0, $t2
	mod.w	$s2, $s2, $t0
	ld.w	$s5, $s4, 1552
	srli.d	$s6, $a0, 31
	ld.d	$t2, $sp, 408                   # 8-byte Folded Reload
	add.d	$s6, $s6, $t2
	slt	$s7, $a6, $a5
	xori	$s7, $s7, 1
	ld.w	$s8, $s4, 1556
	add.d	$s6, $s6, $s7
	ld.d	$t2, $sp, 256                   # 8-byte Folded Reload
	add.w	$s7, $s5, $t2
	mod.w	$s7, $s7, $s5
	add.w	$s6, $s6, $s8
	mod.w	$s6, $s6, $s8
	mul.d	$s5, $s6, $s5
	add.d	$s5, $s5, $s7
	mul.d	$t0, $s5, $t0
	add.d	$s5, $t0, $s2
	.p2align	4, , 16
.LBB4_64:                               # %calculate_neighboring_subdomain_rank.exit.us.us.2
                                        #   in Loop: Header=BB4_29 Depth=3
	alsl.d	$s2, $a7, $a7, 3
	st.w	$s5, $t4, -44
	add.d	$t0, $s3, $ra
	st.w	$t0, $t4, -40
	ld.d	$t0, $sp, 424                   # 8-byte Folded Reload
	add.d	$t0, $fp, $t0
	mul.d	$s3, $t0, $a2
	add.d	$s5, $s3, $t5
	add.d	$s6, $s3, $t1
	beqz	$a1, .LBB4_67
# %bb.65:                               # %if.then.i424.us.us.1775
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 480                   # 8-byte Folded Reload
	bltz	$t0, .LBB4_76
# %bb.66:                               # %if.end.i426.us.us.1777
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	ld.d	$t2, $sp, 480                   # 8-byte Folded Reload
	bge	$t2, $t0, .LBB4_76
.LBB4_67:                               # %if.end14.i.us.us.1779
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_70
# %bb.68:                               # %if.then17.i.us.us.1783
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s8, $zero, -1
	bltz	$t3, .LBB4_74
# %bb.69:                               # %if.end25.i.us.us.1785
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$t3, $t0, .LBB4_74
.LBB4_70:                               # %if.end36.i.us.us.1788
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_73
# %bb.71:                               # %if.then39.i.us.us.1792
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	add.w	$s7, $t0, $a0
	addi.d	$s8, $zero, -1
	bltz	$s7, .LBB4_74
# %bb.72:                               # %if.end47.i.us.us.1794
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s7, $t0, .LBB4_74
.LBB4_73:                               # %if.end58.i.us.us.1819
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	add.w	$s7, $t0, $t2
	mod.w	$s7, $s7, $t0
	ld.w	$s8, $s4, 1552
	srli.d	$t3, $a0, 31
	ld.d	$t2, $sp, 408                   # 8-byte Folded Reload
	add.d	$t3, $t3, $t2
	slt	$t8, $a6, $a5
	xori	$t8, $t8, 1
	ld.w	$t2, $s4, 1556
	add.d	$t3, $t3, $t8
	ld.d	$t8, $sp, 280                   # 8-byte Folded Reload
	add.w	$t8, $s8, $t8
	mod.w	$t8, $t8, $s8
	add.w	$t3, $t3, $t2
	mod.w	$t2, $t3, $t2
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
	mul.d	$t2, $t2, $s8
	add.d	$t2, $t2, $t8
	ld.d	$t8, $sp, 464                   # 8-byte Folded Reload
	mul.d	$t0, $t2, $t0
	add.d	$s8, $t0, $s7
.LBB4_74:                               # %calculate_neighboring_subdomain_rank.exit.us.us.1825
                                        #   in Loop: Header=BB4_29 Depth=3
	st.w	$s8, $t4, -36
	st.w	$s6, $t4, -32
	beqz	$a1, .LBB4_78
# %bb.75:                               # %if.then.i424.us.us.1.1
                                        #   in Loop: Header=BB4_29 Depth=3
	bgez	$t6, .LBB4_77
	b	.LBB4_87
	.p2align	4, , 16
.LBB4_76:                               # %calculate_neighboring_subdomain_rank.exit.us.us.1825.thread
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.w	$t0, $zero, -1
	lu32i.d	$t0, 0
	st.w	$t0, $t4, -36
	st.w	$s6, $t4, -32
	bltz	$t6, .LBB4_87
.LBB4_77:                               # %if.end.i426.us.us.1.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	bge	$t6, $t0, .LBB4_87
.LBB4_78:                               # %if.end14.i.us.us.1.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_81
# %bb.79:                               # %if.then17.i.us.us.1.1
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s6, $zero, -1
	bltz	$t3, .LBB4_85
# %bb.80:                               # %if.end25.i.us.us.1.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$t3, $t0, .LBB4_85
.LBB4_81:                               # %if.end36.i.us.us.1.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_84
# %bb.82:                               # %if.then39.i.us.us.1.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	add.w	$s7, $t0, $a0
	addi.d	$s6, $zero, -1
	bltz	$s7, .LBB4_85
# %bb.83:                               # %if.end47.i.us.us.1.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s7, $t0, .LBB4_85
.LBB4_84:                               # %if.end58.i.us.us.1.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t2, $sp, 288                   # 8-byte Folded Reload
	add.w	$t2, $t0, $t2
	mod.w	$t2, $t2, $t0
	ld.w	$t3, $s4, 1552
	srli.d	$t8, $a0, 31
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	add.d	$t8, $t8, $s6
	slt	$s6, $a6, $a5
	xori	$s6, $s6, 1
	ld.w	$s7, $s4, 1556
	add.d	$t8, $t8, $s6
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	add.w	$s6, $t3, $s6
	mod.w	$s6, $s6, $t3
	add.w	$t8, $t8, $s7
	mod.w	$t8, $t8, $s7
	mul.d	$t3, $t8, $t3
	ld.d	$t8, $sp, 464                   # 8-byte Folded Reload
	add.d	$t3, $t3, $s6
	mul.d	$t0, $t3, $t0
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
	add.d	$s6, $t0, $t2
.LBB4_85:                               # %calculate_neighboring_subdomain_rank.exit.us.us.1.1
                                        #   in Loop: Header=BB4_29 Depth=3
	st.w	$s6, $t4, -28
	st.w	$s5, $t4, -24
	bnez	$a1, .LBB4_88
# %bb.86:                               #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s5, $s2, 14
	b	.LBB4_90
	.p2align	4, , 16
.LBB4_87:                               # %calculate_neighboring_subdomain_rank.exit.us.us.1.1.thread
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.w	$t0, $zero, -1
	lu32i.d	$t0, 0
	st.w	$t0, $t4, -28
	st.w	$s5, $t4, -24
.LBB4_88:                               # %if.then.i424.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s5, $s0, -3
	addi.d	$s6, $zero, -1
	bltz	$t7, .LBB4_98
# %bb.89:                               # %if.end.i426.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	bge	$t7, $t0, .LBB4_98
.LBB4_90:                               # %if.end14.i.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_93
# %bb.91:                               # %if.then17.i.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s6, $zero, -1
	bltz	$t3, .LBB4_98
# %bb.92:                               # %if.end25.i.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$t3, $t0, .LBB4_98
.LBB4_93:                               # %if.end36.i.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_96
# %bb.94:                               # %if.then39.i.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	add.w	$s7, $t0, $a0
	addi.d	$s6, $zero, -1
	bltz	$s7, .LBB4_97
# %bb.95:                               # %if.end47.i.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s7, $t0, .LBB4_97
.LBB4_96:                               # %if.end58.i.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	add.w	$t2, $t0, $t2
	mod.w	$t2, $t2, $t0
	ld.w	$t3, $s4, 1552
	srli.d	$t8, $a0, 31
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	add.d	$t8, $t8, $s6
	slt	$s6, $a6, $a5
	xori	$s6, $s6, 1
	ld.w	$s7, $s4, 1556
	add.d	$t8, $t8, $s6
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	add.w	$s6, $t3, $s6
	mod.w	$s6, $s6, $t3
	add.w	$t8, $t8, $s7
	mod.w	$t8, $t8, $s7
	mul.d	$t3, $t8, $t3
	add.d	$t3, $t3, $s6
	mul.d	$t0, $t3, $t0
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
	add.d	$s6, $t0, $t2
.LBB4_97:                               # %calculate_neighboring_subdomain_rank.exit.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t8, $sp, 464                   # 8-byte Folded Reload
.LBB4_98:                               # %calculate_neighboring_subdomain_rank.exit.us.us.2.1
                                        #   in Loop: Header=BB4_29 Depth=3
	alsl.d	$t0, $s5, $a4, 3
	slli.d	$t2, $s5, 3
	stx.w	$s6, $a4, $t2
	add.d	$t2, $s3, $ra
	st.w	$t2, $t0, 4
	ld.d	$t0, $sp, 416                   # 8-byte Folded Reload
	add.d	$t0, $fp, $t0
	mul.d	$fp, $t0, $a2
	add.d	$s3, $fp, $t5
	add.d	$s5, $fp, $t1
	beqz	$a1, .LBB4_101
# %bb.99:                               # %if.then.i424.us.us.2830
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 480                   # 8-byte Folded Reload
	bltz	$t0, .LBB4_110
# %bb.100:                              # %if.end.i426.us.us.2832
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	ld.d	$t2, $sp, 480                   # 8-byte Folded Reload
	bge	$t2, $t0, .LBB4_110
.LBB4_101:                              # %if.end14.i.us.us.2834
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_104
# %bb.102:                              # %if.then17.i.us.us.2838
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s6, $zero, -1
	bltz	$t8, .LBB4_108
# %bb.103:                              # %if.end25.i.us.us.2840
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$t8, $t0, .LBB4_108
.LBB4_104:                              # %if.end36.i.us.us.2843
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_107
# %bb.105:                              # %if.then39.i.us.us.2847
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	add.w	$s7, $t0, $a0
	addi.d	$s6, $zero, -1
	bltz	$s7, .LBB4_108
# %bb.106:                              # %if.end47.i.us.us.2849
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s7, $t0, .LBB4_108
.LBB4_107:                              # %if.end58.i.us.us.2874
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	add.w	$t2, $t0, $t2
	mod.w	$t2, $t2, $t0
	ld.w	$t3, $s4, 1552
	srli.d	$t8, $a0, 31
	ld.d	$s6, $sp, 408                   # 8-byte Folded Reload
	add.d	$t8, $t8, $s6
	slt	$s6, $a6, $a5
	xori	$s6, $s6, 1
	ld.w	$s7, $s4, 1556
	add.d	$t8, $t8, $s6
	ld.d	$s6, $sp, 272                   # 8-byte Folded Reload
	add.w	$s6, $t3, $s6
	mod.w	$s6, $s6, $t3
	add.w	$t8, $t8, $s7
	mod.w	$t8, $t8, $s7
	mul.d	$t3, $t8, $t3
	ld.d	$t8, $sp, 464                   # 8-byte Folded Reload
	add.d	$t3, $t3, $s6
	mul.d	$t0, $t3, $t0
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
	add.d	$s6, $t0, $t2
.LBB4_108:                              # %calculate_neighboring_subdomain_rank.exit.us.us.2881
                                        #   in Loop: Header=BB4_29 Depth=3
	st.w	$s6, $t4, -12
	st.w	$s5, $t4, -8
	beqz	$a1, .LBB4_112
# %bb.109:                              # %if.then.i424.us.us.1.2
                                        #   in Loop: Header=BB4_29 Depth=3
	bgez	$t6, .LBB4_111
	b	.LBB4_123
	.p2align	4, , 16
.LBB4_110:                              # %calculate_neighboring_subdomain_rank.exit.us.us.2881.thread
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.w	$t0, $zero, -1
	lu32i.d	$t0, 0
	st.w	$t0, $t4, -12
	st.w	$s5, $t4, -8
	bltz	$t6, .LBB4_123
.LBB4_111:                              # %if.end.i426.us.us.1.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	bge	$t6, $t0, .LBB4_123
.LBB4_112:                              # %if.end14.i.us.us.1.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_115
# %bb.113:                              # %if.then17.i.us.us.1.2
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s5, $zero, -1
	bltz	$t8, .LBB4_119
# %bb.114:                              # %if.end25.i.us.us.1.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$t8, $t0, .LBB4_119
.LBB4_115:                              # %if.end36.i.us.us.1.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_118
# %bb.116:                              # %if.then39.i.us.us.1.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	add.w	$s6, $t0, $a0
	addi.d	$s5, $zero, -1
	bltz	$s6, .LBB4_119
# %bb.117:                              # %if.end47.i.us.us.1.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s6, $t0, .LBB4_119
.LBB4_118:                              # %if.end58.i.us.us.1.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t2, $sp, 288                   # 8-byte Folded Reload
	add.w	$t2, $t0, $t2
	mod.w	$t2, $t2, $t0
	ld.w	$t3, $s4, 1552
	srli.d	$t8, $a0, 31
	ld.d	$s5, $sp, 408                   # 8-byte Folded Reload
	add.d	$t8, $t8, $s5
	slt	$s5, $a6, $a5
	xori	$s5, $s5, 1
	ld.w	$s6, $s4, 1556
	add.d	$t8, $t8, $s5
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	add.w	$s5, $t3, $s5
	mod.w	$s5, $s5, $t3
	add.w	$t8, $t8, $s6
	mod.w	$t8, $t8, $s6
	mul.d	$t3, $t8, $t3
	ld.d	$t8, $sp, 464                   # 8-byte Folded Reload
	add.d	$t3, $t3, $s5
	mul.d	$t0, $t3, $t0
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
	add.d	$s5, $t0, $t2
.LBB4_119:                              # %calculate_neighboring_subdomain_rank.exit.us.us.1.2
                                        #   in Loop: Header=BB4_29 Depth=3
	st.w	$s5, $t4, -4
	st.w	$s3, $t4, 0
	beqz	$a1, .LBB4_125
# %bb.120:                              # %if.then.i424.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s3, $zero, -1
	bltz	$t7, .LBB4_124
.LBB4_121:                              # %if.end.i426.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1572
	move	$s2, $s0
	bge	$t7, $t0, .LBB4_133
# %bb.122:                              # %if.end14.i.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1588
	bnez	$t0, .LBB4_126
	b	.LBB4_128
	.p2align	4, , 16
.LBB4_123:                              # %calculate_neighboring_subdomain_rank.exit.us.us.1.2.thread
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.w	$t0, $zero, -1
	lu32i.d	$t0, 0
	st.w	$t0, $t4, -4
	st.w	$s3, $t4, 0
	addi.d	$s3, $zero, -1
	bgez	$t7, .LBB4_121
.LBB4_124:                              #   in Loop: Header=BB4_29 Depth=3
	move	$s2, $s0
	b	.LBB4_133
	.p2align	4, , 16
.LBB4_125:                              #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s2, $s2, 17
	ld.w	$t0, $s4, 1588
	beqz	$t0, .LBB4_128
.LBB4_126:                              # %if.then17.i.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	addi.d	$s3, $zero, -1
	bltz	$t8, .LBB4_133
# %bb.127:                              # %if.end25.i.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1576
	bge	$t8, $t0, .LBB4_133
.LBB4_128:                              # %if.end36.i.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1592
	beqz	$t0, .LBB4_131
# %bb.129:                              # %if.then39.i.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t0, $sp, 472                   # 8-byte Folded Reload
	add.w	$s5, $t0, $a0
	addi.d	$s3, $zero, -1
	bltz	$s5, .LBB4_132
# %bb.130:                              # %if.end47.i.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1580
	bge	$s5, $t0, .LBB4_132
.LBB4_131:                              # %if.end58.i.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.w	$t0, $s4, 1548
	ld.d	$t2, $sp, 264                   # 8-byte Folded Reload
	add.w	$t2, $t0, $t2
	mod.w	$t2, $t2, $t0
	ld.w	$t3, $s4, 1552
	srli.d	$t8, $a0, 31
	ld.d	$s3, $sp, 408                   # 8-byte Folded Reload
	add.d	$t8, $t8, $s3
	slt	$s3, $a6, $a5
	xori	$s3, $s3, 1
	ld.w	$s5, $s4, 1556
	add.d	$t8, $t8, $s3
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	add.w	$s3, $t3, $s3
	mod.w	$s3, $s3, $t3
	add.w	$t8, $t8, $s5
	mod.w	$t8, $t8, $s5
	mul.d	$t3, $t8, $t3
	ld.d	$t8, $sp, 464                   # 8-byte Folded Reload
	add.d	$t3, $t3, $s3
	mul.d	$t0, $t3, $t0
	add.d	$s3, $t0, $t2
.LBB4_132:                              # %calculate_neighboring_subdomain_rank.exit.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	ld.d	$t3, $sp, 448                   # 8-byte Folded Reload
.LBB4_133:                              # %calculate_neighboring_subdomain_rank.exit.us.us.2.2
                                        #   in Loop: Header=BB4_29 Depth=3
	alsl.d	$t0, $s2, $a4, 3
	slli.d	$t2, $s2, 3
	stx.w	$s3, $a4, $t2
	add.d	$t2, $fp, $ra
	st.w	$t2, $t0, 4
	addi.d	$a7, $a7, 1
	addi.w	$a0, $a0, 1
	addi.d	$a6, $a6, 1
	addi.d	$s0, $s0, 9
	addi.d	$t4, $t4, 72
	ori	$t0, $zero, 35
	beq	$s0, $t0, .LBB4_28
# %bb.134:                              # %for.cond233.preheader.us.us
                                        #   in Loop: Header=BB4_29 Depth=3
	bnez	$a1, .LBB4_35
	b	.LBB4_37
.LBB4_135:
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
.LBB4_136:                              # %for.end278
	addi.d	$a0, $sp, 504
	ori	$a2, $zero, 108
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 520
	st.w	$a0, $sp, 544
	ld.w	$s2, $s4, 1604
	st.w	$a0, $sp, 552
	st.w	$a0, $sp, 560
	st.w	$a0, $sp, 568
	st.w	$a0, $sp, 592
	blt	$s2, $a0, .LBB4_190
# %bb.137:                              # %for.cond284.preheader.lr.ph
	addi.d	$s5, $s4, 1432
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	blez	$a0, .LBB4_185
# %bb.138:                              # %for.cond284.preheader.us.preheader
	move	$a2, $zero
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a7, 31, 0
	st.d	$a0, $sp, 344                   # 8-byte Folded Spill
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1366
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	lu12i.w	$a0, 233016
	ori	$a0, $a0, 3641
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
                                        # implicit-def: $r29
                                        # implicit-def: $r24
                                        # implicit-def: $r22
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r30
                                        # implicit-def: $r26
                                        # implicit-def: $r23
                                        # implicit-def: $r31
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	st.d	$s2, $sp, 240                   # 8-byte Folded Spill
	st.d	$s5, $sp, 232                   # 8-byte Folded Spill
	b	.LBB4_140
	.p2align	4, , 16
.LBB4_139:                              # %for.end737.split.us.us
                                        #   in Loop: Header=BB4_140 Depth=1
	ld.d	$a2, $sp, 248                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ld.d	$s2, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 232                   # 8-byte Folded Reload
	beq	$a2, $s2, .LBB4_187
.LBB4_140:                              # %for.cond284.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_141 Depth 2
                                        #       Child Loop BB4_143 Depth 3
                                        #         Child Loop BB4_146 Depth 4
                                        #           Child Loop BB4_149 Depth 5
                                        #             Child Loop BB4_152 Depth 6
	move	$a1, $zero
	alsl.d	$a0, $a2, $s5, 3
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ori	$a0, $zero, 216
	mul.d	$s5, $a2, $a0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_141:                              # %for.body287.us.us
                                        #   Parent Loop BB4_140 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_143 Depth 3
                                        #         Child Loop BB4_146 Depth 4
                                        #           Child Loop BB4_149 Depth 5
                                        #             Child Loop BB4_152 Depth 6
	move	$a2, $zero
	move	$a0, $zero
	andi	$a1, $a1, 1
	st.d	$a1, $sp, 464                   # 8-byte Folded Spill
	b	.LBB4_143
	.p2align	4, , 16
.LBB4_142:                              # %for.cond307.for.end718_crit_edge.us.us.us
                                        #   in Loop: Header=BB4_143 Depth=3
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	ori	$a1, $zero, 26
	beq	$a2, $a1, .LBB4_183
.LBB4_143:                              # %for.body291.us.us.us
                                        #   Parent Loop BB4_140 Depth=1
                                        #     Parent Loop BB4_141 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB4_146 Depth 4
                                        #           Child Loop BB4_149 Depth 5
                                        #             Child Loop BB4_152 Depth 6
	ori	$a1, $zero, 1
	st.d	$a2, $sp, 280                   # 8-byte Folded Spill
	blt	$a3, $a1, .LBB4_142
# %bb.144:                              # %for.cond311.preheader.us.us.us.us.preheader
                                        #   in Loop: Header=BB4_143 Depth=3
	slli.d	$a1, $a2, 2
	pcalau12i	$a2, %pc_hi20(.L__const.create_domain.FacesEdgesCorners)
	addi.d	$a2, $a2, %pc_lo12(.L__const.create_domain.FacesEdgesCorners)
	ldx.w	$a1, $a2, $a1
	move	$t3, $zero
	move	$t4, $zero
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	mul.d	$a2, $a1, $t1
	srli.d	$a4, $a2, 63
	srli.d	$a2, $a2, 32
	add.d	$a2, $a2, $a4
	addi.w	$a4, $a2, 0
	alsl.d	$a5, $a4, $a2, 1
	sub.w	$a6, $a1, $a5
	addi.w	$a5, $a6, -1
	st.d	$a5, $sp, 368                   # 8-byte Folded Spill
	mul.d	$a4, $a4, $t1
	srli.d	$a5, $a4, 63
	srli.d	$a4, $a4, 32
	add.d	$a4, $a4, $a5
	addi.w	$a5, $a4, 0
	alsl.d	$a4, $a5, $a4, 1
	sub.w	$t0, $a2, $a4
	addi.d	$a2, $t0, -1
	st.d	$a2, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	mul.d	$a2, $a1, $a2
	srli.d	$a4, $a2, 63
	srai.d	$a2, $a2, 33
	add.d	$a2, $a2, $a4
	mul.d	$a4, $a2, $t1
	srli.d	$a5, $a4, 63
	srli.d	$a4, $a4, 32
	add.d	$a4, $a4, $a5
	addi.w	$a5, $a4, 0
	alsl.d	$a4, $a5, $a4, 1
	sub.w	$t2, $a2, $a4
	addi.d	$a2, $t2, -1
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L__const.create_domain.edges)
	addi.d	$a2, $a2, %pc_lo12(.L__const.create_domain.edges)
	alsl.d	$a2, $a1, $a2, 2
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(.L__const.create_domain.corners)
	addi.d	$a2, $a2, %pc_lo12(.L__const.create_domain.corners)
	alsl.d	$a2, $a1, $a2, 2
	st.d	$a2, $sp, 440                   # 8-byte Folded Spill
	addi.d	$a2, $sp, 504
	alsl.d	$a1, $a1, $a2, 2
	st.d	$a1, $sp, 432                   # 8-byte Folded Spill
	b	.LBB4_146
	.p2align	4, , 16
.LBB4_145:                              # %for.cond311.for.inc716_crit_edge.us.us.us.us
                                        #   in Loop: Header=BB4_146 Depth=4
	ld.d	$t4, $sp, 328                   # 8-byte Folded Reload
	addi.w	$t4, $t4, 1
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 336                   # 8-byte Folded Reload
	add.w	$t3, $t3, $a1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	beq	$t4, $a1, .LBB4_142
.LBB4_146:                              # %for.cond311.preheader.us.us.us.us
                                        #   Parent Loop BB4_140 Depth=1
                                        #     Parent Loop BB4_141 Depth=2
                                        #       Parent Loop BB4_143 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB4_149 Depth 5
                                        #             Child Loop BB4_152 Depth 6
	st.d	$t3, $sp, 336                   # 8-byte Folded Spill
	st.d	$t4, $sp, 328                   # 8-byte Folded Spill
	blez	$a7, .LBB4_145
# %bb.147:                              # %for.cond315.preheader.lr.ph.split.us.us.us.us.us
                                        #   in Loop: Header=BB4_146 Depth=4
	move	$a4, $zero
	ld.w	$t8, $s4, 1584
	ld.w	$ra, $s4, 1596
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	add.w	$a1, $t4, $a1
	srli.d	$a2, $a1, 31
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	st.d	$a2, $sp, 400                   # 8-byte Folded Spill
	move	$a5, $t3
	b	.LBB4_149
	.p2align	4, , 16
.LBB4_148:                              # %for.cond315.for.inc713_crit_edge.us.us.us.us.us
                                        #   in Loop: Header=BB4_149 Depth=5
	ld.d	$a4, $sp, 392                   # 8-byte Folded Reload
	addi.w	$a4, $a4, 1
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	add.w	$a5, $a5, $a7
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	beq	$a4, $a3, .LBB4_145
.LBB4_149:                              # %for.cond315.preheader.us.us.us.us.us
                                        #   Parent Loop BB4_140 Depth=1
                                        #     Parent Loop BB4_141 Depth=2
                                        #       Parent Loop BB4_143 Depth=3
                                        #         Parent Loop BB4_146 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB4_152 Depth 6
	ld.d	$a2, $sp, 360                   # 8-byte Folded Reload
	st.d	$a4, $sp, 392                   # 8-byte Folded Spill
	add.w	$t3, $a4, $a2
	srli.d	$a2, $t3, 31
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	st.d	$a2, $sp, 416                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 344                   # 8-byte Folded Reload
	st.d	$a5, $sp, 384                   # 8-byte Folded Spill
	move	$a4, $a5
	ld.d	$t4, $sp, 368                   # 8-byte Folded Reload
	move	$a2, $t4
	b	.LBB4_152
	.p2align	4, , 16
.LBB4_150:                              # %if.end707.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	addi.w	$a0, $a0, 1
.LBB4_151:                              # %if.end709.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	addi.d	$t4, $t4, 1
	addi.w	$a2, $a2, 1
	addi.d	$t1, $t1, -1
	addi.w	$a4, $a4, 1
	beqz	$t1, .LBB4_148
.LBB4_152:                              # %for.body318.us.us.us.us.us
                                        #   Parent Loop BB4_140 Depth=1
                                        #     Parent Loop BB4_141 Depth=2
                                        #       Parent Loop BB4_143 Depth=3
                                        #         Parent Loop BB4_146 Depth=4
                                        #           Parent Loop BB4_149 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	beqz	$t8, .LBB4_155
# %bb.153:                              # %if.then.i439.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.w	$a7, $s4, 1560
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	mul.d	$a7, $a7, $a3
	add.w	$t5, $a2, $a7
	addi.w	$t6, $zero, -1
	bltz	$t5, .LBB4_162
# %bb.154:                              # %if.end.i445.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.w	$a7, $s4, 1572
	bge	$t5, $a7, .LBB4_162
.LBB4_155:                              # %if.end14.i449.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.w	$a7, $s4, 1588
	beqz	$a7, .LBB4_158
# %bb.156:                              # %if.then17.i452.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.w	$a7, $s4, 1564
	ld.d	$a3, $sp, 456                   # 8-byte Folded Reload
	mul.d	$a7, $a7, $a3
	add.w	$t5, $t3, $a7
	addi.w	$t6, $zero, -1
	bltz	$t5, .LBB4_162
# %bb.157:                              # %if.end25.i458.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.w	$a7, $s4, 1576
	bge	$t5, $a7, .LBB4_162
.LBB4_158:                              # %if.end36.i461.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.w	$a7, $s4, 1592
	ld.w	$t5, $s4, 1568
	beqz	$a7, .LBB4_161
# %bb.159:                              # %if.then39.i466.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.d	$a3, $sp, 408                   # 8-byte Folded Reload
	mul.d	$a7, $t5, $a3
	add.w	$a7, $a7, $a1
	addi.w	$t6, $zero, -1
	bltz	$a7, .LBB4_162
# %bb.160:                              # %if.end47.i471.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.w	$a5, $s4, 1580
	bge	$a7, $a5, .LBB4_162
.LBB4_161:                              # %if.end58.i474.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.w	$a5, $s4, 1560
	srli.d	$a7, $a2, 31
	ld.w	$t6, $s4, 1548
	ld.d	$a3, $sp, 488                   # 8-byte Folded Reload
	add.d	$a7, $a7, $a3
	slt	$a5, $t4, $a5
	xori	$a5, $a5, 1
	add.d	$a7, $a7, $t6
	ld.w	$t7, $s4, 1564
	add.w	$a5, $a7, $a5
	ld.w	$a7, $s4, 1552
	mod.w	$a5, $a5, $t6
	slt	$t7, $t3, $t7
	xori	$t7, $t7, 1
	ld.d	$a3, $sp, 416                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a7
	add.w	$a3, $a3, $t7
	mod.w	$a3, $a3, $a7
	ld.w	$t7, $s4, 1556
	slt	$t5, $a1, $t5
	xori	$t5, $t5, 1
	move	$s2, $s8
	move	$s8, $s0
	move	$s0, $s3
	move	$s3, $fp
	move	$fp, $s1
	move	$s1, $s6
	move	$s6, $s7
	ld.d	$s7, $sp, 400                   # 8-byte Folded Reload
	add.d	$t5, $s7, $t5
	move	$s7, $s6
	move	$s6, $s1
	move	$s1, $fp
	move	$fp, $s3
	move	$s3, $s0
	move	$s0, $s8
	move	$s8, $s2
	add.w	$t5, $t5, $t7
	mod.w	$t5, $t5, $t7
	mul.d	$a7, $t5, $a7
	add.d	$a3, $a7, $a3
	mul.d	$a3, $a3, $t6
	add.w	$t6, $a3, $a5
	.p2align	4, , 16
.LBB4_162:                              # %calculate_neighboring_subdomain_rank.exit510.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	bne	$t6, $ra, .LBB4_151
# %bb.163:                              # %if.then330.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.w	$a3, $s4, 1560
	ld.w	$a5, $s4, 1564
	add.w	$a7, $a2, $a3
	ld.w	$t5, $s4, 1568
	mod.w	$a7, $a7, $a3
	add.w	$t6, $t3, $a5
	mod.w	$t6, $t6, $a5
	add.w	$t7, $a1, $t5
	mod.w	$t5, $t7, $t5
	mul.d	$a5, $t5, $a5
	add.d	$a5, $a5, $t6
	mul.d	$a3, $a5, $a3
	add.w	$t5, $a3, $a7
	beqz	$a6, .LBB4_180
# %bb.164:                              # %if.then330.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ori	$a3, $zero, 1
	beq	$a6, $a3, .LBB4_167
# %bb.165:                              # %if.then330.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ori	$a3, $zero, 2
	bne	$a6, $a3, .LBB4_168
# %bb.166:                              # %sw.bb384.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a5, $a4, 8
	add.d	$a3, $a3, $a5
	ld.d	$a3, $a3, 248
	add.d	$a3, $a3, $s5
	ld.w	$s8, $a3, 20
	ld.w	$fp, $a3, 44
	move	$s7, $zero
	bnez	$t0, .LBB4_169
	b	.LBB4_181
.LBB4_167:                              # %sw.bb361.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a5, $a4, 8
	add.d	$a5, $a3, $a5
	ld.d	$a5, $a5, 248
	slli.d	$a7, $t5, 8
	add.d	$a3, $a3, $a7
	ld.d	$a3, $a3, 248
	add.d	$a5, $a5, $s5
	ld.w	$s8, $a5, 44
	ld.w	$fp, $a5, 20
	add.d	$a3, $a3, $s5
	ld.w	$s7, $a3, 44
.LBB4_168:                              # %sw.epilog.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	beqz	$t0, .LBB4_181
.LBB4_169:                              # %sw.epilog.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ori	$a3, $zero, 1
	beq	$t0, $a3, .LBB4_172
# %bb.170:                              # %sw.epilog.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ori	$a3, $zero, 2
	bne	$t0, $a3, .LBB4_173
# %bb.171:                              # %sw.bb454.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a5, $a4, 8
	add.d	$a3, $a3, $a5
	ld.d	$a3, $a3, 248
	add.d	$a3, $a3, $s5
	ld.w	$s0, $a3, 24
	ld.w	$s1, $a3, 44
	st.d	$zero, $sp, 472                 # 8-byte Folded Spill
	bnez	$t2, .LBB4_174
	b	.LBB4_182
.LBB4_172:                              # %sw.bb431.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a5, $a4, 8
	add.d	$a5, $a3, $a5
	ld.d	$a5, $a5, 248
	slli.d	$a7, $t5, 8
	add.d	$a3, $a3, $a7
	ld.d	$a3, $a3, 248
	add.d	$a5, $a5, $s5
	ld.w	$s0, $a5, 44
	ld.w	$s1, $a5, 24
	add.d	$a3, $a3, $s5
	ld.w	$a3, $a3, 44
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
.LBB4_173:                              # %sw.epilog470.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	beqz	$t2, .LBB4_182
.LBB4_174:                              # %sw.epilog470.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ori	$a3, $zero, 1
	beq	$t2, $a3, .LBB4_177
# %bb.175:                              # %sw.epilog470.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ori	$a3, $zero, 2
	bne	$t2, $a3, .LBB4_178
# %bb.176:                              # %sw.bb525.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a5, $a4, 8
	add.d	$a3, $a3, $a5
	ld.d	$a3, $a3, 248
	add.d	$a3, $a3, $s5
	ld.w	$s3, $a3, 28
	ld.w	$s6, $a3, 44
	st.d	$zero, $sp, 480                 # 8-byte Folded Spill
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	beqz	$a3, .LBB4_150
	b	.LBB4_179
.LBB4_177:                              # %sw.bb502.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a5, $a4, 8
	add.d	$a5, $a3, $a5
	ld.d	$a5, $a5, 248
	slli.d	$a7, $t5, 8
	add.d	$a3, $a3, $a7
	ld.d	$a3, $a3, 248
	add.d	$a5, $a5, $s5
	ld.w	$s3, $a5, 44
	ld.w	$s6, $a5, 28
	add.d	$a3, $a3, $s5
	ld.w	$a3, $a3, 44
	st.d	$a3, $sp, 480                   # 8-byte Folded Spill
.LBB4_178:                              # %sw.epilog541.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	beqz	$a3, .LBB4_150
.LBB4_179:                              # %if.then544.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.d	$t7, $sp, 424                   # 8-byte Folded Reload
	ld.d	$a3, $t7, 0
	ori	$a5, $zero, 88
	mul.d	$a5, $a0, $a5
	add.d	$a3, $a3, $a5
	st.w	$fp, $a3, 12
	st.w	$s1, $a3, 16
	st.d	$zero, $a3, 48
	ld.d	$a7, $t7, 0
	st.w	$s6, $a3, 20
	ld.d	$t6, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t6, $t6, 0
	st.w	$a4, $a3, 24
	add.d	$a3, $a7, $a5
	slli.d	$a7, $a4, 8
	add.d	$a7, $t6, $a7
	ld.d	$a7, $a7, 248
	st.w	$s8, $a3, 28
	st.w	$s0, $a3, 32
	st.w	$s3, $a3, 36
	add.d	$a7, $a7, $s5
	ld.d	$a7, $a7, 48
	st.d	$a7, $a3, 40
	slli.d	$a7, $t5, 8
	add.d	$a7, $t6, $a7
	ld.d	$a7, $a7, 248
	st.d	$zero, $a3, 80
	ld.d	$t6, $t7, 0
	add.d	$a7, $a7, $s5
	ld.w	$t7, $a7, 48
	st.w	$t5, $a3, 56
	add.d	$a3, $t6, $a5
	st.w	$s7, $a3, 60
	st.w	$t7, $a3, 72
	ld.w	$a7, $a7, 52
	ld.d	$t5, $sp, 432                   # 8-byte Folded Reload
	ld.w	$t5, $t5, 0
	ld.d	$t7, $sp, 472                   # 8-byte Folded Reload
	st.w	$t7, $a3, 64
	ld.d	$t7, $sp, 480                   # 8-byte Folded Reload
	st.w	$t7, $a3, 68
	st.w	$a7, $a3, 76
	stx.w	$t5, $t6, $a5
	ld.d	$a5, $sp, 448                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	st.w	$a5, $a3, 4
	ld.d	$a5, $sp, 440                   # 8-byte Folded Reload
	ld.w	$a5, $a5, 0
	st.w	$a5, $a3, 8
	b	.LBB4_150
.LBB4_180:                              # %sw.bb.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a5, $a4, 8
	add.d	$a5, $a3, $a5
	ld.d	$a5, $a5, 248
	slli.d	$a7, $t5, 8
	add.d	$a3, $a3, $a7
	ld.d	$a3, $a3, 248
	add.d	$a5, $a5, $s5
	ld.w	$s8, $a5, 44
	add.d	$a3, $a3, $s5
	ld.w	$a5, $a3, 44
	ld.w	$a3, $a3, 20
	add.d	$s7, $a3, $a5
	move	$fp, $s8
	bnez	$t0, .LBB4_169
.LBB4_181:                              # %sw.bb400.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a5, $a4, 8
	add.d	$a5, $a3, $a5
	ld.d	$a5, $a5, 248
	slli.d	$a7, $t5, 8
	add.d	$a3, $a3, $a7
	ld.d	$a3, $a3, 248
	add.d	$a5, $a5, $s5
	ld.w	$s0, $a5, 44
	add.d	$a3, $a3, $s5
	ld.w	$a5, $a3, 44
	ld.w	$a3, $a3, 24
	add.d	$a3, $a3, $a5
	st.d	$a3, $sp, 472                   # 8-byte Folded Spill
	move	$s1, $s0
	bnez	$t2, .LBB4_174
.LBB4_182:                              # %sw.bb471.us.us.us.us.us
                                        #   in Loop: Header=BB4_152 Depth=6
	ld.d	$a3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$a3, $a3, 0
	slli.d	$a5, $a4, 8
	add.d	$a5, $a3, $a5
	ld.d	$a5, $a5, 248
	slli.d	$a7, $t5, 8
	add.d	$a3, $a3, $a7
	ld.d	$a3, $a3, 248
	add.d	$a5, $a5, $s5
	ld.w	$s3, $a5, 44
	add.d	$a3, $a3, $s5
	ld.w	$a5, $a3, 44
	ld.w	$a3, $a3, 28
	add.d	$a3, $a3, $a5
	st.d	$a3, $sp, 480                   # 8-byte Folded Spill
	move	$s6, $s3
	ld.d	$a3, $sp, 464                   # 8-byte Folded Reload
	beqz	$a3, .LBB4_150
	b	.LBB4_179
	.p2align	4, , 16
.LBB4_183:                              # %for.end721.split.us.us.us
                                        #   in Loop: Header=BB4_141 Depth=2
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	andi	$a1, $a1, 1
	beqz	$a1, .LBB4_139
# %bb.184:                              # %if.end734.us.us
                                        #   in Loop: Header=BB4_141 Depth=2
	ori	$a1, $zero, 88
	mul.d	$s2, $a0, $a1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
	ld.d	$a1, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.d	$a0, $s2, $a0
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ori	$a1, $zero, 1
	b	.LBB4_141
	.p2align	4, , 16
.LBB4_185:                              # %if.end734.1
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	addi.d	$s2, $s2, -1
	addi.d	$s5, $s5, 8
	bnez	$s2, .LBB4_185
# %bb.186:
	move	$a0, $zero
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
.LBB4_187:                              # %for.cond279.for.end740_crit_edge
	st.d	$zero, $s4, 1512
	st.w	$zero, $s4, 1520
	st.w	$a0, $s4, 1524
	st.w	$a0, $s4, 1528
	st.w	$a0, $s4, 1532
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 1596
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 208                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_189
.LBB4_188:                              # %if.then744
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	move	$s2, $a3
	move	$s3, $a7
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $s1
	move	$a2, $s1
	move	$a3, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	mul.w	$a1, $s3, $s1
	mul.w	$a2, $s2, $s1
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	mul.w	$a3, $a0, $s1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	mul.w	$a1, $a0, $s1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	mul.w	$a2, $a0, $s1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	mul.w	$a3, $a0, $s1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	srli.d	$a1, $s4, 20
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB4_189:                              # %if.end763
	addi.w	$a0, $s4, 0
	ld.d	$s8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
	ret
.LBB4_190:
	ld.d	$a3, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 376                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 1596
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 208                   # 8-byte Folded Reload
	bnez	$a0, .LBB4_189
	b	.LBB4_188
.LBB4_191:                              # %if.then5
	ld.w	$a0, $s4, 1596
	bnez	$a0, .LBB4_195
# %bb.192:                              # %if.then8
	move	$a1, $t0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a2, $a6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_193:                              # %if.then18
	ld.w	$a0, $s4, 1596
	bnez	$a0, .LBB4_195
# %bb.194:                              # %if.then21
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB4_195:                              # %if.end12
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	create_domain, .Lfunc_end4-create_domain
                                        # -- End function
	.globl	destroy_domain                  # -- Begin function destroy_domain
	.p2align	5
	.type	destroy_domain,@function
destroy_domain:                         # @destroy_domain
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 1596
	bnez	$a0, .LBB5_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB5_2:                                # %if.end
	ld.w	$a0, $fp, 1600
	ori	$s0, $zero, 1
	blt	$a0, $s0, .LBB5_8
# %bb.3:                                # %for.body.lr.ph
	move	$s1, $zero
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %destroy_subdomain.exit
                                        #   in Loop: Header=BB5_5 Depth=1
	ld.d	$a0, $s2, 248
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1600
	addi.d	$s1, $s1, 1
	bge	$s1, $a0, .LBB5_8
.LBB5_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
	ld.d	$a0, $fp, 1776
	slli.d	$a1, $s1, 8
	add.d	$s2, $a0, $a1
	ld.w	$a0, $s2, 24
	blt	$a0, $s0, .LBB5_4
# %bb.6:                                # %for.body.lr.ph.i
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$s3, $zero
	move	$s4, $zero
	.p2align	4, , 16
.LBB5_7:                                # %for.body.i
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s2, 248
	add.d	$a0, $a0, $s3
	pcaddu18i	$ra, %call36(destroy_box)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 24
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 216
	blt	$s4, $a0, .LBB5_7
	b	.LBB5_4
.LBB5_8:                                # %for.end
	ld.d	$a0, $fp, 1776
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 1596
	beqz	$a0, .LBB5_10
# %bb.9:                                # %if.end9
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB5_10:                               # %if.then6
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end5:
	.size	destroy_domain, .Lfunc_end5-destroy_domain
                                        # -- End function
	.globl	print_timing                    # -- Begin function print_timing
	.p2align	5
	.type	print_timing,@function
print_timing:                           # @print_timing
# %bb.0:                                # %entry
	ret
.Lfunc_end6:
	.size	print_timing, .Lfunc_end6-print_timing
                                        # -- End function
	.globl	MGResetTimers                   # -- Begin function MGResetTimers
	.p2align	5
	.type	MGResetTimers,@function
MGResetTimers:                          # @MGResetTimers
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ori	$a2, $zero, 1280
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	xvrepli.b	$xr0, 0
	xvst	$xr0, $fp, 1288
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	MGResetTimers, .Lfunc_end7-MGResetTimers
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function MGBuild
.LCPI8_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.globl	MGBuild
	.p2align	5
	.type	MGBuild,@function
MGBuild:                                # @MGBuild
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.wu	$s1, $a0, 1604
	ld.w	$a0, $a0, 1596
                                        # kill: def $f2_64 killed $f2_64 def $xr2
	xvst	$xr2, $sp, 16                   # 32-byte Folded Spill
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	addi.w	$s3, $s1, 0
	bnez	$a0, .LBB8_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB8_2:                                # %if.end
	ori	$a2, $zero, 1320
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s0, $a0
	blt	$s3, $a1, .LBB8_13
# %bb.3:                                # %for.body.lr.ph
	ld.w	$a1, $fp, 1600
	addi.d	$a0, $fp, 1616
	blez	$a1, .LBB8_14
# %bb.4:                                # %for.body.lr.ph.split.us
	ld.d	$a5, $fp, 1776
	move	$a2, $zero
	bstrpick.d	$a3, $a1, 30, 1
	slli.d	$a3, $a3, 1
	addi.d	$a4, $a5, 504
	addi.d	$a5, $a5, 248
	ori	$a6, $zero, 1
	ori	$a7, $zero, 216
	xvld	$xr1, $sp, 16                   # 32-byte Folded Reload
	b	.LBB8_6
	.p2align	4, , 16
.LBB8_5:                                # %for.cond5.for.end_crit_edge.us
                                        #   in Loop: Header=BB8_6 Depth=1
	addi.d	$a2, $a2, 1
	beq	$a2, $s3, .LBB8_21
.LBB8_6:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_9 Depth 2
                                        #     Child Loop BB8_12 Depth 2
	sll.w	$t0, $a6, $a2
	movgr2fr.w	$fa0, $t0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa1, $fa0
	slli.d	$t0, $a2, 3
	fstx.d	$fa0, $a0, $t0
	mul.d	$t0, $a2, $a7
	bne	$a1, $a6, .LBB8_8
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=1
	move	$t2, $zero
	b	.LBB8_11
	.p2align	4, , 16
.LBB8_8:                                # %vector.body137.preheader
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$t1, $a3
	move	$t2, $a4
	.p2align	4, , 16
.LBB8_9:                                # %vector.body137
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t2, -256
	ld.d	$t4, $t2, 0
	fstx.d	$fa0, $t3, $t0
	fstx.d	$fa0, $t4, $t0
	addi.d	$t1, $t1, -2
	addi.d	$t2, $t2, 512
	bnez	$t1, .LBB8_9
# %bb.10:                               # %middle.block140
                                        #   in Loop: Header=BB8_6 Depth=1
	move	$t2, $a3
	beq	$a3, $a1, .LBB8_5
.LBB8_11:                               # %for.body8.us.preheader
                                        #   in Loop: Header=BB8_6 Depth=1
	slli.d	$t1, $t2, 8
	add.d	$t1, $a5, $t1
	sub.d	$t2, $a1, $t2
	.p2align	4, , 16
.LBB8_12:                               # %for.body8.us
                                        #   Parent Loop BB8_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t1, 0
	fstx.d	$fa0, $t3, $t0
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 256
	bnez	$t2, .LBB8_12
	b	.LBB8_5
.LBB8_13:                               # %for.cond80.preheader.thread124
	addi.w	$s4, $s3, -1
	b	.LBB8_34
.LBB8_14:                               # %for.body.preheader
	ori	$a1, $zero, 4
	xvld	$xr4, $sp, 16                   # 32-byte Folded Reload
	bgeu	$s3, $a1, .LBB8_16
# %bb.15:
	move	$a1, $zero
	b	.LBB8_19
.LBB8_16:                               # %vector.ph
	bstrpick.d	$a1, $s1, 30, 2
	pcalau12i	$a2, %pc_hi20(.LCPI8_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI8_0)
	slli.d	$a1, $a1, 2
	xvreplve0.d	$xr1, $xr4
	vrepli.w	$vr2, 1
	move	$a2, $a1
	.p2align	4, , 16
.LBB8_17:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vsll.w	$vr3, $vr2, $vr0
	vext2xv.d.w	$xr3, $xr3
	xvffint.d.l	$xr3, $xr3
	xvfmul.d	$xr3, $xr1, $xr3
	xvst	$xr3, $a0, 0
	vaddi.wu	$vr0, $vr0, 4
	addi.d	$a2, $a2, -4
	addi.d	$a0, $a0, 32
	bnez	$a2, .LBB8_17
# %bb.18:                               # %middle.block
	beq	$a1, $s1, .LBB8_21
.LBB8_19:                               # %for.body.preheader143
	alsl.d	$a0, $a1, $fp, 3
	addi.d	$a0, $a0, 1616
	sub.d	$a2, $s1, $a1
	ori	$a3, $zero, 1
	.p2align	4, , 16
.LBB8_20:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	sll.w	$a4, $a3, $a1
	movgr2fr.w	$fa0, $a4
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fa4, $fa0
	fst.d	$fa0, $a0, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$a0, $a0, 8
	bnez	$a2, .LBB8_20
.LBB8_21:                               # %for.cond21.preheader.lr.ph
	ld.w	$a3, $fp, 1600
	ori	$a0, $zero, 2
	blt	$a3, $a0, .LBB8_27
# %bb.22:                               # %for.cond21.preheader.lr.ph.split.us
	ld.d	$a2, $fp, 1776
	move	$a0, $zero
	ld.d	$a1, $a2, 248
	addi.d	$a2, $a2, 504
	addi.d	$a3, $a3, -1
	ori	$a4, $zero, 216
	.p2align	4, , 16
.LBB8_23:                               # %for.cond21.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_24 Depth 2
	mul.d	$a5, $a0, $a4
	add.d	$t0, $a1, $a5
	ld.d	$a6, $t0, 184
	addi.d	$a7, $t0, 192
	addi.d	$t0, $t0, 200
	move	$t1, $a3
	move	$t2, $a2
	.p2align	4, , 16
.LBB8_24:                               # %for.body25.us
                                        #   Parent Loop BB8_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t3, $t2, 0
	ld.d	$t4, $a7, 0
	add.d	$t3, $t3, $a5
	st.d	$t4, $t3, 192
	ld.d	$t4, $t0, 0
	st.d	$a6, $t3, 184
	st.d	$t4, $t3, 200
	addi.d	$t1, $t1, -1
	addi.d	$t2, $t2, 256
	bnez	$t1, .LBB8_24
# %bb.25:                               # %for.cond21.for.inc70_crit_edge.us
                                        #   in Loop: Header=BB8_23 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB8_23
# %bb.26:                               # %for.cond73.preheader
	ori	$a0, $zero, 1
	addi.w	$s4, $s3, -1
	bne	$s3, $a0, .LBB8_30
	b	.LBB8_32
.LBB8_27:                               # %for.cond73.preheader.thread126
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB8_29
# %bb.28:
	move	$s4, $zero
	b	.LBB8_32
.LBB8_29:
	addi.w	$s4, $s3, -1
.LBB8_30:                               # %for.body76.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB8_31:                               # %for.body76
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 2
	ori	$a3, $zero, 2
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(restriction)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	bne	$s4, $s1, .LBB8_31
.LBB8_32:                               # %for.body83.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB8_33:                               # %for.body83
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 2
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	bne	$s3, $s1, .LBB8_33
.LBB8_34:                               # %for.end86
	ori	$a2, $zero, 3
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	ori	$s1, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3
	ori	$a3, $zero, 5
	move	$a0, $fp
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(project_cell_to_face)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3
	ori	$a3, $zero, 6
	ori	$a4, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(project_cell_to_face)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 3
	ori	$a3, $zero, 7
	ori	$a4, $zero, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(project_cell_to_face)
	jirl	$ra, $ra, 0
	blt	$s3, $s1, .LBB8_43
# %bb.35:                               # %for.body90.preheader
	move	$s1, $zero
	b	.LBB8_37
	.p2align	4, , 16
.LBB8_36:                               # %for.inc96
                                        #   in Loop: Header=BB8_37 Depth=1
	move	$s1, $s2
	beq	$s3, $s2, .LBB8_39
.LBB8_37:                               # %for.body90
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 5
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 6
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 7
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s1, 1
	bge	$s1, $s4, .LBB8_36
# %bb.38:                               # %if.then94
                                        #   in Loop: Header=BB8_37 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(restriction_betas)
	jirl	$ra, $ra, 0
	b	.LBB8_36
.LBB8_39:                               # %for.body102.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB8_40:                               # %for.body102
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(rebuild_lambda)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	bne	$s3, $s1, .LBB8_40
# %bb.41:                               # %for.body109.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB8_42:                               # %for.body109
                                        # =>This Inner Loop Header: Depth=1
	ori	$a2, $zero, 4
	ori	$a3, $zero, 1
	ori	$a4, $zero, 1
	ori	$a5, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(exchange_boundary)
	jirl	$ra, $ra, 0
	addi.w	$s1, $s1, 1
	bne	$s3, $s1, .LBB8_42
.LBB8_43:                               # %for.end112
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1280
	ld.w	$a2, $fp, 1596
	sub.d	$a0, $a0, $s0
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 1280
	beqz	$a2, .LBB8_45
# %bb.44:                               # %if.end124
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB8_45:                               # %if.then121
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end8:
	.size	MGBuild, .Lfunc_end8-MGBuild
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function MGSolve
.LCPI9_0:
	.dword	0x3f50624dd2f1a9fc              # double 0.001
	.text
	.globl	MGSolve
	.p2align	5
	.type	MGSolve,@function
MGSolve:                                # @MGSolve
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 1308
	ld.w	$a1, $fp, 1596
	fmov.d	$fs0, $fa1
	fmov.d	$fs1, $fa0
	move	$s0, $a2
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 1308
	bnez	$a1, .LBB9_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
.LBB9_2:                                # %if.end
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(zero_grid)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 9
	vldi	$vr0, -912
	move	$a0, $fp
	move	$a1, $zero
	move	$a3, $s0
	pcaddu18i	$ra, %call36(scale_grid)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $zero
	addi.d	$s5, $fp, 1200
	pcalau12i	$a0, %pc_hi20(.LCPI9_0)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI9_0)
	ori	$s6, $zero, 2
	addi.w	$s8, $zero, -8
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_3:                                # %if.end56
                                        #   in Loop: Header=BB9_5 Depth=1
	movfr2gr.d	$a2, $fs3
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	move	$a1, $s3
	move	$a3, $a2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB9_4:                                # %if.end59
                                        #   in Loop: Header=BB9_5 Depth=1
	move	$s1, $s3
	ori	$a0, $zero, 10
	beq	$s3, $a0, .LBB9_14
.LBB9_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
                                        #     Child Loop BB9_10 Depth 2
	ld.w	$a0, $fp, 1304
	ld.w	$a1, $fp, 1604
	addi.d	$a0, $a0, 1
	st.w	$a0, $fp, 1304
	blt	$a1, $s6, .LBB9_8
# %bb.6:                                # %for.body10.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	move	$s3, $zero
	move	$s2, $zero
	ori	$s7, $zero, 1200
	.p2align	4, , 16
.LBB9_7:                                # %for.body10
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a3, $zero, 9
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 10
	ori	$a4, $zero, 9
	move	$a0, $fp
	move	$a1, $s3
	move	$a3, $zero
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 9
	ori	$a3, $zero, 10
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(restriction)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 1
	addi.w	$s3, $s3, 1
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(zero_grid)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ldx.d	$a1, $fp, $s7
	ld.w	$a2, $fp, 1604
	sub.d	$a0, $a0, $s4
	add.d	$a0, $a0, $a1
	stx.d	$a0, $fp, $s7
	addi.w	$a0, $a2, -1
	addi.d	$s7, $s7, 8
	blt	$s2, $a0, .LBB9_7
.LBB9_8:                                # %for.end
                                        #   in Loop: Header=BB9_5 Depth=1
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 1604
	move	$s3, $a0
	addi.w	$s4, $a1, -1
	ori	$a3, $zero, 9
	move	$a0, $fp
	move	$a1, $s4
	move	$a2, $zero
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	fmov.d	$fa2, $fs2
	pcaddu18i	$ra, %call36(IterativeSolver)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	slli.d	$a2, $s4, 3
	ldx.d	$a3, $s5, $a2
	ld.w	$a1, $fp, 1604
	sub.d	$a0, $a0, $s3
	add.d	$a0, $a0, $a3
	stx.d	$a0, $s5, $a2
	blt	$a1, $s6, .LBB9_11
# %bb.9:                                # %for.body30.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	addi.w	$s3, $a1, -2
	bstrpick.d	$a0, $s3, 31, 0
	slli.d	$s2, $a0, 3
	.p2align	4, , 16
.LBB9_10:                               # %for.body30
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	vldi	$vr0, -912
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(interpolation_constant)
	jirl	$ra, $ra, 0
	ori	$a3, $zero, 9
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(smooth)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $s2
	ld.d	$a2, $a1, 1200
	sub.d	$a0, $a0, $s4
	add.d	$a0, $a0, $a2
	st.d	$a0, $a1, 1200
	addi.d	$s2, $s2, -8
	addi.w	$s3, $s3, -1
	bne	$s2, $s8, .LBB9_10
.LBB9_11:                               # %for.end41
                                        #   in Loop: Header=BB9_5 Depth=1
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a2, $zero, 10
	move	$a0, $fp
	move	$a1, $zero
	move	$a3, $zero
	move	$a4, $s0
	fmov.d	$fa0, $fs1
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(residual)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 10
	vldi	$vr0, -912
	ori	$a3, $zero, 10
	ori	$a4, $zero, 4
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(mul_grids)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 10
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(norm)
	jirl	$ra, $ra, 0
	fmov.d	$fs3, $fa0
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1200
	ld.w	$a2, $fp, 1596
	sub.d	$a0, $a0, $s3
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 1200
	addi.w	$s3, $s1, 1
	bnez	$a2, .LBB9_4
# %bb.12:                               # %if.then52
                                        #   in Loop: Header=BB9_5 Depth=1
	bnez	$s1, .LBB9_3
# %bb.13:                               # %if.then54
                                        #   in Loop: Header=BB9_5 Depth=1
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	b	.LBB9_3
.LBB9_14:                               # %for.end62
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1288
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a0, $a0, $a2
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 1288
	pcaddu18i	$ra, %call36(CycleTime)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 1296
	ld.w	$a2, $fp, 1596
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 1296
	beqz	$a2, .LBB9_16
# %bb.15:                               # %if.end76
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.LBB9_16:                               # %if.then73
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	pcaddu18i	$t8, %call36(fflush)
	jr	$t8
.Lfunc_end9:
	.size	MGSolve, .Lfunc_end9-MGSolve
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"creating domain...       "
	.size	.L.str, 26

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"#ghosts(%d)>bottom grid size(%d)\n"
	.size	.L.str.1, 34

	.type	.L__const.create_domain.FacesEdgesCorners,@object # @__const.create_domain.FacesEdgesCorners
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.L__const.create_domain.FacesEdgesCorners:
	.word	4                               # 0x4
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	14                              # 0xe
	.word	16                              # 0x10
	.word	22                              # 0x16
	.word	1                               # 0x1
	.word	3                               # 0x3
	.word	5                               # 0x5
	.word	7                               # 0x7
	.word	9                               # 0x9
	.word	11                              # 0xb
	.word	15                              # 0xf
	.word	17                              # 0x11
	.word	19                              # 0x13
	.word	21                              # 0x15
	.word	23                              # 0x17
	.word	25                              # 0x19
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	8                               # 0x8
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	13                              # 0xd
	.size	.L__const.create_domain.FacesEdgesCorners, 108

	.type	.L__const.create_domain.edges,@object # @__const.create_domain.edges
	.p2align	2, 0x0
.L__const.create_domain.edges:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.size	.L__const.create_domain.edges, 108

	.type	.L__const.create_domain.corners,@object # @__const.create_domain.corners
	.p2align	2, 0x0
.L__const.create_domain.corners:
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.size	.L__const.create_domain.corners, 108

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"  %d x %d x %d (per subdomain)\n"
	.size	.L.str.4, 32

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"  %d x %d x %d (per process)\n"
	.size	.L.str.5, 30

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"  %d x %d x %d (overall)\n"
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"  %d-deep ghost zones\n"
	.size	.L.str.7, 23

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"  allocated %llu MB\n"
	.size	.L.str.8, 21

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"deallocating domain...   "
	.size	.L.str.9, 26

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"MGBuild...                      "
	.size	.L.str.10, 33

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"MGSolve...                      "
	.size	.L.str.11, 33

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"v-cycle=%2d, norm=%22.20f (%12.6e)\n"
	.size	.L.str.13, 36

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"subdomain_dim's must be equal"
	.size	.Lstr.1, 30

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"done"
	.size	.Lstr.4, 5

	.section	".note.GNU-stack","",@progbits
	.addrsig
