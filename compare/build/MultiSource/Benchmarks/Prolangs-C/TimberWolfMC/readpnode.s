	.file	"readpnode.c"
	.text
	.globl	readpnode                       # -- Begin function readpnode
	.p2align	5
	.type	readpnode,@function
readpnode:                              # @readpnode
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1248
	st.d	$ra, $sp, 1240                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1232                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1224                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1216                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1208                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1200                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1192                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1184                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1176                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1168                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1160                  # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(maxpnode)
	ld.d	$s8, $a0, %got_pc_lo12(maxpnode)
	st.w	$zero, $s8, 0
	pcalau12i	$a0, %got_pc_hi20(numpins)
	ld.d	$s0, $a0, %got_pc_lo12(numpins)
	st.w	$zero, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	move	$s7, $zero
	move	$s3, $zero
	bne	$a0, $s6, .LBB0_18
# %bb.1:                                # %while.body.preheader
	lu12i.w	$a0, 1862
	ori	$s2, $a0, 1390
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s1, $a0, %pc_lo12(.L.str)
	lu12i.w	$a0, 1766
	ori	$a0, $a0, 2416
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$s4, $a0, %pc_lo12(.L.str.13)
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$s5, $a0, %pc_lo12(.L.str.14)
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	move	$s3, $zero
	move	$s7, $zero
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %if.end146
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB0_18
.LBB0_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $sp, 136
	beq	$a0, $s2, .LBB0_14
# %bb.4:                                # %if.else
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $sp, 136
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_6
# %bb.5:                                # %if.else76
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a0, $sp, 136
	ori	$a2, $zero, 6
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_112
.LBB0_6:                                # %if.then80
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s0, 0
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 0
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB0_111
# %bb.7:                                # %if.end90
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB0_110
# %bb.8:                                # %if.else98
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a0, $sp, 136
	ori	$a2, $zero, 6
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_107
# %bb.9:                                # %if.end107
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $sp, 132
	addi.d	$a3, $sp, 128
	move	$a0, $fp
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_108
# %bb.10:                               # %if.end114
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB0_107
# %bb.11:                               # %if.else122
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a0, $sp, 136
	ori	$a2, $zero, 3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_107
# %bb.12:                               # %if.end131
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a2, $sp, 124
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB0_109
# %bb.13:                               #   in Loop: Header=BB0_3 Depth=1
	addi.w	$s3, $s3, 1
	b	.LBB0_2
	.p2align	4, , 16
.LBB0_14:                               # %if.then
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.w	$a0, $s8, 0
	bge	$a0, $s3, .LBB0_16
# %bb.15:                               # %if.then5
                                        #   in Loop: Header=BB0_3 Depth=1
	st.w	$s3, $s8, 0
.LBB0_16:                               # %if.end
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.w	$s7, $s7, 1
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB0_113
# %bb.17:                               #   in Loop: Header=BB0_3 Depth=1
	move	$s3, $zero
	b	.LBB0_2
.LBB0_18:                               # %while.end
	st.d	$s0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a0, $s8, 0
	bge	$a0, $s3, .LBB0_20
# %bb.19:                               # %if.then148
	st.w	$s3, $s8, 0
.LBB0_20:                               # %if.end149
	move	$a0, $fp
	pcaddu18i	$ra, %call36(rewind)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(gnodeArray)
	ld.d	$s0, $a0, %got_pc_lo12(gnodeArray)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(numnodes)
	ld.d	$s1, $a1, %got_pc_lo12(numnodes)
	ld.w	$a1, $s1, 0
	ld.w	$a2, $s8, 0
	add.d	$a1, $a1, $a2
	addi.w	$a1, $a1, 1
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s1, $s1, 0
	ld.w	$s3, $s8, 0
	st.d	$a0, $s0, 0
	add.w	$s0, $s3, $s1
	blez	$s3, .LBB0_22
