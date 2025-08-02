	.file	"output.c"
	.text
	.globl	testEndian                      # -- Begin function testEndian
	.p2align	5
	.type	testEndian,@function
testEndian:                             # @testEndian
# %bb.0:                                # %entry
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	testEndian, .Lfunc_end0-testEndian
                                        # -- End function
	.globl	img2buf                         # -- Begin function img2buf
	.p2align	5
	.type	img2buf,@function
img2buf:                                # @img2buf
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
	move	$s1, $a7
	move	$s7, $a6
	move	$fp, $a5
	move	$s3, $a4
	move	$s4, $a3
	move	$s6, $a2
	move	$s0, $a1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s8, $sp, 144
	add.d	$a0, $a5, $a6
	ori	$a1, $zero, 3
	sub.d	$s2, $a2, $a0
	bltu	$a4, $a1, .LBB1_8
# %bb.1:                                # %if.end.thread
	add.d	$a0, $s1, $s8
	sub.d	$a0, $s4, $a0
	mul.d	$a1, $s2, $s3
	mul.w	$a2, $a1, $a0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 2
.LBB1_2:                                # %for.cond105.preheader
	sub.w	$a0, $s4, $s8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bge	$s1, $a0, .LBB1_16
# %bb.3:                                # %for.body109.lr.ph
	sub.w	$s6, $s6, $s7
	bge	$fp, $s6, .LBB1_16
# %bb.4:                                # %for.body109.us.preheader
	move	$s4, $zero
	slli.d	$a0, $fp, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	mul.d	$a0, $s3, $s2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_5:                                # %for.body109.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$s2, $s1, $a0, 3
	move	$s7, $s4
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB1_6:                                # %for.body116.us
                                        #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s2, 0
	add.d	$a0, $s0, $s7
	add.d	$a1, $a1, $s8
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 1
	addi.d	$s8, $s8, 2
	add.w	$s7, $s7, $s3
	blt	$fp, $s6, .LBB1_6
# %bb.7:                                # %for.cond112.for.end129_crit_edge.us
                                        #   in Loop: Header=BB1_5 Depth=1
	addi.d	$s1, $s1, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.w	$s4, $s4, $a0
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	blt	$s1, $a0, .LBB1_5
	b	.LBB1_16
.LBB1_8:                                # %if.end
	or	$a0, $s7, $fp
	or	$a0, $a0, $s1
	or	$a0, $a0, $s8
	bnez	$a0, .LBB1_17
# %bb.9:                                # %if.end
	ori	$a0, $zero, 1
	move	$s5, $s3
	bne	$s3, $a0, .LBB1_2
# %bb.10:                               # %for.cond134.preheader
	blt	$s4, $a0, .LBB1_16
# %bb.11:                               # %for.cond134.preheader
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB1_16
# %bb.12:                               # %for.cond138.preheader.us.preheader
	move	$a0, $zero
	slli.d	$a1, $s6, 1
	.p2align	4, , 16
.LBB1_13:                               # %for.cond138.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_14 Depth 2
	move	$a2, $zero
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 3
	.p2align	4, , 16
.LBB1_14:                               # %for.body141.us
                                        #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	ldx.b	$a4, $a4, $a2
	st.b	$a4, $s0, 0
	addi.d	$a2, $a2, 2
	addi.d	$s0, $s0, 1
	bne	$a1, $a2, .LBB1_14
# %bb.15:                               # %for.cond138.for.inc150_crit_edge.us
                                        #   in Loop: Header=BB1_13 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB1_13
.LBB1_16:                               # %if.end154
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
.LBB1_17:
	move	$s5, $s3
	b	.LBB1_2
.Lfunc_end1:
	.size	img2buf, .Lfunc_end1-img2buf
                                        # -- End function
	.globl	write_picture                   # -- Begin function write_picture
	.p2align	5
	.type	write_picture,@function
write_picture:                          # @write_picture
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(write_out_picture)
	jr	$t8
.Lfunc_end2:
	.size	write_picture, .Lfunc_end2-write_picture
                                        # -- End function
	.globl	write_out_picture               # -- Begin function write_out_picture
	.p2align	5
	.type	write_out_picture,@function
write_out_picture:                      # @write_out_picture
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	lu12i.w	$a2, 77
	ori	$a2, $a2, 1464
	ldx.w	$a3, $a0, $a2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	beqz	$a3, .LBB3_2
# %bb.1:                                # %cleanup
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB3_2:                                # %if.end
	pcalau12i	$a1, %got_pc_hi20(img)
	ld.d	$a1, $a1, %got_pc_lo12(img)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $a1, 0
	ldptr.w	$s5, $a1, 5872
	add.d	$s4, $a0, $a2
	bstrpick.d	$a1, $s5, 62, 60
	pcalau12i	$a0, %pc_hi20(active_sps)
	ld.w	$a2, $s4, 196
	ld.d	$a0, $a0, %pc_lo12(active_sps)
	add.w	$a1, $s5, $a1
	srai.d	$s3, $a1, 3
	ori	$a1, $zero, 2160
	beqz	$a2, .LBB3_4
# %bb.3:                                # %if.then2
	ld.w	$a2, $s4, 188
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.L__const.write_out_picture.SubWidthC)
	addi.d	$a3, $a3, %pc_lo12(.L__const.write_out_picture.SubWidthC)
	ldx.w	$a3, $a3, $a2
	ld.w	$a4, $s4, 200
	ld.w	$a5, $s4, 204
	mul.d	$s1, $a4, $a3
	mul.d	$s8, $a5, $a3
	pcalau12i	$a3, %pc_hi20(.L__const.write_out_picture.SubHeightC)
	addi.d	$a3, $a3, %pc_lo12(.L__const.write_out_picture.SubHeightC)
	ldx.w	$a2, $a3, $a2
	ld.w	$a3, $s4, 192
	ori	$a4, $zero, 2
	ld.w	$a5, $s4, 208
	ld.w	$a6, $s4, 212
	sub.w	$a3, $a4, $a3
	mul.d	$a2, $a3, $a2
	mul.d	$a3, $a2, $a5
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	mul.d	$a2, $a2, $a6
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	b	.LBB3_5
.LBB3_4:
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	move	$s8, $zero
	move	$s1, $zero
.LBB3_5:                                # %if.end19
	ld.w	$a2, $s4, 8
	ld.w	$a3, $s4, 12
	ldx.w	$fp, $a0, $a1
	mul.d	$a0, $a2, $s3
	mul.w	$a0, $a0, $a3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beqz	$a0, .LBB3_7
# %bb.6:                                # %if.end26
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	bnez	$fp, .LBB3_30
	b	.LBB3_8
.LBB3_7:                                # %if.then25
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(no_mem_exit)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s5, $sp, 88                    # 8-byte Folded Spill
	bnez	$fp, .LBB3_30
.LBB3_8:                                # %if.then28
	ld.w	$s8, $s4, 200
	ld.w	$s2, $s4, 204
	ld.w	$a0, $s4, 192
	ori	$s1, $zero, 2
	ld.w	$a1, $s4, 208
	ld.w	$a2, $s4, 212
	sub.d	$a0, $s1, $a0
	ld.d	$a3, $s4, 72
	mul.w	$s5, $a0, $a1
	mul.w	$fp, $a2, $a0
	ld.w	$a6, $s4, 16
	ld.d	$a0, $a3, 8
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.w	$s6, $s4, 20
	add.d	$a0, $s2, $s8
	sub.d	$a3, $a6, $a0
	ori	$a1, $zero, 3
	add.d	$s7, $fp, $s5
	bltu	$s3, $a1, .LBB3_17
# %bb.9:                                # %if.end.thread.i
	sub.d	$a0, $s6, $s7
	mul.d	$a1, $a3, $s3
	mul.w	$a2, $a1, $a0
	move	$a0, $s0
	move	$a1, $zero
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
.LBB3_10:                               # %for.cond105.preheader.i
	sub.w	$a0, $s6, $fp
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bge	$s5, $a0, .LBB3_26
# %bb.11:                               # %for.body109.lr.ph.i
	sub.w	$fp, $a6, $s2
	bge	$s8, $fp, .LBB3_26
# %bb.12:                               # %for.body109.us.preheader.i
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	move	$s7, $zero
	slli.d	$a1, $s8, 1
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	mul.d	$a0, $s3, $a3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_13:                               # %for.body109.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_14 Depth 2
	slli.d	$a0, $s5, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	move	$s4, $s7
	move	$s6, $s8
	.p2align	4, , 16
.LBB3_14:                               # %for.body116.us.i
                                        #   Parent Loop BB3_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s4
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s8, $s8, 1
	addi.d	$s2, $s2, 2
	add.w	$s4, $s4, $s3
	blt	$s8, $fp, .LBB3_14
# %bb.15:                               # %for.cond112.for.end129_crit_edge.us.i
                                        #   in Loop: Header=BB3_13 Depth=1
	addi.d	$s5, $s5, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	move	$s8, $s6
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	blt	$s5, $a0, .LBB3_13
# %bb.16:
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	b	.LBB3_27
.LBB3_17:                               # %if.end.i
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bstrins.d	$a1, $zero, 2, 0
	ori	$a2, $zero, 8
	move	$s1, $s3
	bne	$a1, $a2, .LBB3_10
# %bb.18:                               # %if.end.i
	or	$a1, $s2, $s8
	or	$a1, $a1, $s5
	or	$a1, $a1, $fp
	move	$s1, $s3
	bnez	$a1, .LBB3_10
# %bb.19:                               # %for.cond134.preheader.i
	ori	$a1, $zero, 1
	blt	$a6, $a1, .LBB3_26
# %bb.20:                               # %for.cond134.preheader.i
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	blt	$s6, $a1, .LBB3_27
# %bb.21:                               # %for.cond138.preheader.us.preheader.i
	move	$a1, $zero
	slli.d	$a2, $a6, 1
	move	$a3, $s0
	.p2align	4, , 16
.LBB3_22:                               # %for.cond138.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_23 Depth 2
	move	$a4, $zero
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a5, $a1, $a5, 3
	.p2align	4, , 16
