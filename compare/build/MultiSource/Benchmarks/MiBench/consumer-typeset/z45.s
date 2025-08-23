	.file	"z45.c"
	.text
	.globl	ReadLines                       # -- Begin function ReadLines
	.p2align	5
	.type	ReadLines,@function
ReadLines:                              # @ReadLines
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	move	$fp, $a2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$s1, $a0
	lu12i.w	$s0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	bnez	$a0, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 45
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_2:                                # %if.end
	lu12i.w	$a0, 3
	ori	$s5, $a0, 3712
	move	$a0, $s5
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	beqz	$fp, .LBB0_4
# %bb.3:                                # %if.then5
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s4, 8
.LBB0_4:                                # %if.end10
	addi.d	$s2, $a0, 8
	st.d	$s7, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.w	$s8, $zero, -1
	beq	$a0, $s8, .LBB0_31
# %bb.5:                                # %while.body.preheader
	move	$fp, $a0
	add.d	$s6, $s7, $s0
	add.d	$s5, $s4, $s5
	ori	$a0, $zero, 2000
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s0, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$s3, $s7
	b	.LBB0_7
	.p2align	4, , 16
.LBB0_6:                                # %if.else
                                        #   in Loop: Header=BB0_7 Depth=1
	addi.d	$a0, $s3, 1
	st.b	$fp, $s3, 0
	move	$s3, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	beq	$a0, $s8, .LBB0_31
.LBB0_7:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_28 Depth 2
	addi.w	$a0, $s7, 0
	addi.w	$a1, $s5, 0
	bge	$a0, $a1, .LBB0_10
# %bb.8:                                # %while.body
                                        #   in Loop: Header=BB0_7 Depth=1
	addi.w	$a0, $s4, 0
	addi.w	$a1, $s6, 0
	bge	$a0, $a1, .LBB0_10
# %bb.9:                                # %if.then19
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a4, $s0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_10:                               # %if.end21
                                        #   in Loop: Header=BB0_7 Depth=1
	beq	$s3, $s6, .LBB0_17
.LBB0_11:                               # %if.end43
                                        #   in Loop: Header=BB0_7 Depth=1
	ori	$a0, $zero, 10
	bne	$fp, $a0, .LBB0_6
# %bb.12:                               # %if.then46
                                        #   in Loop: Header=BB0_7 Depth=1
	st.b	$zero, $s3, 0
	bne	$s2, $s5, .LBB0_16
# %bb.13:                               # %if.then50
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	slli.w	$fp, $s2, 1
	slli.d	$a1, $fp, 3
	move	$a0, $s4
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB0_15
# %bb.14:                               # %if.then57
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a4, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a2, $a0, %pc_lo12(.L.str)
	ori	$a0, $zero, 45
	ori	$a1, $zero, 4
	ori	$a3, $zero, 1
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB0_15:                               # %if.end59
                                        #   in Loop: Header=BB0_7 Depth=1
	alsl.d	$s2, $s2, $s4, 3
	alsl.d	$s5, $fp, $s4, 3
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
.LBB0_16:                               # %if.end65
                                        #   in Loop: Header=BB0_7 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$a0, $s2, 8
	st.d	$s3, $s2, 0
	move	$s2, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bne	$a0, $s8, .LBB0_7
	b	.LBB0_31
	.p2align	4, , 16
.LBB0_17:                               # %if.then24
                                        #   in Loop: Header=BB0_7 Depth=1
	lu12i.w	$s6, 1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beqz	$a0, .LBB0_24
# %bb.18:                               # %if.end30
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a4, $s2, -8
	add.d	$s6, $s7, $s6
	beq	$a4, $s3, .LBB0_25
.LBB0_19:                               # %for.inc.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	sub.d	$a0, $s3, $a4
	move	$a1, $zero
	ori	$a3, $zero, 64
	bltu	$a0, $a3, .LBB0_26
# %bb.20:                               # %for.inc.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	sub.d	$a2, $s7, $a4
	bltu	$a2, $a3, .LBB0_26
# %bb.21:                               # %vector.ph
                                        #   in Loop: Header=BB0_7 Depth=1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 5, 0
	add.d	$a2, $a4, $a1
	addi.d	$a3, $s7, 32
	addi.d	$a4, $a4, 32
	move	$a5, $a1
	.p2align	4, , 16
.LBB0_22:                               # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$a5, $a5, -64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB0_22
# %bb.23:                               # %middle.block
                                        #   in Loop: Header=BB0_7 Depth=1
	bne	$a0, $a1, .LBB0_27
	b	.LBB0_29
.LBB0_24:                               # %if.then28
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a4, $s0, 0
	ori	$a0, $zero, 45
	ori	$a1, $zero, 2
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a4, $s2, -8
	add.d	$s6, $s7, $s6
	bne	$a4, $s3, .LBB0_19
.LBB0_25:                               # %for.end.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	st.b	$zero, $s7, 0
	st.d	$s7, $s2, -8
	move	$s3, $s7
	b	.LBB0_11
.LBB0_26:                               #   in Loop: Header=BB0_7 Depth=1
	move	$a2, $a4
.LBB0_27:                               # %for.inc.preheader75
                                        #   in Loop: Header=BB0_7 Depth=1
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_28:                               # %for.inc
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a4, $a2, 0
	addi.d	$a5, $a2, 1
	addi.d	$a1, $a3, 1
	stx.b	$a4, $s7, $a3
	move	$a2, $a5
	move	$a3, $a1
	bne	$a5, $s3, .LBB0_28
