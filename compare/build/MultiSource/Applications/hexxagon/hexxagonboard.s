	.file	"hexxagonboard.cpp"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_Z16getHexxagonIndexii          # -- Begin function _Z16getHexxagonIndexii
	.p2align	5
	.type	_Z16getHexxagonIndexii,@function
_Z16getHexxagonIndexii:                 # @_Z16getHexxagonIndexii
# %bb.0:                                # %entry
	move	$a2, $a0
	addi.w	$a4, $a0, -1
	ori	$a3, $zero, 8
	addi.w	$a0, $zero, -1
	bltu	$a3, $a4, .LBB0_4
# %bb.1:                                # %entry
	addi.w	$a4, $a1, -1
	bltu	$a3, $a4, .LBB0_4
# %bb.2:                                # %if.then
	ori	$a3, $zero, 4
	bltu	$a3, $a1, .LBB0_5
# %bb.3:                                # %if.then
	addi.w	$a3, $a1, 4
	bgeu	$a3, $a2, .LBB0_5
.LBB0_4:                                # %cleanup
	ret
.LBB0_5:                                # %if.end11
	ori	$a3, $zero, 6
	bltu	$a1, $a3, .LBB0_7
# %bb.6:                                # %if.end11
	addi.w	$a4, $a1, -5
	bgeu	$a4, $a2, .LBB0_4
.LBB0_7:                                # %if.end18
	ori	$a0, $zero, 5
	sltu	$a0, $a0, $a1
	alsl.w	$a4, $a1, $a1, 3
	add.d	$a2, $a4, $a2
	ori	$a4, $zero, 1
	sltu	$a4, $a4, $a1
	addi.d	$a5, $zero, -10
	masknez	$a5, $a5, $a4
	addi.d	$a6, $zero, -14
	maskeqz	$a4, $a6, $a4
	or	$a4, $a4, $a5
	add.d	$a2, $a2, $a4
	ori	$a4, $zero, 2
	sltu	$a4, $a4, $a1
	addi.d	$a5, $a2, -3
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a5, $a4
	or	$a2, $a4, $a2
	ori	$a4, $zero, 3
	sltu	$a4, $a4, $a1
	addi.d	$a5, $a2, -2
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a5, $a4
	or	$a2, $a4, $a2
	ori	$a4, $zero, 4
	sltu	$a4, $a4, $a1
	add.d	$a0, $a4, $a0
	sub.w	$a0, $a2, $a0
	sltu	$a2, $a3, $a1
	addi.w	$a3, $a0, -2
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	ori	$a2, $zero, 7
	sltu	$a2, $a2, $a1
	addi.w	$a3, $a0, -3
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	ori	$a2, $zero, 8
	sltu	$a1, $a2, $a1
	addi.w	$a2, $a0, -4
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ret
.Lfunc_end0:
	.size	_Z16getHexxagonIndexii, .Lfunc_end0-_Z16getHexxagonIndexii
                                        # -- End function
	.globl	_Z16initCloneLookupsv           # -- Begin function _Z16initCloneLookupsv
	.p2align	5
	.type	_Z16initCloneLookupsv,@function
_Z16initCloneLookupsv:                  # @_Z16initCloneLookupsv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -336
	.cfi_def_cfa_offset 336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	ori	$a0, $zero, 488
	ori	$fp, $zero, 488
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	pcalau12i	$a1, %pc_hi20(clone_lookups)
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(clone_lookups)
	.p2align	4, , 16
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(clone_lookups)
	st.d	$zero, $sp, 240
	add.d	$a0, $a0, $s0
	addi.d	$a1, $sp, 240
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s0, $fp, .LBB1_1
# %bb.2:                                # %for.cond6.preheader.preheader
	move	$t7, $zero
	ori	$t8, $zero, 1
	ori	$ra, $zero, 1
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %for.cond.cleanup8
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$ra, $a1
	ori	$t8, $zero, 1
	ori	$a0, $zero, 10
	beq	$a1, $a0, .LBB1_11
.LBB1_4:                                # %for.cond6.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	addi.w	$a0, $ra, 4
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ori	$fp, $zero, 5
	sltu	$s2, $fp, $ra
	addi.w	$a0, $ra, -5
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.w	$a0, $ra, -1
	addi.w	$a1, $ra, 3
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	addi.w	$a1, $ra, -6
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a0, 3
	sltu	$a2, $t8, $a0
	addi.d	$t0, $zero, -10
	masknez	$a3, $t0, $a2
	addi.d	$t5, $zero, -14
	maskeqz	$a2, $t5, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	ori	$t2, $zero, 2
	sltu	$a2, $t2, $a0
	addi.d	$a3, $a1, -3
	ori	$t3, $zero, 4
	sltu	$a4, $t3, $a0
	ori	$a5, $zero, 6
	sltu	$s8, $a5, $ra
	add.d	$a4, $s8, $a4
	sltu	$a5, $a5, $a0
	alsl.d	$a6, $ra, $ra, 3
	sltu	$a7, $t8, $ra
	masknez	$t0, $t0, $a7
	maskeqz	$t1, $t5, $a7
	or	$t0, $t1, $t0
	add.d	$a6, $t0, $a6
	sltu	$t0, $t2, $ra
	addi.d	$t1, $a6, -3
	ori	$s0, $zero, 3
	sltu	$s3, $s0, $ra
	sltu	$s4, $t3, $ra
	add.d	$t2, $s4, $s2
	sub.d	$t3, $zero, $t2
	addi.d	$s1, $zero, -2
	sub.d	$t2, $s1, $t2
	addi.d	$t6, $ra, 1
	addi.w	$t4, $ra, 5
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	addi.w	$t4, $ra, -4
	st.d	$t4, $sp, 112                   # 8-byte Folded Spill
	st.d	$t6, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$t4, $t6, $t6, 3
	masknez	$t5, $t5, $a7
	addi.d	$t6, $zero, -17
	maskeqz	$a7, $t6, $a7
	or	$a7, $a7, $t5
	add.d	$a7, $a7, $t4
	addi.d	$t4, $a7, -2
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
	add.d	$t5, $s3, $s4
	sub.d	$t6, $zero, $t5
	sub.d	$t5, $s1, $t5
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -2
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	maskeqz	$a1, $s1, $a5
	sub.d	$a5, $a1, $a4
	addi.d	$a1, $a5, -3
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	masknez	$a1, $a6, $t0
	maskeqz	$a2, $t1, $t0
	or	$t1, $a2, $a1
	addi.d	$a1, $t1, -2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	masknez	$a1, $t3, $s8
	maskeqz	$a2, $t2, $s8
	or	$t2, $a2, $a1
	masknez	$a1, $t8, $t0
	maskeqz	$a2, $s1, $t0
	or	$a1, $a2, $a1
	addi.d	$t3, $t2, -3
	add.d	$a6, $a6, $a1
	masknez	$a1, $a7, $t0
	maskeqz	$a2, $t4, $t0
	or	$a1, $a2, $a1
	addi.d	$t4, $a6, -2
	masknez	$a2, $t6, $s2
	maskeqz	$a3, $t5, $s2
	or	$a2, $a3, $a2
	add.d	$s6, $a1, $a2
	addi.d	$t5, $s6, -3
	sub.d	$a1, $zero, $t0
	ori	$a1, $a1, 1
	add.d	$a1, $a7, $a1
	add.d	$t0, $a1, $a2
	addi.d	$a7, $t0, -3
	ori	$a2, $zero, 7
	sltu	$s7, $a2, $a0
	sltu	$s4, $s0, $a0
	st.d	$ra, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	bltu	$fp, $ra, .LBB1_6