.LBB3_23:                               # %for.body141.us.i
                                        #   Parent Loop BB3_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a6, $a5, 0
	ldx.b	$a6, $a6, $a4
	st.b	$a6, $a3, 0
	addi.d	$a4, $a4, 2
	addi.d	$a3, $a3, 1
	bne	$a2, $a4, .LBB3_23
# %bb.24:                               # %for.cond138.for.inc150_crit_edge.us.i
                                        #   in Loop: Header=BB3_22 Depth=1
	addi.d	$a1, $a1, 1
	bne	$a1, $s6, .LBB3_22
# %bb.25:                               # %img2buf.exit.loopexit405
	ld.w	$a1, $s4, 16
	ld.w	$s6, $s4, 20
	sub.d	$a3, $a1, $a0
	b	.LBB3_27
.LBB3_26:
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
.LBB3_27:                               # %img2buf.exit
	sub.d	$a0, $s6, $s7
	mul.d	$a0, $a0, $s3
	mul.w	$a2, $a0, $a3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 196
	beqz	$a0, .LBB3_29
# %bb.28:                               # %if.then52
	ld.w	$a0, $s4, 188
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.L__const.write_out_picture.SubWidthC)
	addi.d	$a1, $a1, %pc_lo12(.L__const.write_out_picture.SubWidthC)
	ldx.w	$a1, $a1, $a0
	ld.w	$a2, $s4, 200
	ld.w	$a3, $s4, 204
	mul.d	$s1, $a2, $a1
	mul.d	$s8, $a3, $a1
	pcalau12i	$a1, %pc_hi20(.L__const.write_out_picture.SubHeightC)
	addi.d	$a1, $a1, %pc_lo12(.L__const.write_out_picture.SubHeightC)
	ldx.w	$a0, $a1, $a0
	ld.w	$a1, $s4, 192
	ori	$a2, $zero, 2
	ld.w	$a3, $s4, 208
	ld.w	$a4, $s4, 212
	sub.w	$a1, $a2, $a1
	mul.d	$a0, $a1, $a0
	mul.d	$a1, $a0, $a3
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	mul.d	$a0, $a0, $a4
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	b	.LBB3_30
.LBB3_29:
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	move	$s8, $zero
	move	$s1, $zero
.LBB3_30:                               # %if.end81
	ld.w	$s2, $s4, 8
	ld.d	$a0, $s4, 64
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.w	$a6, $s4, 12
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	add.d	$s6, $s1, $s8
	sub.d	$a3, $s2, $s6
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$fp, $a2, $a1
	bltu	$s3, $a0, .LBB3_39
# %bb.31:                               # %if.end.thread.i199
	sub.d	$a0, $a6, $fp
	mul.d	$a1, $a3, $s3
	mul.w	$a2, $a1, $a0
	move	$a0, $s0
	move	$a1, $zero
	move	$s1, $a6
	move	$s7, $a3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a3, $s7
	move	$a6, $s1
	ori	$s1, $zero, 2
.LBB3_32:                               # %for.cond105.preheader.i174
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	sub.w	$a1, $a6, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$s8, $a0, 0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	bge	$s8, $a1, .LBB3_49
# %bb.33:                               # %for.body109.lr.ph.i178
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.w	$fp, $s2, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	bge	$a2, $fp, .LBB3_48
# %bb.34:                               # %for.body109.us.preheader.i182
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	move	$s7, $zero
	slli.d	$a0, $a2, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	mul.d	$a0, $s3, $a3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_35:                               # %for.body109.us.i183
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_36 Depth 2
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	move	$s5, $s7
	move	$s4, $a2
	move	$s6, $a2
	.p2align	4, , 16
.LBB3_36:                               # %for.body116.us.i187
                                        #   Parent Loop BB3_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s5
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 1
	addi.d	$s2, $s2, 2
	add.w	$s5, $s5, $s3
	blt	$s6, $fp, .LBB3_36
# %bb.37:                               # %for.cond112.for.end129_crit_edge.us.i196
                                        #   in Loop: Header=BB3_35 Depth=1
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	move	$a2, $s4
	blt	$s8, $a0, .LBB3_35
# %bb.38:
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_50
.LBB3_39:                               # %if.end.i148
	move	$a0, $s5
	bstrins.d	$a0, $zero, 2, 0
	ori	$a1, $zero, 8
	move	$s1, $s3
	bne	$a0, $a1, .LBB3_32
# %bb.40:                               # %if.end.i148
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	or	$a0, $a1, $a0
	or	$a0, $a0, $s8
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	addi.w	$a0, $a0, 0
	move	$s1, $s3
	bnez	$a0, .LBB3_32
# %bb.41:                               # %for.cond134.preheader.i152
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB3_50
# %bb.42:                               # %for.cond134.preheader.i152
	blt	$a6, $a0, .LBB3_50
# %bb.43:                               # %for.cond138.preheader.us.preheader.i156
	move	$a0, $zero
	slli.d	$a1, $s2, 1
	move	$a2, $s0
	.p2align	4, , 16
.LBB3_44:                               # %for.cond138.preheader.us.i159
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_45 Depth 2
	move	$a3, $zero
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 3
	.p2align	4, , 16
.LBB3_45:                               # %for.body141.us.i163
                                        #   Parent Loop BB3_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ldx.b	$a5, $a5, $a3
	st.b	$a5, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a2, $a2, 1
	bne	$a1, $a3, .LBB3_45
# %bb.46:                               # %for.cond138.for.inc150_crit_edge.us.i171
                                        #   in Loop: Header=BB3_44 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $a6, .LBB3_44
# %bb.47:                               # %img2buf.exit204.loopexit404
	ld.w	$a0, $s4, 8
	ld.w	$a6, $s4, 12
	sub.d	$a3, $a0, $s6
	b	.LBB3_50
.LBB3_48:
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
.LBB3_49:                               # %img2buf.exit204
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
.LBB3_50:                               # %img2buf.exit204
	sub.d	$a0, $a6, $fp
	mul.d	$a0, $a0, $s3
	mul.w	$a2, $a0, $a3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 188
	beqz	$a0, .LBB3_60
# %bb.51:                               # %if.then97
	ld.w	$a4, $s4, 200
	ld.w	$fp, $s4, 204
	ld.w	$a0, $s4, 192
	ori	$s1, $zero, 2
	ld.w	$a1, $s4, 208
	ld.w	$a2, $s4, 212
	sub.d	$a0, $s1, $a0
	ld.d	$a3, $s4, 72
	mul.w	$s6, $a0, $a1
	mul.w	$a5, $a2, $a0
	ld.w	$s8, $s4, 16
	ld.d	$a0, $a3, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.w	$s2, $s4, 20
	add.d	$a0, $fp, $a4
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	sub.d	$a2, $s8, $a0
	ori	$a0, $zero, 3
	add.d	$s7, $a5, $s6
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	bltu	$s3, $a0, .LBB3_78
# %bb.52:                               # %if.end.thread.i258
	sub.d	$a0, $s2, $s7
	mul.d	$a1, $a2, $s3
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	mul.w	$a2, $a1, $a0
	move	$a0, $s0
	move	$a1, $zero
	move	$s5, $s7
	move	$s7, $a5
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a5, $s7
	move	$s7, $s5
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
.LBB3_53:                               # %for.cond105.preheader.i233
	sub.w	$a0, $s2, $a5
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bge	$s6, $a0, .LBB3_99
# %bb.54:                               # %for.body109.lr.ph.i237
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	sub.w	$s4, $s8, $fp
	bge	$a4, $s4, .LBB3_98
# %bb.55:                               # %for.body109.us.preheader.i241
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $zero
	slli.d	$a0, $a4, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	mul.d	$a0, $s3, $a2
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	move	$s7, $s6
	.p2align	4, , 16
.LBB3_56:                               # %for.body109.us.i242
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_57 Depth 2
	slli.d	$a0, $s7, 3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	move	$s8, $fp
	move	$s5, $a4
	.p2align	4, , 16
.LBB3_57:                               # %for.body116.us.i246
                                        #   Parent Loop BB3_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s8
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 1
	addi.d	$s2, $s2, 2
	add.w	$s8, $s8, $s3
	blt	$s5, $s4, .LBB3_57
# %bb.58:                               # %for.cond112.for.end129_crit_edge.us.i255
                                        #   in Loop: Header=BB3_56 Depth=1
	addi.d	$s7, $s7, 1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	add.w	$fp, $fp, $a0
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	blt	$s7, $a0, .LBB3_56
# %bb.59:
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	b	.LBB3_100
.LBB3_60:                               # %if.else139
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 3012
	beqz	$a0, .LBB3_130
# %bb.61:                               # %if.then141
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s6, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1780
	ldx.w	$fp, $a0, $a1
	ld.wu	$a0, $s4, 12
	ori	$s6, $zero, 1
	addi.d	$s1, $s4, 72
	ld.wu	$a1, $s4, 8
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a2, $a0, 1
	srli.d	$a0, $a1, 31
	add.w	$a0, $a1, $a0
	srai.d	$a3, $a0, 1
	ori	$a1, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(get_mem3Dpel)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $s4, 12
	addi.w	$t5, $a0, 0
	ld.wu	$a1, $s4, 8
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$s2, $a0, 1
	addi.w	$t6, $a1, 0
	srli.d	$a0, $a1, 31
	add.w	$a1, $a1, $a0
	ori	$a0, $zero, 2
	srai.d	$s5, $a1, 1
	blt	$t5, $a0, .LBB3_87
# %bb.62:                               # %if.then141
	blt	$t6, $a0, .LBB3_87
# %bb.63:                               # %for.cond154.preheader.lr.ph.split.us
	ld.d	$a2, $s1, 0
	move	$a0, $zero
	addi.d	$a1, $fp, -1
	sll.w	$a1, $s6, $a1
	ld.d	$a2, $a2, 0
	bstrpick.d	$a3, $s5, 31, 0
	bstrpick.d	$a4, $s5, 29, 5
	slli.d	$a4, $a4, 5
	xvreplgr2vr.h	$xr0, $a1
	andi	$a5, $s5, 24
	bstrpick.d	$a6, $s5, 29, 3
	slli.d	$a6, $a6, 3
	vreplgr2vr.h	$vr1, $a1
	sub.d	$a7, $zero, $a6
	ori	$t0, $zero, 8
	ori	$t1, $zero, 32
	b	.LBB3_65
	.p2align	4, , 16