.LBB0_29:                               # %for.end
                                        #   in Loop: Header=BB0_7 Depth=1
	add.d	$s3, $s7, $a0
	stx.b	$zero, $s7, $a0
	st.d	$s7, $s2, -8
	lu12i.w	$a0, 1
	bne	$a1, $a0, .LBB0_11
# %bb.30:                               # %if.then40
                                        #   in Loop: Header=BB0_7 Depth=1
	ld.d	$a4, $s0, 0
	ori	$a0, $zero, 45
	ori	$a1, $zero, 3
	ori	$a3, $zero, 1
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	b	.LBB0_11
.LBB0_31:                               # %while.end
	sub.d	$a0, $s2, $s4
	srli.d	$a0, $a0, 3
	addi.d	$a0, $a0, -1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	move	$a0, $s4
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.Lfunc_end0:
	.size	ReadLines, .Lfunc_end0-ReadLines
                                        # -- End function
	.globl	WriteLines                      # -- Begin function WriteLines
	.p2align	5
	.type	WriteLines,@function
WriteLines:                             # @WriteLines
# %bb.0:                                # %entry
	ori	$a3, $zero, 1
	blt	$a2, $a3, .LBB1_4
# %bb.1:                                # %for.body.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	.p2align	4, , 16
.LBB1_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB1_2
# %bb.3:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB1_4:                                # %for.end
	ret
.Lfunc_end1:
	.size	WriteLines, .Lfunc_end1-WriteLines
                                        # -- End function
	.globl	SortLines                       # -- Begin function SortLines
	.p2align	5
	.type	SortLines,@function
SortLines:                              # @SortLines
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(UseCollate)
	ld.d	$a2, $a2, %got_pc_lo12(UseCollate)
	ld.w	$a2, $a2, 0
	sltui	$a2, $a2, 1
	pcalau12i	$a3, %pc_hi20(pstrcollcmp)
	addi.d	$a3, $a3, %pc_lo12(pstrcollcmp)
	masknez	$a3, $a3, $a2
	pcalau12i	$a4, %pc_hi20(pstrcmp)
	addi.d	$a4, $a4, %pc_lo12(pstrcmp)
	maskeqz	$a2, $a4, $a2
	or	$a3, $a2, $a3
	ori	$a2, $zero, 8
	pcaddu18i	$t8, %call36(qsort)
	jr	$t8
.Lfunc_end2:
	.size	SortLines, .Lfunc_end2-SortLines
                                        # -- End function
	.p2align	5                               # -- Begin function pstrcollcmp
	.type	pstrcollcmp,@function
pstrcollcmp:                            # @pstrcollcmp
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$t8, %call36(strcollcmp)
	jr	$t8
.Lfunc_end3:
	.size	pstrcollcmp, .Lfunc_end3-pstrcollcmp
                                        # -- End function
	.p2align	5                               # -- Begin function pstrcmp
	.type	pstrcmp,@function
pstrcmp:                                # @pstrcmp
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	pcaddu18i	$t8, %call36(strcmp)
	jr	$t8
.Lfunc_end4:
	.size	pstrcmp, .Lfunc_end4-pstrcmp
                                        # -- End function
	.globl	SortFile                        # -- Begin function SortFile
	.p2align	5
	.type	SortFile,@function
SortFile:                               # @SortFile
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s2, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	bnez	$a0, .LBB5_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a2, $a0, %pc_lo12(.L.str.6)
	ori	$a0, $zero, 45
	ori	$a1, $zero, 5
	ori	$a3, $zero, 1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_2:                                # %if.end
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bnez	$a0, .LBB5_4
# %bb.3:                                # %if.then4
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a2, $a0, %pc_lo12(.L.str.8)
	ori	$a0, $zero, 45
	ori	$a1, $zero, 6
	ori	$a3, $zero, 1
	move	$a5, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB5_4:                                # %if.end6
	addi.d	$a3, $sp, 4
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(ReadLines)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(UseCollate)
	ld.d	$a1, $a1, %got_pc_lo12(UseCollate)
	ld.w	$a1, $a1, 0
	move	$s1, $a0
	ld.w	$s2, $sp, 4
	sltui	$a0, $a1, 1
	pcalau12i	$a1, %pc_hi20(pstrcollcmp)
	addi.d	$a1, $a1, %pc_lo12(pstrcollcmp)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(pstrcmp)
	addi.d	$a2, $a2, %pc_lo12(pstrcmp)
	maskeqz	$a0, $a2, $a0
	or	$a3, $a0, $a1
	ori	$a2, $zero, 8
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(qsort)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$s2, $a0, .LBB5_6
	.p2align	4, , 16
.LBB5_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -1
	addi.d	$s1, $s1, 8
	bnez	$s2, .LBB5_5
.LBB5_6:                                # %WriteLines.exit
	move	$a0, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fclose)
	jr	$t8
.Lfunc_end5:
	.size	SortFile, .Lfunc_end5-SortFile
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"run out of memory when reading index file %s"
	.size	.L.str, 45

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"assert failed in %s"
	.size	.L.str.1, 20

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"ReadLines: lines and buff overlap!"
	.size	.L.str.2, 35

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"line too long when reading index file %s"
	.size	.L.str.3, 41

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"r"
	.size	.L.str.5, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"cannot open index file %s for reading"
	.size	.L.str.6, 38

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"w"
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"cannot open index file %s for writing"
	.size	.L.str.8, 38

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pstrcollcmp
	.addrsig_sym pstrcmp
