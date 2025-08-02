	.file	"load.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
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
	st.w	$zero, $sp, 60
	st.w	$zero, $sp, 56
	ori	$s8, $zero, 1
	st.d	$zero, $sp, 48
	bne	$a0, $s8, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	b	.LBB0_40
.LBB0_2:                                # %if.else
	move	$s0, $a1
	move	$fp, $a0
	ori	$a0, $zero, 2
	blt	$fp, $a0, .LBB0_16
# %bb.3:                                # %if.end
	ld.d	$a0, $s0, 8
	ld.bu	$a0, $a0, 0
	move	$s1, $zero
	ori	$s8, $zero, 1
	ori	$s5, $zero, 45
	bne	$a0, $s5, .LBB0_18
# %bb.4:                                # %while.body.preheader
	ori	$s6, $zero, 108
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s3, $a0, %pc_lo12(.L.str.3)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s4, $a0, %pc_lo12(.L.str.4)
	.p2align	4, , 16
.LBB0_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s8, 3
	ldx.d	$a1, $s0, $a0
	ld.bu	$a0, $a1, 0
	bne	$a0, $s5, .LBB0_8
# %bb.6:                                # %sub_1
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a0, $a1, 1
	bne	$a0, $s6, .LBB0_8
# %bb.7:                                # %while.body.tail
                                        #   in Loop: Header=BB0_5 Depth=1
	ld.bu	$a0, $a1, 2
	beqz	$a0, .LBB0_12
	.p2align	4, , 16
.LBB0_8:                                # %if.else28
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s4
.LBB0_9:                                # %if.end32
                                        #   in Loop: Header=BB0_5 Depth=1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_10:                               # %if.end32
                                        #   in Loop: Header=BB0_5 Depth=1
	slt	$a0, $s8, $fp
	add.w	$s8, $s8, $a0
	bge	$s8, $fp, .LBB0_17
# %bb.11:                               # %if.end47
                                        #   in Loop: Header=BB0_5 Depth=1
	slli.d	$a0, $s8, 3
	ldx.d	$a0, $s0, $a0
	ld.bu	$a0, $a0, 0
	beq	$a0, $s5, .LBB0_5
	b	.LBB0_18
.LBB0_12:                               # %if.then12
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.w	$s8, $s8, 1
	st.w	$zero, $sp, 44
	bge	$s8, $fp, .LBB0_15
# %bb.13:                               # %if.then15
                                        #   in Loop: Header=BB0_5 Depth=1
	slli.d	$a0, $s8, 3
	ldx.d	$a0, $s0, $a0
	st.d	$a0, $sp, 64
	addi.d	$a0, $sp, 64
	ori	$a1, $zero, 20
	ori	$a2, $zero, 10
	addi.d	$a3, $sp, 44
	pcaddu18i	$ra, %call36(GET_NUM)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 44
	move	$s1, $a0
	st.w	$a0, $sp, 56
	beqz	$a1, .LBB0_10
# %bb.14:                               # %if.then20
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a0, $s8, $s0, 3
	ld.d	$a1, $a0, 0
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	b	.LBB0_10
.LBB0_15:                               # %if.else25
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a0, $s3
	move	$a1, $s1
	b	.LBB0_9
.LBB0_16:
	move	$s1, $zero
.LBB0_17:                               # %if.else110
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r29
                                        # implicit-def: $r26
	b	.LBB0_25
.LBB0_18:                               # %if.then50
	slli.d	$a0, $s8, 3
	ldx.d	$s5, $s0, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.d	$a0, $a0, 5
	bstrpick.d	$s4, $a0, 31, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	move	$a1, $s5
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	bltz	$a1, .LBB0_23
# %bb.19:                               # %land.rhs86.preheader
	ori	$a2, $zero, 46
	move	$a1, $a0
	.p2align	4, , 16
.LBB0_20:                               # %land.rhs86
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $a1, 0
	ldx.bu	$a4, $s3, $a3
	beq	$a4, $a2, .LBB0_22
# %bb.21:                               # %for.inc
                                        #   in Loop: Header=BB0_20 Depth=1
	addi.d	$a1, $a1, -1
	bgtz	$a3, .LBB0_20
	b	.LBB0_23
.LBB0_22:                               # %for.end
	bnez	$a3, .LBB0_24
.LBB0_23:                               # %if.then95
	move	$a1, $a0
.LBB0_24:                               # %if.end100
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.b	$a2, $a0, 4
	addi.w	$a1, $a1, 0
	add.d	$a3, $s3, $a1
	ld.w	$a0, $a0, 0
	st.b	$a2, $a3, 4
	pcalau12i	$a2, %pc_hi20(.L.str.6)
	addi.d	$a2, $a2, %pc_lo12(.L.str.6)
	ld.b	$a3, $a2, 4
	stx.w	$a0, $s3, $a1
	add.d	$a0, $s2, $a1
	ld.w	$a2, $a2, 0
	st.b	$a3, $a0, 4
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ld.w	$a3, $a0, 0
	ld.b	$a0, $a0, 4
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	stx.w	$a2, $s2, $a1
	add.d	$a2, $s6, $a1
	stx.w	$a3, $s6, $a1
	st.b	$a0, $a2, 4
