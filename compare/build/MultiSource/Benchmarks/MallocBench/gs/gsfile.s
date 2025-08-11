	.file	"gsfile.c"
	.text
	.globl	gs_writeppmfile                 # -- Begin function gs_writeppmfile
	.p2align	5
	.type	gs_writeppmfile,@function
gs_writeppmfile:                        # @gs_writeppmfile
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
	move	$s1, $a1
	move	$s2, $a0
	pcaddu18i	$ra, %call36(mem_bytes_per_scan_line)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s2, 28
	ld.w	$fp, $s2, 48
	move	$s4, $a0
	alsl.w	$a0, $a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a2, $a1, %pc_lo12(.L.str)
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(gs_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_4
# %bb.1:                                # %if.end
	move	$s0, $a0
	addi.d	$a0, $fp, -1
	ori	$a1, $zero, 31
	addi.w	$s8, $zero, -23
	bltu	$a1, $a0, .LBB0_32
# %bb.2:                                # %if.end
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.1)
	add.d	$a0, $a1, $a0
	addi.d	$a1, $a2, %pc_lo12(.L.str.1)
	jr	$a0
.LBB0_3:                                # %sw.bb3
	ld.w	$a0, $s2, 40
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$a2, $a2, %pc_lo12(.L.str.3)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	b	.LBB0_7
.LBB0_4:
	addi.w	$s8, $zero, -25
	b	.LBB0_33
.LBB0_5:                                # %sw.bb4
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a1, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_7
.LBB0_6:                                # %sw.bb5
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
.LBB0_7:                                # %sw.epilog
	ld.w	$a2, $s2, 24
	move	$a0, $s1
	move	$a3, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB0_31
# %bb.8:                                # %for.body.lr.ph
	ori	$a0, $zero, 8
	add.d	$s5, $s0, $s4
	move	$s6, $zero
	beq	$fp, $a0, .LBB0_16
# %bb.9:                                # %for.body.lr.ph
	ori	$a0, $zero, 32
	bne	$fp, $a0, .LBB0_28
# %bb.10:                               # %for.body.us74.preheader
	ori	$fp, $zero, 1
	addi.w	$s8, $zero, -12
	.p2align	4, , 16
.LBB0_11:                               # %for.body.us74
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	move	$a0, $s2
	move	$a1, $s6
	move	$a2, $s0
	move	$a3, $s4
	pcaddu18i	$ra, %call36(mem_copy_scan_lines)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	blt	$s4, $fp, .LBB0_14
# %bb.12:                               # %while.body51.us.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	move	$a1, $s0
	move	$a2, $s0
	.p2align	4, , 16
.LBB0_13:                               # %while.body51.us
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a3, $a2, 1
	st.b	$a3, $a1, 0
	ld.b	$a3, $a2, 2
	st.b	$a3, $a1, 1
	ld.b	$a3, $a2, 3
	addi.d	$a4, $a2, 4
	st.b	$a3, $a1, 2
	addi.d	$a1, $a1, 3
	addi.d	$a0, $a0, 3
	move	$a2, $a4
	bltu	$a4, $s5, .LBB0_13
.LBB0_14:                               # %while.end59.us
                                        #   in Loop: Header=BB0_11 Depth=1
	sub.w	$s7, $a0, $s0
	ori	$a1, $zero, 1
	move	$a0, $s0
	move	$a2, $s7
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	bltu	$a0, $s7, .LBB0_32
# %bb.15:                               # %for.cond.us77
                                        #   in Loop: Header=BB0_11 Depth=1
	addi.w	$s6, $s6, 1
	bne	$s6, $s3, .LBB0_11
	b	.LBB0_31
.LBB0_16:                               # %for.body.us.preheader
	add.d	$a0, $s5, $s4
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$fp, $a0, $s4
	addi.w	$a0, $zero, -12
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_17:                               # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_24 Depth 2
	move	$a0, $s2
	move	$a1, $s6
	move	$a2, $s0
	move	$a3, $s4
	pcaddu18i	$ra, %call36(mem_copy_scan_lines)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 40
	ld.d	$s7, $s2, 192
	beqz	$a0, .LBB0_22