# %bb.21:                               # %for.body.preheader
	addi.w	$a1, $s1, 1
	alsl.d	$a0, $a1, $a0, 3
	slt	$a2, $a1, $s0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s0, $a2
	or	$a1, $a2, $a1
	sub.d	$a1, $s1, $a1
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 3
	addi.d	$a2, $a1, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_22:                               # %for.end
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(gtrace)
	ld.d	$a0, $a0, %got_pc_lo12(gtrace)
	st.d	$s2, $a0, 0
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	addi.w	$a0, $s3, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$s0, $a0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 24
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 32
	pcalau12i	$a0, %got_pc_hi20(largestNet)
	ld.d	$a0, $a0, %got_pc_lo12(largestNet)
	st.w	$s7, $a0, 0
	addi.w	$a0, $s7, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(netRoutes)
	ld.d	$a0, $a0, %got_pc_lo12(netRoutes)
	st.d	$s2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(MAXPATHS)
	ld.d	$a0, $a0, %got_pc_lo12(MAXPATHS)
	ld.w	$s8, $a0, 0
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	blez	$s7, .LBB0_28
# %bb.23:                               # %for.body178.lr.ph
	addi.w	$a0, $s8, 1
	slli.d	$s3, $a0, 3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$s6, $a1, 31, 0
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s7, $a0, -1
	ori	$s1, $zero, 1
	ori	$s4, $zero, 1
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_24:                               # %for.inc210
                                        #   in Loop: Header=BB0_25 Depth=1
	addi.d	$s4, $s4, 1
	beq	$s4, $s6, .LBB0_28
.LBB0_25:                               # %for.body178
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
	slli.d	$a0, $s4, 4
	alsl.d	$s0, $s4, $a0, 3
	add.d	$a0, $s2, $s0
	st.w	$s1, $a0, 12
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s2, $s0
	blez	$s8, .LBB0_24
# %bb.26:                               # %for.body190.preheader
                                        #   in Loop: Header=BB0_25 Depth=1
	addi.d	$s0, $a0, 8
	move	$s5, $s7
	.p2align	4, , 16
.LBB0_27:                               # %for.body190
                                        #   Parent Loop BB0_25 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 0
	st.d	$zero, $a0, 0
	st.d	$zero, $a0, 16
	addi.d	$s5, $s5, -1
	addi.d	$s0, $s0, 8
	bnez	$s5, .LBB0_27
	b	.LBB0_24
.LBB0_28:                               # %for.end212
	slli.w	$s3, $s8, 1
	addi.w	$a0, $s3, 1
	slli.d	$a0, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(savePaths)
	ld.d	$a1, $a1, %got_pc_lo12(savePaths)
	st.d	$a0, $a1, 0
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	alsl.w	$s6, $s4, $s4, 1
	blez	$s8, .LBB0_31
# %bb.29:                               # %for.body222.lr.ph
	slli.d	$a1, $s6, 1
	addi.d	$s2, $a1, 2
	ori	$a1, $zero, 1
	slt	$a2, $a1, $s3
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s3, $a2
	or	$s0, $a2, $a1
	addi.d	$s1, $a0, 8
	.p2align	4, , 16
.LBB0_30:                               # %for.body222
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB0_30
.LBB0_31:                               # %for.end233
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.w	$s0, $a0, 0
	slli.d	$s2, $s0, 3
	addi.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pnameArray)
	ld.d	$a1, $a1, %got_pc_lo12(pnameArray)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	blez	$s0, .LBB0_33
# %bb.32:                               # %for.body241.preheader
	addi.d	$a0, $a0, 8
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_33:                               # %for.end246
	ld.d	$s0, $sp, 112                   # 8-byte Folded Reload
	slli.d	$a0, $s0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(nnameArray)
	ld.d	$a1, $a1, %got_pc_lo12(nnameArray)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	slli.d	$s2, $s0, 2
	blez	$s1, .LBB0_35
# %bb.34:                               # %for.body267.preheader
	addi.d	$a0, $a0, 8
	slli.d	$a2, $s1, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pinOffset)
	ld.d	$a1, $a1, %got_pc_lo12(pinOffset)
	st.d	$a0, $a1, 0
	addi.d	$a0, $a0, 4
	slli.d	$a2, $s1, 2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB0_36
.LBB0_35:                               # %for.end259.thread
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pinOffset)
	ld.d	$a1, $a1, %got_pc_lo12(pinOffset)
	st.d	$a0, $a1, 0
