	.file	"z02.c"
	.text
	.globl	LexLegalName                    # -- Begin function LexLegalName
	.p2align	5
	.type	LexLegalName,@function
LexLegalName:                           # @LexLegalName
# %bb.0:                                # %entry
	ld.bu	$a2, $a0, 0
	pcalau12i	$a1, %pc_hi20(chtbl)
	addi.d	$a1, $a1, %pc_lo12(chtbl)
	ldx.bu	$a2, $a1, $a2
	ori	$a3, $zero, 3
	beq	$a2, $a3, .LBB0_6
# %bb.1:                                # %entry
	ori	$a3, $zero, 1
	beq	$a2, $a3, .LBB0_6
# %bb.2:                                # %entry
	bnez	$a2, .LBB0_9
# %bb.3:                                # %for.cond14.preheader
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB0_4:                                # %for.cond14
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a0, 0
	ldx.bu	$a3, $a1, $a2
	addi.d	$a0, $a0, 1
	beqz	$a3, .LBB0_4
# %bb.5:                                # %for.end25
	sltui	$a0, $a2, 1
	ret
.LBB0_6:                                # %for.cond.preheader
	addi.d	$a0, $a0, 1
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB0_7:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a0, 0
	ldx.bu	$a4, $a1, $a3
	addi.d	$a0, $a0, 1
	beq	$a4, $a2, .LBB0_7
# %bb.8:                                # %for.end
	sltui	$a0, $a3, 1
	ret
.LBB0_9:
	move	$a0, $zero
	ret
.Lfunc_end0:
	.size	LexLegalName, .Lfunc_end0-LexLegalName
                                        # -- End function
	.globl	LexInit                         # -- Begin function LexInit
	.p2align	5
	.type	LexInit,@function
LexInit:                                # @LexInit
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(chtbl)
	addi.d	$a0, $a0, %pc_lo12(chtbl)
	ori	$a1, $zero, 1
	st.b	$a1, $a0, 95
	lu12i.w	$a1, 4112
	ori	$a1, $a1, 257
	st.w	$a1, $a0, 87
	bstrins.d	$a1, $a1, 56, 32
	st.d	$a1, $a0, 64
	st.d	$a1, $a0, 72
	st.d	$a1, $a0, 80
	ori	$a2, $zero, 257
	st.h	$a2, $a0, 121
	st.d	$a1, $a0, 97
	st.d	$a1, $a0, 105
	st.d	$a1, $a0, 113
	st.d	$a1, $a0, 192
	st.d	$a1, $a0, 200
	st.d	$a1, $a0, 207
	st.d	$a1, $a0, 216
	st.d	$a1, $a0, 224
	st.d	$a1, $a0, 232
	st.d	$a1, $a0, 239
	st.d	$a1, $a0, 248
	ori	$a1, $zero, 2
	st.b	$a1, $a0, 34
	ori	$a1, $zero, 3
	st.b	$a1, $a0, 92
	ori	$a1, $zero, 4
	st.b	$a1, $a0, 35
	ori	$a1, $zero, 5
	st.b	$a1, $a0, 32
	ori	$a1, $zero, 6
	st.b	$a1, $a0, 12
	ori	$a1, $zero, 2055
	st.h	$a1, $a0, 9
	ori	$a1, $zero, 9
	st.b	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(stack_free)
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, %pc_lo12(stack_free)
	ret
.Lfunc_end1:
	.size	LexInit, .Lfunc_end1-LexInit
                                        # -- End function
	.globl	LexPush                         # -- Begin function LexPush
	.p2align	5
	.type	LexPush,@function
LexPush:                                # @LexPush
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(stack_free)
	ld.w	$a5, $s4, %pc_lo12(stack_free)
	st.d	$a4, $sp, 64                    # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	move	$s6, $a2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$s7, $a0
	ori	$a0, $zero, 9
	pcalau12i	$a1, %pc_hi20(lex_stack)
	addi.d	$a1, $a1, %pc_lo12(lex_stack)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	blt	$a5, $a0, .LBB2_8
# %bb.1:                                # %if.then
	move	$s3, $s4
	move	$a0, $s7
	pcaddu18i	$ra, %call36(PosOfFile)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s4, $a0
	move	$a0, $s7
	bne	$s6, $a1, .LBB2_3