.LBB3_64:                               # %for.cond154.for.inc166_crit_edge.us
                                        #   in Loop: Header=BB3_65 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $s2, .LBB3_87
.LBB3_65:                               # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_70 Depth 2
                                        #     Child Loop BB3_74 Depth 2
                                        #     Child Loop BB3_77 Depth 2
	slli.d	$t2, $a0, 3
	ldx.d	$t2, $a2, $t2
	bgeu	$s5, $t0, .LBB3_67
# %bb.66:                               #   in Loop: Header=BB3_65 Depth=1
	move	$t3, $zero
	b	.LBB3_76
	.p2align	4, , 16
.LBB3_67:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_65 Depth=1
	bgeu	$s5, $t1, .LBB3_69
# %bb.68:                               #   in Loop: Header=BB3_65 Depth=1
	move	$t4, $zero
	b	.LBB3_73
	.p2align	4, , 16
.LBB3_69:                               # %vector.body.preheader
                                        #   in Loop: Header=BB3_65 Depth=1
	addi.d	$t3, $t2, 32
	move	$t4, $a4
	.p2align	4, , 16
.LBB3_70:                               # %vector.body
                                        #   Parent Loop BB3_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $t3, -32
	xvst	$xr0, $t3, 0
	addi.d	$t4, $t4, -32
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB3_70
# %bb.71:                               # %middle.block
                                        #   in Loop: Header=BB3_65 Depth=1
	beq	$a4, $a3, .LBB3_64
# %bb.72:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_65 Depth=1
	move	$t4, $a4
	move	$t3, $a4
	beqz	$a5, .LBB3_76
.LBB3_73:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB3_65 Depth=1
	add.d	$t3, $a7, $t4
	alsl.d	$t4, $t4, $t2, 1
	.p2align	4, , 16
.LBB3_74:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB3_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t4, 0
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 16
	bnez	$t3, .LBB3_74
# %bb.75:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_65 Depth=1
	move	$t3, $a6
	beq	$a6, $a3, .LBB3_64
.LBB3_76:                               # %for.body159.us.preheader
                                        #   in Loop: Header=BB3_65 Depth=1
	alsl.d	$t2, $t3, $t2, 1
	sub.d	$t3, $a3, $t3
	.p2align	4, , 16
.LBB3_77:                               # %for.body159.us
                                        #   Parent Loop BB3_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a1, $t2, 0
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, 2
	bnez	$t3, .LBB3_77
	b	.LBB3_64
.LBB3_78:                               # %if.end.i207
	move	$a0, $s5
	bstrins.d	$a0, $zero, 2, 0
	ori	$a1, $zero, 8
	move	$s1, $s3
	bne	$a0, $a1, .LBB3_53
# %bb.79:                               # %if.end.i207
	or	$a0, $fp, $a4
	or	$a0, $a0, $s6
	or	$a0, $a0, $a5
	move	$s1, $s3
	bnez	$a0, .LBB3_53
# %bb.80:                               # %for.cond134.preheader.i211
	ori	$a0, $zero, 1
	blt	$s8, $a0, .LBB3_99
# %bb.81:                               # %for.cond134.preheader.i211
	blt	$s2, $a0, .LBB3_99
# %bb.82:                               # %for.cond138.preheader.us.preheader.i215
	move	$a0, $zero
	slli.d	$a1, $s8, 1
	move	$a2, $s0
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_83:                               # %for.cond138.preheader.us.i218
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_84 Depth 2
	move	$a3, $zero
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 3
	.p2align	4, , 16
.LBB3_84:                               # %for.body141.us.i222
                                        #   Parent Loop BB3_83 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ldx.b	$a5, $a5, $a3
	st.b	$a5, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a2, $a2, 1
	bne	$a1, $a3, .LBB3_84
# %bb.85:                               # %for.cond138.for.inc150_crit_edge.us.i230
                                        #   in Loop: Header=BB3_83 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s2, .LBB3_83
# %bb.86:                               # %img2buf.exit263.loopexit403
	ld.w	$a0, $s4, 16
	ld.w	$s2, $s4, 20
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a2, $a0, $a1
	b	.LBB3_100
.LBB3_87:                               # %for.end168
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	srai.d	$a2, $a0, 1
	bstrpick.d	$a0, $s8, 31, 31
	add.w	$a0, $s8, $a0
	srai.d	$s4, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	srai.d	$s8, $a0, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a1, 31, 31
	add.w	$a0, $a1, $a0
	srai.d	$s7, $a0, 1
	add.d	$a0, $a2, $s4
	ori	$a1, $zero, 3
	sub.d	$a3, $s5, $a0
	bltu	$s3, $a1, .LBB3_119
# %bb.88:                               # %if.end.thread.i376
	add.d	$a0, $s8, $s7
	sub.d	$a0, $s2, $a0
	mul.d	$a0, $a0, $s3
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	mul.w	$a2, $a0, $a3
	move	$a0, $s0
	move	$a1, $zero
	move	$fp, $t5
	move	$s1, $t6
	move	$s6, $a3
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a3, $s6
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	move	$t6, $s1
	move	$t5, $fp
	ori	$s1, $zero, 2
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
.LBB3_89:                               # %for.cond105.preheader.i351
	sub.d	$a0, $s2, $s7
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bge	$s8, $a0, .LBB3_96
# %bb.90:                               # %for.body109.lr.ph.i355
	sub.d	$s5, $s5, $s4
	bge	$a2, $s5, .LBB3_96
# %bb.91:                               # %for.body109.us.preheader.i359
	st.d	$t6, $sp, 96                    # 8-byte Folded Spill
	st.d	$t5, $sp, 104                   # 8-byte Folded Spill
	move	$s7, $zero
	slli.d	$a0, $a2, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	mul.d	$a0, $s3, $a3
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_92:                               # %for.body109.us.i360
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_93 Depth 2
	slli.d	$a0, $s8, 3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ldx.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	move	$s4, $s7
	move	$fp, $a2
	move	$s6, $a2
	.p2align	4, , 16
.LBB3_93:                               # %for.body116.us.i364
                                        #   Parent Loop BB3_92 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s4
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 1
	addi.d	$s2, $s2, 2
	add.w	$s4, $s4, $s3
	blt	$s6, $s5, .LBB3_93
# %bb.94:                               # %for.cond112.for.end129_crit_edge.us.i373
                                        #   in Loop: Header=BB3_92 Depth=1
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$s7, $s7, $a0
	move	$a2, $fp
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	blt	$s8, $a0, .LBB3_92
# %bb.95:
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 96                    # 8-byte Folded Reload
	b	.LBB3_97
.LBB3_96:
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
.LBB3_97:                               # %img2buf.exit381
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a0, $t5, $s2
	mul.d	$a0, $a0, $s3
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a0, $a0, 1
	sub.w	$a1, $t6, $s6
	mul.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a2, $a0, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 12
	sub.w	$a0, $a0, $s2
	mul.d	$a0, $a0, $s3
	ld.w	$a1, $s1, 8
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	sub.w	$a1, $a1, $s6
	mul.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 31
	add.w	$a0, $a0, $a1
	srai.d	$a2, $a0, 1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 72
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(free_mem3Dpel)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 72
	b	.LBB3_130
.LBB3_98:
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
.LBB3_99:
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
.LBB3_100:                              # %img2buf.exit263
	sub.d	$a0, $s2, $s7
	mul.d	$a0, $a0, $s3
	mul.w	$a2, $a0, $a2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_130
# %bb.101:                              # %if.then123
	ld.d	$a0, $s4, 72
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.w	$s2, $s4, 16
	ld.w	$fp, $s4, 20
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	sub.d	$s8, $s2, $a1
	bltu	$s3, $a0, .LBB3_110
# %bb.102:                              # %if.end.thread.i317
	sub.d	$a0, $fp, $s7
	mul.d	$a1, $s8, $s3
	mul.w	$a2, $a1, $a0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
.LBB3_103:                              # %for.cond105.preheader.i292
	sub.w	$a0, $fp, $a3
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	bge	$s6, $a0, .LBB3_129
# %bb.104:                              # %for.body109.lr.ph.i296
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	sub.w	$fp, $s2, $a2
	bge	$a1, $fp, .LBB3_128
# %bb.105:                              # %for.body109.us.preheader.i300
	st.d	$s7, $sp, 40                    # 8-byte Folded Spill
	move	$s4, $zero
	slli.d	$a0, $a1, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s8, $sp, 96                    # 8-byte Folded Spill
	mul.d	$s5, $s3, $s8
	.p2align	4, , 16
.LBB3_106:                              # %for.body109.us.i301
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_107 Depth 2
	slli.d	$a0, $s6, 3
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ldx.d	$a0, $a2, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$s2, $a0, $a2
	move	$s8, $s4
	move	$s7, $a1
	.p2align	4, , 16
.LBB3_107:                              # %for.body116.us.i305
                                        #   Parent Loop BB3_106 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s0, $s8
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$s7, $s7, 1
	addi.d	$s2, $s2, 2
	add.w	$s8, $s8, $s3
	blt	$s7, $fp, .LBB3_107
# %bb.108:                              # %for.cond112.for.end129_crit_edge.us.i314
                                        #   in Loop: Header=BB3_106 Depth=1
	addi.d	$s6, $s6, 1
	add.w	$s4, $s4, $s5
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	blt	$s6, $a0, .LBB3_106
# %bb.109:
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 96                    # 8-byte Folded Reload
	b	.LBB3_129
.LBB3_110:                              # %if.end.i266
	bstrins.d	$s5, $zero, 2, 0
	ori	$a0, $zero, 8
	move	$s1, $s3
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bne	$s5, $a0, .LBB3_103
# %bb.111:                              # %if.end.i266
	or	$a0, $a2, $a1
	or	$a0, $a0, $s6
	or	$a0, $a0, $a3
	move	$s1, $s3
	bnez	$a0, .LBB3_103