# %bb.5:                                # %if.then30.peel
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a0, $ra, -9
	sltu	$a1, $zero, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a1, $a1, %pc_lo12(clone_lookups)
	move	$fp, $s8
	sltui	$s8, $a0, 1
	sltu	$s0, $a2, $ra
	sltui	$s2, $ra, 2
	alsl.d	$a0, $t7, $a1, 3
	addi.w	$s5, $zero, -1
	move	$a1, $s5
	move	$s1, $t7
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	st.d	$t2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 88                    # 8-byte Folded Spill
	st.d	$t3, $sp, 80                    # 8-byte Folded Spill
	st.d	$t4, $sp, 72                    # 8-byte Folded Spill
	st.d	$t5, $sp, 64                    # 8-byte Folded Spill
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(clone_lookups)
	alsl.d	$a0, $s1, $a0, 3
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	masknez	$a1, $a1, $s4
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	maskeqz	$a2, $a2, $s4
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	masknez	$a2, $a2, $s7
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	maskeqz	$a3, $a3, $s7
	or	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	addi.w	$a1, $a1, 1
	masknez	$a1, $a1, $s2
	maskeqz	$a2, $s5, $s2
	or	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(clone_lookups)
	alsl.d	$a0, $s1, $a0, 3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(clone_lookups)
	alsl.d	$a0, $s1, $a0, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	masknez	$a1, $a1, $s3
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	maskeqz	$a2, $a2, $s3
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	masknez	$a2, $a2, $s0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	maskeqz	$a3, $a3, $s0
	or	$a2, $a3, $a2
	add.d	$a1, $a1, $a2
	ori	$a2, $zero, 1
	masknez	$a2, $a2, $s8
	addi.d	$s2, $zero, -3
	maskeqz	$a3, $s2, $s8
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	or	$a2, $a3, $a2
	add.w	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(clone_lookups)
	alsl.d	$a0, $s1, $a0, 3
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -5
	sltu	$a1, $zero, $a1
	masknez	$a2, $s6, $fp
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	maskeqz	$a3, $a3, $fp
	or	$a2, $a3, $a2
	ori	$a3, $zero, 1
	masknez	$a3, $a3, $s0
	maskeqz	$a4, $s2, $s0
	or	$s0, $a4, $a3
	add.w	$a2, $a2, $s0
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s5, $a1
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	masknez	$s2, $s5, $a2
	move	$s5, $s6
	move	$s6, $a2
	or	$a1, $a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, %pc_lo12(clone_lookups)
	move	$s8, $fp
	alsl.d	$a0, $s1, $a0, 3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	masknez	$a1, $a1, $fp
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	maskeqz	$a2, $a2, $fp
	or	$a1, $a2, $a1
	add.w	$a1, $a1, $s0
	maskeqz	$a1, $a1, $s6
	move	$s6, $s5
	or	$a1, $a1, $s2
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 160                   # 8-byte Folded Reload
	ori	$a2, $zero, 7
	addi.w	$t7, $s1, 1
.LBB1_6:                                # %for.cond6.preheader.peel.newph
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$fp, $zero
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	masknez	$a0, $a0, $s4
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s4
	sltu	$a4, $a2, $ra
	or	$a0, $a1, $a0
	masknez	$a1, $a5, $s7
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	maskeqz	$a2, $a2, $s7
	or	$a1, $a2, $a1
	masknez	$a2, $t1, $s3
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	maskeqz	$a3, $a3, $s3
	or	$a2, $a3, $a2
	masknez	$a3, $t2, $a4
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	maskeqz	$a4, $t3, $a4
	or	$a3, $a4, $a3
	add.d	$a5, $a2, $a3
	masknez	$a2, $a6, $s3
	maskeqz	$a4, $t4, $s3
	or	$a2, $a4, $a2
	add.d	$a4, $a2, $a3
	masknez	$a2, $s6, $s8
	maskeqz	$a3, $t5, $s8
	or	$a6, $a3, $a2
	masknez	$a2, $t0, $s8
	maskeqz	$a3, $a7, $s8
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a2, $a2, -2
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a2, $a6, -2
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a2, $a4, -2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	addi.d	$a1, $a0, 2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a1, $a5, -3
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	st.d	$s3, $sp, 216                   # 8-byte Folded Spill
	b	.LBB1_8
	.p2align	4, , 16
.LBB1_7:                                # %if.end57
                                        #   in Loop: Header=BB1_8 Depth=2
	ori	$a0, $zero, 8
	beq	$fp, $a0, .LBB1_3
.LBB1_8:                                # %if.then
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s4, $fp
	addi.w	$s5, $fp, 2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	slt	$a0, $a0, $s5
	xori	$a0, $a0, 1
	and	$a0, $s2, $a0
	addi.w	$fp, $fp, 1
	bnez	$a0, .LBB1_7
# %bb.9:                                # %if.then
                                        #   in Loop: Header=BB1_8 Depth=2
	sltui	$a1, $ra, 5
	sltu	$a0, $a2, $s5
	and	$a0, $a1, $a0
	bnez	$a0, .LBB1_7
# %bb.10:                               # %if.then30
                                        #   in Loop: Header=BB1_8 Depth=2
	addi.d	$a0, $ra, -9
	sltu	$a2, $zero, $a0
	st.d	$a2, $sp, 200                   # 8-byte Folded Spill
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(clone_lookups)
	sltui	$s2, $ra, 7
	sltui	$s8, $ra, 6
	sltui	$s1, $ra, 2
	alsl.d	$a0, $t7, $a0, 3
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	sltu	$a1, $s3, $fp
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	sltu	$a2, $s0, $fp
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	add.w	$a3, $a3, $s4
	maskeqz	$a4, $a3, $a2
	addi.w	$s7, $zero, -1
	masknez	$a2, $s7, $a2
	or	$a2, $a4, $a2
	masknez	$a2, $a2, $s2
	maskeqz	$a3, $a3, $s2
	or	$a2, $a3, $a2
	masknez	$a3, $a2, $s8
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $s8
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $s1
	maskeqz	$s6, $s7, $s1
	or	$a1, $s6, $a1
	st.d	$t7, $sp, 232                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(clone_lookups)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	sltu	$a1, $s3, $s5
	sltu	$a2, $s0, $s5
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	add.w	$a3, $a3, $s4
	maskeqz	$a4, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a4, $a2
	masknez	$a2, $a2, $s2
	maskeqz	$a3, $a3, $s2
	or	$a2, $a3, $a2
	masknez	$a3, $a2, $s8
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s7, $a1
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $s8
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $s1
	or	$a1, $s6, $a1
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(clone_lookups)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	sltu	$a1, $s2, $fp
	xori	$a1, $a1, 1
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	sltu	$a2, $s1, $fp
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.w	$a3, $fp, $a3
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	add.w	$a4, $a4, $s4
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	masknez	$a3, $a3, $s3
	maskeqz	$a4, $a4, $s3
	or	$a3, $a4, $a3
	maskeqz	$a4, $a3, $s8
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $s8
	or	$a2, $a4, $a2
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	maskeqz	$a3, $a2, $s0
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $s0
	or	$a1, $a3, $a1
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(clone_lookups)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	addi.d	$a1, $s4, -7
	sltu	$a6, $zero, $a1
	sltu	$a1, $s5, $s2
	andi	$a2, $s0, 1
	sltu	$a3, $s5, $s1
	xori	$a3, $a3, 1
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	add.d	$a4, $a4, $s4
	addi.w	$a4, $a4, 2
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	add.w	$a5, $a5, $s4
	masknez	$a4, $a4, $s3
	maskeqz	$a5, $a5, $s3
	or	$a4, $a5, $a4
	maskeqz	$a5, $a4, $s8
	maskeqz	$a4, $a4, $a3
	masknez	$a3, $s7, $a3
	or	$a3, $a4, $a3
	masknez	$a3, $a3, $s8
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	or	$a3, $a5, $a3
	maskeqz	$a4, $a3, $a2
	maskeqz	$a3, $a3, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a3, $a1
	masknez	$a1, $a1, $a2
	or	$a1, $a4, $a1
	st.d	$a6, $sp, 168                   # 8-byte Folded Spill
	maskeqz	$a1, $a1, $a6
	masknez	$a2, $s7, $a6
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	or	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(clone_lookups)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	sltu	$a1, $s3, $s5
	xori	$a1, $a1, 1
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	sltu	$a2, $s8, $s5
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $a3, $s4
	addi.w	$a3, $a3, 2
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	add.w	$a4, $a4, $s4
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	maskeqz	$a4, $a4, $s0
	masknez	$a3, $a3, $s0
	or	$a3, $a4, $a3
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	maskeqz	$a4, $a3, $s2
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $s2
	or	$a2, $a4, $a2
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	maskeqz	$a3, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a2
	or	$a1, $a3, $a1
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	masknez	$s1, $s7, $a2
	or	$a1, $a1, $s1
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, %pc_lo12(clone_lookups)
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	sltu	$a1, $s5, $s3
	sltu	$a2, $s5, $s8
	xori	$a2, $a2, 1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.d	$a3, $a3, $s4
	addi.w	$a3, $a3, 2
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	add.w	$a4, $a4, $s4
	maskeqz	$a4, $a4, $s0
	masknez	$a3, $a3, $s0
	or	$a3, $a4, $a3
	maskeqz	$a4, $a3, $s2
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $s2
	or	$a2, $a4, $a2
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	maskeqz	$a3, $a2, $a3
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $s7
	or	$a1, $a3, $a1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $s1
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 232                   # 8-byte Folded Reload
	addi.w	$t7, $t7, 1
	b	.LBB1_7
.LBB1_11:                               # %for.cond.cleanup4
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.Lfunc_end1:
	.size	_Z16initCloneLookupsv, .Lfunc_end1-_Z16initCloneLookupsv
	.cfi_endproc
                                        # -- End function
	.globl	_Z15initJumpLookupsv            # -- Begin function _Z15initJumpLookupsv
	.p2align	5
	.type	_Z15initJumpLookupsv,@function