.LBB0_36:                               # %for.end272
	slli.d	$a0, $s6, 1
	addi.d	$a0, $a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(segList)
	ld.d	$a1, $a1, %got_pc_lo12(segList)
	st.d	$a0, $a1, 0
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(sourceList)
	ld.d	$a1, $a1, %got_pc_lo12(sourceList)
	st.d	$a0, $a1, 0
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.w	$a0, $a0, $s1
	slli.d	$s0, $a0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(targetList)
	ld.d	$a1, $a1, %got_pc_lo12(targetList)
	st.d	$a0, $a1, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(delSourceList)
	ld.d	$a1, $a1, %got_pc_lo12(delSourceList)
	st.d	$a0, $a1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(addTargetList)
	ld.d	$a1, $a1, %got_pc_lo12(addTargetList)
	st.d	$a0, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(EXTRASOURCES)
	ld.d	$a0, $a0, %got_pc_lo12(EXTRASOURCES)
	ld.w	$a0, $a0, 0
	mul.w	$s0, $s8, $a0
	addi.w	$s5, $s0, 1
	slli.d	$a0, $s5, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pathList)
	ld.d	$a1, $a1, %got_pc_lo12(pathList)
	st.d	$a0, $a1, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s2, $s1, $a1
	blez	$s0, .LBB0_41
# %bb.37:                               # %for.body306.lr.ph
	addi.w	$a1, $s2, 2
	slli.d	$s0, $a1, 2
	move	$a1, $s4
	addi.w	$s4, $s2, 1
	addi.d	$a1, $a1, 2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$s1, $a1, 2
	bstrpick.d	$a1, $s5, 31, 0
	addi.d	$s5, $a0, 8
	addi.d	$s6, $a1, -1
	b	.LBB0_39
	.p2align	4, , 16
.LBB0_38:                               # %for.inc327
                                        #   in Loop: Header=BB0_39 Depth=1
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, 8
	beqz	$s6, .LBB0_41
.LBB0_39:                               # %for.body306
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	bltz	$s4, .LBB0_38
# %bb.40:                               # %for.body319.preheader
                                        #   in Loop: Header=BB0_39 Depth=1
	move	$a1, $zero
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB0_38
.LBB0_41:                               # %for.end329
	addi.w	$a0, $s3, 3
	slli.d	$a1, $a0, 5
	alsl.d	$a0, $a0, $a1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pathArray)
	ld.d	$a1, $a1, %got_pc_lo12(pathArray)
	st.d	$a0, $a1, 0
	bltz	$s8, .LBB0_44
# %bb.42:                               # %for.body340.lr.ph
	addi.w	$a1, $s3, 2
	addi.w	$a2, $s2, 1
	slli.d	$s0, $a2, 1
	ori	$a2, $zero, 1
	slt	$a3, $a2, $a1
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$s1, $a1, $a2
	addi.d	$s2, $a0, 40
	.p2align	4, , 16
.LBB0_43:                               # %for.body340
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 40
	bnez	$s1, .LBB0_43
	b	.LBB0_45
.LBB0_44:                               # %for.end329.for.end350_crit_edge
	addi.w	$a0, $s2, 1
	slli.d	$s0, $a0, 1
.LBB0_45:                               # %for.end350
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(tempArray)
	ld.d	$a1, $a1, %got_pc_lo12(tempArray)
	st.d	$a0, $a1, 0
	pcalau12i	$s8, %pc_hi20(pnodeAlength)
	st.w	$zero, $s8, %pc_lo12(pnodeAlength)
	pcalau12i	$a0, %got_pc_hi20(pinlist)
	ld.d	$a0, $a0, %got_pc_lo12(pinlist)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$zero, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_85
# %bb.46:                               # %while.body361.preheader
	lu12i.w	$a0, 1862
	ori	$a0, $a0, 1390
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a0, -209716
	ori	$a0, $a0, 3277
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 104857
	ori	$a0, $a0, 2457
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$a0, $a0, %got_pc_lo12(fpo)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(pnodeArray)
	ld.d	$s2, $a0, %got_pc_lo12(pnodeArray)
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$s6, $a0, %got_pc_lo12(netSegArray)
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	move	$s3, $zero
	move	$s1, $zero
	move	$s0, $zero
	lu12i.w	$a0, 1766
	ori	$a0, $a0, 2416
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
                                        # implicit-def: $r28
	b	.LBB0_49
	.p2align	4, , 16