# %bb.112:                              # %for.cond134.preheader.i270
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB3_129
# %bb.113:                              # %for.cond134.preheader.i270
	blt	$fp, $a0, .LBB3_129
# %bb.114:                              # %for.cond138.preheader.us.preheader.i274
	move	$a0, $zero
	slli.d	$a1, $s2, 1
	move	$a2, $s0
	.p2align	4, , 16
.LBB3_115:                              # %for.cond138.preheader.us.i277
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_116 Depth 2
	move	$a3, $zero
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a4, $a0, $a4, 3
	.p2align	4, , 16
.LBB3_116:                              # %for.body141.us.i281
                                        #   Parent Loop BB3_115 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a4, 0
	ldx.b	$a5, $a5, $a3
	st.b	$a5, $a2, 0
	addi.d	$a3, $a3, 2
	addi.d	$a2, $a2, 1
	bne	$a1, $a3, .LBB3_116
# %bb.117:                              # %for.cond138.for.inc150_crit_edge.us.i289
                                        #   in Loop: Header=BB3_115 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $fp, .LBB3_115
# %bb.118:                              # %img2buf.exit322.loopexit402
	ld.w	$a0, $s4, 16
	ld.w	$fp, $s4, 20
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	sub.d	$s8, $a0, $a1
	b	.LBB3_129
.LBB3_119:                              # %if.end.i325
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bstrins.d	$a1, $zero, 2, 0
	ori	$a0, $zero, 8
	move	$s1, $s3
	ld.d	$s6, $sp, 32                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB3_89
# %bb.120:                              # %if.end.i325
	or	$a0, $s8, $s7
	or	$a0, $a0, $s4
	or	$a0, $a0, $a2
	move	$s1, $s3
	bnez	$a0, .LBB3_89
# %bb.121:                              # %for.cond134.preheader.i329
	ori	$a0, $zero, 2
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	blt	$t5, $a0, .LBB3_97
# %bb.122:                              # %for.cond134.preheader.i329
	blt	$t6, $a0, .LBB3_97
# %bb.123:                              # %for.cond138.preheader.us.preheader.i333
	move	$a0, $zero
	move	$a1, $s0
	.p2align	4, , 16
.LBB3_124:                              # %for.cond138.preheader.us.i336
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_125 Depth 2
	move	$a2, $zero
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 3
	move	$a4, $s5
	.p2align	4, , 16
.LBB3_125:                              # %for.body141.us.i340
                                        #   Parent Loop BB3_124 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a5, $a3, 0
	ldx.b	$a5, $a5, $a2
	st.b	$a5, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 2
	bnez	$a4, .LBB3_125
# %bb.126:                              # %for.cond138.for.inc150_crit_edge.us.i348
                                        #   in Loop: Header=BB3_124 Depth=1
	addi.d	$a0, $a0, 1
	bne	$a0, $s2, .LBB3_124
# %bb.127:                              # %img2buf.exit381.loopexit400
	ld.w	$t5, $s1, 12
	ld.w	$t6, $s1, 8
	b	.LBB3_97
.LBB3_128:
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
.LBB3_129:                              # %img2buf.exit322
	sub.d	$a0, $fp, $s7
	mul.d	$a0, $a0, $s3
	mul.w	$a2, $a0, $s8
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write)
	jirl	$ra, $ra, 0
.LBB3_130:                              # %if.end206
	move	$a0, $s0
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end3:
	.size	write_out_picture, .Lfunc_end3-write_out_picture
                                        # -- End function
	.globl	init_out_buffer                 # -- Begin function init_out_buffer
	.p2align	5
	.type	init_out_buffer,@function
init_out_buffer:                        # @init_out_buffer
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(alloc_frame_store)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(out_buffer)
	st.d	$a0, $a1, %pc_lo12(out_buffer)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	init_out_buffer, .Lfunc_end4-init_out_buffer
                                        # -- End function
	.globl	uninit_out_buffer               # -- Begin function uninit_out_buffer
	.p2align	5
	.type	uninit_out_buffer,@function
uninit_out_buffer:                      # @uninit_out_buffer
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(out_buffer)
	ld.d	$a0, $fp, %pc_lo12(out_buffer)
	pcaddu18i	$ra, %call36(free_frame_store)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, %pc_lo12(out_buffer)
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	uninit_out_buffer, .Lfunc_end5-uninit_out_buffer
                                        # -- End function
	.globl	clear_picture                   # -- Begin function clear_picture
	.p2align	5
	.type	clear_picture,@function
clear_picture:                          # @clear_picture
# %bb.0:                                # %entry
	lu12i.w	$a1, 77
	ori	$a1, $a1, 1472
	add.d	$a1, $a0, $a1
	ld.w	$a2, $a1, 4
	ori	$a3, $zero, 1
	lu12i.w	$a0, 1
	blt	$a2, $a3, .LBB6_17
# %bb.1:                                # %for.cond1.preheader.lr.ph
	ld.w	$a4, $a1, 0
	blt	$a4, $a3, .LBB6_17
# %bb.2:                                # %for.cond1.preheader.lr.ph.split.us
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$a5, $a5, %got_pc_lo12(img)
	ld.d	$a6, $a5, 0
	move	$a5, $zero
	ori	$a7, $a0, 1796
	ldx.w	$a6, $a6, $a7
	ld.d	$a7, $a1, 56
	bstrpick.d	$t0, $a4, 30, 5
	slli.d	$t0, $t0, 5
	xvreplgr2vr.h	$xr0, $a6
	andi	$t1, $a4, 24
	bstrpick.d	$t2, $a4, 30, 3
	slli.d	$t2, $t2, 3
	vreplgr2vr.h	$vr1, $a6
	sub.d	$t3, $zero, $t2
	ori	$t4, $zero, 8
	ori	$t5, $zero, 32
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_3:                                # %for.cond1.for.inc6_crit_edge.us
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a5, $a2, .LBB6_17
.LBB6_4:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
                                        #     Child Loop BB6_13 Depth 2
                                        #     Child Loop BB6_16 Depth 2
	slli.d	$t6, $a5, 3
	ldx.d	$t6, $a7, $t6
	bgeu	$a4, $t4, .LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=1
	move	$t7, $zero
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	bgeu	$a4, $t5, .LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_4 Depth=1
	move	$t8, $zero
	b	.LBB6_12
	.p2align	4, , 16
.LBB6_8:                                # %vector.body.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$t7, $t6, 32
	move	$t8, $t0
	.p2align	4, , 16
.LBB6_9:                                # %vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $t7, -32
	xvst	$xr0, $t7, 0
	addi.d	$t8, $t8, -32
	addi.d	$t7, $t7, 64
	bnez	$t8, .LBB6_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	beq	$t0, $a4, .LBB6_3
# %bb.11:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$t8, $t0
	move	$t7, $t0
	beqz	$t1, .LBB6_15
.LBB6_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB6_4 Depth=1
	add.d	$t7, $t3, $t8
	alsl.d	$t8, $t8, $t6, 1
	.p2align	4, , 16
.LBB6_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t8, 0
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 16
	bnez	$t7, .LBB6_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$t7, $t2
	beq	$t2, $a4, .LBB6_3
.LBB6_15:                               # %for.body3.us.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	alsl.d	$t6, $t7, $t6, 1
	sub.d	$t7, $a4, $t7
	.p2align	4, , 16
.LBB6_16:                               # %for.body3.us
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a6, $t6, 0
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 2
	bnez	$t7, .LBB6_16
	b	.LBB6_3
.LBB6_17:                               # %for.cond9.preheader
	ld.w	$a2, $a1, 12
	blt	$a2, $a3, .LBB6_50
# %bb.18:                               # %for.cond13.preheader.lr.ph
	ld.w	$a4, $a1, 8
	ori	$a3, $zero, 1
	blt	$a4, $a3, .LBB6_34
# %bb.19:                               # %for.cond13.preheader.lr.ph.split.us
	pcalau12i	$a5, %got_pc_hi20(img)
	ld.d	$a5, $a5, %got_pc_lo12(img)
	ld.d	$a6, $a5, 0
	ld.d	$a7, $a1, 64
	move	$a5, $zero
	ori	$t0, $a0, 1800
	ldx.w	$a6, $a6, $t0
	ld.d	$a7, $a7, 0
	bstrpick.d	$t0, $a4, 30, 5
	slli.d	$t0, $t0, 5
	xvreplgr2vr.h	$xr0, $a6
	andi	$t1, $a4, 24
	bstrpick.d	$t2, $a4, 30, 3
	slli.d	$t2, $t2, 3
	vreplgr2vr.h	$vr1, $a6
	sub.d	$t3, $zero, $t2
	ori	$t4, $zero, 8
	ori	$t5, $zero, 32
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_20:                               # %for.cond13.for.inc26_crit_edge.us
                                        #   in Loop: Header=BB6_21 Depth=1
	addi.d	$a5, $a5, 1
	beq	$a5, $a2, .LBB6_34
.LBB6_21:                               # %iter.check71
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_26 Depth 2
                                        #     Child Loop BB6_30 Depth 2
                                        #     Child Loop BB6_33 Depth 2
	slli.d	$t6, $a5, 3
	ldx.d	$t6, $a7, $t6
	bgeu	$a4, $t4, .LBB6_23
# %bb.22:                               #   in Loop: Header=BB6_21 Depth=1
	move	$t7, $zero
	b	.LBB6_32
	.p2align	4, , 16
.LBB6_23:                               # %vector.main.loop.iter.check73
                                        #   in Loop: Header=BB6_21 Depth=1
	bgeu	$a4, $t5, .LBB6_25
# %bb.24:                               #   in Loop: Header=BB6_21 Depth=1
	move	$t8, $zero
	b	.LBB6_29
	.p2align	4, , 16
.LBB6_25:                               # %vector.body79.preheader
                                        #   in Loop: Header=BB6_21 Depth=1
	addi.d	$t7, $t6, 32
	move	$t8, $t0
	.p2align	4, , 16