_Z15initJumpLookupsv:                   # @_Z15initJumpLookupsv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -512
	.cfi_def_cfa_offset 512
	st.d	$ra, $sp, 504                   # 8-byte Folded Spill
	st.d	$fp, $sp, 496                   # 8-byte Folded Spill
	st.d	$s0, $sp, 488                   # 8-byte Folded Spill
	st.d	$s1, $sp, 480                   # 8-byte Folded Spill
	st.d	$s2, $sp, 472                   # 8-byte Folded Spill
	st.d	$s3, $sp, 464                   # 8-byte Folded Spill
	st.d	$s4, $sp, 456                   # 8-byte Folded Spill
	st.d	$s5, $sp, 448                   # 8-byte Folded Spill
	st.d	$s6, $sp, 440                   # 8-byte Folded Spill
	st.d	$s7, $sp, 432                   # 8-byte Folded Spill
	st.d	$s8, $sp, 424                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	ori	$a0, $zero, 488
	ori	$fp, $zero, 488
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	pcalau12i	$a1, %pc_hi20(jump_lookups)
	st.d	$a1, $sp, 408                   # 8-byte Folded Spill
	st.d	$a0, $a1, %pc_lo12(jump_lookups)
	.p2align	4, , 16
.LBB2_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(jump_lookups)
	st.d	$zero, $sp, 416
	add.d	$a0, $a0, $s0
	addi.d	$a1, $sp, 416
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 8
	bne	$s0, $fp, .LBB2_1
# %bb.2:                                # %for.cond6.preheader.preheader
	move	$s4, $zero
	ori	$s8, $zero, 1
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                # %for.cond.cleanup8
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$s8, $a1
	ori	$a0, $zero, 10
	beq	$a1, $a0, .LBB2_9
.LBB2_4:                                # %for.cond6.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
	addi.w	$ra, $s8, 4
	ori	$a2, $zero, 5
	sltu	$s1, $a2, $s8
	addi.w	$a1, $s8, -5
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	addi.w	$a6, $s8, -2
	addi.w	$a1, $s8, -3
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ori	$s6, $zero, 4
	sltu	$a1, $s6, $a6
	addi.d	$a0, $s8, 2
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	sltu	$a2, $a2, $a6
	addi.w	$a3, $s8, -7
	st.d	$a3, $sp, 208                   # 8-byte Folded Spill
	alsl.d	$a3, $a6, $a6, 3
	ori	$a4, $zero, 1
	sltu	$a4, $a4, $a6
	addi.d	$t3, $zero, -10
	masknez	$a5, $t3, $a4
	addi.d	$fp, $zero, -14
	maskeqz	$a4, $fp, $a4
	or	$a4, $a4, $a5
	add.d	$a4, $a4, $a3
	ori	$s3, $zero, 2
	sltu	$t2, $s3, $a6
	addi.d	$t1, $a4, -3
	ori	$a3, $zero, 3
	sltu	$a3, $a3, $a6
	st.d	$a3, $sp, 392                   # 8-byte Folded Spill
	ori	$t6, $zero, 3
	add.d	$s7, $a1, $a2
	ori	$s5, $zero, 6
	st.d	$a6, $sp, 216                   # 8-byte Folded Spill
	sltu	$s2, $s5, $a6
	addi.w	$a2, $s8, -1
	addi.w	$a1, $s8, 3
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	alsl.w	$a1, $a2, $a2, 3
	ori	$a3, $zero, 1
	sltu	$a5, $a3, $a2
	masknez	$a6, $t3, $a5
	maskeqz	$a5, $fp, $a5
	or	$a5, $a5, $a6
	add.d	$a6, $a5, $a1
	sltu	$t0, $s3, $a2
	addi.d	$t4, $a6, -3
	sltu	$a1, $s6, $a2
	sltu	$t5, $s5, $s8
	add.d	$s0, $t5, $a1
	alsl.d	$a1, $s8, $s8, 3
	sltu	$t7, $a3, $s8
	masknez	$a5, $t3, $t7
	maskeqz	$t3, $fp, $t7
	or	$a5, $t3, $a5
	add.d	$a3, $a5, $a1
	sltu	$a1, $s3, $s8
	sltu	$t6, $t6, $s8
	addi.d	$a5, $s8, 1
	alsl.d	$t8, $a5, $a5, 3
	masknez	$t3, $fp, $t7
	addi.d	$s3, $zero, -17
	maskeqz	$fp, $s3, $t7
	or	$t3, $fp, $t3
	add.d	$t3, $t3, $t8
	alsl.d	$t8, $a0, $a0, 3
	masknez	$fp, $s3, $t7
	addi.d	$s3, $zero, -19
	maskeqz	$t7, $s3, $t7
	or	$t7, $t7, $fp
	add.d	$fp, $a1, $t6
	sub.d	$t8, $t8, $fp
	sltu	$fp, $s5, $a2
	move	$s5, $s1
	add.d	$t8, $t8, $t7
	addi.d	$t7, $a3, -3
	masknez	$a4, $a4, $t2
	maskeqz	$t2, $t1, $t2
	sltu	$a0, $s6, $s8
	or	$t2, $t2, $a4
	sub.d	$s6, $zero, $a0
	addi.d	$s1, $zero, -2
	maskeqz	$t1, $s1, $s2
	sub.d	$s7, $t1, $s7
	masknez	$a4, $a6, $t0
	maskeqz	$t1, $t4, $t0
	or	$s3, $t1, $a4
	sub.d	$t4, $s6, $s5
	maskeqz	$t1, $s1, $fp
	sub.d	$a4, $t1, $s0
	ori	$t1, $zero, 1
	masknez	$t1, $t1, $t0
	maskeqz	$t0, $s1, $t0
	or	$t0, $t0, $t1
	addi.d	$t1, $t4, -2
	add.d	$fp, $a6, $t0
	addi.d	$s0, $t3, -2
	masknez	$a6, $a3, $a1
	maskeqz	$t0, $t7, $a1
	or	$a6, $t0, $a6
	add.d	$t7, $t6, $a0
	masknez	$a3, $t4, $t5
	maskeqz	$t0, $t1, $t5
	or	$t0, $t0, $a3
	masknez	$a3, $t3, $a1
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	maskeqz	$t1, $s0, $a1
	or	$a1, $t1, $a3
	sub.d	$t1, $zero, $t7
	sub.d	$t7, $s1, $t7
	masknez	$t1, $t1, $s5
	maskeqz	$t7, $t7, $s5
	or	$t1, $t7, $t1
	addi.d	$t7, $t8, -2
	add.d	$a1, $a1, $t1
	add.d	$t1, $t3, $t1
	masknez	$a3, $t8, $a0
	st.d	$a0, $sp, 328                   # 8-byte Folded Spill
	maskeqz	$t3, $t7, $a0
	or	$s0, $t3, $a3
	addi.d	$t3, $t2, -2
	ld.d	$s2, $sp, 392                   # 8-byte Folded Reload
	masknez	$t2, $t2, $s2
	maskeqz	$a3, $t3, $s2
	addi.w	$a0, $s8, -6
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	or	$a3, $a3, $t2
	ori	$a0, $zero, 3
	sltu	$t2, $a0, $a2
	ori	$t7, $zero, 7
	sltu	$a2, $t7, $a2
	add.d	$a0, $a3, $s7
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a3, $s3, -2
	masknez	$t3, $s3, $t2
	maskeqz	$a3, $a3, $t2
	or	$a3, $a3, $t3
	addi.d	$t3, $a4, -3
	masknez	$t4, $a4, $a2
	maskeqz	$a2, $t3, $a2
	sltu	$a4, $t7, $s8
	addi.w	$a0, $a5, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	or	$a2, $a2, $t4
	addi.d	$a5, $fp, -2
	masknez	$t3, $fp, $t2
	maskeqz	$a5, $a5, $t2
	addi.w	$a0, $s8, 5
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	or	$a5, $a5, $t3
	addi.d	$t2, $a6, -2
	add.d	$a0, $a3, $a2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	add.d	$a0, $a5, $a2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	masknez	$a2, $a6, $t6
	st.d	$t6, $sp, 176                   # 8-byte Folded Spill
	maskeqz	$a3, $t2, $t6
	or	$a2, $a3, $a2
	addi.d	$a3, $t0, -3
	add.d	$a5, $a6, $t0
	masknez	$a6, $t0, $a4
	maskeqz	$a3, $a3, $a4
	or	$a3, $a3, $a6
	addi.w	$a0, $s8, -4
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	add.d	$a0, $a2, $a3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a2, $a5, -3
	masknez	$a3, $a5, $a4
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	maskeqz	$a2, $a2, $a4
	or	$a0, $a2, $a3
	addi.d	$a2, $a1, -3
	masknez	$a3, $a1, $t5
	maskeqz	$a2, $a2, $t5
	or	$a1, $a2, $a3
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a2, $t1, -3
	masknez	$a3, $t1, $t5
	st.d	$t5, $sp, 192                   # 8-byte Folded Spill
	maskeqz	$a2, $a2, $t5
	or	$a5, $a2, $a3
	addi.d	$a2, $s0, -3
	ori	$a3, $s6, 1
	add.d	$a3, $t8, $a3
	masknez	$a4, $s0, $s5
	maskeqz	$a2, $a2, $s5
	or	$a1, $a2, $a4
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a2, $a3, -3
	masknez	$a3, $a3, $s5
	maskeqz	$a2, $a2, $s5
	or	$a1, $a2, $a3
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a2, $t8, -3
	masknez	$a1, $t8, $s5
	st.d	$s5, $sp, 376                   # 8-byte Folded Spill
	maskeqz	$a2, $a2, $s5
	or	$a1, $a2, $a1
	addi.w	$a2, $s8, 6
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a0, -4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a0, $a5, -4
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $a1, -4
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s1, $zero, 3
	st.d	$s8, $sp, 224                   # 8-byte Folded Spill
	st.d	$ra, $sp, 384                   # 8-byte Folded Spill
	b	.LBB2_6
	.p2align	4, , 16