.LBB0_47:                               #   in Loop: Header=BB0_49 Depth=1
	move	$s3, $s4
.LBB0_48:                               # %if.end563
                                        #   in Loop: Header=BB0_49 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB0_86
.LBB0_49:                               # %while.body361
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
                                        #       Child Loop BB0_65 Depth 3
                                        #     Child Loop BB0_71 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #     Child Loop BB0_78 Depth 2
                                        #     Child Loop BB0_81 Depth 2
	ld.w	$a0, $sp, 136
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_53
# %bb.50:                               # %if.else484
                                        #   in Loop: Header=BB0_49 Depth=1
	move	$s4, $s3
	ld.w	$a0, $sp, 136
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_57
# %bb.51:                               # %if.else526
                                        #   in Loop: Header=BB0_49 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 136
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_47
# %bb.52:                               # %if.then531
                                        #   in Loop: Header=BB0_49 Depth=1
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s7, $s7, 1
	addi.w	$s1, $s1, 1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s3, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a2, $s7, 3
	stx.d	$a0, $a1, $a2
	addi.d	$a1, $sp, 136
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a2, $sp, 132
	addi.d	$a3, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	addi.d	$a2, $sp, 124
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$a0, $s4, 16
	st.d	$s4, $a0, 24
	st.d	$zero, $a0, 16
	addi.w	$a0, $zero, -1
	lu32i.d	$a0, 0
	ld.w	$a1, $sp, 132
	ld.w	$a2, $sp, 128
	ld.w	$a3, $sp, 124
	st.w	$a0, $s3, 0
	st.w	$a1, $s3, 4
	st.w	$a2, $s3, 8
	st.w	$a3, $s3, 12
	b	.LBB0_48
	.p2align	4, , 16
.LBB0_53:                               # %if.then366
                                        #   in Loop: Header=BB0_49 Depth=1
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	blez	$s0, .LBB0_80
# %bb.54:                               # %if.then369
                                        #   in Loop: Header=BB0_49 Depth=1
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a0, $s0, $a0
	rotri.w	$a0, $a0, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB0_59
# %bb.55:                               # %if.end375
                                        #   in Loop: Header=BB0_49 Depth=1
	ld.w	$a0, $s8, %pc_lo12(pnodeAlength)
	bge	$a0, $s1, .LBB0_60
.LBB0_56:                               # %if.then383
                                        #   in Loop: Header=BB0_49 Depth=1
	bgtz	$a0, .LBB0_62
	b	.LBB0_73
	.p2align	4, , 16
.LBB0_57:                               # %if.then489
                                        #   in Loop: Header=BB0_49 Depth=1
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	addi.w	$s7, $s7, 1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$s3, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	slli.d	$a2, $s7, 3
	stx.d	$a0, $a1, $a2
	addi.d	$a1, $sp, 136
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a2, $sp, 132
	addi.d	$a3, $sp, 128
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	move	$a1, $s3
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	addi.d	$a2, $sp, 124
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$s4, .LBB0_83
# %bb.58:                               # %if.else517
                                        #   in Loop: Header=BB0_49 Depth=1
	st.d	$s3, $s4, 16
	b	.LBB0_84
.LBB0_59:                               # %if.then372
                                        #   in Loop: Header=BB0_49 Depth=1
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s3, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(pnodeAlength)
	blt	$a0, $s1, .LBB0_56
.LBB0_60:                               # %lor.lhs.false
                                        #   in Loop: Header=BB0_49 Depth=1
	ori	$a1, $zero, 31
	blt	$a0, $a1, .LBB0_79
# %bb.61:                               # %lor.lhs.false
                                        #   in Loop: Header=BB0_49 Depth=1
	slli.w	$a1, $s1, 1
	bge	$a1, $a0, .LBB0_79