# %bb.2:                                # %if.then2
	pcaddu18i	$ra, %call36(FullFileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 1
	b	.LBB2_4
.LBB2_3:                                # %if.else
	pcaddu18i	$ra, %call36(FileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a2, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 2
.LBB2_4:                                # %if.end
	ori	$a3, $zero, 2
	move	$a4, $s4
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, %pc_lo12(stack_free)
	blez	$a0, .LBB2_7
# %bb.5:                                # %for.body.preheader
	addi.d	$fp, $a0, 1
	ori	$a1, $zero, 120
	mul.d	$a0, $a0, $a1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	addi.d	$s0, $a0, -72
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$s1, $a0, %got_pc_lo12(no_fpos)
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$s4, $a0, %pc_lo12(.L.str.21)
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB2_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $s1, 0
	ld.hu	$a0, $s0, 0
	pcaddu18i	$ra, %call36(EchoFileSource)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	ori	$a0, $zero, 2
	ori	$a1, $zero, 23
	ori	$a3, $zero, 2
	move	$a2, $s4
	move	$a4, $s5
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, -120
	bltu	$s2, $fp, .LBB2_6
.LBB2_7:                                # %for.end
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a2, $a0, %pc_lo12(.L.str.22)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 24
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s4, $s3
	ld.w	$a5, $s3, %pc_lo12(stack_free)
.LBB2_8:                                # %if.end12
	st.d	$s7, $sp, 72                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$s3, %pc_hi20(chpt)
	pcalau12i	$s5, %pc_hi20(buf)
	pcalau12i	$fp, %pc_hi20(last_char)
	pcalau12i	$s7, %pc_hi20(this_file)
	pcalau12i	$a0, %pc_hi20(fp)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$s2, %pc_hi20(ftype)
	pcalau12i	$a0, %pc_hi20(next_token)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(offset)
	pcalau12i	$s8, %pc_hi20(first_line_num)
	pcalau12i	$s0, %pc_hi20(same_file)
	pcalau12i	$s1, %pc_hi20(mem_block)
	bltz	$a5, .LBB2_10
# %bb.9:                                # %if.then14
	ld.d	$a0, $s3, %pc_lo12(chpt)
	ori	$a1, $zero, 120
	mul.d	$a1, $a5, $a1
	pcalau12i	$a2, %pc_hi20(frst)
	ld.d	$a2, $a2, %pc_lo12(frst)
	pcalau12i	$a3, %pc_hi20(limit)
	ld.d	$a3, $a3, %pc_lo12(limit)
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	add.d	$a4, $a6, $a1
	stx.d	$a0, $a6, $a1
	st.d	$a2, $a4, 8
	st.d	$a3, $a4, 16
	ld.d	$a0, $s5, %pc_lo12(buf)
	pcalau12i	$a1, %pc_hi20(blksize)
	ld.w	$a1, $a1, %pc_lo12(blksize)
	ld.b	$a2, $fp, %pc_lo12(last_char)
	pcalau12i	$a3, %pc_hi20(startline)
	ld.d	$a3, $a3, %pc_lo12(startline)
	st.d	$a0, $a4, 24
	st.w	$a1, $a4, 32
	st.b	$a2, $a4, 36
	st.d	$a3, $a4, 40
	ld.h	$a0, $s7, %pc_lo12(this_file)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(fp)
	ld.h	$a2, $s2, %pc_lo12(ftype)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $a3, %pc_lo12(next_token)
	st.h	$a0, $a4, 48
	st.d	$a1, $a4, 56
	st.h	$a2, $a4, 72
	st.d	$a3, $a4, 80
	ld.w	$a0, $s6, %pc_lo12(offset)
	ld.w	$a1, $s8, %pc_lo12(first_line_num)
	ld.w	$a2, $s0, %pc_lo12(same_file)
	ld.d	$a3, $s1, %pc_lo12(mem_block)
	st.w	$a0, $a4, 88
	st.w	$a1, $a4, 92
	st.w	$a2, $a4, 96
	st.d	$a3, $a4, 112
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a0, $a0, %pc_lo12(file_pos)
	ld.h	$a1, $a0, 2
	ld.w	$a0, $a0, 4
	st.h	$a1, $a4, 66
	st.w	$a0, $a4, 68
.LBB2_10:                               # %if.end61
	addi.d	$a0, $a5, 1
	st.w	$a0, $s4, %pc_lo12(stack_free)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 2050
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(mem_block)
	bnez	$a0, .LBB2_12
# %bb.11:                               # %if.then64
	move	$a1, $s1
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $s3
	move	$s3, $s7
	ld.d	$s1, $sp, 72                    # 8-byte Folded Reload
	move	$a0, $s1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(PosOfFile)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $a0
	move	$a0, $s1
	move	$s7, $s3
	move	$s3, $s5
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(FullFileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a2, $a0, %pc_lo12(.L.str.23)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 3
	ori	$a3, $zero, 1
	move	$a4, $s4
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(mem_block)
.LBB2_12:                               # %if.end68
	ori	$a1, $zero, 2048
	add.d	$a2, $a0, $a1
	st.d	$a2, $s3, %pc_lo12(chpt)
	st.d	$a2, $s5, %pc_lo12(buf)
	ori	$a2, $zero, 10
	st.b	$a2, $fp, %pc_lo12(last_char)
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.h	$a2, $s7, %pc_lo12(this_file)
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	st.w	$a2, $s6, %pc_lo12(offset)
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.w	$a2, $s8, %pc_lo12(first_line_num)
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.w	$a2, $s0, %pc_lo12(same_file)
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	st.h	$a3, $s2, %pc_lo12(ftype)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$zero, $a3, %pc_lo12(next_token)
	stx.b	$zero, $a0, $a1
	beqz	$a2, .LBB2_14
# %bb.13:                               # %if.then70
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(fp)
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(stack_free)
	ori	$a2, $zero, 120
	mul.d	$a1, $a1, $a2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	add.d	$a1, $a2, $a1
	st.d	$a0, $a1, -16
	b	.LBB2_15
.LBB2_14:                               # %if.else75
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(fp)
.LBB2_15:                               # %if.end76
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.Lfunc_end2:
	.size	LexPush, .Lfunc_end2-LexPush
                                        # -- End function
	.globl	LexPop                          # -- Begin function LexPop
	.p2align	5
	.type	LexPop,@function
LexPop:                                 # @LexPop
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(stack_free)
	ld.w	$a1, $s1, %pc_lo12(stack_free)
	bgtz	$a1, .LBB3_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a5, $a0, %pc_lo12(.L.str.25)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s1, %pc_lo12(stack_free)
.LBB3_2:                                # %if.end
	pcalau12i	$fp, %pc_hi20(same_file)
	ld.w	$a2, $fp, %pc_lo12(same_file)
	pcalau12i	$s0, %pc_hi20(fp)
	ld.d	$a0, $s0, %pc_lo12(fp)
	addi.w	$a1, $a1, -1
	st.w	$a1, $s1, %pc_lo12(stack_free)
	pcalau12i	$a3, %pc_hi20(lex_stack)
	addi.d	$s2, $a3, %pc_lo12(lex_stack)
	beqz	$a2, .LBB3_4
# %bb.3:                                # %if.then1
	ori	$a2, $zero, 120
	mul.d	$a1, $a1, $a2
	add.d	$a1, $s2, $a1
	ld.d	$a1, $a1, 104
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	b	.LBB3_6
.LBB3_4:                                # %if.else
	beqz	$a0, .LBB3_6
# %bb.5:                                # %if.then4
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB3_6:                                # %if.end7
	pcalau12i	$s3, %pc_hi20(mem_block)
	ld.d	$a0, $s3, %pc_lo12(mem_block)
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(stack_free)
	ori	$a1, $zero, 120
	mul.d	$a1, $a0, $a1
	add.d	$a0, $s2, $a1
	ld.d	$a2, $a0, 112
	ldx.d	$a1, $s2, $a1
	st.d	$a2, $s3, %pc_lo12(mem_block)
	pcalau12i	$a2, %pc_hi20(chpt)
	ld.d	$a3, $a0, 8
	st.d	$a1, $a2, %pc_lo12(chpt)
	pcalau12i	$a1, %pc_hi20(frst)
	ld.d	$a2, $a0, 16
	st.d	$a3, $a1, %pc_lo12(frst)
	pcalau12i	$a1, %pc_hi20(limit)
	ld.d	$a3, $a0, 24
	st.d	$a2, $a1, %pc_lo12(limit)
	pcalau12i	$a1, %pc_hi20(buf)
	ld.w	$a2, $a0, 32
	st.d	$a3, $a1, %pc_lo12(buf)
	pcalau12i	$a1, %pc_hi20(blksize)
	ld.b	$a3, $a0, 36
	st.w	$a2, $a1, %pc_lo12(blksize)
	pcalau12i	$a1, %pc_hi20(last_char)
	ld.d	$a2, $a0, 40
	st.b	$a3, $a1, %pc_lo12(last_char)
	pcalau12i	$a1, %pc_hi20(startline)
	ld.h	$a3, $a0, 48
	st.d	$a2, $a1, %pc_lo12(startline)
	ld.d	$a1, $a0, 56
	pcalau12i	$a2, %pc_hi20(this_file)
	st.h	$a3, $a2, %pc_lo12(this_file)
	ld.h	$a2, $a0, 72
	st.d	$a1, $s0, %pc_lo12(fp)
	pcalau12i	$a1, %pc_hi20(ftype)
	ld.d	$a3, $a0, 80
	st.h	$a2, $a1, %pc_lo12(ftype)
	ld.w	$a1, $a0, 88
	pcalau12i	$a2, %pc_hi20(next_token)
	st.d	$a3, $a2, %pc_lo12(next_token)
	pcalau12i	$a2, %pc_hi20(offset)
	st.w	$a1, $a2, %pc_lo12(offset)
	ld.w	$a1, $a0, 92
	ld.w	$a2, $a0, 96
	ld.h	$a3, $a0, 66
	pcalau12i	$a4, %pc_hi20(first_line_num)
	st.w	$a1, $a4, %pc_lo12(first_line_num)
	st.w	$a2, $fp, %pc_lo12(same_file)
	pcalau12i	$a1, %pc_hi20(file_pos)
	addi.d	$a1, $a1, %pc_lo12(file_pos)
	ld.w	$a0, $a0, 68
	st.h	$a3, $a1, 2
	st.w	$a0, $a1, 4
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	LexPop, .Lfunc_end3-LexPop
                                        # -- End function
	.globl	LexNextTokenPos                 # -- Begin function LexNextTokenPos
	.p2align	5
	.type	LexNextTokenPos,@function
LexNextTokenPos:                        # @LexNextTokenPos
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(next_token)
	ld.d	$a0, $a0, %pc_lo12(next_token)
	beqz	$a0, .LBB4_2
# %bb.1:                                # %if.then
	addi.d	$a4, $a0, 32
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a2, $a0, %pc_lo12(.L.str.26)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB4_2:                                # %if.end
	pcalau12i	$a0, %pc_hi20(fp)
	ld.d	$a0, $a0, %pc_lo12(fp)
	pcaddu18i	$ra, %call36(ftell)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(limit)
	ld.d	$a1, $a1, %pc_lo12(limit)
	pcalau12i	$a2, %pc_hi20(chpt)
	ld.d	$a2, $a2, %pc_lo12(chpt)
	pcalau12i	$a3, %pc_hi20(buf)
	ld.d	$a3, $a3, %pc_lo12(buf)
	pcalau12i	$a4, %pc_hi20(frst)
	ld.d	$a4, $a4, %pc_lo12(frst)
	add.d	$a0, $a0, $a2
	add.d	$a1, $a1, $a3
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a4
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end4:
	.size	LexNextTokenPos, .Lfunc_end4-LexNextTokenPos
                                        # -- End function
	.globl	LexGetToken                     # -- Begin function LexGetToken
	.p2align	5
	.type	LexGetToken,@function
LexGetToken:                            # @LexGetToken
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
	pcalau12i	$a4, %pc_hi20(next_token)
	ld.d	$a0, $a4, %pc_lo12(next_token)
	beqz	$a0, .LBB5_3
# %bb.1:                                # %if.then
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $a0, 24
	st.d	$a0, $a2, 0
	beq	$a1, $a0, .LBB5_82
# %bb.2:                                # %cond.false
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a1, $a4, %pc_lo12(next_token)
	b	.LBB5_218
.LBB5_3:                                # %if.end
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$s4, %pc_hi20(chpt)
	ld.d	$s0, $s4, %pc_lo12(chpt)
	pcalau12i	$a0, %pc_hi20(chtbl)
	addi.d	$s1, $a0, %pc_lo12(chtbl)
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s7, $zero, 1
	ori	$s6, $zero, 2
	pcalau12i	$a0, %pc_hi20(.LJTI5_0)
	addi.d	$s2, $a0, %pc_lo12(.LJTI5_0)
	pcalau12i	$a0, %pc_hi20(startline)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$s8, $a0, %pc_lo12(file_pos)
	move	$fp, $zero
	move	$s3, $zero
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	b	.LBB5_6
.LBB5_4:                                # %sw.bb69
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$a0, $zero
	addi.d	$s3, $s3, 1
.LBB5_5:                                # %do.cond1074
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$s0, $s5
	bnez	$a0, .LBB5_215
.LBB5_6:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_60 Depth 2
                                        #     Child Loop BB5_17 Depth 2
                                        #     Child Loop BB5_21 Depth 2
                                        #     Child Loop BB5_9 Depth 2
                                        #     Child Loop BB5_10 Depth 2
	ld.bu	$a0, $s0, 0
	ldx.bu	$a0, $s1, $a0
	addi.d	$s5, $s0, 1
	ori	$a1, $zero, 9
	bltu	$a1, $a0, .LBB5_36
# %bb.7:                                # %do.body
                                        #   in Loop: Header=BB5_6 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s2, $a0
	add.d	$a0, $s2, $a0
	jr	$a0
.LBB5_8:                                # %sw.bb158
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$a2, $s8
	move	$s8, $s4
	move	$s4, $s3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(startline)
	ld.wu	$a1, $a2, 4
	move	$s3, $zero
	sub.d	$a0, $s0, $a0
	bstrins.d	$a1, $a0, 63, 20
	st.w	$a1, $a2, 4
	.p2align	4, , 16
.LBB5_9:                                # %while.cond169
                                        #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s5, 0
	ldx.bu	$a0, $s1, $a0
	addi.d	$s5, $s5, 1
	addi.w	$s3, $s3, 1
	beqz	$a0, .LBB5_9
	.p2align	4, , 16
.LBB5_10:                               # %do.body182
                                        #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(SearchSym)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, -1
	blt	$s3, $s6, .LBB5_23
# %bb.11:                               # %do.body182
                                        #   in Loop: Header=BB5_10 Depth=2
	addi.w	$s3, $s3, -1
	beqz	$a0, .LBB5_10
	b	.LBB5_23
.LBB5_12:                               # %sw.bb
                                        #   in Loop: Header=BB5_6 Depth=1
	pcalau12i	$a0, %pc_hi20(ftype)
	ld.hu	$a0, $a0, %pc_lo12(ftype)
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB5_41
# %bb.13:                               # %land.lhs.true
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.bu	$a4, $s5, 0
	addi.d	$a0, $a4, -97
	andi	$a0, $a0, 255
	ori	$a1, $zero, 25
	bltu	$a1, $a0, .LBB5_41
# %bb.14:                               # %land.lhs.true33
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.bu	$a0, $s0, 2
	ori	$a1, $zero, 123
	bne	$a0, $a1, .LBB5_41
# %bb.15:                               # %if.then37
                                        #   in Loop: Header=BB5_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$a0, $a0, %got_pc_lo12(StartSym)
	ld.d	$a5, $a0, 0
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a1, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 102
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(NewToken)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s0, 3
	b	.LBB5_5
.LBB5_16:                               # %while.cond.preheader
                                        #   in Loop: Header=BB5_6 Depth=1
	ori	$a1, $zero, 10
	.p2align	4, , 16
.LBB5_17:                               # %while.cond
                                        #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s5, 0
	addi.d	$s5, $s5, 1
	beqz	$a0, .LBB5_43
# %bb.18:                               # %while.cond
                                        #   in Loop: Header=BB5_17 Depth=2
	bne	$a0, $a1, .LBB5_17
# %bb.19:                               # %if.then55
                                        #   in Loop: Header=BB5_6 Depth=1
	st.d	$s5, $s4, %pc_lo12(chpt)
	pcaddu18i	$ra, %call36(srcnext)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 4
	move	$a0, $zero
	ld.d	$s5, $s4, %pc_lo12(chpt)
	addi.d	$a1, $a1, 1
	bstrpick.d	$a1, $a1, 19, 0
	st.w	$a1, $s8, 4
	b	.LBB5_29
.LBB5_20:                               # %sw.bb191
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$a3, $s8
	move	$s8, $s4
	move	$s4, $s3
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(startline)
	ld.wu	$a2, $a3, 4
	move	$a1, $zero
	sub.d	$a0, $s0, $a0
	bstrins.d	$a2, $a0, 63, 20
	st.w	$a2, $a3, 4
	move	$s5, $s0
	.p2align	4, , 16
.LBB5_21:                               # %while.cond202
                                        #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s5, 1
	ldx.bu	$a0, $s1, $a0
	addi.d	$s5, $s5, 1
	addi.w	$a1, $a1, 1
	beq	$a0, $s7, .LBB5_21
# %bb.22:                               # %while.end210
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(SearchSym)
	jirl	$ra, $ra, 0
.LBB5_23:                               # %MORE
                                        #   in Loop: Header=BB5_6 Depth=1
	beqz	$a0, .LBB5_83
# %bb.24:                               # %if.else295
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.bu	$a1, $a0, 32
	ori	$a2, $zero, 142
	bne	$a1, $a2, .LBB5_37
# %bb.25:                               # %if.then301
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.hu	$a1, $a0, 41
	andi	$a1, $a1, 1024
	move	$s3, $s4
	bnez	$a1, .LBB5_101
# %bb.26:                               # %if.else397
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $a0, 56
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(CopyTokenList)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_103
# %bb.27:                               #   in Loop: Header=BB5_6 Depth=1
	move	$a0, $zero
	move	$s3, $zero
	move	$s4, $s8
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	b	.LBB5_5
.LBB5_28:                               # %sw.bb72
                                        #   in Loop: Header=BB5_6 Depth=1
	st.d	$s5, $s4, %pc_lo12(chpt)
	pcaddu18i	$ra, %call36(srcnext)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s8, 4
	move	$a0, $zero
	move	$s3, $zero
	addi.d	$a1, $a1, 1
	ld.d	$s5, $s4, %pc_lo12(chpt)
	bstrpick.d	$a1, $a1, 19, 0
	st.w	$a1, $s8, 4
	addi.d	$fp, $fp, 1
.LBB5_29:                               # %do.cond1074
                                        #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a1, $s5, -1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(startline)
	b	.LBB5_5
.LBB5_30:                               # %sw.bb71
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$a0, $zero
	addi.d	$s3, $s3, 8
	b	.LBB5_5
.LBB5_31:                               # %sw.bb85
                                        #   in Loop: Header=BB5_6 Depth=1
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	move	$s8, $s4
	pcalau12i	$a0, %pc_hi20(same_file)
	ld.w	$a0, $a0, %pc_lo12(same_file)
	pcalau12i	$s4, %pc_hi20(fp)
	pcalau12i	$s3, %pc_hi20(ftype)
	beqz	$a0, .LBB5_49
.LBB5_32:                               # %if.end131
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $s4, %pc_lo12(fp)
	beqz	$a0, .LBB5_53
.LBB5_33:                               # %if.then134
                                        #   in Loop: Header=BB5_6 Depth=1
	pcalau12i	$fp, %pc_hi20(offset)
	ld.w	$a1, $fp, %pc_lo12(offset)
	move	$s4, $s8
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	beqz	$a1, .LBB5_35
# %bb.34:                               # %if.then137
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(first_line_num)
	ld.wu	$a1, $s8, 4
	ld.wu	$a0, $a0, %pc_lo12(first_line_num)
	st.w	$zero, $fp, %pc_lo12(offset)
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s8, 4
.LBB5_35:                               # %if.end144
                                        #   in Loop: Header=BB5_6 Depth=1
	pcalau12i	$a0, %pc_hi20(buf)
	ld.d	$a0, $a0, %pc_lo12(buf)
	st.d	$a0, $s4, %pc_lo12(chpt)
	pcalau12i	$a1, %pc_hi20(limit)
	st.d	$a0, $a1, %pc_lo12(limit)
	pcalau12i	$a1, %pc_hi20(frst)
	st.d	$a0, $a1, %pc_lo12(frst)
	pcalau12i	$a0, %pc_hi20(blksize)
	st.w	$zero, $a0, %pc_lo12(blksize)
	pcalau12i	$a0, %pc_hi20(last_char)
	ori	$a1, $zero, 10
	st.b	$a1, $a0, %pc_lo12(last_char)
	pcaddu18i	$ra, %call36(srcnext)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s4, %pc_lo12(chpt)
	move	$a0, $zero
	move	$s3, $zero
	addi.d	$a1, $s5, -1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(startline)
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	b	.LBB5_5
.LBB5_36:                               # %sw.default1071
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	b	.LBB5_42
.LBB5_37:                               # %if.else435
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.hu	$a1, $a0, 120
	addi.d	$a2, $a1, -112
	move	$s3, $s4
	bltu	$a2, $s6, .LBB5_44
# %bb.38:                               # %if.else435
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$s4, $s8
	ori	$a2, $zero, 105
	beq	$a1, $a2, .LBB5_56
# %bb.39:                               # %if.else435
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	bnez	$a1, .LBB5_57
# %bb.40:                               # %if.then439
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.bu	$a4, $a0, 40
	pcalau12i	$a1, %pc_hi20(file_pos)
	addi.d	$a1, $a1, %pc_lo12(file_pos)
	move	$a5, $a0
	ori	$a0, $zero, 2
	b	.LBB5_58
.LBB5_41:                               # %if.else
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(startline)
	ld.wu	$a1, $s8, 4
	sub.d	$a0, $s0, $a0
	bstrins.d	$a1, $a0, 63, 20
	st.w	$a1, $s8, 4
	ld.bu	$a5, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a2, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 6
	ori	$a3, $zero, 2
	move	$a4, $s8
.LBB5_42:                               # %do.cond1074
                                        #   in Loop: Header=BB5_6 Depth=1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB5_5
.LBB5_43:                               # %do.cond1074.loopexit
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$a0, $zero
	addi.d	$s5, $s5, -1
	b	.LBB5_5
.LBB5_44:                               # %if.then451
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$s0, $a0
	move	$s4, $s8
	st.d	$s5, $s8, %pc_lo12(chpt)
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 80
	ori	$a2, $zero, 102
	beq	$a1, $a2, .LBB5_63
# %bb.45:                               # %if.then451
                                        #   in Loop: Header=BB5_6 Depth=1
	ori	$a2, $zero, 11
	bne	$a1, $a2, .LBB5_48
# %bb.46:                               # %land.end463
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.bu	$a1, $a0, 64
	ori	$a2, $zero, 123
	bne	$a1, $a2, .LBB5_48
# %bb.47:                               # %land.end463.tail
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.bu	$a1, $a0, 65
	beqz	$a1, .LBB5_78
.LBB5_48:                               # %if.then471
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$s8, $s4
	move	$s4, $s3
	addi.d	$s3, $a0, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(SymName)
	jirl	$ra, $ra, 0
	move	$a6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a2, $a0, %pc_lo12(.L.str.33)
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a5, $a0, %pc_lo12(.L.str.32)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 9
	ori	$a3, $zero, 2
	move	$a4, $s3
	move	$s3, $s4
	move	$s4, $s8
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.bu	$a2, $a0, 32
	st.d	$a0, $a1, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $a0, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $a0, 0
	ld.w	$a2, $a3, 0
	ld.d	$a1, $a1, 0
	move	$a0, $zero
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a4, $a2
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	b	.LBB5_5
.LBB5_49:                               # %if.then86
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $s4, %pc_lo12(fp)
	pcalau12i	$fp, %pc_hi20(this_file)
	beqz	$a0, .LBB5_59
# %bb.50:                               # %if.then89
                                        #   in Loop: Header=BB5_6 Depth=1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $s3, %pc_lo12(ftype)
	move	$a0, $zero
	st.d	$zero, $s4, %pc_lo12(fp)
	bnez	$a1, .LBB5_52
# %bb.51:                               # %cond.true94
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.hu	$a0, $fp, %pc_lo12(this_file)
	pcaddu18i	$ra, %call36(NextFile)
	jirl	$ra, $ra, 0
.LBB5_52:                               # %cond.end98
                                        #   in Loop: Header=BB5_6 Depth=1
	st.h	$a0, $fp, %pc_lo12(this_file)
	bnez	$a0, .LBB5_60
	b	.LBB5_32
.LBB5_53:                               # %if.else146
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.hu	$a0, $s3, %pc_lo12(ftype)
	move	$s4, $s8
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ori	$a1, $zero, 10
	bltu	$a1, $a0, .LBB5_76
# %bb.54:                               # %if.else146
                                        #   in Loop: Header=BB5_6 Depth=1
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI5_2)
	addi.d	$a1, $a1, %pc_lo12(.LJTI5_2)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB5_55:                               # %sw.bb148
                                        #   in Loop: Header=BB5_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(StartSym)
	ld.d	$a0, $a0, %got_pc_lo12(StartSym)
	ld.d	$a5, $a0, 0
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$s3, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 105
	ori	$a4, $zero, 2
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(NewToken)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 111
	move	$a1, $s3
	move	$a2, $zero
	move	$a3, $zero
	move	$a4, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(NewToken)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	move	$s4, $s8
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(next_token)
	b	.LBB5_74
.LBB5_56:                               # %if.then696
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.bu	$a4, $a0, 40
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a1, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 105
	move	$a2, $zero
	move	$a3, $zero
	move	$a5, $zero
	pcaddu18i	$ra, %call36(NewToken)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	b	.LBB5_5
.LBB5_57:                               # %if.else702
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.bu	$a4, $a0, 40
	andi	$a2, $a1, 255
	pcalau12i	$a1, %pc_hi20(file_pos)
	addi.d	$a1, $a1, %pc_lo12(file_pos)
	move	$a5, $a0
	move	$a0, $a2
.LBB5_58:                               # %do.cond1074
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(NewToken)
	jirl	$ra, $ra, 0
	b	.LBB5_5
.LBB5_59:                               # %if.then86.if.end101_crit_edge
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.hu	$a0, $fp, %pc_lo12(this_file)
	beqz	$a0, .LBB5_32
	.p2align	4, , 16
.LBB5_60:                               # %while.body106
                                        #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.h	$a0, $a1, 2
	st.w	$s7, $a1, 4
	bstrpick.d	$a0, $a0, 15, 0
	ori	$a2, $zero, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(OpenFile)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, %pc_lo12(fp)
	bnez	$a0, .LBB5_33
# %bb.61:                               # %if.end117
                                        #   in Loop: Header=BB5_60 Depth=2
	ld.hu	$a0, $fp, %pc_lo12(this_file)
	pcaddu18i	$ra, %call36(FullFileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a2, $a0, %pc_lo12(.L.str.28)
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a4, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 7
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $s3, %pc_lo12(ftype)
	bnez	$a0, .LBB5_71
# %bb.62:                               # %cond.end127
                                        #   in Loop: Header=BB5_60 Depth=2
	ld.hu	$a0, $fp, %pc_lo12(this_file)
	pcaddu18i	$ra, %call36(NextFile)
	jirl	$ra, $ra, 0
	st.h	$a0, $fp, %pc_lo12(this_file)
	bnez	$a0, .LBB5_60
	b	.LBB5_32
.LBB5_63:                               #   in Loop: Header=BB5_6 Depth=1
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	move	$fp, $zero
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
.LBB5_64:                               # %if.end575
                                        #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a0, $sp, 80
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beqz	$fp, .LBB5_66
# %bb.65:                               # %if.then579
                                        #   in Loop: Header=BB5_6 Depth=1
	pcaddu18i	$ra, %call36(SuppressScope)
	jirl	$ra, $ra, 0
.LBB5_66:                               # %if.end580
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.bu	$a0, $s3, 32
	addi.d	$a0, $a0, -11
	addi.d	$a4, $s3, 32
	bgeu	$a0, $s6, .LBB5_72
# %bb.67:                               # %if.end625
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$fp, $s4
	addi.d	$s5, $s3, 64
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, -3
	bltz	$a0, .LBB5_70
# %bb.68:                               # %land.lhs.true633
                                        #   in Loop: Header=BB5_6 Depth=1
	add.d	$s4, $s5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a1, $a0, %pc_lo12(.L.str.35)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_70
# %bb.69:                               # %if.then640
                                        #   in Loop: Header=BB5_6 Depth=1
	st.b	$zero, $s4, 0
.LBB5_70:                               # %if.end645
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.hu	$a0, $s0, 120
	addi.d	$a0, $a0, -112
	sltui	$a0, $a0, 1
	sub.d	$a4, $s6, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ori	$a3, $zero, 1
	move	$a0, $s5
	addi.d	$a2, $s3, 32
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	ld.bu	$a2, $s3, 32
	st.d	$s3, $a1, 0
	addi.d	$a3, $a2, -11
	sltui	$a3, $a3, 2
	addi.d	$a4, $s3, 33
	pcalau12i	$a5, %got_pc_hi20(zz_lengths)
	ld.d	$a5, $a5, %got_pc_lo12(zz_lengths)
	add.d	$a2, $a5, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	ld.bu	$a2, $a2, 0
	pcalau12i	$a3, %got_pc_hi20(zz_size)
	ld.d	$a3, $a3, %got_pc_lo12(zz_size)
	st.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	pcalau12i	$a4, %got_pc_hi20(zz_free)
	ld.d	$a4, $a4, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a4, $a2
	st.d	$a2, $s3, 0
	ld.w	$a2, $a3, 0
	ld.d	$a1, $a1, 0
	slli.d	$a2, $a2, 3
	stx.d	$a1, $a4, $a2
	ori	$a2, $zero, 1
	ori	$a3, $zero, 1
	move	$a1, $zero
	move	$a4, $zero
	pcaddu18i	$ra, %call36(LexPush)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	move	$s4, $fp
	ld.d	$s5, $fp, %pc_lo12(chpt)
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$fp, $fp, 1
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB5_5
.LBB5_71:                               # %cond.end127.thread
                                        #   in Loop: Header=BB5_6 Depth=1
	st.h	$zero, $fp, %pc_lo12(this_file)
	b	.LBB5_32
.LBB5_72:                               # %if.then592
                                        #   in Loop: Header=BB5_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a2, $a0, %pc_lo12(.L.str.34)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 10
	ori	$a3, $zero, 2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.bu	$a1, $s3, 32
	st.d	$s3, $a0, 0
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $s3, 33
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a2, $a2, %got_pc_lo12(zz_size)
	st.w	$a1, $a2, 0
	slli.d	$a1, $a1, 3
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	ldx.d	$a1, $a3, $a1
	st.d	$a1, $s3, 0
	ld.w	$a1, $a2, 0
	ld.d	$a2, $a0, 0
	move	$a0, $zero
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a3, $a1
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB5_5
.LBB5_73:                               # %sw.bb152
                                        #   in Loop: Header=BB5_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(FilterOutSym)
	ld.d	$a0, $a0, %got_pc_lo12(FilterOutSym)
	ld.d	$a5, $a0, 0
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a1, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 105
	ori	$a4, $zero, 2
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(NewToken)
	jirl	$ra, $ra, 0
.LBB5_74:                               # %do.cond1074
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s0, $a1, %pc_lo12(startline)
	move	$s5, $s0
	b	.LBB5_77
.LBB5_75:                               # %sw.bb155
                                        #   in Loop: Header=BB5_6 Depth=1
	pcaddu18i	$ra, %call36(LexPop)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s4, %pc_lo12(chpt)
	move	$a0, $zero
	move	$s3, $zero
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	b	.LBB5_5
.LBB5_76:                               # %sw.default
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a2, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a5, $a0, %pc_lo12(.L.str.29)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB5_77:                               # %do.cond1074
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB5_5
.LBB5_78:                               # %if.then507
                                        #   in Loop: Header=BB5_6 Depth=1
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(UnSuppressScope)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$fp, $a1, %got_pc_lo12(zz_hold)
	ld.bu	$a1, $a0, 32
	st.d	$a0, $fp, 0
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $a0, 33
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a3, $a2, %got_pc_lo12(zz_size)
	st.w	$a1, $a3, 0
	slli.d	$a2, $a1, 3
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a1, $a1, %got_pc_lo12(zz_free)
	ldx.d	$a2, $a1, $a2
	st.d	$a2, $a0, 0
	ld.w	$a0, $a3, 0
	ld.d	$a5, $fp, 0
	ld.bu	$a2, $a4, 102
	slli.d	$a0, $a0, 3
	stx.d	$a5, $a1, $a0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	st.w	$a2, $a3, 0
	beqz	$a0, .LBB5_80
# %bb.79:                               # %if.else551
                                        #   in Loop: Header=BB5_6 Depth=1
	st.d	$a0, $fp, 0
	ld.d	$a3, $a0, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a3, $a1, 0
	b	.LBB5_81
.LBB5_80:                               # %if.then549
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
.LBB5_81:                               # %if.end560
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	ori	$a1, $zero, 102
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $sp, 80
	ori	$fp, $zero, 1
	b	.LBB5_64
.LBB5_82:
	st.d	$zero, $a4, %pc_lo12(next_token)
	b	.LBB5_218
.LBB5_83:                               # %if.then219
	sub.d	$s1, $s5, $s0
	slli.d	$a0, $s1, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 68
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 35
	addi.d	$a2, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s6, $a0, %got_pc_lo12(zz_size)
	ori	$a0, $zero, 265
	st.w	$a2, $s6, 0
	bltu	$a2, $a0, .LBB5_99
# %bb.84:                               # %if.then233
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a2, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a4, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a0, $a0, 0
	b	.LBB5_110
.LBB5_85:                               # %sw.bb713
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(startline)
	ld.wu	$a1, $s8, 4
	sub.d	$a0, $s0, $a0
	bstrins.d	$a1, $a0, 63, 20
	st.w	$a1, $s8, 4
	ori	$a5, $zero, 9
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI5_1)
	addi.d	$s4, $a0, %pc_lo12(.LJTI5_1)
	ori	$s3, $zero, 48
	ori	$s8, $zero, 55
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$fp, $s5
	move	$s6, $s5
	b	.LBB5_87
.LBB5_86:                               # %sw.default1064
                                        #   in Loop: Header=BB5_87 Depth=1
	ori	$a0, $zero, 2
	ori	$a1, $zero, 14
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 9
	.p2align	4, , 16
.LBB5_87:                               # %do.body724
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_92 Depth 2
	move	$s7, $s6
	ld.bu	$a0, $s6, 0
	move	$s2, $fp
	st.b	$a0, $fp, 0
	ldx.bu	$a0, $s1, $a0
	addi.d	$s6, $s6, 1
	addi.d	$fp, $fp, 1
	bltu	$a5, $a0, .LBB5_86
# %bb.88:                               # %do.body724
                                        #   in Loop: Header=BB5_87 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	add.d	$a0, $s4, $a0
	jr	$a0
.LBB5_89:                               # %sw.bb917
                                        #   in Loop: Header=BB5_87 Depth=1
	ld.bu	$a0, $s6, 0
	ldx.bu	$a1, $s1, $a0
	andi	$a1, $a1, 254
	ori	$a2, $zero, 8
	beq	$a1, $a2, .LBB5_129
# %bb.90:                               # %if.else1021
                                        #   in Loop: Header=BB5_87 Depth=1
	andi	$a1, $a0, 248
	bne	$a1, $s3, .LBB5_97
# %bb.91:                               # %do.body1030.preheader
                                        #   in Loop: Header=BB5_87 Depth=1
	move	$a2, $zero
	move	$a1, $zero
	addi.d	$a4, $s7, 2
	ori	$a6, $zero, 2
	.p2align	4, , 16
.LBB5_92:                               # %do.body1030
                                        #   Parent Loop BB5_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s6, $a4
	andi	$a4, $a0, 255
	ld.bu	$a0, $s6, 0
	alsl.d	$a1, $a1, $a4, 3
	addi.w	$a1, $a1, -48
	bltu	$a0, $s3, .LBB5_95
# %bb.93:                               # %land.lhs.true1041
                                        #   in Loop: Header=BB5_92 Depth=2
	bltu	$s8, $a0, .LBB5_95
# %bb.94:                               # %land.lhs.true1041
                                        #   in Loop: Header=BB5_92 Depth=2
	move	$a3, $a2
	addi.w	$a2, $a2, 1
	addi.d	$a4, $s6, 1
	bltu	$a3, $a6, .LBB5_92
.LBB5_95:                               # %do.end1050
                                        #   in Loop: Header=BB5_87 Depth=1
	beqz	$a1, .LBB5_98
# %bb.96:                               # %if.else1055
                                        #   in Loop: Header=BB5_87 Depth=1
	st.b	$a1, $s2, 0
	b	.LBB5_87
.LBB5_97:                               # %if.else1059
                                        #   in Loop: Header=BB5_87 Depth=1
	addi.d	$s6, $s7, 2
	st.b	$a0, $s2, 0
	b	.LBB5_87
.LBB5_98:                               # %if.then1053
                                        #   in Loop: Header=BB5_87 Depth=1
	ori	$a0, $zero, 2
	ori	$a1, $zero, 13
	ori	$a3, $zero, 2
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 9
	move	$fp, $s2
	b	.LBB5_87
.LBB5_99:                               # %if.else235
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB5_109
# %bb.100:                              # %if.else242
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_110
.LBB5_101:                              # %if.then306
	move	$s4, $s3
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a2, $a0, %pc_lo12(.L.str.31)
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$s1, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 8
	ori	$a3, $zero, 2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	sub.d	$s2, $s5, $s0
	slli.d	$a0, $s2, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 68
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 35
	addi.d	$a2, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$s6, $a0, %got_pc_lo12(zz_size)
	ori	$a0, $zero, 265
	st.w	$a2, $s6, 0
	bltu	$a2, $a0, .LBB5_107
# %bb.102:                              # %if.then323
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a2, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a4, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a0, $a0, 0
	b	.LBB5_132
.LBB5_103:                              # %if.then401
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a1, %got_pc_lo12(zz_hold)
	ld.d	$a1, $a0, 24
	st.d	$a0, $a2, 0
	move	$s4, $s8
	beq	$a1, $a0, .LBB5_118
# %bb.104:                              # %cond.false408
	pcalau12i	$a2, %got_pc_hi20(zz_res)
	ld.d	$a2, $a2, %got_pc_lo12(zz_res)
	ld.d	$a3, $a0, 16
	st.d	$a1, $a2, 0
	st.d	$a3, $a1, 16
	st.d	$a1, $a3, 24
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	b	.LBB5_119
.LBB5_105:                              # %sw.bb731
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a2, $a0, %pc_lo12(.L.str.37)
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$s1, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 11
	ori	$a3, $zero, 2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	sub.d	$s3, $s2, $s5
	slli.d	$a0, $s3, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 68
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 35
	addi.d	$a2, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$fp, $a0, %got_pc_lo12(zz_size)
	ori	$a0, $zero, 265
	st.w	$a2, $fp, 0
	bltu	$a2, $a0, .LBB5_127
# %bb.106:                              # %if.then750
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a2, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a4, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a0, $a0, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	b	.LBB5_154
.LBB5_107:                              # %if.else325
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	beqz	$a0, .LBB5_131
# %bb.108:                              # %if.else332
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_132
.LBB5_109:                              # %if.then240
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a1, $a0, %pc_lo12(file_pos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB5_110:                              # %if.end251
	move	$s3, $s4
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 33
	ori	$a1, $zero, 11
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.h	$a1, $a2, 2
	move	$a3, $a2
	ld.w	$a2, $a2, 4
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.h	$a1, $a0, 34
	st.w	$a2, $a0, 36
	move	$s4, $s8
	blez	$s1, .LBB5_116
# %bb.111:                              # %iter.check500
	ori	$a1, $zero, 16
	move	$s8, $a3
	bltu	$s1, $a1, .LBB5_113
# %bb.112:                              # %vector.memcheck496
	sub.d	$a1, $a0, $s0
	addi.d	$a2, $a1, 64
	ori	$a1, $zero, 32
	bgeu	$a2, $a1, .LBB5_120
.LBB5_113:
	move	$a1, $zero
.LBB5_114:                              # %for.body.preheader
	add.d	$a2, $a1, $a0
	addi.d	$a2, $a2, 64
	add.d	$a1, $s0, $a1
	sub.d	$a3, $a1, $s5
	.p2align	4, , 16
.LBB5_115:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	st.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_115
	b	.LBB5_117
.LBB5_116:
	move	$s1, $zero
	move	$s8, $a3
.LBB5_117:                              # %for.end
	add.d	$a1, $a0, $s1
	st.b	$zero, $a1, 64
	b	.LBB5_215
.LBB5_118:
	move	$a1, $zero
.LBB5_119:                              # %cond.end430
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a2, %pc_lo12(next_token)
	b	.LBB5_215
.LBB5_120:                              # %vector.main.loop.iter.check502
	bgeu	$s1, $a1, .LBB5_140
# %bb.121:
	move	$a1, $zero
.LBB5_122:                              # %vec.epilog.ph517
	move	$a4, $a1
	bstrpick.d	$a1, $s1, 62, 4
	slli.d	$a1, $a1, 4
	sub.d	$a2, $a4, $a1
	add.d	$a3, $a4, $a0
	addi.d	$a3, $a3, 64
	add.d	$a4, $s0, $a4
.LBB5_123:                              # %vec.epilog.vector.body520
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB5_123
# %bb.124:                              # %vec.epilog.middle.block524
	bne	$s1, $a1, .LBB5_114
	b	.LBB5_117
.LBB5_125:                              # %sw.bb825
	sub.d	$s1, $s2, $s5
	slli.d	$a0, $s1, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 68
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 35
	addi.d	$a2, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$fp, $a0, %got_pc_lo12(zz_size)
	ori	$a0, $zero, 265
	st.w	$a2, $fp, 0
	bltu	$a2, $a0, .LBB5_149
# %bb.126:                              # %if.then842
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a2, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a4, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a0, $a0, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB5_170
.LBB5_127:                              # %if.else752
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_153
# %bb.128:                              # %if.else759
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_154
.LBB5_129:                              # %if.then930
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a2, $a0, %pc_lo12(.L.str.37)
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$s1, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 12
	ori	$a3, $zero, 2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	sub.d	$s3, $s2, $s5
	slli.d	$a0, $s3, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, 68
	add.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 35
	addi.d	$a2, $a0, 1
	pcalau12i	$a0, %got_pc_hi20(zz_size)
	ld.d	$fp, $a0, %got_pc_lo12(zz_size)
	ori	$a0, $zero, 265
	st.w	$a2, $fp, 0
	bltu	$a2, $a0, .LBB5_151
# %bb.130:                              # %if.then947
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a2, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a4, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$a0, $a0, 0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	b	.LBB5_177
.LBB5_131:                              # %if.then330
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a1, $a0, %pc_lo12(file_pos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB5_132:                              # %if.end341
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 33
	ori	$a1, $zero, 11
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.h	$a1, $s1, 2
	ld.w	$a2, $s1, 4
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.h	$a1, $a0, 34
	st.w	$a2, $a0, 36
	blez	$s2, .LBB5_138
# %bb.133:                              # %iter.check469
	ori	$a1, $zero, 16
	bltu	$s2, $a1, .LBB5_135
# %bb.134:                              # %vector.memcheck465
	sub.d	$a1, $a0, $s0
	addi.d	$a2, $a1, 64
	ori	$a1, $zero, 32
	bgeu	$a2, $a1, .LBB5_144
.LBB5_135:
	move	$a1, $zero
	move	$s3, $s4
	move	$s4, $s8
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
.LBB5_136:                              # %for.body385.preheader
	add.d	$a2, $a1, $a0
	addi.d	$a2, $a2, 64
	add.d	$a1, $s0, $a1
	sub.d	$a3, $a1, $s5
	.p2align	4, , 16
.LBB5_137:                              # %for.body385
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	st.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_137
	b	.LBB5_139
.LBB5_138:
	move	$s2, $zero
	move	$s3, $s4
	move	$s4, $s8
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
.LBB5_139:                              # %for.end393
	add.d	$a1, $a0, $s2
	st.b	$zero, $a1, 64
	b	.LBB5_215
.LBB5_140:                              # %vector.ph503
	andi	$a2, $s1, 16
	bstrpick.d	$a1, $s1, 62, 5
	slli.d	$a1, $a1, 5
	addi.d	$a3, $a0, 80
	addi.d	$a4, $s0, 16
	move	$a5, $a1
.LBB5_141:                              # %vector.body506
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_141
# %bb.142:                              # %middle.block511
	beq	$s1, $a1, .LBB5_117
# %bb.143:                              # %vec.epilog.iter.check515
	bnez	$a2, .LBB5_122
	b	.LBB5_114
.LBB5_144:                              # %vector.main.loop.iter.check471
	move	$s3, $s4
	bgeu	$s2, $a1, .LBB5_165
# %bb.145:
	move	$a1, $zero
	move	$s4, $s8
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
.LBB5_146:                              # %vec.epilog.ph486
	move	$a4, $a1
	bstrpick.d	$a1, $s2, 62, 4
	slli.d	$a1, $a1, 4
	sub.d	$a2, $a4, $a1
	add.d	$a3, $a4, $a0
	addi.d	$a3, $a3, 64
	add.d	$a4, $s0, $a4
.LBB5_147:                              # %vec.epilog.vector.body489
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB5_147
# %bb.148:                              # %vec.epilog.middle.block493
	bne	$s2, $a1, .LBB5_136
	b	.LBB5_139
.LBB5_149:                              # %if.else844
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_169
# %bb.150:                              # %if.else851
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_170
.LBB5_151:                              # %if.else949
	pcalau12i	$a0, %got_pc_hi20(zz_free)
	ld.d	$a1, $a0, %got_pc_lo12(zz_free)
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_176
# %bb.152:                              # %if.else956
	alsl.d	$a1, $a2, $a1, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB5_177
.LBB5_153:                              # %if.then757
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a1, $a0, %pc_lo12(file_pos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB5_154:                              # %if.end768
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 33
	ori	$a1, $zero, 12
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.h	$a1, $s1, 2
	ld.w	$a2, $s1, 4
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.h	$a1, $a0, 34
	st.w	$a2, $a0, 36
	blez	$s3, .LBB5_157
# %bb.155:                              # %iter.check438
	ori	$a1, $zero, 16
	bgeu	$s3, $a1, .LBB5_158
# %bb.156:
	move	$a1, $zero
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	b	.LBB5_192
.LBB5_157:
	move	$s3, $zero
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	b	.LBB5_194
.LBB5_158:                              # %vector.memcheck434
	sub.d	$a1, $a0, $s0
	addi.d	$a2, $a1, 63
	ori	$a1, $zero, 32
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a2, $a1, .LBB5_160
# %bb.159:
	move	$a1, $zero
	b	.LBB5_192
.LBB5_160:                              # %vector.main.loop.iter.check440
	bgeu	$s3, $a1, .LBB5_188
# %bb.161:
	move	$a1, $zero
.LBB5_162:                              # %vec.epilog.ph455
	move	$a4, $a1
	bstrpick.d	$a1, $s3, 62, 4
	slli.d	$a1, $a1, 4
	sub.d	$a2, $a4, $a1
	add.d	$a3, $a4, $a0
	addi.d	$a3, $a3, 64
	add.d	$a4, $a4, $s0
	addi.d	$a4, $a4, 1
.LBB5_163:                              # %vec.epilog.vector.body458
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB5_163
# %bb.164:                              # %vec.epilog.middle.block462
	bne	$s3, $a1, .LBB5_192
	b	.LBB5_194
.LBB5_165:                              # %vector.ph472
	andi	$a2, $s2, 16
	bstrpick.d	$a1, $s2, 62, 5
	slli.d	$a1, $a1, 5
	addi.d	$a3, $a0, 80
	addi.d	$a4, $s0, 16
	move	$a5, $a1
	move	$s4, $s8
.LBB5_166:                              # %vector.body475
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_166
# %bb.167:                              # %middle.block480
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	beq	$s2, $a1, .LBB5_139
# %bb.168:                              # %vec.epilog.iter.check484
	beqz	$a2, .LBB5_136
	b	.LBB5_146
.LBB5_169:                              # %if.then849
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a1, $a0, %pc_lo12(file_pos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB5_170:                              # %if.end860
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 33
	ori	$a1, $zero, 12
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.h	$a1, $s8, 2
	ld.w	$a2, $s8, 4
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.h	$a1, $a0, 34
	st.w	$a2, $a0, 36
	blez	$s1, .LBB5_173
# %bb.171:                              # %iter.check407
	ori	$a1, $zero, 16
	bgeu	$s1, $a1, .LBB5_174
# %bb.172:
	move	$a1, $zero
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	b	.LBB5_204
.LBB5_173:
	move	$s1, $zero
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	b	.LBB5_206
.LBB5_174:                              # %vector.memcheck403
	sub.d	$a1, $a0, $s0
	addi.d	$a2, $a1, 63
	ori	$a1, $zero, 32
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a2, $a1, .LBB5_183
# %bb.175:
	move	$a1, $zero
	b	.LBB5_204
.LBB5_176:                              # %if.then954
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a1, $a0, %pc_lo12(file_pos)
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$a0, $a1, 0
.LBB5_177:                              # %if.end965
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 33
	ori	$a1, $zero, 12
	st.b	$a1, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 0
	ld.h	$a1, $s1, 2
	ld.w	$a2, $s1, 4
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.h	$a1, $a0, 34
	st.w	$a2, $a0, 36
	blez	$s3, .LBB5_180
# %bb.178:                              # %iter.check
	ori	$a1, $zero, 16
	bgeu	$s3, $a1, .LBB5_181
# %bb.179:
	move	$a1, $zero
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	b	.LBB5_211
.LBB5_180:
	move	$s3, $zero
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	b	.LBB5_213
.LBB5_181:                              # %vector.memcheck
	sub.d	$a1, $a0, $s0
	addi.d	$a2, $a1, 63
	ori	$a1, $zero, 32
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a2, $a1, .LBB5_195
# %bb.182:
	move	$a1, $zero
	b	.LBB5_211
.LBB5_183:                              # %vector.main.loop.iter.check409
	bgeu	$s1, $a1, .LBB5_200
# %bb.184:
	move	$a1, $zero
.LBB5_185:                              # %vec.epilog.ph424
	move	$a4, $a1
	bstrpick.d	$a1, $s1, 62, 4
	slli.d	$a1, $a1, 4
	sub.d	$a2, $a4, $a1
	add.d	$a3, $a4, $a0
	addi.d	$a3, $a3, 64
	add.d	$a4, $a4, $s0
	addi.d	$a4, $a4, 1
.LBB5_186:                              # %vec.epilog.vector.body427
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB5_186
# %bb.187:                              # %vec.epilog.middle.block431
	bne	$s1, $a1, .LBB5_204
	b	.LBB5_206
.LBB5_188:                              # %vector.ph441
	andi	$a2, $s3, 16
	bstrpick.d	$a1, $s3, 62, 5
	slli.d	$a1, $a1, 5
	addi.d	$a3, $a0, 80
	addi.d	$a4, $s0, 17
	move	$a5, $a1
.LBB5_189:                              # %vector.body444
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_189
# %bb.190:                              # %middle.block449
	beq	$s3, $a1, .LBB5_194
# %bb.191:                              # %vec.epilog.iter.check453
	bnez	$a2, .LBB5_162
.LBB5_192:                              # %for.body813.preheader
	add.d	$a2, $a1, $a0
	addi.d	$a2, $a2, 64
	add.d	$a1, $a1, $s0
	addi.d	$a1, $a1, 1
	sub.d	$a3, $a1, $s2
	.p2align	4, , 16
.LBB5_193:                              # %for.body813
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	st.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_193
.LBB5_194:                              # %for.end821
	add.d	$a1, $a0, $s3
	st.b	$zero, $a1, 64
	move	$s5, $s7
	b	.LBB5_214
.LBB5_195:                              # %vector.main.loop.iter.check
	bgeu	$s3, $a1, .LBB5_207
# %bb.196:
	move	$a1, $zero
.LBB5_197:                              # %vec.epilog.ph
	move	$a4, $a1
	bstrpick.d	$a1, $s3, 62, 4
	slli.d	$a1, $a1, 4
	sub.d	$a2, $a4, $a1
	add.d	$a3, $a4, $a0
	addi.d	$a3, $a3, 64
	add.d	$a4, $a4, $s0
	addi.d	$a4, $a4, 1
.LBB5_198:                              # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, 0
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB5_198
# %bb.199:                              # %vec.epilog.middle.block
	bne	$s3, $a1, .LBB5_211
	b	.LBB5_213
.LBB5_200:                              # %vector.ph410
	andi	$a2, $s1, 16
	bstrpick.d	$a1, $s1, 62, 5
	slli.d	$a1, $a1, 5
	addi.d	$a3, $a0, 80
	addi.d	$a4, $s0, 17
	move	$a5, $a1
.LBB5_201:                              # %vector.body413
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_201
# %bb.202:                              # %middle.block418
	beq	$s1, $a1, .LBB5_206
# %bb.203:                              # %vec.epilog.iter.check422
	bnez	$a2, .LBB5_185
.LBB5_204:                              # %for.body905.preheader
	add.d	$a2, $a1, $a0
	addi.d	$a2, $a2, 64
	add.d	$a1, $a1, $s0
	addi.d	$a1, $a1, 1
	sub.d	$a3, $a1, $s2
.LBB5_205:                              # %for.body905
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	st.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_205
.LBB5_206:                              # %for.end913
	add.d	$a1, $a0, $s1
	st.b	$zero, $a1, 64
	move	$s5, $s6
	b	.LBB5_215
.LBB5_207:                              # %vector.ph
	andi	$a2, $s3, 16
	bstrpick.d	$a1, $s3, 62, 5
	slli.d	$a1, $a1, 5
	addi.d	$a3, $a0, 80
	addi.d	$a4, $s0, 17
	move	$a5, $a1
.LBB5_208:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_208
# %bb.209:                              # %middle.block
	beq	$s3, $a1, .LBB5_213
# %bb.210:                              # %vec.epilog.iter.check
	bnez	$a2, .LBB5_197
.LBB5_211:                              # %for.body1009.preheader
	add.d	$a2, $a1, $a0
	addi.d	$a2, $a2, 64
	add.d	$a1, $a1, $s0
	addi.d	$a1, $a1, 1
	sub.d	$a3, $a1, $s2
.LBB5_212:                              # %for.body1009
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a1, 0
	st.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bnez	$a3, .LBB5_212
.LBB5_213:                              # %for.end1017
	add.d	$a1, $a0, $s3
	st.b	$zero, $a1, 64
	move	$s5, $s6
.LBB5_214:                              # %do.end1077
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
.LBB5_215:                              # %do.end1077
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(startline)
	sub.d	$a1, $s5, $a1
	ori	$a2, $zero, 2048
	blt	$a1, $a2, .LBB5_217
# %bb.216:                              # %if.then1083
	ld.wu	$a1, $s8, 4
	ori	$a2, $zero, 1
	bstrins.d	$a1, $a2, 63, 20
	st.w	$a1, $s8, 4
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a2, $a1, %pc_lo12(.L.str.41)
	move	$s0, $fp
	move	$fp, $a0
	ori	$a0, $zero, 2
	ori	$a1, $zero, 15
	ori	$a3, $zero, 1
	move	$a4, $s8
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$fp, $s0
.LBB5_217:                              # %if.end1088
	st.d	$s5, $s4, %pc_lo12(chpt)
	st.b	$fp, $a0, 42
	st.b	$s3, $a0, 41
.LBB5_218:                              # %cleanup1093
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
.Lfunc_end5:
	.size	LexGetToken, .Lfunc_end5-LexGetToken
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_8-.LJTI5_0
	.word	.LBB5_20-.LJTI5_0
	.word	.LBB5_85-.LJTI5_0
	.word	.LBB5_12-.LJTI5_0
	.word	.LBB5_16-.LJTI5_0
	.word	.LBB5_4-.LJTI5_0
	.word	.LBB5_4-.LJTI5_0
	.word	.LBB5_30-.LJTI5_0
	.word	.LBB5_28-.LJTI5_0
	.word	.LBB5_31-.LJTI5_0
.LJTI5_1:
	.word	.LBB5_87-.LJTI5_1
	.word	.LBB5_87-.LJTI5_1
	.word	.LBB5_125-.LJTI5_1
	.word	.LBB5_89-.LJTI5_1
	.word	.LBB5_87-.LJTI5_1
	.word	.LBB5_87-.LJTI5_1
	.word	.LBB5_87-.LJTI5_1
	.word	.LBB5_87-.LJTI5_1
	.word	.LBB5_105-.LJTI5_1
	.word	.LBB5_105-.LJTI5_1
.LJTI5_2:
	.word	.LBB5_55-.LJTI5_2
	.word	.LBB5_75-.LJTI5_2
	.word	.LBB5_76-.LJTI5_2
	.word	.LBB5_55-.LJTI5_2
	.word	.LBB5_76-.LJTI5_2
	.word	.LBB5_76-.LJTI5_2
	.word	.LBB5_76-.LJTI5_2
	.word	.LBB5_76-.LJTI5_2
	.word	.LBB5_76-.LJTI5_2
	.word	.LBB5_76-.LJTI5_2
	.word	.LBB5_73-.LJTI5_2
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function srcnext
	.type	srcnext,@function
srcnext:                                # @srcnext
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$s1, %pc_hi20(blksize)
	ld.w	$a2, $s1, %pc_lo12(blksize)
	pcalau12i	$fp, %pc_hi20(chpt)
	ld.d	$a0, $fp, %pc_lo12(chpt)
	pcalau12i	$s0, %pc_hi20(limit)
	ld.d	$a1, $s0, %pc_lo12(limit)
	beqz	$a2, .LBB6_5
# %bb.1:                                # %entry
	bgeu	$a0, $a1, .LBB6_5
# %bb.2:                                # %if.then
	pcalau12i	$a2, %pc_hi20(buf)
	ld.d	$a2, $a2, %pc_lo12(buf)
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 10
	.p2align	4, , 16
.LBB6_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a1, -2
	st.b	$a4, $a2, -2
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -1
	bne	$a4, $a3, .LBB6_3
# %bb.4:                                # %while.end
	pcalau12i	$a3, %pc_hi20(frst)
	st.d	$a2, $a3, %pc_lo12(frst)
	st.d	$a1, $s0, %pc_lo12(limit)
	st.w	$zero, $s1, %pc_lo12(blksize)
.LBB6_5:                                # %if.end
	bltu	$a0, $a1, .LBB6_16
# %bb.6:                                # %if.then8
	bgeu	$a1, $a0, .LBB6_8
# %bb.7:                                # %if.then11
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a4, $a0, %pc_lo12(file_pos)
	ld.wu	$a0, $a4, 4
	ori	$a1, $zero, 1
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $a4, 4
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a2, $a0, %pc_lo12(.L.str.41)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 5
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB6_8:                                # %if.end12
	pcalau12i	$s3, %pc_hi20(frst)
	ld.d	$a1, $s3, %pc_lo12(frst)
	pcalau12i	$s2, %pc_hi20(buf)
	ld.d	$a0, $s2, %pc_lo12(buf)
	pcalau12i	$a2, %pc_hi20(fp)
	ld.d	$a3, $a2, %pc_lo12(fp)
	st.d	$a1, $fp, %pc_lo12(chpt)
	lu12i.w	$a2, 2
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	st.w	$a0, $s1, %pc_lo12(blksize)
	blez	$a1, .LBB6_10
# %bb.9:                                # %if.then17
	ld.d	$a2, $s2, %pc_lo12(buf)
	bstrpick.d	$a3, $a0, 30, 0
	add.d	$a3, $a2, $a3
	ld.bu	$a3, $a3, -1
	pcalau12i	$a4, %pc_hi20(last_char)
	st.b	$a3, $a4, %pc_lo12(last_char)
	lu12i.w	$a4, 1
	ori	$a4, $a4, 4095
	bge	$a4, $a1, .LBB6_11
	b	.LBB6_14
.LBB6_10:                               # %if.end12.if.end20_crit_edge
	pcalau12i	$a2, %pc_hi20(last_char)
	ld.bu	$a3, $a2, %pc_lo12(last_char)
	ld.d	$a2, $s2, %pc_lo12(buf)
	lu12i.w	$a4, 1
	ori	$a4, $a4, 4095
	blt	$a4, $a1, .LBB6_14
.LBB6_11:                               # %if.end20
	ori	$a4, $zero, 10
	beq	$a3, $a4, .LBB6_14
# %bb.12:                               # %if.then27
	addi.w	$a1, $a0, 1
	st.w	$a1, $s1, %pc_lo12(blksize)
	add.d	$a0, $a2, $a1
	st.b	$a4, $a0, -1
	pcalau12i	$a0, %pc_hi20(ftype)
	ld.hu	$a0, $a0, %pc_lo12(ftype)
	pcalau12i	$a3, %pc_hi20(last_char)
	ori	$a5, $zero, 3
	st.b	$a4, $a3, %pc_lo12(last_char)
	bne	$a0, $a5, .LBB6_14
# %bb.13:                               # %if.then34
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a4, $a0, %pc_lo12(file_pos)
	st.w	$zero, $a4, 4
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 25
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s2, %pc_lo12(buf)
	ld.w	$a1, $s1, %pc_lo12(blksize)
.LBB6_14:                               # %if.end46
	st.d	$a2, $s3, %pc_lo12(frst)
	add.d	$a0, $a2, $a1
	st.d	$a0, $s0, %pc_lo12(limit)
	ori	$a3, $zero, 10
	stx.b	$a3, $a2, $a1
	ld.d	$a1, $fp, %pc_lo12(chpt)
	bltu	$a1, $a0, .LBB6_16
# %bb.15:                               # %if.then49
	ld.d	$a0, $s2, %pc_lo12(buf)
	st.d	$a0, $s0, %pc_lo12(limit)
	st.d	$a0, $fp, %pc_lo12(chpt)
	st.b	$zero, $a0, 0
.LBB6_16:                               # %if.end50
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	srcnext, .Lfunc_end6-srcnext
                                        # -- End function
	.globl	LexScanVerbatim                 # -- Begin function LexScanVerbatim
	.p2align	5
	.type	LexScanVerbatim,@function
LexScanVerbatim:                        # @LexScanVerbatim
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
	pcalau12i	$a4, %pc_hi20(next_token)
	ld.d	$a4, $a4, %pc_lo12(next_token)
	move	$s0, $a3
	move	$s1, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a4, .LBB7_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a2, $a0, %pc_lo12(.L.str.42)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 16
	ori	$a3, $zero, 1
	move	$a4, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_2:                                # %if.end
	st.d	$s1, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(chpt)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s6, $a0, %pc_lo12(chpt)
	st.w	$zero, $sp, 116
	sltui	$a2, $s0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	masknez	$a0, $a0, $a2
	pcalau12i	$a1, %pc_hi20(.L.str.45)
	addi.d	$a1, $a1, %pc_lo12(.L.str.45)
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s1, $zero, 1
	pcalau12i	$a0, %pc_hi20(chtbl)
	addi.d	$s7, $a0, %pc_lo12(chtbl)
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a0, $a0, %pc_lo12(file_pos)
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.LJTI7_0)
	addi.d	$s4, $a0, %pc_lo12(.LJTI7_0)
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	move	$s5, $zero
	move	$s3, $zero
	ori	$s0, $zero, 511
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_3:                                # %for.end
                                        #   in Loop: Header=BB7_6 Depth=1
	beqz	$fp, .LBB7_27
.LBB7_4:                                # %if.else52
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.bu	$a0, $s8, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %while.body
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$s1, $zero
	move	$s3, $zero
.LBB7_6:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_63 Depth 2
                                        #     Child Loop BB7_22 Depth 2
                                        #     Child Loop BB7_12 Depth 2
                                        #     Child Loop BB7_77 Depth 2
                                        #     Child Loop BB7_80 Depth 2
                                        #     Child Loop BB7_48 Depth 2
                                        #     Child Loop BB7_70 Depth 2
                                        #     Child Loop BB7_116 Depth 2
                                        #     Child Loop BB7_129 Depth 2
                                        #     Child Loop BB7_132 Depth 2
                                        #     Child Loop BB7_102 Depth 2
                                        #     Child Loop BB7_36 Depth 2
                                        #     Child Loop BB7_93 Depth 2
	move	$s8, $s6
	ld.bu	$a5, $s6, 0
	ldx.bu	$a0, $s7, $a5
	move	$s2, $s1
	addi.d	$s6, $s6, 1
	ori	$a1, $zero, 9
	bltu	$a1, $a0, .LBB7_57
# %bb.7:                                # %while.body
                                        #   in Loop: Header=BB7_6 Depth=1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s4, $a0
	add.d	$a0, $s4, $a0
	jr	$a0
.LBB7_8:                                # %sw.bb
                                        #   in Loop: Header=BB7_6 Depth=1
	blez	$s3, .LBB7_3
# %bb.9:                                # %for.body.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$s1, $sp, 632
	ori	$s2, $zero, 8
	b	.LBB7_12
	.p2align	4, , 16
.LBB7_10:                               # %if.else24
                                        #   in Loop: Header=BB7_12 Depth=2
	ld.bu	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB7_11:                               # %for.inc
                                        #   in Loop: Header=BB7_12 Depth=2
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	beqz	$s3, .LBB7_3
.LBB7_12:                               # %for.body
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$fp, .LBB7_10
# %bb.13:                               # %if.then5
                                        #   in Loop: Header=BB7_12 Depth=2
	ld.w	$a0, $sp, 116
	blt	$s0, $a0, .LBB7_11
# %bb.14:                               # %if.then8
                                        #   in Loop: Header=BB7_12 Depth=2
	ld.bu	$a1, $s1, 0
	ldx.bu	$a2, $s7, $a1
	bne	$a2, $s2, .LBB7_16
# %bb.15:                               # %if.then16
                                        #   in Loop: Header=BB7_12 Depth=2
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB7_11
.LBB7_16:                               # %if.else
                                        #   in Loop: Header=BB7_12 Depth=2
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a1, $a0, $a2
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_17:                               # %sw.bb57
                                        #   in Loop: Header=BB7_6 Depth=1
	ori	$s1, $zero, 1
	bnez	$s2, .LBB7_6
# %bb.18:                               # %if.then59
                                        #   in Loop: Header=BB7_6 Depth=1
	ori	$a0, $zero, 512
	bne	$s3, $a0, .LBB7_74
# %bb.19:                               # %for.body67.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$s1, $zero
	ori	$s2, $zero, 8
	ori	$s3, $zero, 512
	b	.LBB7_22
	.p2align	4, , 16
.LBB7_20:                               # %if.else92
                                        #   in Loop: Header=BB7_22 Depth=2
	addi.d	$a0, $sp, 632
	ldx.bu	$a0, $s1, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB7_21:                               # %for.inc98
                                        #   in Loop: Header=BB7_22 Depth=2
	addi.d	$s1, $s1, 1
	beq	$s1, $s3, .LBB7_73
.LBB7_22:                               # %for.body67
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$fp, .LBB7_20
# %bb.23:                               # %if.then70
                                        #   in Loop: Header=BB7_22 Depth=2
	ld.w	$a0, $sp, 116
	blt	$s0, $a0, .LBB7_21
# %bb.24:                               # %if.then73
                                        #   in Loop: Header=BB7_22 Depth=2
	addi.d	$a1, $sp, 632
	ldx.bu	$a1, $s1, $a1
	ldx.bu	$a2, $s7, $a1
	bne	$a2, $s2, .LBB7_26
# %bb.25:                               # %if.then81
                                        #   in Loop: Header=BB7_22 Depth=2
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB7_21
.LBB7_26:                               # %if.else84
                                        #   in Loop: Header=BB7_22 Depth=2
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a1, $a0, $a2
	b	.LBB7_21
.LBB7_27:                               # %if.then33
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a0, $sp, 116
	move	$s1, $zero
	move	$s3, $zero
	blt	$s0, $a0, .LBB7_6
# %bb.28:                               # %if.then36
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.bu	$a1, $s8, 0
	ldx.bu	$a2, $s7, $a1
	ori	$a3, $zero, 8
	bne	$a2, $a3, .LBB7_85
# %bb.29:                               # %if.then42
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB7_5
.LBB7_30:                               # %sw.bb176
                                        #   in Loop: Header=BB7_6 Depth=1
	ori	$a0, $zero, 125
	beq	$a5, $a0, .LBB7_88
# %bb.31:                               # %sw.bb176
                                        #   in Loop: Header=BB7_6 Depth=1
	ori	$s2, $zero, 8
	ori	$a0, $zero, 123
	bne	$a5, $a0, .LBB7_98
# %bb.32:                               # %for.cond183.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	blez	$s3, .LBB7_86
# %bb.33:                               # %for.body186.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$s1, $sp, 632
	b	.LBB7_36
	.p2align	4, , 16
.LBB7_34:                               # %if.else211
                                        #   in Loop: Header=BB7_36 Depth=2
	ld.bu	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB7_35:                               # %for.inc217
                                        #   in Loop: Header=BB7_36 Depth=2
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	beqz	$s3, .LBB7_86
.LBB7_36:                               # %for.body186
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$fp, .LBB7_34
# %bb.37:                               # %if.then189
                                        #   in Loop: Header=BB7_36 Depth=2
	ld.w	$a0, $sp, 116
	blt	$s0, $a0, .LBB7_35
# %bb.38:                               # %if.then192
                                        #   in Loop: Header=BB7_36 Depth=2
	ld.bu	$a1, $s1, 0
	ldx.bu	$a2, $s7, $a1
	bne	$a2, $s2, .LBB7_40
# %bb.39:                               # %if.then200
                                        #   in Loop: Header=BB7_36 Depth=2
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB7_35
.LBB7_40:                               # %if.else203
                                        #   in Loop: Header=BB7_36 Depth=2
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a1, $a0, $a2
	b	.LBB7_35
.LBB7_41:                               # %sw.bb394
                                        #   in Loop: Header=BB7_6 Depth=1
	ori	$a0, $zero, 64
	bne	$a5, $a0, .LBB7_75
# %bb.42:                               # %if.then399
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beqz	$a0, .LBB7_44
# %bb.43:                               # %land.lhs.true402
                                        #   in Loop: Header=BB7_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a1, $a0, %pc_lo12(.L.str.47)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_139
.LBB7_44:                               # %if.else406
                                        #   in Loop: Header=BB7_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$s1, $a0, %pc_lo12(.L.str.48)
	move	$a0, $s8
	move	$a1, $s1
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_46
# %bb.45:                               # %lor.lhs.false
                                        #   in Loop: Header=BB7_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	move	$a0, $s8
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_127
.LBB7_46:                               # %if.then411
                                        #   in Loop: Header=BB7_6 Depth=1
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$s2, $a0, %pc_lo12(.L.str.49)
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(StringBeginsWith)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	blez	$s3, .LBB7_49
# %bb.47:                               # %for.body417.lr.ph
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$s6, $sp, 632
	beqz	$fp, .LBB7_70
	.p2align	4, , 16
.LBB7_48:                               # %for.body417
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s6, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s6, $s6, 1
	bnez	$s3, .LBB7_48
.LBB7_49:                               # %for.end450
                                        #   in Loop: Header=BB7_6 Depth=1
	sltui	$s3, $s1, 1
	ori	$a0, $zero, 11
	masknez	$a0, $a0, $s3
	ori	$a1, $zero, 8
	maskeqz	$a1, $a1, $s3
	or	$a0, $a1, $a0
	add.d	$a0, $s8, $a0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, %pc_lo12(chpt)
	pcaddu18i	$ra, %call36(LexGetToken)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $a0, 32
	st.d	$a0, $sp, 104
	ori	$a2, $zero, 102
	beq	$a1, $a2, .LBB7_51
# %bb.50:                               # %if.then458
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a4, $a0, 32
	masknez	$a0, $s2, $s3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s3
	or	$a6, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a2, $a0, %pc_lo12(.L.str.50)
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a5, $a0, %pc_lo12(.L.str.32)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 18
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_51:                               # %if.end463
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a0, $sp, 104
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $zero
	pcaddu18i	$ra, %call36(Parse)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $a1, %pc_lo12(chpt)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(ReplaceWithTidy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.bu	$a0, $a0, 32
	addi.d	$a0, $a0, -11
	addi.d	$s2, $s1, 32
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB7_53
# %bb.52:                               # %if.then477
                                        #   in Loop: Header=BB7_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a2, $a0, %pc_lo12(.L.str.51)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 19
	ori	$a3, $zero, 1
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_53:                               # %if.end480
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a0, $s1, 64
	ori	$a1, $zero, 2
	sub.d	$a4, $a1, $s3
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	ori	$a3, $zero, 1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(DefineFile)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.bu	$a1, $s1, 32
	st.d	$s1, $a0, 0
	addi.d	$a2, $a1, -11
	sltui	$a2, $a2, 2
	addi.d	$a3, $s1, 33
	pcalau12i	$a4, %got_pc_hi20(zz_lengths)
	ld.d	$a4, $a4, %got_pc_lo12(zz_lengths)
	add.d	$a1, $a4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	ld.bu	$a1, $a1, 0
	pcalau12i	$a2, %got_pc_hi20(zz_size)
	ld.d	$a2, $a2, %got_pc_lo12(zz_size)
	st.w	$a1, $a2, 0
	slli.d	$a1, $a1, 3
	pcalau12i	$a3, %got_pc_hi20(zz_free)
	ld.d	$a3, $a3, %got_pc_lo12(zz_free)
	ldx.d	$a1, $a3, $a1
	st.d	$a1, $s1, 0
	ld.w	$a1, $a2, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $a3, $a1
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(OpenFile)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beqz	$a0, .LBB7_112
# %bb.54:                               # %if.end517
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -1
	bne	$a0, $s1, .LBB7_116
	b	.LBB7_113
.LBB7_55:                               # %sw.bb167
                                        #   in Loop: Header=BB7_6 Depth=1
	beqz	$fp, .LBB7_83
# %bb.56:                               # %if.else173
                                        #   in Loop: Header=BB7_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a2, $a0, %pc_lo12(.L.str.46)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 17
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s1, $s2
	b	.LBB7_6
.LBB7_57:                               # %sw.default
                                        #   in Loop: Header=BB7_6 Depth=1
	ori	$a0, $zero, 2
	ori	$a1, $zero, 22
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a4, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $zero
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	b	.LBB7_84
.LBB7_58:                               # %sw.bb107
                                        #   in Loop: Header=BB7_6 Depth=1
	bnez	$s2, .LBB7_111
# %bb.59:                               # %if.then109
                                        #   in Loop: Header=BB7_6 Depth=1
	ori	$a0, $zero, 512
	bne	$s3, $a0, .LBB7_110
# %bb.60:                               # %for.body117.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$s1, $zero
	ori	$s3, $zero, 512
	b	.LBB7_63
	.p2align	4, , 16
.LBB7_61:                               # %if.else142
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.d	$a0, $sp, 632
	ldx.bu	$a0, $s1, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB7_62:                               # %for.inc148
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.d	$s1, $s1, 1
	beq	$s1, $s3, .LBB7_109
.LBB7_63:                               # %for.body117
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$fp, .LBB7_61
# %bb.64:                               # %if.then120
                                        #   in Loop: Header=BB7_63 Depth=2
	ld.w	$a0, $sp, 116
	blt	$s0, $a0, .LBB7_62
# %bb.65:                               # %if.then123
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.d	$a1, $sp, 632
	ldx.bu	$a1, $s1, $a1
	ldx.bu	$a2, $s7, $a1
	ori	$a3, $zero, 8
	bne	$a2, $a3, .LBB7_67
# %bb.66:                               # %if.then131
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB7_62
.LBB7_67:                               # %if.else134
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a1, $a0, $a2
	b	.LBB7_62
	.p2align	4, , 16
.LBB7_68:                               # %if.then431.us
                                        #   in Loop: Header=BB7_70 Depth=2
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.LBB7_69:                               # %for.inc448.us
                                        #   in Loop: Header=BB7_70 Depth=2
	addi.d	$s3, $s3, -1
	addi.d	$s6, $s6, 1
	beqz	$s3, .LBB7_49
.LBB7_70:                               # %for.body417.us
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $sp, 116
	blt	$s0, $a0, .LBB7_69
# %bb.71:                               # %if.then423.us
                                        #   in Loop: Header=BB7_70 Depth=2
	ld.bu	$a1, $s6, 0
	ldx.bu	$a2, $s7, $a1
	ori	$a3, $zero, 8
	beq	$a2, $a3, .LBB7_68
# %bb.72:                               # %if.else434.us
                                        #   in Loop: Header=BB7_70 Depth=2
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a1, $a0, $a2
	b	.LBB7_69
.LBB7_73:                               # %if.end101.loopexit
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.bu	$a5, $s8, 0
	move	$s3, $zero
.LBB7_74:                               # %if.end101
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$s1, $zero
	addi.w	$a0, $s3, 1
	addi.d	$a1, $sp, 632
	stx.b	$a5, $s3, $a1
	move	$s3, $a0
	b	.LBB7_6
.LBB7_75:                               # %for.cond616.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	blez	$s3, .LBB7_3
# %bb.76:                               # %for.body619.lr.ph
                                        #   in Loop: Header=BB7_6 Depth=1
	ori	$s2, $zero, 8
	addi.d	$s1, $sp, 632
	beqz	$fp, .LBB7_80
	.p2align	4, , 16
.LBB7_77:                               # %for.body619
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	bnez	$s3, .LBB7_77
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_78:                               # %if.then633.us
                                        #   in Loop: Header=BB7_80 Depth=2
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.LBB7_79:                               # %for.inc650.us
                                        #   in Loop: Header=BB7_80 Depth=2
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	beqz	$s3, .LBB7_3
.LBB7_80:                               # %for.body619.us
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $sp, 116
	blt	$s0, $a0, .LBB7_79
# %bb.81:                               # %if.then625.us
                                        #   in Loop: Header=BB7_80 Depth=2
	ld.bu	$a1, $s1, 0
	ldx.bu	$a2, $s7, $a1
	beq	$a2, $s2, .LBB7_78
# %bb.82:                               # %if.else636.us
                                        #   in Loop: Header=BB7_80 Depth=2
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a1, $a0, $a2
	b	.LBB7_79
.LBB7_83:                               # %if.then170
                                        #   in Loop: Header=BB7_6 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a2, $a0, %pc_lo12(.L.str.43)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 22
	ori	$a3, $zero, 1
	ld.d	$a4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 8                     # 8-byte Folded Reload
.LBB7_84:                               # %while.body
                                        #   in Loop: Header=BB7_6 Depth=1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$s1, $s2
	b	.LBB7_6
.LBB7_85:                               # %if.else45
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$s1, $zero
	move	$s3, $zero
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a1, $a0, $a2
	b	.LBB7_6
.LBB7_86:                               # %for.end219
                                        #   in Loop: Header=BB7_6 Depth=1
	beqz	$fp, .LBB7_121
# %bb.87:                               # %if.else242
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.bu	$a0, $s8, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB7_136
.LBB7_88:                               # %if.then253
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	beqz	$a0, .LBB7_139
# %bb.89:                               # %for.cond261.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	ori	$s2, $zero, 8
	blez	$s3, .LBB7_107
# %bb.90:                               # %for.body264.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$s1, $sp, 632
	b	.LBB7_93
	.p2align	4, , 16
.LBB7_91:                               # %if.else289
                                        #   in Loop: Header=BB7_93 Depth=2
	ld.bu	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB7_92:                               # %for.inc295
                                        #   in Loop: Header=BB7_93 Depth=2
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	beqz	$s3, .LBB7_107
.LBB7_93:                               # %for.body264
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$fp, .LBB7_91
# %bb.94:                               # %if.then267
                                        #   in Loop: Header=BB7_93 Depth=2
	ld.w	$a0, $sp, 116
	blt	$s0, $a0, .LBB7_92
# %bb.95:                               # %if.then270
                                        #   in Loop: Header=BB7_93 Depth=2
	ld.bu	$a1, $s1, 0
	ldx.bu	$a2, $s7, $a1
	bne	$a2, $s2, .LBB7_97
# %bb.96:                               # %if.then278
                                        #   in Loop: Header=BB7_93 Depth=2
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB7_92
.LBB7_97:                               # %if.else281
                                        #   in Loop: Header=BB7_93 Depth=2
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a1, $a0, $a2
	b	.LBB7_92
.LBB7_98:                               # %for.cond328.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	blez	$s3, .LBB7_3
# %bb.99:                               # %for.body331.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$s1, $sp, 632
	b	.LBB7_102
	.p2align	4, , 16
.LBB7_100:                              # %if.else356
                                        #   in Loop: Header=BB7_102 Depth=2
	ld.bu	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB7_101:                              # %for.inc362
                                        #   in Loop: Header=BB7_102 Depth=2
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	beqz	$s3, .LBB7_3
.LBB7_102:                              # %for.body331
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$fp, .LBB7_100
# %bb.103:                              # %if.then334
                                        #   in Loop: Header=BB7_102 Depth=2
	ld.w	$a0, $sp, 116
	blt	$s0, $a0, .LBB7_101
# %bb.104:                              # %if.then337
                                        #   in Loop: Header=BB7_102 Depth=2
	ld.bu	$a1, $s1, 0
	ldx.bu	$a2, $s7, $a1
	bne	$a2, $s2, .LBB7_106
# %bb.105:                              # %if.then345
                                        #   in Loop: Header=BB7_102 Depth=2
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB7_101
.LBB7_106:                              # %if.else348
                                        #   in Loop: Header=BB7_102 Depth=2
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a1, $a0, $a2
	b	.LBB7_101
.LBB7_107:                              # %for.end297
                                        #   in Loop: Header=BB7_6 Depth=1
	beqz	$fp, .LBB7_124
# %bb.108:                              # %if.else320
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.bu	$a0, $s8, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB7_138
.LBB7_109:                              # %if.end151.loopexit
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.bu	$a5, $s8, 0
	move	$s3, $zero
.LBB7_110:                              # %if.end151
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.w	$a0, $s3, 1
	addi.d	$a1, $sp, 632
	stx.b	$a5, $s3, $a1
	move	$s3, $a0
.LBB7_111:                              # %if.end156
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	maskeqz	$s1, $s2, $a0
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	st.d	$s6, $s2, %pc_lo12(chpt)
	pcaddu18i	$ra, %call36(srcnext)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.w	$a0, $a1, 4
	ld.d	$s6, $s2, %pc_lo12(chpt)
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 19, 0
	st.w	$a0, $a1, 4
	addi.d	$a0, $s6, -1
	pcalau12i	$a1, %pc_hi20(startline)
	st.d	$a0, $a1, %pc_lo12(startline)
	b	.LBB7_6
.LBB7_112:                              # %if.then513
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(PosOfFile)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(FullFileName)
	jirl	$ra, $ra, 0
	move	$a5, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a2, $a0, %pc_lo12(.L.str.52)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 20
	ori	$a3, $zero, 1
	move	$a4, $s1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	addi.w	$s1, $zero, -1
	bne	$a0, $s1, .LBB7_116
.LBB7_113:                              # %while.end
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB7_5
	.p2align	4, , 16
.LBB7_114:                              # %if.else544
                                        #   in Loop: Header=BB7_116 Depth=2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB7_115:                              # %if.end546
                                        #   in Loop: Header=BB7_116 Depth=2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(getc)
	jirl	$ra, $ra, 0
	beq	$a0, $s1, .LBB7_113
.LBB7_116:                              # %while.body522
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bnez	$fp, .LBB7_114
# %bb.117:                              # %if.then525
                                        #   in Loop: Header=BB7_116 Depth=2
	ld.w	$a1, $sp, 116
	blt	$s0, $a1, .LBB7_115
# %bb.118:                              # %if.then528
                                        #   in Loop: Header=BB7_116 Depth=2
	ldx.bu	$a2, $s7, $a0
	ori	$a3, $zero, 8
	bne	$a2, $a3, .LBB7_120
# %bb.119:                              # %if.then534
                                        #   in Loop: Header=BB7_116 Depth=2
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB7_115
.LBB7_120:                              # %if.else537
                                        #   in Loop: Header=BB7_116 Depth=2
	addi.d	$a2, $a1, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a0, $a1, $a2
	b	.LBB7_115
.LBB7_121:                              # %if.then222
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a0, $sp, 116
	blt	$s0, $a0, .LBB7_136
# %bb.122:                              # %if.then225
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.bu	$a1, $s8, 0
	ldx.bu	$a2, $s7, $a1
	ori	$a3, $zero, 8
	bne	$a2, $a3, .LBB7_135
# %bb.123:                              # %if.then232
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB7_136
.LBB7_124:                              # %if.then300
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.w	$a0, $sp, 116
	blt	$s0, $a0, .LBB7_138
# %bb.125:                              # %if.then303
                                        #   in Loop: Header=BB7_6 Depth=1
	ld.bu	$a1, $s8, 0
	ldx.bu	$a2, $s7, $a1
	ori	$a3, $zero, 8
	bne	$a2, $a3, .LBB7_137
# %bb.126:                              # %if.then310
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	b	.LBB7_138
.LBB7_127:                              # %for.cond550.preheader
                                        #   in Loop: Header=BB7_6 Depth=1
	blez	$s3, .LBB7_3
# %bb.128:                              # %for.body553.lr.ph
                                        #   in Loop: Header=BB7_6 Depth=1
	ori	$s2, $zero, 8
	addi.d	$s1, $sp, 632
	beqz	$fp, .LBB7_132
	.p2align	4, , 16
.LBB7_129:                              # %for.body553
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	bnez	$s3, .LBB7_129
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_130:                              # %if.then567.us
                                        #   in Loop: Header=BB7_132 Depth=2
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.LBB7_131:                              # %for.inc584.us
                                        #   in Loop: Header=BB7_132 Depth=2
	addi.d	$s3, $s3, -1
	addi.d	$s1, $s1, 1
	beqz	$s3, .LBB7_3
.LBB7_132:                              # %for.body553.us
                                        #   Parent Loop BB7_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $sp, 116
	blt	$s0, $a0, .LBB7_131
# %bb.133:                              # %if.then559.us
                                        #   in Loop: Header=BB7_132 Depth=2
	ld.bu	$a1, $s1, 0
	ldx.bu	$a2, $s7, $a1
	beq	$a2, $s2, .LBB7_130
# %bb.134:                              # %if.else570.us
                                        #   in Loop: Header=BB7_132 Depth=2
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a1, $a0, $a2
	b	.LBB7_131
.LBB7_135:                              # %if.else235
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a1, $a0, $a2
.LBB7_136:                              # %if.end246
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$s1, $zero
	move	$s3, $zero
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB7_6
.LBB7_137:                              # %if.else313
                                        #   in Loop: Header=BB7_6 Depth=1
	addi.d	$a2, $a0, 1
	st.w	$a2, $sp, 116
	addi.d	$a2, $sp, 120
	stx.b	$a1, $a0, $a2
.LBB7_138:                              # %if.end324
                                        #   in Loop: Header=BB7_6 Depth=1
	move	$s1, $zero
	move	$s3, $zero
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	b	.LBB7_6
.LBB7_139:                              # %while.end685
	beqz	$fp, .LBB7_141
# %bb.140:                              # %if.else704
	ori	$a0, $zero, 10
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	b	.LBB7_144
.LBB7_141:                              # %if.then688
	ld.w	$a0, $sp, 116
	ori	$a1, $zero, 511
	blt	$a1, $a0, .LBB7_144
# %bb.142:                              # %if.then688
	ld.bu	$a0, $s7, 10
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB7_144
# %bb.143:                              # %if.then695
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 116
	move	$a0, $s5
	pcaddu18i	$ra, %call36(BuildLines)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.LBB7_144:                              # %if.end706
	pcalau12i	$a0, %pc_hi20(startline)
	ld.d	$a0, $a0, %pc_lo12(startline)
	sub.d	$a0, $s8, $a0
	ori	$a1, $zero, 2048
	blt	$a0, $a1, .LBB7_146
# %bb.145:                              # %if.then709
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.wu	$a0, $a4, 4
	ori	$a1, $zero, 1
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $a4, 4
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a2, $a0, %pc_lo12(.L.str.41)
	ori	$a0, $zero, 2
	ori	$a1, $zero, 21
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
.LBB7_146:                              # %if.end714
	or	$a0, $fp, $s5
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$s8, $a1, %pc_lo12(chpt)
	bnez	$a0, .LBB7_148
# %bb.147:                              # %if.then720
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a2, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 11
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	move	$s5, $a0
.LBB7_148:                              # %if.end722
	move	$a0, $s5
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
.Lfunc_end7:
	.size	LexScanVerbatim, .Lfunc_end7-LexScanVerbatim
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_30-.LJTI7_0
	.word	.LBB7_41-.LJTI7_0
	.word	.LBB7_8-.LJTI7_0
	.word	.LBB7_8-.LJTI7_0
	.word	.LBB7_8-.LJTI7_0
	.word	.LBB7_17-.LJTI7_0
	.word	.LBB7_17-.LJTI7_0
	.word	.LBB7_17-.LJTI7_0
	.word	.LBB7_58-.LJTI7_0
	.word	.LBB7_55-.LJTI7_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function BuildLines
	.type	BuildLines,@function
BuildLines:                             # @BuildLines
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
	move	$s0, $a2
	ld.w	$a2, $a2, 0
	move	$s3, $a1
	move	$s2, $a0
	addi.w	$a0, $a2, 68
	srli.d	$a0, $a0, 3
	addi.w	$a0, $a0, 1
	pcalau12i	$a1, %got_pc_hi20(zz_size)
	ld.d	$s6, $a1, %got_pc_lo12(zz_size)
	st.w	$a0, $s6, 0
	ori	$a1, $zero, 265
	pcalau12i	$a2, %pc_hi20(file_pos)
	addi.d	$s1, $a2, %pc_lo12(file_pos)
	bltu	$a0, $a1, .LBB8_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a2, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(file_pos)
	addi.d	$a4, $a0, %pc_lo12(file_pos)
	ori	$a0, $zero, 1
	ori	$a1, $zero, 1
	ori	$a3, $zero, 1
	pcaddu18i	$ra, %call36(Error)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	ld.d	$fp, $a0, 0
	b	.LBB8_5
.LBB8_2:                                # %if.else
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$a1, $a1, %got_pc_lo12(zz_free)
	slli.d	$a2, $a0, 3
	ldx.d	$fp, $a1, $a2
	beqz	$fp, .LBB8_4
# %bb.3:                                # %if.else12
	alsl.d	$a0, $a0, $a1, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$fp, $a1, 0
	ld.d	$a1, $fp, 0
	st.d	$a1, $a0, 0
	b	.LBB8_5
.LBB8_4:                                # %if.then10
	pcalau12i	$a1, %pc_hi20(file_pos)
	addi.d	$a1, $a1, %pc_lo12(file_pos)
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$fp, $a0, 0
.LBB8_5:                                # %if.end18
	ld.b	$a0, $s6, 0
	st.b	$a0, $fp, 33
	ori	$a0, $zero, 11
	st.b	$a0, $fp, 32
	st.d	$fp, $fp, 24
	st.d	$fp, $fp, 0
	ld.h	$a0, $s1, 2
	ld.w	$a1, $s1, 4
	st.d	$fp, $fp, 16
	st.d	$fp, $fp, 8
	st.h	$a0, $fp, 34
	st.w	$a1, $fp, 36
	ld.w	$a0, $s0, 0
	blez	$a0, .LBB8_12
# %bb.6:                                # %for.body.lr.ph
	move	$a0, $zero
	addi.d	$a1, $fp, 64
	.p2align	4, , 16
.LBB8_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.b	$a2, $s3, $a0
	stx.b	$a2, $a1, $a0
	ld.w	$a2, $s0, 0
	addi.d	$a0, $a0, 1
	blt	$a0, $a2, .LBB8_7
# %bb.8:                                # %for.end
	add.d	$a0, $fp, $a0
	st.b	$zero, $a0, 64
	st.w	$zero, $s0, 0
	beqz	$s2, .LBB8_13
.LBB8_9:                                # %if.else54
	ld.bu	$a0, $s2, 32
	ori	$a1, $zero, 11
	bne	$a0, $a1, .LBB8_14
# %bb.10:                               # %if.then60
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s4, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s4, 19
	st.w	$a0, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s3, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s0, $s3, $a1
	beqz	$s0, .LBB8_15
# %bb.11:                               # %if.else74
	alsl.d	$a0, $a0, $s3, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a1, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $a0, 0
	b	.LBB8_16
.LBB8_12:
	move	$a0, $zero
	add.d	$a0, $fp, $a0
	st.b	$zero, $a0, 64
	st.w	$zero, $s0, 0
	bnez	$s2, .LBB8_9
.LBB8_13:
	move	$s0, $fp
	b	.LBB8_40
.LBB8_14:
	move	$s0, $s2
	b	.LBB8_21
.LBB8_15:                               # %if.then72
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s0, $a0, 0
.LBB8_16:                               # %if.end83
	ori	$a0, $zero, 19
	st.b	$a0, $s0, 32
	st.d	$s0, $s0, 24
	st.d	$s0, $s0, 16
	st.d	$s0, $s0, 8
	st.d	$s0, $s0, 0
	ld.h	$a0, $s2, 34
	st.h	$a0, $s0, 34
	ld.wu	$a0, $s2, 36
	ld.wu	$a1, $s0, 36
	srli.d	$a1, $a1, 20
	move	$a2, $a0
	bstrins.d	$a2, $a1, 63, 20
	st.w	$a2, $s0, 36
	ld.wu	$a1, $s2, 36
	ld.bu	$a2, $s4, 0
	srli.d	$a1, $a1, 20
	bstrins.d	$a0, $a1, 63, 20
	st.w	$a0, $s0, 36
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	st.w	$a2, $s6, 0
	beqz	$a0, .LBB8_18
# %bb.17:                               # %if.else136
	alsl.d	$a1, $a2, $s3, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a0, $a2, 0
	ld.d	$a2, $a0, 0
	st.d	$a2, $a1, 0
	b	.LBB8_19
.LBB8_18:                               # %if.then134
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB8_19:                               # %cond.end187
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	pcalau12i	$a1, %got_pc_hi20(xx_link)
	ld.d	$a2, $a1, %got_pc_lo12(xx_link)
	st.d	$a0, $a2, 0
	pcalau12i	$a1, %got_pc_hi20(zz_res)
	ld.d	$a3, $a1, %got_pc_lo12(zz_res)
	st.d	$a0, $a3, 0
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a4, $a1, %got_pc_lo12(zz_hold)
	st.d	$s0, $a4, 0
	ld.d	$a5, $s0, 0
	pcalau12i	$a1, %got_pc_hi20(zz_tmp)
	ld.d	$a1, $a1, %got_pc_lo12(zz_tmp)
	st.d	$a5, $a1, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $a3, 0
	ld.d	$a5, $a4, 0
	ld.d	$a6, $a0, 0
	ld.d	$a7, $a1, 0
	st.d	$a5, $a6, 8
	st.d	$a7, $a0, 0
	ld.d	$a5, $a3, 0
	ld.d	$a0, $a2, 0
	st.d	$a5, $a7, 8
	st.d	$a0, $a3, 0
	st.d	$s2, $a4, 0
	beqz	$a0, .LBB8_21
# %bb.20:                               # %cond.false196
	ld.d	$a2, $s2, 16
	ld.d	$a3, $a0, 16
	st.d	$a2, $a1, 0
	st.d	$a3, $s2, 16
	st.d	$s2, $a3, 24
	st.d	$a2, $a0, 16
	st.d	$a0, $a2, 24
.LBB8_21:                               # %if.end223
	pcalau12i	$a0, %got_pc_hi20(zz_lengths)
	ld.d	$s5, $a0, %got_pc_lo12(zz_lengths)
	ld.bu	$a0, $s5, 1
	st.w	$a0, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(zz_free)
	ld.d	$s3, $a1, %got_pc_lo12(zz_free)
	slli.d	$a1, $a0, 3
	ldx.d	$s2, $s3, $a1
	beqz	$s2, .LBB8_23
# %bb.22:                               # %if.else237
	alsl.d	$a0, $a0, $s3, 3
	pcalau12i	$a1, %got_pc_hi20(zz_hold)
	ld.d	$a1, $a1, %got_pc_lo12(zz_hold)
	st.d	$s2, $a1, 0
	ld.d	$a1, $s2, 0
	st.d	$a1, $a0, 0
	b	.LBB8_24
.LBB8_23:                               # %if.then235
	pcalau12i	$a1, %got_pc_hi20(no_fpos)
	ld.d	$a1, $a1, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a1, 0
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$a0, $a0, %got_pc_lo12(zz_hold)
	st.d	$s2, $a0, 0
.LBB8_24:                               # %if.end246
	ori	$a0, $zero, 1
	st.b	$a0, $s2, 32
	st.d	$s2, $s2, 24
	ld.hu	$a0, $s2, 44
	st.d	$s2, $s2, 0
	lu12i.w	$a1, 15
	ori	$a1, $a1, 3327
	and	$a0, $a0, $a1
	st.h	$a0, $s2, 44
	ld.h	$a0, $s1, 2
	ld.w	$a1, $s1, 4
	st.d	$s2, $s2, 16
	st.d	$s2, $s2, 8
	st.h	$a0, $s2, 34
	st.w	$a1, $s2, 36
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a1, $a0, %pc_lo12(.L.str.56)
	ori	$a0, $zero, 11
	move	$a2, $s1
	pcaddu18i	$ra, %call36(MakeWord)
	jirl	$ra, $ra, 0
	ld.bu	$a2, $s5, 0
	slli.d	$a1, $a2, 3
	ldx.d	$a1, $s3, $a1
	move	$s1, $a0
	st.w	$a2, $s6, 0
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	beqz	$a1, .LBB8_26
# %bb.25:                               # %if.else301
	alsl.d	$a0, $a2, $s3, 3
	pcalau12i	$a2, %got_pc_hi20(zz_hold)
	ld.d	$a2, $a2, %got_pc_lo12(zz_hold)
	st.d	$a1, $a2, 0
	ld.d	$a2, $a1, 0
	st.d	$a2, $a0, 0
	b	.LBB8_27
.LBB8_26:                               # %if.then299
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.LBB8_27:                               # %cond.end356
	st.b	$zero, $a1, 32
	st.d	$a1, $a1, 24
	st.d	$a1, $a1, 16
	st.d	$a1, $a1, 8
	st.d	$a1, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(xx_link)
	ld.d	$s6, $a0, %got_pc_lo12(xx_link)
	st.d	$a1, $s6, 0
	pcalau12i	$a0, %got_pc_hi20(zz_res)
	ld.d	$s7, $a0, %got_pc_lo12(zz_res)
	st.d	$a1, $s7, 0
	pcalau12i	$a0, %got_pc_hi20(zz_hold)
	ld.d	$s4, $a0, %got_pc_lo12(zz_hold)
	st.d	$s2, $s4, 0
	ld.d	$a0, $s2, 0
	pcalau12i	$a2, %got_pc_hi20(zz_tmp)
	ld.d	$s8, $a2, %got_pc_lo12(zz_tmp)
	st.d	$a0, $s8, 0
	ld.d	$a0, $a1, 0
	st.d	$a0, $s2, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s1, $s4, 0
	beqz	$s1, .LBB8_30
# %bb.28:                               # %cond.end356
	beqz	$a0, .LBB8_30
# %bb.29:                               # %cond.false365
	ld.d	$a1, $s1, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s1, 16
	st.d	$s1, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB8_30:                               # %cond.end389
	ld.bu	$a2, $s5, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB8_32
# %bb.31:                               # %if.else404
	st.d	$a0, $s4, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB8_33
.LBB8_32:                               # %if.then402
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB8_33:                               # %cond.end459
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	st.d	$a0, $s7, 0
	st.d	$s0, $s4, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$s2, $s4, 0
	beqz	$a0, .LBB8_35
# %bb.34:                               # %cond.false468
	ld.d	$a1, $s2, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $s2, 16
	st.d	$s2, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB8_35:                               # %cond.end492
	ld.bu	$a2, $s5, 0
	slli.d	$a0, $a2, 3
	ldx.d	$a0, $s3, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a1, 0
	beqz	$a0, .LBB8_37
# %bb.36:                               # %if.else507
	st.d	$a0, $s4, 0
	ld.d	$a1, $a0, 0
	alsl.d	$a2, $a2, $s3, 3
	st.d	$a1, $a2, 0
	b	.LBB8_38
.LBB8_37:                               # %if.then505
	pcalau12i	$a0, %got_pc_hi20(no_fpos)
	ld.d	$a0, $a0, %got_pc_lo12(no_fpos)
	ld.d	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(GetMemory)
	jirl	$ra, $ra, 0
.LBB8_38:                               # %cond.end562
	st.b	$zero, $a0, 32
	st.d	$a0, $a0, 24
	st.d	$a0, $a0, 16
	st.d	$a0, $a0, 8
	st.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	st.d	$a0, $s7, 0
	st.d	$s0, $s4, 0
	ld.d	$a1, $s0, 0
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s7, 0
	ld.d	$a1, $s4, 0
	ld.d	$a2, $a0, 0
	ld.d	$a3, $s8, 0
	st.d	$a1, $a2, 8
	st.d	$a3, $a0, 0
	ld.d	$a1, $s7, 0
	ld.d	$a0, $s6, 0
	st.d	$a1, $a3, 8
	st.d	$a0, $s7, 0
	st.d	$fp, $s4, 0
	beqz	$a0, .LBB8_40
# %bb.39:                               # %cond.false571
	ld.d	$a1, $fp, 16
	ld.d	$a2, $a0, 16
	st.d	$a1, $s8, 0
	st.d	$a2, $fp, 16
	st.d	$fp, $a2, 24
	st.d	$a1, $a0, 16
	st.d	$a0, $a1, 24
.LBB8_40:                               # %if.end597
	move	$a0, $s0
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
	ret
.Lfunc_end8:
	.size	BuildLines, .Lfunc_end8-BuildLines
                                        # -- End function
	.type	chtbl,@object                   # @chtbl
	.local	chtbl
	.comm	chtbl,256,8
	.type	stack_free,@object              # @stack_free
	.local	stack_free
	.comm	stack_free,4,4
	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"too many open files when opening include file %s; open files are:"
	.size	.L.str.19, 66

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"too many open files when opening database file %s; open files are:"
	.size	.L.str.20, 67

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"  %s"
	.size	.L.str.21, 5

	.type	lex_stack,@object               # @lex_stack
	.local	lex_stack
	.comm	lex_stack,1200,8
	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"exiting now"
	.size	.L.str.22, 12

	.type	chpt,@object                    # @chpt
	.local	chpt
	.comm	chpt,8,8
	.type	frst,@object                    # @frst
	.local	frst
	.comm	frst,8,8
	.type	limit,@object                   # @limit
	.local	limit
	.comm	limit,8,8
	.type	buf,@object                     # @buf
	.local	buf
	.comm	buf,8,8
	.type	blksize,@object                 # @blksize
	.local	blksize
	.comm	blksize,4,4
	.type	last_char,@object               # @last_char
	.local	last_char
	.comm	last_char,1,1
	.type	startline,@object               # @startline
	.local	startline
	.comm	startline,8,8
	.type	this_file,@object               # @this_file
	.local	this_file
	.comm	this_file,2,2
	.type	fp,@object                      # @fp
	.local	fp
	.comm	fp,8,8
	.type	ftype,@object                   # @ftype
	.local	ftype
	.comm	ftype,2,2
	.type	next_token,@object              # @next_token
	.local	next_token
	.comm	next_token,8,8
	.type	offset,@object                  # @offset
	.local	offset
	.comm	offset,4,4
	.type	first_line_num,@object          # @first_line_num
	.local	first_line_num
	.comm	first_line_num,4,4
	.type	same_file,@object               # @same_file
	.local	same_file
	.comm	same_file,4,4
	.type	mem_block,@object               # @mem_block
	.local	mem_block
	.comm	mem_block,8,8
	.type	file_pos,@object                # @file_pos
	.local	file_pos
	.comm	file_pos,8,4
	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"run out of memory when opening file %s"
	.size	.L.str.23, 39

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"assert failed in %s"
	.size	.L.str.24, 20

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"LexPop: stack_free <= 0!"
	.size	.L.str.25, 25

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"illegal macro invocation in database"
	.size	.L.str.26, 37

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"character %c outside quoted string"
	.size	.L.str.27, 35

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"cannot open file %s"
	.size	.L.str.28, 20

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"unknown file type"
	.size	.L.str.29, 18

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"word is too long"
	.size	.L.str.30, 17

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"recursion in macro"
	.size	.L.str.31, 19

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"{"
	.size	.L.str.32, 2

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"%s expected (after %s)"
	.size	.L.str.33, 23

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"name of include file expected here"
	.size	.L.str.34, 35

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	".lt"
	.size	.L.str.35, 4

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.space	1
	.size	.L.str.36, 1

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"unterminated string"
	.size	.L.str.37, 20

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"skipping null character in string"
	.size	.L.str.38, 34

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"LexGetToken: error in quoted string"
	.size	.L.str.39, 36

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"LexGetToken: bad chtbl[]"
	.size	.L.str.40, 25

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"line is too long (or final newline missing)"
	.size	.L.str.41, 44

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"filter parameter in macro"
	.size	.L.str.42, 26

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"end of file reached while reading %s"
	.size	.L.str.43, 37

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"@RawVerbatim"
	.size	.L.str.44, 13

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"@Verbatim"
	.size	.L.str.45, 10

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"end of file reached while reading filter parameter"
	.size	.L.str.46, 51

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"@End"
	.size	.L.str.47, 5

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"@Include"
	.size	.L.str.48, 9

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"@SysInclude"
	.size	.L.str.49, 12

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"expected %s here (after %s)"
	.size	.L.str.50, 28

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"expected file name here"
	.size	.L.str.51, 24

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"cannot open include file %s"
	.size	.L.str.52, 28

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"unreadable character (octal %o)"
	.size	.L.str.53, 32

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"LexScanVerbatim: bad chtbl[]"
	.size	.L.str.54, 29

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"a database file must end with a newline; this one doesn't"
	.size	.L.str.55, 58

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"1vx"
	.size	.L.str.56, 4

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym file_pos