.LBB6_26:                               # %vector.body79
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $t7, -32
	xvst	$xr0, $t7, 0
	addi.d	$t8, $t8, -32
	addi.d	$t7, $t7, 64
	bnez	$t8, .LBB6_26
# %bb.27:                               # %middle.block82
                                        #   in Loop: Header=BB6_21 Depth=1
	beq	$t0, $a4, .LBB6_20
# %bb.28:                               # %vec.epilog.iter.check87
                                        #   in Loop: Header=BB6_21 Depth=1
	move	$t8, $t0
	move	$t7, $t0
	beqz	$t1, .LBB6_32
.LBB6_29:                               # %vec.epilog.ph86
                                        #   in Loop: Header=BB6_21 Depth=1
	add.d	$t7, $t3, $t8
	alsl.d	$t8, $t8, $t6, 1
	.p2align	4, , 16
.LBB6_30:                               # %vec.epilog.vector.body94
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t8, 0
	addi.d	$t7, $t7, 8
	addi.d	$t8, $t8, 16
	bnez	$t7, .LBB6_30
# %bb.31:                               # %vec.epilog.middle.block97
                                        #   in Loop: Header=BB6_21 Depth=1
	move	$t7, $t2
	beq	$t2, $a4, .LBB6_20
.LBB6_32:                               # %for.body16.us.preheader
                                        #   in Loop: Header=BB6_21 Depth=1
	alsl.d	$t6, $t7, $t6, 1
	sub.d	$t7, $a4, $t7
	.p2align	4, , 16
.LBB6_33:                               # %for.body16.us
                                        #   Parent Loop BB6_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a6, $t6, 0
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 2
	bnez	$t7, .LBB6_33
	b	.LBB6_20
.LBB6_34:                               # %for.cond34.preheader.lr.ph
	ld.w	$a4, $a1, 8
	blt	$a4, $a3, .LBB6_50
# %bb.35:                               # %for.cond34.preheader.lr.ph.split.us
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a3, $a3, 0
	ld.d	$a5, $a1, 64
	move	$a1, $zero
	ori	$a0, $a0, 1800
	ldx.w	$a0, $a3, $a0
	ld.d	$a3, $a5, 8
	bstrpick.d	$a5, $a4, 30, 5
	slli.d	$a5, $a5, 5
	xvreplgr2vr.h	$xr0, $a0
	andi	$a6, $a4, 24
	bstrpick.d	$a7, $a4, 30, 3
	slli.d	$a7, $a7, 3
	vreplgr2vr.h	$vr1, $a0
	sub.d	$t0, $zero, $a7
	ori	$t1, $zero, 8
	ori	$t2, $zero, 32
	b	.LBB6_37
	.p2align	4, , 16
.LBB6_36:                               # %for.cond34.for.inc50_crit_edge.us
                                        #   in Loop: Header=BB6_37 Depth=1
	addi.d	$a1, $a1, 1
	beq	$a1, $a2, .LBB6_50
.LBB6_37:                               # %iter.check102
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_42 Depth 2
                                        #     Child Loop BB6_46 Depth 2
                                        #     Child Loop BB6_49 Depth 2
	slli.d	$t3, $a1, 3
	ldx.d	$t3, $a3, $t3
	bgeu	$a4, $t1, .LBB6_39
# %bb.38:                               #   in Loop: Header=BB6_37 Depth=1
	move	$t4, $zero
	b	.LBB6_48
	.p2align	4, , 16
.LBB6_39:                               # %vector.main.loop.iter.check104
                                        #   in Loop: Header=BB6_37 Depth=1
	bgeu	$a4, $t2, .LBB6_41
# %bb.40:                               #   in Loop: Header=BB6_37 Depth=1
	move	$t5, $zero
	b	.LBB6_45
	.p2align	4, , 16
.LBB6_41:                               # %vector.body110.preheader
                                        #   in Loop: Header=BB6_37 Depth=1
	addi.d	$t4, $t3, 32
	move	$t5, $a5
	.p2align	4, , 16
.LBB6_42:                               # %vector.body110
                                        #   Parent Loop BB6_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $t4, -32
	xvst	$xr0, $t4, 0
	addi.d	$t5, $t5, -32
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB6_42
# %bb.43:                               # %middle.block113
                                        #   in Loop: Header=BB6_37 Depth=1
	beq	$a5, $a4, .LBB6_36
# %bb.44:                               # %vec.epilog.iter.check118
                                        #   in Loop: Header=BB6_37 Depth=1
	move	$t5, $a5
	move	$t4, $a5
	beqz	$a6, .LBB6_48
.LBB6_45:                               # %vec.epilog.ph117
                                        #   in Loop: Header=BB6_37 Depth=1
	add.d	$t4, $t0, $t5
	alsl.d	$t5, $t5, $t3, 1
	.p2align	4, , 16
.LBB6_46:                               # %vec.epilog.vector.body125
                                        #   Parent Loop BB6_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t5, 0
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB6_46
# %bb.47:                               # %vec.epilog.middle.block128
                                        #   in Loop: Header=BB6_37 Depth=1
	move	$t4, $a7
	beq	$a7, $a4, .LBB6_36
.LBB6_48:                               # %for.body38.us.preheader
                                        #   in Loop: Header=BB6_37 Depth=1
	alsl.d	$t3, $t4, $t3, 1
	sub.d	$t4, $a4, $t4
	.p2align	4, , 16
.LBB6_49:                               # %for.body38.us
                                        #   Parent Loop BB6_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a0, $t3, 0
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 2
	bnez	$t4, .LBB6_49
	b	.LBB6_36
.LBB6_50:                               # %for.end52
	ret
.Lfunc_end6:
	.size	clear_picture, .Lfunc_end6-clear_picture
                                        # -- End function
	.globl	write_unpaired_field            # -- Begin function write_unpaired_field
	.p2align	5
	.type	write_unpaired_field,@function
write_unpaired_field:                   # @write_unpaired_field
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
	move	$fp, $a0
	ld.wu	$a0, $a0, 0
	andi	$a2, $a0, 1
	move	$s0, $a1
	beqz	$a2, .LBB7_51
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 56
	lu12i.w	$a1, 77
	ori	$s1, $a1, 1472
	add.d	$s2, $a0, $s1
	ldx.w	$a1, $a0, $s1
	ld.w	$a0, $s2, 4
	ld.w	$a4, $s2, 12
	ld.w	$a3, $s2, 8
	slli.w	$a2, $a0, 1
	slli.w	$a4, $a4, 1
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	add.d	$a2, $a0, $s1
	ld.w	$a4, $s2, 180
	ld.w	$a3, $a2, 4
	st.d	$a0, $fp, 64
	ori	$a1, $zero, 1
	st.w	$a4, $a2, 180
	blt	$a3, $a1, .LBB7_18
# %bb.2:                                # %for.cond1.preheader.lr.ph.i
	ld.w	$a0, $a2, 0
	blt	$a0, $a1, .LBB7_18
# %bb.3:                                # %for.cond1.preheader.lr.ph.split.us.i
	pcalau12i	$a4, %got_pc_hi20(img)
	ld.d	$a4, $a4, %got_pc_lo12(img)
	ld.d	$a5, $a4, 0
	move	$a4, $zero
	lu12i.w	$a6, 1
	ori	$a6, $a6, 1796
	ldx.w	$a5, $a5, $a6
	ld.d	$a6, $a2, 56
	bstrpick.d	$a7, $a0, 30, 5
	slli.d	$a7, $a7, 5
	xvreplgr2vr.h	$xr0, $a5
	andi	$t0, $a0, 24
	bstrpick.d	$t1, $a0, 30, 3
	slli.d	$t1, $t1, 3
	vreplgr2vr.h	$vr1, $a5
	sub.d	$t2, $zero, $t1
	ori	$t3, $zero, 8
	ori	$t4, $zero, 32
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_4:                                # %for.cond1.for.inc6_crit_edge.us.i
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$a4, $a4, 1
	beq	$a4, $a3, .LBB7_18
.LBB7_5:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_10 Depth 2
                                        #     Child Loop BB7_14 Depth 2
                                        #     Child Loop BB7_17 Depth 2
	slli.d	$t5, $a4, 3
	ldx.d	$t5, $a6, $t5
	bgeu	$a0, $t3, .LBB7_7
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	move	$t7, $zero
	b	.LBB7_16
	.p2align	4, , 16
.LBB7_7:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB7_5 Depth=1
	bgeu	$a0, $t4, .LBB7_9
# %bb.8:                                #   in Loop: Header=BB7_5 Depth=1
	move	$t8, $zero
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_9:                                # %vector.body.preheader
                                        #   in Loop: Header=BB7_5 Depth=1
	addi.d	$t6, $t5, 32
	move	$t7, $a7
	.p2align	4, , 16
.LBB7_10:                               # %vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $t6, -32
	xvst	$xr0, $t6, 0
	addi.d	$t7, $t7, -32
	addi.d	$t6, $t6, 64
	bnez	$t7, .LBB7_10
# %bb.11:                               # %middle.block
                                        #   in Loop: Header=BB7_5 Depth=1
	beq	$a7, $a0, .LBB7_4
# %bb.12:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB7_5 Depth=1
	move	$t8, $a7
	move	$t7, $a7
	beqz	$t0, .LBB7_16
.LBB7_13:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB7_5 Depth=1
	add.d	$t6, $t2, $t8
	alsl.d	$t7, $t8, $t5, 1
	.p2align	4, , 16
.LBB7_14:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t7, 0
	addi.d	$t6, $t6, 8
	addi.d	$t7, $t7, 16
	bnez	$t6, .LBB7_14
# %bb.15:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB7_5 Depth=1
	move	$t7, $t1
	beq	$t1, $a0, .LBB7_4
.LBB7_16:                               # %for.body3.us.i.preheader
                                        #   in Loop: Header=BB7_5 Depth=1
	sub.d	$t6, $a0, $t7
	alsl.d	$t5, $t7, $t5, 1
	.p2align	4, , 16
.LBB7_17:                               # %for.body3.us.i
                                        #   Parent Loop BB7_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a5, $t5, 0
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 2
	bnez	$t6, .LBB7_17
	b	.LBB7_4