.LBB0_62:                               # %for.body390.preheader
                                        #   in Loop: Header=BB0_49 Depth=1
	ld.d	$a1, $s2, 0
	ori	$a0, $zero, 1
	b	.LBB0_64
	.p2align	4, , 16
.LBB0_63:                               # %for.inc407
                                        #   in Loop: Header=BB0_64 Depth=2
	ld.w	$a2, $s8, %pc_lo12(pnodeAlength)
	addi.d	$a0, $s3, 1
	bge	$s3, $a2, .LBB0_69
.LBB0_64:                               # %for.body390
                                        #   Parent Loop BB0_49 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_65 Depth 3
	move	$s3, $a0
	slli.d	$a0, $a0, 4
	alsl.d	$s4, $s3, $a0, 3
	add.d	$a0, $a1, $s4
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_67
	.p2align	4, , 16
.LBB0_65:                               # %while.body396
                                        #   Parent Loop BB0_49 Depth=1
                                        #     Parent Loop BB0_64 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s5, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	bnez	$s5, .LBB0_65
# %bb.66:                               # %while.end397.loopexit
                                        #   in Loop: Header=BB0_64 Depth=2
	ld.d	$a1, $s2, 0
.LBB0_67:                               # %while.end397
                                        #   in Loop: Header=BB0_64 Depth=2
	add.d	$a0, $a1, $s4
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB0_63
# %bb.68:                               # %if.then402
                                        #   in Loop: Header=BB0_64 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	b	.LBB0_63
.LBB0_69:                               # %for.cond410.preheader
                                        #   in Loop: Header=BB0_49 Depth=1
	blez	$a2, .LBB0_72
# %bb.70:                               # %for.body413.preheader
                                        #   in Loop: Header=BB0_49 Depth=1
	move	$s3, $zero
	move	$s4, $zero
	.p2align	4, , 16
.LBB0_71:                               # %for.body413
                                        #   Parent Loop BB0_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 0
	ldx.d	$a0, $a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(pnodeAlength)
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	blt	$s4, $a0, .LBB0_71
.LBB0_72:                               # %for.end418
                                        #   in Loop: Header=BB0_49 Depth=1
	ld.d	$a0, $s2, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_73:                               # %if.end419
                                        #   in Loop: Header=BB0_49 Depth=1
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.w	$s1, $s8, %pc_lo12(pnodeAlength)
	addi.w	$s4, $s1, 1
	slli.d	$a0, $s4, 4
	alsl.d	$a0, $s4, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	blez	$s1, .LBB0_76
# %bb.74:                               # %for.body427.lr.ph
                                        #   in Loop: Header=BB0_49 Depth=1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.w	$a1, $s4, $a1
	slli.d	$a2, $a1, 3
	alsl.d	$s3, $a1, $a2, 2
	bstrpick.d	$a1, $s4, 31, 0
	addi.d	$s5, $a0, 40
	addi.d	$s7, $a1, -1
	.p2align	4, , 16
.LBB0_75:                               # %for.body427
                                        #   Parent Loop BB0_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, -8
	st.w	$zero, $s5, -16
	st.d	$zero, $s5, 0
	addi.d	$s7, $s7, -1
	addi.d	$s5, $s5, 24
	bnez	$s7, .LBB0_75
.LBB0_76:                               # %for.end443
                                        #   in Loop: Header=BB0_49 Depth=1
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 0
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	blez	$s1, .LBB0_79
# %bb.77:                               # %for.body450.lr.ph
                                        #   in Loop: Header=BB0_49 Depth=1
	move	$s3, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	add.w	$a0, $s4, $a0
	slli.d	$s4, $a0, 1
	move	$s5, $s1
	.p2align	4, , 16
.LBB0_78:                               # %for.body450
                                        #   Parent Loop BB0_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	addi.d	$s5, $s5, -1
	addi.d	$s3, $s3, 8
	bnez	$s5, .LBB0_78
.LBB0_79:                               # %if.end461
                                        #   in Loop: Header=BB0_49 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(procesnet)
	jirl	$ra, $ra, 0