.LBB2_5:                                # %if.end87
                                        #   in Loop: Header=BB2_6 Depth=2
	addi.w	$s1, $s1, 1
	ori	$a0, $zero, 12
	beq	$s1, $a0, .LBB2_3
.LBB2_6:                                # %if.then
                                        #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $s1, -2
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	slt	$a0, $a0, $a2
	xori	$a0, $a0, 1
	ld.d	$a1, $sp, 376                   # 8-byte Folded Reload
	and	$a0, $a1, $a0
	bnez	$a0, .LBB2_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB2_6 Depth=2
	sltui	$a1, $s8, 5
	sltu	$a0, $ra, $a2
	and	$a0, $a1, $a0
	bnez	$a0, .LBB2_5
# %bb.8:                                # %if.then30
                                        #   in Loop: Header=BB2_6 Depth=2
	addi.d	$a0, $s8, -7
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	sltui	$a0, $s8, 4
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	sltui	$a0, $s8, 8
	st.d	$a0, $sp, 352                   # 8-byte Folded Spill
	addi.d	$a0, $s8, -9
	sltu	$a3, $zero, $a0
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	sltui	$a0, $s8, 6
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	sltui	$a0, $s8, 7
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	st.d	$a2, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	sltui	$a0, $a2, 9
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a4, %pc_lo12(jump_lookups)
	sltui	$s8, $a2, 6
	st.d	$a1, $sp, 304                   # 8-byte Folded Spill
	ori	$a1, $zero, 4
	sltu	$s0, $a1, $a2
	ld.d	$a1, $sp, 360                   # 8-byte Folded Reload
	sltui	$s5, $a1, 9
	alsl.d	$a0, $s4, $a0, 3
	st.d	$s4, $sp, 400                   # 8-byte Folded Spill
	addi.w	$s4, $s1, -4
	addi.w	$a1, $s1, -5
	sltui	$a5, $a1, 9
	ld.d	$s6, $sp, 208                   # 8-byte Folded Reload
	sltu	$a1, $s6, $s4
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	add.w	$a2, $s4, $fp
	maskeqz	$a3, $a2, $a1
	addi.w	$s7, $zero, -1
	masknez	$a1, $s7, $a1
	or	$a1, $a3, $a1
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	sltu	$a3, $s3, $s4
	xori	$a3, $a3, 1
	masknez	$a1, $a1, $s8
	maskeqz	$a2, $a2, $s8
	or	$a1, $a2, $a1
	maskeqz	$a2, $a1, $s0
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $s7, $a3
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $s0
	or	$a1, $a2, $a1
	st.d	$a5, $sp, 232                   # 8-byte Folded Spill
	maskeqz	$a1, $a1, $a5
	masknez	$a2, $s7, $a5
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $s5
	masknez	$s2, $s7, $s5
	or	$a1, $a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(jump_lookups)
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	addi.w	$a3, $s1, -3
	st.d	$a3, $sp, 264                   # 8-byte Folded Spill
	sltui	$a5, $s4, 9
	sltu	$a1, $s3, $a3
	xori	$a1, $a1, 1
	sltu	$a2, $s6, $a3
	add.w	$a3, $a3, $fp
	maskeqz	$a4, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a4, $a2
	masknez	$a2, $a2, $s8
	maskeqz	$a3, $a3, $s8
	or	$a2, $a3, $a2
	maskeqz	$a3, $a2, $s0
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $s0
	or	$a1, $a3, $a1
	st.d	$a5, $sp, 280                   # 8-byte Folded Spill
	maskeqz	$a1, $a1, $a5
	masknez	$a2, $s7, $a5
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $s5
	or	$a1, $a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(jump_lookups)
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a2, $sp, 392                   # 8-byte Folded Reload
	sltu	$a1, $s3, $a2
	xori	$a1, $a1, 1
	sltu	$a2, $s6, $a2
	add.d	$a3, $fp, $s1
	addi.w	$a3, $a3, -2
	maskeqz	$a4, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a4, $a2
	masknez	$a2, $a2, $s8
	maskeqz	$a3, $a3, $s8
	or	$a2, $a3, $a2
	maskeqz	$a3, $a2, $s0
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $s0
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $s5
	ld.d	$s5, $sp, 376                   # 8-byte Folded Reload
	or	$a1, $a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(jump_lookups)
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	sltu	$a1, $s2, $s4
	xori	$a1, $a1, 1
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	sltu	$a2, $s6, $s4
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	add.w	$a3, $s4, $a3
	maskeqz	$a4, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a4, $a2
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	masknez	$a2, $a2, $s3
	maskeqz	$a3, $a3, $s3
	or	$a2, $a3, $a2
	maskeqz	$a3, $a2, $s5
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $s5
	or	$a1, $a3, $a1
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $s8
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $fp
	masknez	$s0, $s7, $fp
	or	$a1, $a1, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(jump_lookups)
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	addi.d	$a1, $s1, -11
	sltu	$a5, $zero, $a1
	ld.d	$a3, $sp, 392                   # 8-byte Folded Reload
	sltu	$a1, $a3, $s2
	sltu	$a2, $a3, $s6
	move	$s6, $a3
	xori	$a2, $a2, 1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s1
	addi.w	$a3, $a3, -2
	maskeqz	$a4, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a4, $a2
	masknez	$a2, $a2, $s3
	maskeqz	$a3, $a3, $s3
	or	$a2, $a3, $a2
	maskeqz	$a3, $a2, $s5
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $s5
	or	$a1, $a3, $a1
	st.d	$a5, $sp, 296                   # 8-byte Folded Spill
	maskeqz	$a1, $a1, $a5
	masknez	$a2, $s7, $a5
	st.d	$a2, $sp, 288                   # 8-byte Folded Spill
	or	$a1, $a1, $a2
	maskeqz	$a1, $a1, $fp
	or	$a1, $a1, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(jump_lookups)
	ld.d	$a1, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $a1, $a0, 3
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	sltu	$a1, $a1, $s4
	xori	$a1, $a1, 1
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	andi	$s2, $a2, 1
	ld.d	$s5, $sp, 368                   # 8-byte Folded Reload
	sltu	$a2, $s5, $s4
	ld.d	$s4, $sp, 400                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	add.d	$a3, $a3, $s1
	addi.w	$a4, $a3, -4
	addi.w	$a3, $a3, -8
	ld.d	$s3, $sp, 248                   # 8-byte Folded Reload
	masknez	$a4, $a4, $s3
	maskeqz	$a3, $a3, $s3
	or	$a3, $a3, $a4
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	maskeqz	$a4, $a3, $fp
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $fp
	or	$a2, $a4, $a2
	maskeqz	$a3, $a2, $s2
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $s2
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $s8
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(jump_lookups)
	alsl.d	$a0, $s4, $a0, 3
	move	$a4, $s6
	sltui	$s0, $s6, 8
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	sltu	$a1, $a1, $s1
	xori	$a1, $a1, 1
	sltu	$a2, $s5, $s1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	masknez	$a3, $s1, $s6
	maskeqz	$a4, $a4, $s6
	or	$a3, $a4, $a3
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	add.w	$a4, $a3, $a4
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	add.w	$a3, $a3, $a5
	masknez	$a4, $a4, $s3
	maskeqz	$a3, $a3, $s3
	or	$a3, $a3, $a4
	maskeqz	$a4, $a3, $fp
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $fp
	or	$a2, $a4, $a2
	maskeqz	$a3, $a2, $s2
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $s2
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $s0
	masknez	$a2, $s7, $s0
	st.d	$a2, $sp, 336                   # 8-byte Folded Spill
	or	$a1, $a1, $a2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(jump_lookups)
	alsl.d	$a0, $s4, $a0, 3
	move	$s3, $s4
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 264                   # 8-byte Folded Reload
	sltu	$a1, $s5, $a2
	xori	$a1, $a1, 1
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	sltu	$a2, $s4, $a2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$a3, $a3, $s1
	addi.w	$a4, $a3, -3
	addi.w	$a3, $a3, -7
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	masknez	$a4, $a4, $s8
	maskeqz	$a3, $a3, $s8
	or	$a3, $a3, $a4
	ld.d	$s2, $sp, 304                   # 8-byte Folded Reload
	maskeqz	$a4, $a3, $s2
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $s2
	or	$a2, $a4, $a2
	maskeqz	$a3, $a2, $s6
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $s6
	or	$a1, $a3, $a1
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	ld.d	$a2, $sp, 272                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	masknez	$fp, $s7, $a2
	or	$a1, $a1, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(jump_lookups)
	alsl.d	$a0, $s3, $a0, 3
	sltu	$a1, $s5, $s1
	xori	$a1, $a1, 1
	sltu	$a2, $s4, $s1
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	masknez	$a3, $s1, $s5
	ld.d	$s3, $sp, 392                   # 8-byte Folded Reload
	maskeqz	$a4, $s3, $s5
	or	$a3, $a4, $a3
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	add.w	$a4, $a3, $a4
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	add.w	$a3, $a3, $a5
	masknez	$a4, $a4, $s8
	maskeqz	$a3, $a3, $s8
	or	$a3, $a3, $a4
	maskeqz	$a4, $a3, $s2
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $s2
	or	$a2, $a4, $a2
	maskeqz	$a3, $a2, $s6
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $s6
	or	$a1, $a3, $a1
	maskeqz	$a1, $a1, $s0
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(jump_lookups)
	ld.d	$s6, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $s6, $a0, 3
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	sltu	$a1, $s4, $s3
	xori	$a1, $a1, 1
	ld.d	$s0, $sp, 360                   # 8-byte Folded Reload
	sltu	$a2, $s0, $s3
	move	$s8, $s3
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $a3, $s1
	addi.d	$a4, $zero, -2
	ld.d	$a6, $sp, 312                   # 8-byte Folded Reload
	masknez	$a4, $a4, $a6
	addi.d	$a5, $zero, -6
	maskeqz	$a5, $a5, $a6
	or	$a4, $a5, $a4
	add.w	$a3, $a3, $a4
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	maskeqz	$a4, $a3, $s3
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $s3
	or	$a2, $a4, $a2
	maskeqz	$a3, $a2, $s5
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $s5
	or	$a1, $a3, $a1
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	masknez	$fp, $s7, $a2
	or	$a1, $a1, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(jump_lookups)
	alsl.d	$a0, $s6, $a0, 3
	sltu	$a1, $s8, $s4
	sltu	$a2, $s8, $s0
	move	$s6, $s8
	xori	$a2, $a2, 1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.d	$a3, $a3, $s1
	addi.w	$a4, $a3, -2
	addi.w	$a3, $a3, -6
	ld.d	$s0, $sp, 192                   # 8-byte Folded Reload
	masknez	$a4, $a4, $s0
	maskeqz	$a3, $a3, $s0
	or	$a3, $a3, $a4
	maskeqz	$a4, $a3, $s3
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $s3
	or	$a2, $a4, $a2
	maskeqz	$a3, $a2, $s5
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	masknez	$a1, $a1, $s5
	or	$a1, $a3, $a1
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	ld.d	$a2, $sp, 288                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	maskeqz	$a1, $a1, $a2
	or	$a1, $a1, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, %pc_lo12(jump_lookups)
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$a0, $fp, $a0, 3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$s8, $a1
	or	$a1, $s6, $a1
	sltui	$a1, $a1, 8
	sltu	$a2, $s4, $s1
	xori	$a2, $a2, 1
	ld.d	$a3, $sp, 360                   # 8-byte Folded Reload
	sltu	$a3, $a3, $s1
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	masknez	$a4, $s1, $a5
	maskeqz	$a5, $s6, $a5
	or	$a4, $a5, $a4
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	add.w	$a5, $a4, $a5
	ld.d	$a6, $sp, 24                    # 8-byte Folded Reload
	add.w	$a4, $a4, $a6
	masknez	$a5, $a5, $s0
	maskeqz	$a4, $a4, $s0
	or	$a4, $a4, $a5
	maskeqz	$a5, $a4, $s3
	maskeqz	$a4, $a4, $a3
	masknez	$a3, $s7, $a3
	or	$a3, $a4, $a3
	masknez	$a3, $a3, $s3
	or	$a3, $a5, $a3
	maskeqz	$a4, $a3, $s5
	maskeqz	$a3, $a3, $a2
	masknez	$a2, $s7, $a2
	or	$a2, $a3, $a2
	masknez	$a2, $a2, $s5
	or	$a2, $a4, $a2
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $s7, $a1
	or	$a1, $a2, $a1
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 384                   # 8-byte Folded Reload
	addi.w	$s4, $fp, 1
	b	.LBB2_5