# %bb.18:                               # %if.then12.us
                                        #   in Loop: Header=BB0_17 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB0_26
# %bb.19:                               # %while.body.us.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$a0, $s0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_20:                               # %while.body.us
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 0
	alsl.d	$a2, $a2, $a2, 1
	ldx.b	$a3, $s7, $a2
	add.d	$a2, $s7, $a2
	st.b	$a3, $a0, 0
	ld.b	$a3, $a2, 1
	st.b	$a3, $a0, 1
	ld.b	$a2, $a2, 2
	addi.d	$a3, $a1, 1
	addi.d	$a1, $a0, 3
	st.b	$a2, $a0, 2
	move	$a0, $a1
	move	$a1, $a3
	bltu	$a3, $fp, .LBB0_20
# %bb.21:                               #   in Loop: Header=BB0_17 Depth=1
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_22:                               # %if.else.us
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$s8, $s4
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB0_26
# %bb.23:                               # %while.body38.us.preheader
                                        #   in Loop: Header=BB0_17 Depth=1
	move	$a0, $s0
	.p2align	4, , 16
.LBB0_24:                               # %while.body38.us
                                        #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 0
	alsl.d	$a1, $a1, $a1, 1
	ldx.b	$a1, $s7, $a1
	addi.d	$a2, $a0, 1
	st.b	$a1, $a0, 0
	move	$a0, $a2
	bltu	$a2, $s5, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_17 Depth=1
	move	$s8, $s4
.LBB0_26:                               # %sw.epilog62.us
                                        #   in Loop: Header=BB0_17 Depth=1
	ori	$a1, $zero, 1
	move	$a0, $s0
	move	$a2, $s8
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	bltu	$a0, $s8, .LBB0_34
# %bb.27:                               # %for.cond.us
                                        #   in Loop: Header=BB0_17 Depth=1
	addi.w	$s6, $s6, 1
	bne	$s6, $s3, .LBB0_17
	b	.LBB0_31
.LBB0_28:                               # %for.body.preheader
	addi.w	$s8, $zero, -12
	.p2align	4, , 16
.LBB0_29:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s6
	move	$a2, $s0
	move	$a3, $s4
	pcaddu18i	$ra, %call36(mem_copy_scan_lines)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$a0, $s0
	move	$a2, $s4
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	bltu	$a0, $s4, .LBB0_32
# %bb.30:                               # %for.cond
                                        #   in Loop: Header=BB0_29 Depth=1
	addi.w	$s6, $s6, 1
	bne	$s3, $s6, .LBB0_29
.LBB0_31:
	move	$s8, $zero
.LBB0_32:                               # %done
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a3, $a0, %pc_lo12(.L.str)
	ori	$a2, $zero, 1
	move	$a0, $s0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(gs_free)
	jirl	$ra, $ra, 0
.LBB0_33:                               # %cleanup73
	move	$a0, $s8
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
.LBB0_34:
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_32
.Lfunc_end0:
	.size	gs_writeppmfile, .Lfunc_end0-gs_writeppmfile
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_7-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_3-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_5-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_32-.LJTI0_0
	.word	.LBB0_6-.LJTI0_0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ppm file buffer"
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"P4\n# Ghostscript 1 bit mono image dump\n%d %d\n"
	.size	.L.str.1, 46

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"P6\n# Ghostscript 8 bit mapped color image dump\n%d %d\n255\n"
	.size	.L.str.2, 58

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"P5\n# Ghostscript 8 bit gray scale image dump\n%d %d\n255\n"
	.size	.L.str.3, 56

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"P6\n# Ghostscript 24 bit color image dump\n%d %d\n255\n"
	.size	.L.str.4, 52

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"P6\n# Ghostscript 32 bit color image dump\n%d %d\n255\n"
	.size	.L.str.5, 52

	.section	".note.GNU-stack","",@progbits
	.addrsig