.LBB0_80:                               # %if.end462
                                        #   in Loop: Header=BB0_49 Depth=1
	addi.w	$s0, $s0, 1
	pcalau12i	$a0, %got_pc_hi20(pinOffset)
	ld.d	$a0, $a0, %got_pc_lo12(pinOffset)
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s0, 2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	stx.w	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a2, $sp, 136
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__isoc99_fscanf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	slli.d	$a2, $s0, 3
	stx.d	$a0, $a1, $a2
	addi.d	$a1, $sp, 136
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_82
	.p2align	4, , 16
.LBB0_81:                               # %while.body482
                                        #   Parent Loop BB0_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s1, $a0, 24
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	bnez	$s1, .LBB0_81
.LBB0_82:                               # %while.end483
                                        #   in Loop: Header=BB0_49 Depth=1
	move	$s5, $zero
	move	$s1, $zero
	move	$s3, $zero
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	b	.LBB0_48
.LBB0_83:                               # %if.then514
                                        #   in Loop: Header=BB0_49 Depth=1
	move	$s4, $zero
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	st.d	$s3, $a0, 0
.LBB0_84:                               # %if.end521
                                        #   in Loop: Header=BB0_49 Depth=1
	addi.w	$s1, $s1, 1
	addi.d	$s5, $s5, 1
	st.d	$s4, $s3, 24
	st.d	$zero, $s3, 16
	ld.w	$a0, $sp, 132
	ld.w	$a1, $sp, 128
	ld.w	$a2, $sp, 124
	ori	$a3, $zero, 1
	st.w	$a3, $s3, 0
	st.w	$a0, $s3, 4
	st.w	$a1, $s3, 8
	st.w	$a2, $s3, 12
	b	.LBB0_48
.LBB0_85:
	move	$s0, $zero
	move	$s1, $zero
                                        # implicit-def: $r28
.LBB0_86:                               # %while.end564
	ld.w	$a0, $s8, %pc_lo12(pnodeAlength)
	blt	$a0, $s1, .LBB0_88
# %bb.87:                               # %while.end564
	slli.d	$a1, $s1, 3
	alsl.w	$a1, $s1, $a1, 1
	bge	$a1, $a0, .LBB0_106
.LBB0_88:                               # %if.then571
	blez	$a0, .LBB0_100
# %bb.89:                               # %for.body578.preheader
	pcalau12i	$a0, %got_pc_hi20(pnodeArray)
	ld.d	$fp, $a0, %got_pc_lo12(pnodeArray)
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 1
	b	.LBB0_91
	.p2align	4, , 16
.LBB0_90:                               # %for.inc598
                                        #   in Loop: Header=BB0_91 Depth=1
	ld.w	$a2, $s8, %pc_lo12(pnodeAlength)
	addi.d	$a0, $s2, 1
	bge	$s2, $a2, .LBB0_96
.LBB0_91:                               # %for.body578
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_92 Depth 2
	move	$s2, $a0
	slli.d	$a0, $a0, 4
	alsl.d	$s3, $s2, $a0, 3
	add.d	$a0, $a1, $s3
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB0_94
	.p2align	4, , 16
.LBB0_92:                               # %while.body585
                                        #   Parent Loop BB0_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$s4, $a0, 8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	bnez	$s4, .LBB0_92
# %bb.93:                               # %while.end587.loopexit
                                        #   in Loop: Header=BB0_91 Depth=1
	ld.d	$a1, $fp, 0
.LBB0_94:                               # %while.end587
                                        #   in Loop: Header=BB0_91 Depth=1
	add.d	$a0, $a1, $s3
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB0_90
# %bb.95:                               # %if.then593
                                        #   in Loop: Header=BB0_91 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	b	.LBB0_90
.LBB0_96:                               # %for.cond601.preheader
	blez	$a2, .LBB0_99
# %bb.97:                               # %for.body604.preheader
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$s2, $a0, %got_pc_lo12(netSegArray)
	move	$s3, $zero
	move	$s4, $zero
	.p2align	4, , 16
.LBB0_98:                               # %for.body604
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 0
	ldx.d	$a0, $a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(pnodeAlength)
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 8
	blt	$s4, $a0, .LBB0_98