.LBB2_9:                                # %for.cond.cleanup4
	ld.d	$s8, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 488                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 496                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 504                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 512
	ret
.Lfunc_end2:
	.size	_Z15initJumpLookupsv, .Lfunc_end2-_Z15initJumpLookupsv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoardC2ERKS_       # -- Begin function _ZN13HexxagonBoardC2ERKS_
	.p2align	2
	.type	_ZN13HexxagonBoardC2ERKS_,@function
_ZN13HexxagonBoardC2ERKS_:              # @_ZN13HexxagonBoardC2ERKS_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	addi.d	$s0, $a0, 8
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	addi.d	$a1, $fp, 8
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN10BitBoard64aSERKS_)
	jr	$t8
.Lfunc_end3:
	.size	_ZN13HexxagonBoardC2ERKS_, .Lfunc_end3-_ZN13HexxagonBoardC2ERKS_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoardaSERKS_       # -- Begin function _ZN13HexxagonBoardaSERKS_
	.p2align	2
	.type	_ZN13HexxagonBoardaSERKS_,@function
_ZN13HexxagonBoardaSERKS_:              # @_ZN13HexxagonBoardaSERKS_
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$a1, $a2, 8
	addi.d	$s2, $s0, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	addi.d	$fp, $s1, 8
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end4:
	.size	_ZN13HexxagonBoardaSERKS_, .Lfunc_end4-_ZN13HexxagonBoardaSERKS_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoard4initEv       # -- Begin function _ZN13HexxagonBoard4initEv
	.p2align	2
	.type	_ZN13HexxagonBoard4initEv,@function
_ZN13HexxagonBoard4initEv:              # @_ZN13HexxagonBoard4initEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	st.d	$zero, $sp, 0
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 0
	addi.d	$s0, $fp, 8
	addi.d	$a1, $sp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 34
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 34
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 56
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 56
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 26
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 60
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	_ZN13HexxagonBoard4initEv, .Lfunc_end5-_ZN13HexxagonBoard4initEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoard11countBricksEi # -- Begin function _ZN13HexxagonBoard11countBricksEi
	.p2align	2
	.type	_ZN13HexxagonBoard11countBricksEi,@function
_ZN13HexxagonBoard11countBricksEi:      # @_ZN13HexxagonBoard11countBricksEi
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a1
	move	$s1, $a0
	move	$s2, $zero
	move	$s4, $zero
	move	$s0, $zero
	addi.d	$s3, $a0, 8
	ori	$s5, $zero, 61
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_1:                                # %if.else
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.w	$s4, $s4, 1
.LBB6_2:                                # %for.inc
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $s5, .LBB6_6
.LBB6_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB6_3 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_1
# %bb.5:                                # %if.then4
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.w	$s0, $s0, 1
	b	.LBB6_2
.LBB6_6:                                # %for.cond.cleanup
	beqz	$fp, .LBB6_10
# %bb.7:                                # %for.cond.cleanup
	ori	$a0, $zero, 1
	beq	$fp, $a0, .LBB6_11
# %bb.8:                                # %for.cond.cleanup
	ori	$a0, $zero, 2
	move	$s0, $s4
	beq	$fp, $a0, .LBB6_11
# %bb.9:                                # %if.end18
	move	$s0, $zero
	b	.LBB6_11
.LBB6_10:                               # %if.then9
	sub.w	$s0, $s0, $s4
.LBB6_11:                               # %cleanup
	move	$a0, $s0
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
.Lfunc_end6:
	.size	_ZN13HexxagonBoard11countBricksEi, .Lfunc_end6-_ZN13HexxagonBoard11countBricksEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoard8evaluateEv   # -- Begin function _ZN13HexxagonBoard8evaluateEv
	.p2align	2
	.type	_ZN13HexxagonBoard8evaluateEv,@function