.LBB7_18:                               # %for.cond9.preheader.i
	ld.w	$a0, $a2, 12
	blt	$a0, $a1, .LBB7_50
# %bb.19:                               # %for.cond13.preheader.lr.ph.i
	ld.w	$a1, $a2, 8
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB7_50
# %bb.20:                               # %for.cond13.preheader.lr.ph.split.us.i
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	move	$a7, $zero
	ld.d	$a5, $a3, 0
	ld.d	$a4, $a2, 64
	lu12i.w	$a2, 1
	ori	$t0, $a2, 1800
	ldx.w	$t1, $a5, $t0
	ld.d	$t2, $a4, 0
	bstrpick.d	$a5, $a1, 30, 5
	slli.d	$t3, $a5, 5
	xvreplgr2vr.h	$xr0, $t1
	andi	$a2, $a1, 24
	bstrpick.d	$a6, $a1, 30, 3
	slli.d	$t4, $a6, 3
	vreplgr2vr.h	$vr1, $t1
	sub.d	$t5, $zero, $t4
	ori	$t6, $zero, 8
	ori	$t7, $zero, 32
	b	.LBB7_22
	.p2align	4, , 16
.LBB7_21:                               # %for.cond13.for.inc26_crit_edge.us.i
                                        #   in Loop: Header=BB7_22 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a0, .LBB7_35
.LBB7_22:                               # %iter.check114
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_27 Depth 2
                                        #     Child Loop BB7_31 Depth 2
                                        #     Child Loop BB7_34 Depth 2
	slli.d	$t8, $a7, 3
	ldx.d	$t8, $t2, $t8
	bgeu	$a1, $t6, .LBB7_24
# %bb.23:                               #   in Loop: Header=BB7_22 Depth=1
	move	$s2, $zero
	b	.LBB7_33
	.p2align	4, , 16
.LBB7_24:                               # %vector.main.loop.iter.check116
                                        #   in Loop: Header=BB7_22 Depth=1
	bgeu	$a1, $t7, .LBB7_26
# %bb.25:                               #   in Loop: Header=BB7_22 Depth=1
	move	$s3, $zero
	b	.LBB7_30
	.p2align	4, , 16
.LBB7_26:                               # %vector.body122.preheader
                                        #   in Loop: Header=BB7_22 Depth=1
	addi.d	$s1, $t8, 32
	move	$s2, $t3
	.p2align	4, , 16
.LBB7_27:                               # %vector.body122
                                        #   Parent Loop BB7_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $s1, -32
	xvst	$xr0, $s1, 0
	addi.d	$s2, $s2, -32
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB7_27
# %bb.28:                               # %middle.block125
                                        #   in Loop: Header=BB7_22 Depth=1
	beq	$t3, $a1, .LBB7_21
# %bb.29:                               # %vec.epilog.iter.check130
                                        #   in Loop: Header=BB7_22 Depth=1
	move	$s3, $t3
	move	$s2, $t3
	beqz	$a2, .LBB7_33
.LBB7_30:                               # %vec.epilog.ph129
                                        #   in Loop: Header=BB7_22 Depth=1
	add.d	$s1, $t5, $s3
	alsl.d	$s2, $s3, $t8, 1
	.p2align	4, , 16
.LBB7_31:                               # %vec.epilog.vector.body137
                                        #   Parent Loop BB7_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $s2, 0
	addi.d	$s1, $s1, 8
	addi.d	$s2, $s2, 16
	bnez	$s1, .LBB7_31
# %bb.32:                               # %vec.epilog.middle.block140
                                        #   in Loop: Header=BB7_22 Depth=1
	move	$s2, $t4
	beq	$t4, $a1, .LBB7_21
.LBB7_33:                               # %for.body16.us.i.preheader
                                        #   in Loop: Header=BB7_22 Depth=1
	sub.d	$s1, $a1, $s2
	alsl.d	$t8, $s2, $t8, 1
	.p2align	4, , 16
.LBB7_34:                               # %for.body16.us.i
                                        #   Parent Loop BB7_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t1, $t8, 0
	addi.d	$s1, $s1, -1
	addi.d	$t8, $t8, 2
	bnez	$s1, .LBB7_34
	b	.LBB7_21
.LBB7_35:                               # %for.cond34.preheader.lr.ph.split.us.i
	ld.d	$a3, $a3, 0
	ldx.w	$a3, $a3, $t0
	move	$a7, $zero
	ld.d	$a4, $a4, 8
	slli.d	$a5, $a5, 5
	xvreplgr2vr.h	$xr0, $a3
	slli.d	$a6, $a6, 3
	vreplgr2vr.h	$vr1, $a3
	sub.d	$t0, $zero, $a6
	ori	$t1, $zero, 8
	ori	$t2, $zero, 32
	b	.LBB7_37
	.p2align	4, , 16
.LBB7_36:                               # %for.cond34.for.inc50_crit_edge.us.i
                                        #   in Loop: Header=BB7_37 Depth=1
	addi.d	$a7, $a7, 1
	beq	$a7, $a0, .LBB7_50
.LBB7_37:                               # %iter.check145
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_42 Depth 2
                                        #     Child Loop BB7_46 Depth 2
                                        #     Child Loop BB7_49 Depth 2
	slli.d	$t3, $a7, 3
	ldx.d	$t3, $a4, $t3
	bgeu	$a1, $t1, .LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_37 Depth=1
	move	$t5, $zero
	b	.LBB7_48
	.p2align	4, , 16
.LBB7_39:                               # %vector.main.loop.iter.check147
                                        #   in Loop: Header=BB7_37 Depth=1
	bgeu	$a1, $t2, .LBB7_41
# %bb.40:                               #   in Loop: Header=BB7_37 Depth=1
	move	$t6, $zero
	b	.LBB7_45
	.p2align	4, , 16
.LBB7_41:                               # %vector.body153.preheader
                                        #   in Loop: Header=BB7_37 Depth=1
	addi.d	$t4, $t3, 32
	move	$t5, $a5
	.p2align	4, , 16
.LBB7_42:                               # %vector.body153
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $t4, -32
	xvst	$xr0, $t4, 0
	addi.d	$t5, $t5, -32
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB7_42
# %bb.43:                               # %middle.block156
                                        #   in Loop: Header=BB7_37 Depth=1
	beq	$a5, $a1, .LBB7_36
# %bb.44:                               # %vec.epilog.iter.check161
                                        #   in Loop: Header=BB7_37 Depth=1
	move	$t6, $a5
	move	$t5, $a5
	beqz	$a2, .LBB7_48
.LBB7_45:                               # %vec.epilog.ph160
                                        #   in Loop: Header=BB7_37 Depth=1
	add.d	$t4, $t0, $t6
	alsl.d	$t5, $t6, $t3, 1
	.p2align	4, , 16
.LBB7_46:                               # %vec.epilog.vector.body168
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t5, 0
	addi.d	$t4, $t4, 8
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB7_46
# %bb.47:                               # %vec.epilog.middle.block171
                                        #   in Loop: Header=BB7_37 Depth=1
	move	$t5, $a6
	beq	$a6, $a1, .LBB7_36
.LBB7_48:                               # %for.body38.us.i.preheader
                                        #   in Loop: Header=BB7_37 Depth=1
	sub.d	$t4, $a1, $t5
	alsl.d	$t3, $t5, $t3, 1
	.p2align	4, , 16
.LBB7_49:                               # %for.body38.us.i
                                        #   Parent Loop BB7_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a3, $t3, 0
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, 2
	bnez	$t4, .LBB7_49
	b	.LBB7_36
.LBB7_50:                               # %clear_picture.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dpb_combine_field_yuv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
.LBB7_51:                               # %if.end
	andi	$a0, $a0, 2
	beqz	$a0, .LBB7_104
# %bb.52:                               # %if.then8
	ld.d	$a0, $fp, 64
	lu12i.w	$s1, 77
	ori	$s3, $s1, 1472
	add.d	$s4, $a0, $s3
	ldx.w	$a1, $a0, $s3
	ld.w	$a0, $s4, 4
	ld.w	$a4, $s4, 12
	ld.w	$a3, $s4, 8
	slli.w	$a2, $a0, 1
	slli.w	$a4, $a4, 1
	ori	$a0, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(alloc_storable_picture)
	jirl	$ra, $ra, 0
	add.d	$a1, $a0, $s3
	ld.w	$a3, $s4, 180
	ld.w	$a2, $a1, 4
	st.d	$a0, $fp, 56
	st.w	$a3, $a1, 180
	blt	$a2, $s2, .LBB7_69
# %bb.53:                               # %for.cond1.preheader.lr.ph.i83
	ld.w	$a0, $a1, 0
	blt	$a0, $s2, .LBB7_69
# %bb.54:                               # %for.cond1.preheader.lr.ph.split.us.i86
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a3, $a3, %got_pc_lo12(img)
	ld.d	$a4, $a3, 0
	move	$a3, $zero
	lu12i.w	$a5, 1
	ori	$a5, $a5, 1796
	ldx.w	$a4, $a4, $a5
	ld.d	$a5, $a1, 56
	bstrpick.d	$a6, $a0, 30, 5
	slli.d	$a6, $a6, 5
	xvreplgr2vr.h	$xr0, $a4
	andi	$a7, $a0, 24
	bstrpick.d	$t0, $a0, 30, 3
	slli.d	$t0, $t0, 3
	vreplgr2vr.h	$vr1, $a4
	sub.d	$t1, $zero, $t0
	ori	$t2, $zero, 8
	ori	$t3, $zero, 32
	b	.LBB7_56
	.p2align	4, , 16
.LBB7_55:                               # %for.cond1.for.inc6_crit_edge.us.i100
                                        #   in Loop: Header=BB7_56 Depth=1
	addi.d	$a3, $a3, 1
	beq	$a3, $a2, .LBB7_69
.LBB7_56:                               # %iter.check176
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_61 Depth 2
                                        #     Child Loop BB7_65 Depth 2
                                        #     Child Loop BB7_68 Depth 2
	slli.d	$t4, $a3, 3
	ldx.d	$t4, $a5, $t4
	bgeu	$a0, $t2, .LBB7_58