.LBB0_25:                               # %if.end112
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(INIT_SYM_TAB)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(CREATE_MEMORY)
	jirl	$ra, $ra, 0
	bge	$s8, $fp, .LBB0_42
# %bb.26:                               # %if.end112
	lu12i.w	$a0, 256
	ori	$s2, $a0, 1
	bge	$s1, $s2, .LBB0_42
# %bb.27:                               # %while.body120.preheader
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	alsl.d	$s4, $s8, $s0, 3
	addi.d	$s1, $s8, 1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s5, $a0, %pc_lo12(.L.str.9)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$s6, $a0, %pc_lo12(.L.str.10)
	.p2align	4, , 16
.LBB0_28:                               # %while.body120
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_30
# %bb.29:                               # %if.else130
                                        #   in Loop: Header=BB0_28 Depth=1
	move	$s7, $a0
	addi.d	$a0, $sp, 64
	addi.d	$a1, $sp, 56
	addi.d	$a2, $sp, 60
	move	$a3, $s7
	pcaddu18i	$ra, %call36(PASS1)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	blt	$s1, $fp, .LBB0_31
	b	.LBB0_32
	.p2align	4, , 16
.LBB0_30:                               # %if.then126
                                        #   in Loop: Header=BB0_28 Depth=1
	ld.d	$a1, $s4, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	bge	$s1, $fp, .LBB0_32
.LBB0_31:                               # %if.end132
                                        #   in Loop: Header=BB0_28 Depth=1
	ld.w	$a0, $sp, 56
	addi.d	$s4, $s4, 8
	addi.d	$s1, $s1, 1
	blt	$a0, $s2, .LBB0_28
.LBB0_32:                               # %while.end134
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $sp, 56
	alsl.d	$s4, $s8, $s0, 3
	addi.d	$s5, $s8, 1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$s0, $a0, %pc_lo12(.L.str.9)
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_33:                               # %while.body142
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s4, 0
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_35
# %bb.34:                               # %if.then148
                                        #   in Loop: Header=BB0_33 Depth=1
	move	$s1, $a0
	ld.d	$a0, $sp, 48
	addi.d	$a1, $sp, 64
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 60
	move	$a4, $s1
	pcaddu18i	$ra, %call36(PASS2)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB0_35:                               # %if.end150
                                        #   in Loop: Header=BB0_33 Depth=1
	bge	$s5, $fp, .LBB0_37
# %bb.36:                               # %if.end150
                                        #   in Loop: Header=BB0_33 Depth=1
	ld.w	$a0, $sp, 56
	addi.d	$s4, $s4, 8
	addi.d	$s5, $s5, 1
	blt	$a0, $s2, .LBB0_33
.LBB0_37:                               # %while.end152
	pcalau12i	$a0, %pc_hi20(START_ADDRESS)
	ld.w	$a0, $a0, %pc_lo12(START_ADDRESS)
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB0_43
.LBB0_38:                               # %if.end157
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	move	$a0, $s6
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(PRT_SYM_TAB)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 60
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_44
# %bb.39:                               # %if.else166
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
.LBB0_40:                               # %if.end169
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
.LBB0_41:                               # %if.end169
	move	$a0, $zero
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
.LBB0_42:                               # %while.end134.thread
	st.w	$s1, $sp, 56
	pcalau12i	$a0, %pc_hi20(START_ADDRESS)
	ld.w	$a0, $a0, %pc_lo12(START_ADDRESS)
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB0_38
.LBB0_43:                               # %if.then155
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.w	$a0, $sp, 60
	b	.LBB0_38
.LBB0_44:                               # %if.then161
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$fp, $a0, %pc_lo12(.L.str.12)
	move	$a0, $s3
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(PRINT_MEM)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 64
	move	$a2, $s0
	pcaddu18i	$ra, %call36(PRINT_EXEC)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB0_41
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	START_ADDRESS,@object           # @START_ADDRESS
	.data
	.globl	START_ADDRESS
	.p2align	2, 0x0
START_ADDRESS:
	.word	4294967295                      # 0xffffffff
	.size	START_ADDRESS, 4

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"load: %s is not a legal starting address. Starting at %d\n"
	.size	.L.str.2, 58

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"load: -l must be followed by a location. Starting at %d\n"
	.size	.L.str.3, 57

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Illegal command directive, '%s'. Ignoring.\n"
	.size	.L.str.4, 44

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	".exe"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	".mem"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	".sym"
	.size	.L.str.7, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"r"
	.size	.L.str.9, 2

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"%s: No such file or directory\n"
	.size	.L.str.10, 31

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"w"
	.size	.L.str.12, 2

	.type	MAIN_ROUTINE,@object            # @MAIN_ROUTINE
	.comm	MAIN_ROUTINE,9,1
	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"load: requires at least one file name."
	.size	.Lstr, 39

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"ERROR: Expected a main routine. None found. Program not loaded."
	.size	.Lstr.1, 64

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"Errors detected. No executable created."
	.size	.Lstr.2, 40

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"usage:  load [-l location] file ..."
	.size	.Lstr.3, 36

	.section	".note.GNU-stack","",@progbits
	.addrsig