_ZN13HexxagonBoard8evaluateEv:          # @_ZN13HexxagonBoard8evaluateEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a0
	move	$s0, $zero
	move	$s4, $zero
	move	$s2, $zero
	move	$s3, $zero
	addi.d	$s1, $a0, 8
	ori	$s5, $zero, 61
	b	.LBB7_3
	.p2align	4, , 16
.LBB7_1:                                # %if.else
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.w	$s2, $s2, 1
.LBB7_2:                                # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.w	$s0, $s0, 1
	beq	$s0, $s5, .LBB7_6
.LBB7_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.w	$s4, $s4, 1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_1
# %bb.5:                                # %if.then4
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.w	$s3, $s3, 1
	b	.LBB7_2
.LBB7_6:                                # %for.cond.cleanup
	sub.w	$a0, $s3, $s2
	beqz	$s3, .LBB7_9
# %bb.7:                                # %for.cond.cleanup
	beqz	$s2, .LBB7_9
# %bb.8:                                # %for.cond.cleanup
	ori	$a1, $zero, 61
	bne	$s4, $a1, .LBB7_11
.LBB7_9:                                # %if.then13
	sltui	$a3, $s2, 1
	sltui	$a2, $s3, 1
	lu12i.w	$a1, -5
	ori	$a1, $a1, 480
	add.w	$a4, $a0, $a1
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a4, $a2
	or	$a0, $a2, $a0
	lu12i.w	$a2, 4
	ori	$a2, $a2, 3616
	add.w	$a4, $a0, $a2
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a4, $a3
	ori	$a4, $zero, 61
	or	$a0, $a3, $a0
	bne	$s4, $a4, .LBB7_11
# %bb.10:                               # %if.then22
	slt	$a3, $s2, $s3
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	add.w	$a0, $a0, $a1
.LBB7_11:                               # %if.end32
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
	.size	_ZN13HexxagonBoard8evaluateEv, .Lfunc_end7-_ZN13HexxagonBoard8evaluateEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoard11getHexxagonEi # -- Begin function _ZN13HexxagonBoard11getHexxagonEi
	.p2align	2
	.type	_ZN13HexxagonBoard11getHexxagonEi,@function
_ZN13HexxagonBoard11getHexxagonEi:      # @_ZN13HexxagonBoard11getHexxagonEi
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_2
# %bb.1:                                # %if.then
	addi.d	$a0, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	addi.d	$a0, $a0, 1
	b	.LBB8_3
.LBB8_2:
	ori	$a0, $zero, 3
.LBB8_3:                                # %return
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	_ZN13HexxagonBoard11getHexxagonEi, .Lfunc_end8-_ZN13HexxagonBoard11getHexxagonEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoard9applyMoveER12HexxagonMove # -- Begin function _ZN13HexxagonBoard9applyMoveER12HexxagonMove
	.p2align	2
	.type	_ZN13HexxagonBoard9applyMoveER12HexxagonMove,@function
_ZN13HexxagonBoard9applyMoveER12HexxagonMove: # @_ZN13HexxagonBoard9applyMoveER12HexxagonMove
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s1, $a1
	ld.b	$a1, $a1, 1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s1, 1
	addi.d	$fp, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(clone_lookups)
	ld.d	$a0, $a0, %pc_lo12(clone_lookups)
	ld.b	$a1, $s1, 1
	alsl.d	$a1, $a1, $a0, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard64orERKS_)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s1, 0
	ld.bu	$a1, $s1, 1
	beq	$a0, $a1, .LBB9_2
# %bb.1:                                # %if.then
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard648unSetBitEi)
	jirl	$ra, $ra, 0
.LBB9_2:                                # %if.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard64coEv)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end9:
	.size	_ZN13HexxagonBoard9applyMoveER12HexxagonMove, .Lfunc_end9-_ZN13HexxagonBoard9applyMoveER12HexxagonMove
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoard11isMoveValidER12HexxagonMove # -- Begin function _ZN13HexxagonBoard11isMoveValidER12HexxagonMove
	.p2align	2
	.type	_ZN13HexxagonBoard11isMoveValidER12HexxagonMove,@function
_ZN13HexxagonBoard11isMoveValidER12HexxagonMove: # @_ZN13HexxagonBoard11isMoveValidER12HexxagonMove
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $a0, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard64anERKS_)
	jirl	$ra, $ra, 0
	ld.b	$a1, $fp, 1
	st.d	$a0, $sp, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB10_4
# %bb.1:                                # %if.then
	ld.b	$a0, $fp, 0
	ld.bu	$a2, $fp, 1
	andi	$a1, $a0, 255
	bne	$a1, $a2, .LBB10_3
# %bb.2:                                # %if.then7
	pcalau12i	$a1, %pc_hi20(clone_lookups)
	ld.d	$a1, $a1, %pc_lo12(clone_lookups)
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN10BitBoard64anERKS_)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN10BitBoard64cvbEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	beqz	$a1, .LBB10_4
	b	.LBB10_5
.LBB10_3:                               # %if.else
	st.d	$zero, $sp, 24
	ext.w.b	$a1, $a1
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN10BitBoard646setBitEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(jump_lookups)
	ld.d	$a0, $a0, %pc_lo12(jump_lookups)
	ld.b	$a1, $fp, 1
	alsl.d	$a1, $a1, $a0, 3
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN10BitBoard64anERKS_)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(_ZN10BitBoard64anERKS_)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZN10BitBoard64cvbEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB10_5
.LBB10_4:                               # %if.end25
	move	$a0, $zero
.LBB10_5:                               # %cleanup26
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end10:
	.size	_ZN13HexxagonBoard11isMoveValidER12HexxagonMove, .Lfunc_end10-_ZN13HexxagonBoard11isMoveValidER12HexxagonMove
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoard16generateMoveListEv # -- Begin function _ZN13HexxagonBoard16generateMoveListEv
	.p2align	2
	.type	_ZN13HexxagonBoard16generateMoveListEv,@function
_ZN13HexxagonBoard16generateMoveListEv: # @_ZN13HexxagonBoard16generateMoveListEv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.Ltmp0:                                 # EH_LABEL
	ori	$a0, $zero, 128
	pcaddu18i	$ra, %call36(_Znam)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:                                # %_ZN16HexxagonMoveListC2Ev.exit
	move	$s1, $zero
	st.d	$a0, $fp, 8
	st.w	$zero, $fp, 0
	addi.d	$s2, $s0, 8
	pcalau12i	$s4, %pc_hi20(clone_lookups)
	pcalau12i	$s5, %pc_hi20(jump_lookups)
	ori	$s6, $zero, 61
	b	.LBB11_3
	.p2align	4, , 16
.LBB11_2:                               # %for.inc36
                                        #   in Loop: Header=BB11_3 Depth=1
	addi.d	$s1, $s1, 1
	beq	$s1, $s6, .LBB11_11
.LBB11_3:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_9 Depth 2
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_2
# %bb.4:                                # %if.then5
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s4, %pc_lo12(clone_lookups)
	alsl.d	$a1, $s1, $a0, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard64anERKS_)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24
	addi.d	$a1, $sp, 24
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard64anERKS_)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN10BitBoard64cvbEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_6
# %bb.5:                                # %if.then11
                                        #   in Loop: Header=BB11_3 Depth=1
	st.b	$s1, $sp, 32
	st.b	$s1, $sp, 33
	addi.d	$a1, $sp, 32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16HexxagonMoveList7addMoveER12HexxagonMove)
	jirl	$ra, $ra, 0
.LBB11_6:                               # %if.end12
                                        #   in Loop: Header=BB11_3 Depth=1
	ld.d	$a0, $s5, %pc_lo12(jump_lookups)
	alsl.d	$a1, $s1, $a0, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard64anERKS_)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 8
	addi.d	$a0, $sp, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard64anERKS_)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 32
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 24
	pcaddu18i	$ra, %call36(_ZN10BitBoard64cvbEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_2
# %bb.7:                                # %for.cond25.preheader
                                        #   in Loop: Header=BB11_3 Depth=1
	move	$s3, $zero
	b	.LBB11_9
	.p2align	4, , 16
.LBB11_8:                               # %for.inc
                                        #   in Loop: Header=BB11_9 Depth=2
	addi.w	$s3, $s3, 1
	beq	$s3, $s6, .LBB11_2
.LBB11_9:                               # %for.body28
                                        #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $sp, 32
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_8
# %bb.10:                               # %if.then31
                                        #   in Loop: Header=BB11_9 Depth=2
	st.b	$s3, $sp, 24
	st.b	$s1, $sp, 25
	addi.d	$a1, $sp, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16HexxagonMoveList7addMoveER12HexxagonMove)
	jirl	$ra, $ra, 0
	b	.LBB11_8