# %bb.57:                               #   in Loop: Header=BB7_56 Depth=1
	move	$t6, $zero
	b	.LBB7_67
	.p2align	4, , 16
.LBB7_58:                               # %vector.main.loop.iter.check178
                                        #   in Loop: Header=BB7_56 Depth=1
	bgeu	$a0, $t3, .LBB7_60
# %bb.59:                               #   in Loop: Header=BB7_56 Depth=1
	move	$t7, $zero
	b	.LBB7_64
	.p2align	4, , 16
.LBB7_60:                               # %vector.body184.preheader
                                        #   in Loop: Header=BB7_56 Depth=1
	addi.d	$t5, $t4, 32
	move	$t6, $a6
	.p2align	4, , 16
.LBB7_61:                               # %vector.body184
                                        #   Parent Loop BB7_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $t5, -32
	xvst	$xr0, $t5, 0
	addi.d	$t6, $t6, -32
	addi.d	$t5, $t5, 64
	bnez	$t6, .LBB7_61
# %bb.62:                               # %middle.block187
                                        #   in Loop: Header=BB7_56 Depth=1
	beq	$a6, $a0, .LBB7_55
# %bb.63:                               # %vec.epilog.iter.check192
                                        #   in Loop: Header=BB7_56 Depth=1
	move	$t7, $a6
	move	$t6, $a6
	beqz	$a7, .LBB7_67
.LBB7_64:                               # %vec.epilog.ph191
                                        #   in Loop: Header=BB7_56 Depth=1
	add.d	$t5, $t1, $t7
	alsl.d	$t6, $t7, $t4, 1
	.p2align	4, , 16
.LBB7_65:                               # %vec.epilog.vector.body199
                                        #   Parent Loop BB7_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t6, 0
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 16
	bnez	$t5, .LBB7_65
# %bb.66:                               # %vec.epilog.middle.block202
                                        #   in Loop: Header=BB7_56 Depth=1
	move	$t6, $t0
	beq	$t0, $a0, .LBB7_55
.LBB7_67:                               # %for.body3.us.i95.preheader
                                        #   in Loop: Header=BB7_56 Depth=1
	sub.d	$t5, $a0, $t6
	alsl.d	$t4, $t6, $t4, 1
	.p2align	4, , 16
.LBB7_68:                               # %for.body3.us.i95
                                        #   Parent Loop BB7_56 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a4, $t4, 0
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 2
	bnez	$t5, .LBB7_68
	b	.LBB7_55
.LBB7_69:                               # %for.cond9.preheader.i38
	ld.w	$a0, $a1, 12
	blt	$a0, $s2, .LBB7_101
# %bb.70:                               # %for.cond13.preheader.lr.ph.i41
	ld.w	$a2, $a1, 8
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB7_101
# %bb.71:                               # %for.cond13.preheader.lr.ph.split.us.i65
	pcalau12i	$a3, %got_pc_hi20(img)
	ld.d	$a4, $a3, %got_pc_lo12(img)
	move	$t0, $zero
	ld.d	$a3, $a4, 0
	ld.d	$a5, $a1, 64
	lu12i.w	$a6, 1
	ori	$t1, $a6, 1800
	ldx.w	$t2, $a3, $t1
	ld.d	$t3, $a5, 0
	bstrpick.d	$a6, $a2, 30, 5
	slli.d	$t4, $a6, 5
	xvreplgr2vr.h	$xr0, $t2
	andi	$a3, $a2, 24
	bstrpick.d	$a7, $a2, 30, 3
	slli.d	$t5, $a7, 3
	vreplgr2vr.h	$vr1, $t2
	sub.d	$t6, $zero, $t5
	ori	$t7, $zero, 8
	ori	$t8, $zero, 32
	b	.LBB7_73
	.p2align	4, , 16
.LBB7_72:                               # %for.cond13.for.inc26_crit_edge.us.i79
                                        #   in Loop: Header=BB7_73 Depth=1
	addi.d	$t0, $t0, 1
	beq	$t0, $a0, .LBB7_86
.LBB7_73:                               # %iter.check207
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_78 Depth 2
                                        #     Child Loop BB7_82 Depth 2
                                        #     Child Loop BB7_85 Depth 2
	slli.d	$s2, $t0, 3
	ldx.d	$s2, $t3, $s2
	bgeu	$a2, $t7, .LBB7_75
# %bb.74:                               #   in Loop: Header=BB7_73 Depth=1
	move	$s4, $zero
	b	.LBB7_84
	.p2align	4, , 16
.LBB7_75:                               # %vector.main.loop.iter.check209
                                        #   in Loop: Header=BB7_73 Depth=1
	bgeu	$a2, $t8, .LBB7_77
# %bb.76:                               #   in Loop: Header=BB7_73 Depth=1
	move	$s5, $zero
	b	.LBB7_81
	.p2align	4, , 16
.LBB7_77:                               # %vector.body215.preheader
                                        #   in Loop: Header=BB7_73 Depth=1
	addi.d	$s3, $s2, 32
	move	$s4, $t4
	.p2align	4, , 16
.LBB7_78:                               # %vector.body215
                                        #   Parent Loop BB7_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $s3, -32
	xvst	$xr0, $s3, 0
	addi.d	$s4, $s4, -32
	addi.d	$s3, $s3, 64
	bnez	$s4, .LBB7_78
# %bb.79:                               # %middle.block218
                                        #   in Loop: Header=BB7_73 Depth=1
	beq	$t4, $a2, .LBB7_72
# %bb.80:                               # %vec.epilog.iter.check223
                                        #   in Loop: Header=BB7_73 Depth=1
	move	$s5, $t4
	move	$s4, $t4
	beqz	$a3, .LBB7_84
.LBB7_81:                               # %vec.epilog.ph222
                                        #   in Loop: Header=BB7_73 Depth=1
	add.d	$s3, $t6, $s5
	alsl.d	$s4, $s5, $s2, 1
	.p2align	4, , 16
.LBB7_82:                               # %vec.epilog.vector.body230
                                        #   Parent Loop BB7_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $s4, 0
	addi.d	$s3, $s3, 8
	addi.d	$s4, $s4, 16
	bnez	$s3, .LBB7_82
# %bb.83:                               # %vec.epilog.middle.block233
                                        #   in Loop: Header=BB7_73 Depth=1
	move	$s4, $t5
	beq	$t5, $a2, .LBB7_72
.LBB7_84:                               # %for.body16.us.i74.preheader
                                        #   in Loop: Header=BB7_73 Depth=1
	sub.d	$s3, $a2, $s4
	alsl.d	$s2, $s4, $s2, 1
	.p2align	4, , 16
.LBB7_85:                               # %for.body16.us.i74
                                        #   Parent Loop BB7_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t2, $s2, 0
	addi.d	$s3, $s3, -1
	addi.d	$s2, $s2, 2
	bnez	$s3, .LBB7_85
	b	.LBB7_72
.LBB7_86:                               # %for.cond34.preheader.lr.ph.split.us.i47
	ld.d	$a4, $a4, 0
	ldx.w	$a4, $a4, $t1
	move	$t0, $zero
	ld.d	$a5, $a5, 8
	slli.d	$a6, $a6, 5
	xvreplgr2vr.h	$xr0, $a4
	slli.d	$a7, $a7, 3
	vreplgr2vr.h	$vr1, $a4
	sub.d	$t1, $zero, $a7
	ori	$t2, $zero, 8
	ori	$t3, $zero, 32
	b	.LBB7_88
	.p2align	4, , 16
.LBB7_87:                               # %for.cond34.for.inc50_crit_edge.us.i62
                                        #   in Loop: Header=BB7_88 Depth=1
	addi.d	$t0, $t0, 1
	beq	$t0, $a0, .LBB7_101
.LBB7_88:                               # %iter.check238
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_93 Depth 2
                                        #     Child Loop BB7_97 Depth 2
                                        #     Child Loop BB7_100 Depth 2
	slli.d	$t4, $t0, 3
	ldx.d	$t4, $a5, $t4
	bgeu	$a2, $t2, .LBB7_90
# %bb.89:                               #   in Loop: Header=BB7_88 Depth=1
	move	$t6, $zero
	b	.LBB7_99
	.p2align	4, , 16
.LBB7_90:                               # %vector.main.loop.iter.check240
                                        #   in Loop: Header=BB7_88 Depth=1
	bgeu	$a2, $t3, .LBB7_92
# %bb.91:                               #   in Loop: Header=BB7_88 Depth=1
	move	$t7, $zero
	b	.LBB7_96
	.p2align	4, , 16
.LBB7_92:                               # %vector.body246.preheader
                                        #   in Loop: Header=BB7_88 Depth=1
	addi.d	$t5, $t4, 32
	move	$t6, $a6
	.p2align	4, , 16
.LBB7_93:                               # %vector.body246
                                        #   Parent Loop BB7_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvst	$xr0, $t5, -32
	xvst	$xr0, $t5, 0
	addi.d	$t6, $t6, -32
	addi.d	$t5, $t5, 64
	bnez	$t6, .LBB7_93
# %bb.94:                               # %middle.block249
                                        #   in Loop: Header=BB7_88 Depth=1
	beq	$a6, $a2, .LBB7_87
# %bb.95:                               # %vec.epilog.iter.check254
                                        #   in Loop: Header=BB7_88 Depth=1
	move	$t7, $a6
	move	$t6, $a6
	beqz	$a3, .LBB7_99
.LBB7_96:                               # %vec.epilog.ph253
                                        #   in Loop: Header=BB7_88 Depth=1
	add.d	$t5, $t1, $t7
	alsl.d	$t6, $t7, $t4, 1
	.p2align	4, , 16
.LBB7_97:                               # %vec.epilog.vector.body261
                                        #   Parent Loop BB7_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr1, $t6, 0
	addi.d	$t5, $t5, 8
	addi.d	$t6, $t6, 16
	bnez	$t5, .LBB7_97