.LBB0_99:                               # %for.end609
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$a0, $a0, %got_pc_lo12(netSegArray)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_100:                              # %if.end610
	st.w	$s1, $s8, %pc_lo12(pnodeAlength)
	addi.w	$s2, $s1, 1
	slli.d	$a0, $s2, 4
	alsl.d	$a0, $s2, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(pnodeArray)
	ld.d	$a1, $a1, %got_pc_lo12(pnodeArray)
	st.d	$a0, $a1, 0
	blez	$s1, .LBB0_103
# %bb.101:                              # %for.body618.lr.ph
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	add.w	$a1, $s2, $a1
	slli.d	$a2, $a1, 3
	alsl.d	$fp, $a1, $a2, 2
	bstrpick.d	$a1, $s2, 31, 0
	addi.d	$s3, $a0, 40
	addi.d	$s4, $a1, -1
	.p2align	4, , 16
.LBB0_102:                              # %for.body618
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, -8
	st.w	$zero, $s3, -16
	st.d	$zero, $s3, 0
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 24
	bnez	$s4, .LBB0_102
.LBB0_103:                              # %for.end635
	slli.d	$a0, $s1, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(netSegArray)
	ld.d	$a0, $a0, %got_pc_lo12(netSegArray)
	st.d	$fp, $a0, 0
	blez	$s1, .LBB0_106
# %bb.104:                              # %for.body642.lr.ph
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	add.w	$a0, $s2, $a0
	slli.d	$s2, $a0, 1
	move	$s3, $s1
	.p2align	4, , 16
.LBB0_105:                              # %for.body642
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	addi.d	$s3, $s3, -1
	addi.d	$fp, $fp, 8
	bnez	$s3, .LBB0_105
.LBB0_106:                              # %if.end653
	addi.w	$a1, $s5, 0
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(procesnet)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 1160                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1168                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1176                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1184                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1192                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1200                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1208                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1216                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1224                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1232                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1240                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1248
	ret
.LBB0_107:                              # %if.then39
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 28
	b	.LBB0_115
.LBB0_108:                              # %if.then47
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 32
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 41
	b	.LBB0_117
.LBB0_109:                              # %if.then71
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 41
	b	.LBB0_115
.LBB0_110:                              # %if.then31
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 31
	b	.LBB0_115
.LBB0_111:                              # %if.then23
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	b	.LBB0_114
.LBB0_112:                              # %if.else139
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.17)
	addi.d	$a1, $a1, %pc_lo12(.L.str.17)
	addi.d	$a2, $sp, 136
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_116
.LBB0_113:                              # %if.then9
	pcalau12i	$a0, %got_pc_hi20(fpo)
	ld.d	$fp, $a0, %got_pc_lo12(fpo)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
.LBB0_114:                              # %if.then9
	ori	$a1, $zero, 27
.LBB0_115:                              # %if.then9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB0_116:                              # %if.then9
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 17
.LBB0_117:                              # %if.then9
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a2, $s7
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	readpnode, .Lfunc_end0-readpnode
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %s "
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"net"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Failed to input a net name "
	.size	.L.str.2, 28

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"in the .twf file\n"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Current net: %d\n"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"pin"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Failed to input a pin name "
	.size	.L.str.6, 28

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Failed to input keyword: nodes "
	.size	.L.str.7, 32

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"nodes"
	.size	.L.str.8, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Failed to input keyword: at "
	.size	.L.str.9, 29

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	" %d %d "
	.size	.L.str.10, 8

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Failed to input a pair of nodes "
	.size	.L.str.11, 33

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"following keyword nodes in the .twf file\n"
	.size	.L.str.12, 42

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"at"
	.size	.L.str.13, 3

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	" %d "
	.size	.L.str.14, 5

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Failed to input an integer following: at "
	.size	.L.str.15, 42

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"equiv"
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Found unknown string: < %s >  "
	.size	.L.str.17, 31

	.type	pnodeAlength,@object            # @pnodeAlength
	.comm	pnodeAlength,4,4
	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Global Routing Net Number: %d\n"
	.size	.L.str.18, 31

	.section	".note.GNU-stack","",@progbits
	.addrsig