.LBB11_11:                              # %for.cond.cleanup
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16HexxagonMoveList10getNrMovesEv)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_15
# %bb.12:                               # %delete.notnull
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB11_14
# %bb.13:                               # %delete.notnull.i
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_14:                              # %_ZN16HexxagonMoveListD2Ev.exit
	ori	$a1, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$fp, $zero
.LBB11_15:                              # %cleanup
	move	$a0, $fp
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
.LBB11_16:                              # %lpad
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
	ori	$a1, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	_ZN13HexxagonBoard16generateMoveListEv, .Lfunc_end11-_ZN13HexxagonBoard16generateMoveListEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end11-.Ltmp1            #   Call between .Ltmp1 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN13HexxagonBoard9endOfGameEv  # -- Begin function _ZN13HexxagonBoard9endOfGameEv
	.p2align	2
	.type	_ZN13HexxagonBoard9endOfGameEv,@function
_ZN13HexxagonBoard9endOfGameEv:         # @_ZN13HexxagonBoard9endOfGameEv
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard16generateMoveListEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_4
# %bb.1:                                # %delete.notnull
	ld.d	$a2, $a0, 8
	beqz	$a2, .LBB12_3
# %bb.2:                                # %delete.notnull.i
	ori	$a1, $zero, 8
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB12_3:                               # %_ZN16HexxagonMoveListD2Ev.exit
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB12_4:
	ori	$a0, $zero, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end12:
	.size	_ZN13HexxagonBoard9endOfGameEv, .Lfunc_end12-_ZN13HexxagonBoard9endOfGameEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoard12computerMoveEiPFvvEi # -- Begin function _ZN13HexxagonBoard12computerMoveEiPFvvEi
	.p2align	2
	.type	_ZN13HexxagonBoard12computerMoveEiPFvvEi,@function
_ZN13HexxagonBoard12computerMoveEiPFvvEi: # @_ZN13HexxagonBoard12computerMoveEiPFvvEi
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard16generateMoveListEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB13_4
# %bb.1:                                # %if.end
	move	$fp, $a0
	addi.d	$s4, $sp, 16
	addi.d	$a0, $sp, 8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	addi.d	$a1, $s0, 8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $s3
	move	$a3, $s2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(_ZN16HexxagonMoveList13scoreAllMovesE13HexxagonBoardiPFvvEi)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN16HexxagonMoveList11getBestMoveEv)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard9applyMoveER12HexxagonMove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB13_3
# %bb.2:                                # %delete.notnull.i
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB13_3:                               # %_ZN16HexxagonMoveListD2Ev.exit
	ori	$a1, $zero, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB13_5
.LBB13_4:                               # %if.then
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
.LBB13_5:                               # %cleanup
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end13:
	.size	_ZN13HexxagonBoard12computerMoveEiPFvvEi, .Lfunc_end13-_ZN13HexxagonBoard12computerMoveEiPFvvEi
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoard12readFromFileEP8_IO_FILE # -- Begin function _ZN13HexxagonBoard12readFromFileEP8_IO_FILE
	.p2align	2
	.type	_ZN13HexxagonBoard12readFromFileEP8_IO_FILE,@function
_ZN13HexxagonBoard12readFromFileEP8_IO_FILE: # @_ZN13HexxagonBoard12readFromFileEP8_IO_FILE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(_ZN10BitBoard6412readFromFileEP8_IO_FILE)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_2
# %bb.1:
	addi.w	$a0, $zero, -1
	b	.LBB14_3
.LBB14_2:                               # %lor.lhs.false
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard6412readFromFileEP8_IO_FILE)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	sub.d	$a0, $zero, $a0
.LBB14_3:                               # %return
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end14:
	.size	_ZN13HexxagonBoard12readFromFileEP8_IO_FILE, .Lfunc_end14-_ZN13HexxagonBoard12readFromFileEP8_IO_FILE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoard11writeToFileEP8_IO_FILE # -- Begin function _ZN13HexxagonBoard11writeToFileEP8_IO_FILE
	.p2align	2
	.type	_ZN13HexxagonBoard11writeToFileEP8_IO_FILE,@function
_ZN13HexxagonBoard11writeToFileEP8_IO_FILE: # @_ZN13HexxagonBoard11writeToFileEP8_IO_FILE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(_ZN10BitBoard6411writeToFileEP8_IO_FILE)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_2
# %bb.1:
	addi.w	$a0, $zero, -1
	b	.LBB15_3
.LBB15_2:                               # %lor.lhs.false
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN10BitBoard6411writeToFileEP8_IO_FILE)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	sub.d	$a0, $zero, $a0
.LBB15_3:                               # %return
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end15:
	.size	_ZN13HexxagonBoard11writeToFileEP8_IO_FILE, .Lfunc_end15-_ZN13HexxagonBoard11writeToFileEP8_IO_FILE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN13HexxagonBoard16displayBoardTextEi # -- Begin function _ZN13HexxagonBoard16displayBoardTextEi
	.p2align	2
	.type	_ZN13HexxagonBoard16displayBoardTextEi,@function
_ZN13HexxagonBoard16displayBoardTextEi: # @_ZN13HexxagonBoard16displayBoardTextEi
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	st.d	$a0, $sp, 112
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	bnez	$a1, .LBB16_2
# %bb.1:                                # %if.then
	addi.d	$a0, $sp, 112
	pcaddu18i	$ra, %call36(_ZN10BitBoard64coEv)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 104
	addi.d	$a0, $sp, 112
	addi.d	$a1, $sp, 104
	pcaddu18i	$ra, %call36(_ZN10BitBoard64aSERKS_)
	jirl	$ra, $ra, 0
.LBB16_2:                               # %if.end
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s2, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 27
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 26
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	ori	$s0, $zero, 4
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -9
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$s7, $zero, 10
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s3, $zero, 0
	lu32i.d	$s3, 1
	ori	$s1, $zero, 4
	ori	$s4, $zero, 1
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_3:                               # %for.cond.cleanup17
                                        #   in Loop: Header=BB16_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	addi.w	$s4, $s4, 1
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	addi.w	$s1, $s1, -1
	ori	$s0, $zero, 4
	ori	$s7, $zero, 10
	beq	$s4, $s7, .LBB16_18
.LBB16_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
                                        #     Child Loop BB16_10 Depth 2
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	bltu	$s0, $s4, .LBB16_7
# %bb.5:                                # %for.body12.preheader
                                        #   in Loop: Header=BB16_4 Depth=1
	ori	$a1, $zero, 1
	sltu	$a0, $a1, $s1
	ori	$s5, $zero, 1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s1, $a0
	or	$fp, $a0, $a1
	.p2align	4, , 16
.LBB16_6:                               # %for.body12
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, -1
	bnez	$fp, .LBB16_6
.LBB16_7:                               # %if.end14
                                        #   in Loop: Header=BB16_4 Depth=1
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	move	$t0, $s4
	sltu	$s4, $s0, $s4
	addi.w	$s6, $t0, 4
	ori	$a0, $zero, 5
	sltu	$a0, $a0, $t0
	addi.w	$fp, $t0, -5
	alsl.d	$a1, $t0, $t0, 3
	sltu	$a2, $s5, $t0
	addi.d	$a3, $zero, -10
	masknez	$a3, $a3, $a2
	addi.d	$a4, $zero, -14
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	ori	$a2, $zero, 2
	sltu	$a2, $a2, $t0
	addi.d	$a3, $a1, -3
	ori	$a4, $zero, 3
	sltu	$a4, $a4, $t0
	add.d	$a0, $s4, $a0
	ori	$a7, $zero, 6
	sltu	$a5, $a7, $t0
	ori	$a6, $zero, 7
	sltu	$a6, $a6, $t0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a3, $a2
	or	$a1, $a2, $a1
	addi.d	$a2, $a1, -2
	addi.d	$a3, $zero, -2
	maskeqz	$a3, $a3, $a5
	sub.d	$a0, $a3, $a0
	addi.d	$a3, $a0, -3
	masknez	$a1, $a1, $a4
	maskeqz	$a2, $a2, $a4
	or	$a1, $a2, $a1
	masknez	$a0, $a0, $a6
	maskeqz	$a2, $a3, $a6
	or	$a0, $a2, $a0
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	sltui	$s1, $t0, 6
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a0, $t0, -9
	sltui	$a0, $a0, 1
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $a7, $a0
	or	$s0, $a0, $a1
	ld.d	$s7, $sp, 24                    # 8-byte Folded Reload
	b	.LBB16_10
	.p2align	4, , 16
.LBB16_8:                               # %if.then21
                                        #   in Loop: Header=BB16_10 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 1
	move	$a0, $s2
.LBB16_9:                               # %if.end37
                                        #   in Loop: Header=BB16_10 Depth=2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	bstrpick.d	$a0, $s7, 31, 0
	addi.d	$s7, $a0, 1
	and	$a0, $s7, $s3
	bnez	$a0, .LBB16_3