# %bb.98:                               # %vec.epilog.middle.block264
                                        #   in Loop: Header=BB7_88 Depth=1
	move	$t6, $a7
	beq	$a7, $a2, .LBB7_87
.LBB7_99:                               # %for.body38.us.i57.preheader
                                        #   in Loop: Header=BB7_88 Depth=1
	sub.d	$t5, $a2, $t6
	alsl.d	$t4, $t6, $t4, 1
	.p2align	4, , 16
.LBB7_100:                              # %for.body38.us.i57
                                        #   Parent Loop BB7_88 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$a4, $t4, 0
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 2
	bnez	$t5, .LBB7_100
	b	.LBB7_87
.LBB7_101:                              # %clear_picture.exit103
	ld.d	$a0, $fp, 64
	ori	$a2, $s1, 1660
	ldx.w	$a3, $a0, $a2
	st.w	$a3, $a1, 188
	beqz	$a3, .LBB7_103
# %bb.102:                              # %if.then28
	add.d	$a0, $a0, $a2
	vld	$vr0, $a0, 4
	vst	$vr0, $a1, 192
.LBB7_103:                              # %if.end41
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dpb_combine_field_yuv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
.LBB7_104:                              # %if.end43
	ori	$a0, $zero, 3
	st.w	$a0, $fp, 0
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
.Lfunc_end7:
	.size	write_unpaired_field, .Lfunc_end7-write_unpaired_field
                                        # -- End function
	.globl	flush_direct_output             # -- Begin function flush_direct_output
	.p2align	5
	.type	flush_direct_output,@function
flush_direct_output:                    # @flush_direct_output
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$fp, %pc_hi20(out_buffer)
	ld.d	$a1, $fp, %pc_lo12(out_buffer)
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 64
	st.d	$zero, $a1, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, %pc_lo12(out_buffer)
	st.d	$zero, $a0, 64
	st.w	$zero, $a0, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	flush_direct_output, .Lfunc_end8-flush_direct_output
                                        # -- End function
	.globl	write_stored_frame              # -- Begin function write_stored_frame
	.p2align	5
	.type	write_stored_frame,@function
write_stored_frame:                     # @write_stored_frame
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(out_buffer)
	ld.d	$a2, $s1, %pc_lo12(out_buffer)
	move	$s0, $a1
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 64
	st.d	$zero, $a1, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	st.w	$zero, $a0, 0
	ld.w	$a1, $fp, 0
	ori	$a2, $zero, 2
	st.d	$zero, $a0, 64
	blt	$a2, $a1, .LBB9_2
# %bb.1:                                # %if.then
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	b	.LBB9_5
.LBB9_2:                                # %if.else
	ld.w	$a0, $fp, 24
	beqz	$a0, .LBB9_6
# %bb.3:                                # %if.end.thread
	pcalau12i	$a0, %pc_hi20(recovery_flag)
	ori	$a1, $zero, 1
	st.w	$a1, $a0, %pc_lo12(recovery_flag)
.LBB9_4:                                # %if.then4
	ld.d	$a0, $fp, 48
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
.LBB9_5:                                # %if.end6
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_6:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(non_conforming_stream)
	ld.d	$a0, $a0, %got_pc_lo12(non_conforming_stream)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB9_4
# %bb.7:                                # %if.end
	pcalau12i	$a0, %pc_hi20(recovery_flag)
	ld.w	$a0, $a0, %pc_lo12(recovery_flag)
	beqz	$a0, .LBB9_5
	b	.LBB9_4
.Lfunc_end9:
	.size	write_stored_frame, .Lfunc_end9-write_stored_frame
                                        # -- End function
	.globl	direct_output                   # -- Begin function direct_output
	.p2align	5
	.type	direct_output,@function
direct_output:                          # @direct_output
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a3, $a0, 0
	pcalau12i	$s1, %pc_hi20(out_buffer)
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ori	$a2, $zero, 1
	move	$s0, $a1
	beq	$a3, $a2, .LBB10_6
# %bb.1:                                # %entry
	bnez	$a3, .LBB10_9
# %bb.2:                                # %if.then
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 64
	st.d	$zero, $a1, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	st.d	$zero, $a0, 64
	st.w	$zero, $a0, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(p_ref)
	ld.w	$a2, $a0, %pc_lo12(p_ref)
	addi.w	$a0, $zero, -1
	beq	$a2, $a0, .LBB10_5
# %bb.3:                                # %land.lhs.true
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 3016
	bnez	$a0, .LBB10_5
# %bb.4:                                # %if.then2
	pcalau12i	$a0, %got_pc_hi20(snr)
	ld.d	$a0, $a0, %got_pc_lo12(snr)
	ld.d	$a0, $a0, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(find_snr)
	jirl	$ra, $ra, 0
.LBB10_5:                               # %if.end
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(free_storable_picture)
	jr	$t8
.LBB10_6:                               # %if.then6
	ld.wu	$a1, $a0, 0
	andi	$a3, $a1, 1
	beqz	$a3, .LBB10_8
# %bb.7:                                # %if.then8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 64
	st.d	$zero, $a1, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.w	$a2, $fp, 0
	move	$a1, $zero
	st.d	$zero, $a0, 64
	st.w	$zero, $a0, 0
.LBB10_8:                               # %if.end9
	st.d	$fp, $a0, 56
	ori	$a1, $a1, 1
	st.w	$a1, $a0, 0
	move	$a3, $a2
.LBB10_9:                               # %if.end11
	ld.w	$a1, $a0, 0
	ori	$a2, $zero, 2
	bne	$a3, $a2, .LBB10_13
# %bb.10:                               # %if.then14
	andi	$a2, $a1, 2
	beqz	$a2, .LBB10_12
# %bb.11:                               # %if.then18
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_unpaired_field)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 64
	st.d	$zero, $a1, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	move	$a1, $zero
	st.d	$zero, $a0, 64
	st.w	$zero, $a0, 0
.LBB10_12:                              # %if.end19
	st.d	$fp, $a0, 64
	ori	$a1, $a1, 2
	st.w	$a1, $a0, 0
.LBB10_13:                              # %if.end22
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB10_18
# %bb.14:                               # %if.then25
	pcaddu18i	$ra, %call36(dpb_combine_field_yuv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 48
	move	$a1, $s0
	pcaddu18i	$ra, %call36(write_out_picture)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(p_ref)
	ld.w	$a2, $a0, %pc_lo12(p_ref)
	addi.w	$a0, $zero, -1
	beq	$a2, $a0, .LBB10_17
# %bb.15:                               # %land.lhs.true27
	pcalau12i	$a0, %got_pc_hi20(input)
	ld.d	$a0, $a0, %got_pc_lo12(input)
	ld.d	$a0, $a0, 0
	ldptr.w	$a0, $a0, 3016
	bnez	$a0, .LBB10_17
# %bb.16:                               # %if.then30
	pcalau12i	$a0, %got_pc_hi20(snr)
	ld.d	$a0, $a0, %got_pc_lo12(snr)
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 48
	pcaddu18i	$ra, %call36(find_snr)
	jirl	$ra, $ra, 0
.LBB10_17:                              # %if.end32
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 56
	st.d	$zero, $a1, 48
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(out_buffer)
	ld.d	$a0, $a1, 64
	st.d	$zero, $a1, 56
	pcaddu18i	$ra, %call36(free_storable_picture)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, %pc_lo12(out_buffer)
	st.d	$zero, $a0, 64
	st.w	$zero, $a0, 0
.LBB10_18:                              # %if.end40
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	direct_output, .Lfunc_end10-direct_output
                                        # -- End function
	.type	pending_output,@object          # @pending_output
	.bss
	.globl	pending_output
	.p2align	3, 0x0
pending_output:
	.dword	0
	.size	pending_output, 8

	.type	pending_output_state,@object    # @pending_output_state
	.globl	pending_output_state
	.p2align	2, 0x0
pending_output_state:
	.word	0                               # 0x0
	.size	pending_output_state, 4

	.type	recovery_flag,@object           # @recovery_flag
	.globl	recovery_flag
	.p2align	2, 0x0
recovery_flag:
	.word	0                               # 0x0
	.size	recovery_flag, 4

	.type	.L__const.write_out_picture.SubWidthC,@object # @__const.write_out_picture.SubWidthC
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	2, 0x0
.L__const.write_out_picture.SubWidthC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	2                               # 0x2
	.word	1                               # 0x1
	.size	.L__const.write_out_picture.SubWidthC, 16

	.type	.L__const.write_out_picture.SubHeightC,@object # @__const.write_out_picture.SubHeightC
	.p2align	2, 0x0
.L__const.write_out_picture.SubHeightC:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.size	.L__const.write_out_picture.SubHeightC, 16

	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"write_out_picture: buf"
	.size	.L.str.1, 23

	.type	out_buffer,@object              # @out_buffer
	.comm	out_buffer,8,8
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	ReMapRef,@object                # @ReMapRef
	.comm	ReMapRef,80,4
	.type	Bframe_ctr,@object              # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	g_nFrame,@object                # @g_nFrame
	.comm	g_nFrame,4,4
	.type	TopFieldForSkip_Y,@object       # @TopFieldForSkip_Y
	.comm	TopFieldForSkip_Y,1024,4
	.type	TopFieldForSkip_UV,@object      # @TopFieldForSkip_UV
	.comm	TopFieldForSkip_UV,2048,4
	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	p_out,@object                   # @p_out
	.comm	p_out,4,4
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	previous_frame_num,@object      # @previous_frame_num
	.comm	previous_frame_num,4,4
	.type	ref_flag,@object                # @ref_flag
	.comm	ref_flag,68,4
	.type	Is_primary_correct,@object      # @Is_primary_correct
	.comm	Is_primary_correct,4,4
	.type	Is_redundant_correct,@object    # @Is_redundant_correct
	.comm	Is_redundant_correct,4,4
	.type	redundant_slice_ref_idx,@object # @redundant_slice_ref_idx
	.comm	redundant_slice_ref_idx,4,4
	.type	nal_startcode_follows,@object   # @nal_startcode_follows
	.comm	nal_startcode_follows,8,8
	.section	".note.GNU-stack","",@progbits
	.addrsig