.LBB16_10:                              # %if.then.i
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a0, $s7, 10
	sltu	$a1, $s6, $a0
	xori	$a1, $a1, 1
	or	$a1, $s4, $a1
	bne	$a1, $s5, .LBB16_8
# %bb.11:                               # %if.then.i
                                        #   in Loop: Header=BB16_10 Depth=2
	sltu	$a0, $fp, $a0
	or	$a0, $s1, $a0
	beqz	$a0, .LBB16_8
# %bb.12:                               # %_Z16getHexxagonIndexii.exit
                                        #   in Loop: Header=BB16_10 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s7
	add.w	$s8, $a0, $s0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB16_8
# %bb.13:                               # %if.else
                                        #   in Loop: Header=BB16_10 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_16
# %bb.14:                               # %_Z16getHexxagonIndexii.exit66
                                        #   in Loop: Header=BB16_10 Depth=2
	addi.d	$a0, $sp, 112
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 2
	beqz	$a0, .LBB16_17
# %bb.15:                               # %if.then29
                                        #   in Loop: Header=BB16_10 Depth=2
	move	$a0, $s2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	b	.LBB16_9
.LBB16_16:                              # %if.else34
                                        #   in Loop: Header=BB16_10 Depth=2
	ori	$a2, $zero, 2
	move	$a0, $s2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB16_9
.LBB16_17:                              # %if.else31
                                        #   in Loop: Header=BB16_10 Depth=2
	move	$a0, $s2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB16_9
.LBB16_18:                              # %for.cond.cleanup
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	beqz	$s1, .LBB16_23
# %bb.19:                               # %for.body.i.preheader
	move	$s2, $zero
	move	$s4, $zero
	ori	$fp, $zero, 61
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB16_21
	.p2align	4, , 16
.LBB16_20:                              # %for.inc.i
                                        #   in Loop: Header=BB16_21 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $fp, .LBB16_27
.LBB16_21:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_20
# %bb.22:                               # %if.then.i73
                                        #   in Loop: Header=BB16_21 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	add.d	$s4, $s4, $a0
	b	.LBB16_20
.LBB16_23:                              # %for.body.i76.preheader
	move	$s2, $zero
	move	$s4, $zero
	ori	$fp, $zero, 61
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB16_25
	.p2align	4, , 16
.LBB16_24:                              # %for.inc.i87
                                        #   in Loop: Header=BB16_25 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $fp, .LBB16_27
.LBB16_25:                              # %for.body.i76
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_24
# %bb.26:                               # %if.then.i82
                                        #   in Loop: Header=BB16_25 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	add.d	$s4, $s4, $a0
	b	.LBB16_24
.LBB16_27:                              # %cond.end
	move	$s2, $zero
	move	$s5, $zero
	ori	$fp, $zero, 61
	bnez	$s1, .LBB16_29
	b	.LBB16_32
	.p2align	4, , 16
.LBB16_28:                              # %for.inc.i108
                                        #   in Loop: Header=BB16_29 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $fp, .LBB16_34
.LBB16_29:                              # %for.body.i97
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_28
# %bb.30:                               # %if.then.i103
                                        #   in Loop: Header=BB16_29 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	add.d	$s5, $s5, $a0
	b	.LBB16_28
	.p2align	4, , 16
.LBB16_31:                              # %for.inc.i129
                                        #   in Loop: Header=BB16_32 Depth=1
	addi.w	$s2, $s2, 1
	beq	$s2, $fp, .LBB16_34
.LBB16_32:                              # %for.body.i118
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_31
# %bb.33:                               # %if.then.i124
                                        #   in Loop: Header=BB16_32 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	add.d	$s5, $s5, $a0
	b	.LBB16_31
.LBB16_34:                              # %cond.end53
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cout)
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 11
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$s2, $zero
	ori	$fp, $zero, 61
	bnez	$s1, .LBB16_36
	b	.LBB16_39
	.p2align	4, , 16
.LBB16_35:                              # %for.inc.i153
                                        #   in Loop: Header=BB16_36 Depth=1
	addi.w	$s3, $s3, 1
	beq	$s3, $fp, .LBB16_41
.LBB16_36:                              # %for.body.i142
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_35
# %bb.37:                               # %if.then.i148
                                        #   in Loop: Header=BB16_36 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	add.w	$s2, $s2, $a0
	b	.LBB16_35
	.p2align	4, , 16
.LBB16_38:                              # %for.inc.i174
                                        #   in Loop: Header=BB16_39 Depth=1
	addi.w	$s3, $s3, 1
	beq	$s3, $fp, .LBB16_41
.LBB16_39:                              # %for.body.i163
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_38
# %bb.40:                               # %if.then.i169
                                        #   in Loop: Header=BB16_39 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	add.w	$s2, $s2, $a0
	b	.LBB16_38
.LBB16_41:                              # %cond.end62
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s3, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 4
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$s2, $zero
	beqz	$s1, .LBB16_46
# %bb.42:                               # %for.body.i187.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$s1, $a0, %pc_lo12(.L.str.15)
	ori	$fp, $zero, 61
	b	.LBB16_44
	.p2align	4, , 16
.LBB16_43:                              # %for.inc.i198
                                        #   in Loop: Header=BB16_44 Depth=1
	addi.w	$s3, $s3, 1
	beq	$s3, $fp, .LBB16_50
.LBB16_44:                              # %for.body.i187
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_43
# %bb.45:                               # %if.then.i193
                                        #   in Loop: Header=BB16_44 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
	add.w	$s2, $s2, $a0
	b	.LBB16_43
.LBB16_46:                              # %for.body.i208.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$s1, $a0, %pc_lo12(.L.str.16)
	ori	$fp, $zero, 61
	b	.LBB16_48
	.p2align	4, , 16
.LBB16_47:                              # %for.inc.i219
                                        #   in Loop: Header=BB16_48 Depth=1
	addi.w	$s3, $s3, 1
	beq	$s3, $fp, .LBB16_50
.LBB16_48:                              # %for.body.i208
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s6
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_47
# %bb.49:                               # %if.then.i214
                                        #   in Loop: Header=BB16_48 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN10BitBoard646getBitEi)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	add.w	$s2, $s2, $a0
	b	.LBB16_47
.LBB16_50:                              # %cond.end71
	add.d	$a0, $s4, $s5
	ori	$a1, $zero, 61
	sub.w	$s0, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s3, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 8
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	ori	$a2, $zero, 14
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN13HexxagonBoard16generateMoveListEv)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_54
# %bb.51:                               # %delete.notnull.i
	ld.d	$a2, $a0, 8
	beqz	$a2, .LBB16_53
# %bb.52:                               # %delete.notnull.i.i
	ori	$a1, $zero, 8
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB16_53:
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$fp, $a0, %pc_lo12(.L.str.18)
	b	.LBB16_55
.LBB16_54:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$fp, $a0, %pc_lo12(.L.str.17)
.LBB16_55:                              # %_ZN13HexxagonBoard9endOfGameEv.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cout)
	ld.d	$s0, $a0, %got_pc_lo12(_ZSt4cout)
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end16:
	.size	_ZN13HexxagonBoard16displayBoardTextEi, .Lfunc_end16-_ZN13HexxagonBoard16displayBoardTextEi
	.cfi_endproc
                                        # -- End function
	.type	clone_lookups,@object           # @clone_lookups
	.bss
	.globl	clone_lookups
	.p2align	3, 0x0
clone_lookups:
	.dword	0
	.size	clone_lookups, 8

	.type	jump_lookups,@object            # @jump_lookups
	.globl	jump_lookups
	.p2align	3, 0x0
jump_lookups:
	.dword	0
	.size	jump_lookups, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"         A B C D E F G H I\n"
	.size	.L.str.2, 28

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"        / / / / / / / / /\n"
	.size	.L.str.3, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"- "
	.size	.L.str.4, 3

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" "
	.size	.L.str.5, 2

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"x "
	.size	.L.str.6, 3

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"o "
	.size	.L.str.7, 3

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	". "
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\n"
	.size	.L.str.9, 2

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\nBricks: x "
	.size	.L.str.10, 12

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	", o "
	.size	.L.str.11, 5

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	". Empty "
	.size	.L.str.12, 9

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	".\n"
	.size	.L.str.13, 3

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Next to move: "
	.size	.L.str.14, 15

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"x"
	.size	.L.str.15, 2

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"o"
	.size	.L.str.16, 2

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	", Game over."
	.size	.L.str.17, 13

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.space	1
	.size	.L.str.18, 1

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"No more moves."
	.size	.Lstr, 15

	.globl	_ZN13HexxagonBoardC1ERKS_
	.type	_ZN13HexxagonBoardC1ERKS_,@function
_ZN13HexxagonBoardC1ERKS_ = _ZN13HexxagonBoardC2ERKS_
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt4cout
