	.file	"foldfg.c"
	.text
	.globl	fol_Init                        # -- Begin function fol_Init
	.p2align	5
	.type	fol_Init,@function
fol_Init:                               # @fol_Init
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
	move	$fp, $a1
	beqz	$a0, .LBB0_2
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 2
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreateJunctor)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(fol_ALL)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(fol_ALL)
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 2
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreateJunctor)
	jirl	$ra, $ra, 0
	pcalau12i	$s2, %pc_hi20(fol_EXIST)
	st.w	$a0, $s2, %pc_lo12(fol_EXIST)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	addi.w	$s0, $zero, -1
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreateJunctor)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(fol_AND)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.w	$a0, $a1, %pc_lo12(fol_AND)
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreateJunctor)
	jirl	$ra, $ra, 0
	pcalau12i	$s4, %pc_hi20(fol_OR)
	st.w	$a0, $s4, %pc_lo12(fol_OR)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 1
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreateJunctor)
	jirl	$ra, $ra, 0
	pcalau12i	$s5, %pc_hi20(fol_NOT)
	st.w	$a0, $s5, %pc_lo12(fol_NOT)
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 2
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreateJunctor)
	jirl	$ra, $ra, 0
	pcalau12i	$s6, %pc_hi20(fol_IMPLIES)
	st.w	$a0, $s6, %pc_lo12(fol_IMPLIES)
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	ori	$a1, $zero, 2
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreateJunctor)
	jirl	$ra, $ra, 0
	pcalau12i	$s7, %pc_hi20(fol_IMPLIED)
	st.w	$a0, $s7, %pc_lo12(fol_IMPLIED)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 2
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreateJunctor)
	jirl	$ra, $ra, 0
	pcalau12i	$s8, %pc_hi20(fol_EQUIV)
	st.w	$a0, $s8, %pc_lo12(fol_EQUIV)
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $s0
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreateJunctor)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(fol_VARLIST)
	st.w	$a0, $s0, %pc_lo12(fol_VARLIST)
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 2
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreatePredicate)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(fol_EQUALITY)
	st.w	$a0, $s1, %pc_lo12(fol_EQUALITY)
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreatePredicate)
	jirl	$ra, $ra, 0
	pcalau12i	$s3, %pc_hi20(fol_TRUE)
	st.w	$a0, $s3, %pc_lo12(fol_TRUE)
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	move	$a1, $zero
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreatePredicate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$fp, $a1, %pc_lo12(fol_ALL)
	ld.w	$s2, $s2, %pc_lo12(fol_EXIST)
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(fol_AND)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a1, $s4, %pc_lo12(fol_OR)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $s5, %pc_lo12(fol_NOT)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s6, $s6, %pc_lo12(fol_IMPLIES)
	ld.w	$s7, $s7, %pc_lo12(fol_IMPLIED)
	ld.w	$s8, $s8, %pc_lo12(fol_EQUIV)
	ld.w	$s4, $s0, %pc_lo12(fol_VARLIST)
	ld.w	$s5, $s1, %pc_lo12(fol_EQUALITY)
	ld.w	$s3, $s3, %pc_lo12(fol_TRUE)
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(fol_FALSE)
	st.w	$s0, $a0, %pc_lo12(fol_FALSE)
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s3, $a0, 8
	st.d	$s1, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s5, $a0, 8
	st.d	$s0, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s4, $a0, 8
	st.d	$s1, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s8, $a0, 8
	st.d	$s0, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s7, $a0, 8
	st.d	$s1, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s6, $a0, 8
	st.d	$s0, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $s0, 8
	st.d	$s1, $s0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $s1, 8
	st.d	$s0, $s1, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $s0, 8
	st.d	$s1, $s0, 0
	b	.LBB0_3
.LBB0_2:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 2
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreatePredicate)
	jirl	$ra, $ra, 0
	pcalau12i	$s0, %pc_hi20(fol_EQUALITY)
	st.w	$a0, $s0, %pc_lo12(fol_EQUALITY)
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 1
	move	$a2, $zero
	move	$a3, $fp
	pcaddu18i	$ra, %call36(symbol_CreateJunctor)
	jirl	$ra, $ra, 0
	ld.w	$s2, $s0, %pc_lo12(fol_EQUALITY)
	move	$fp, $a0
	move	$s0, $zero
	pcalau12i	$a0, %pc_hi20(fol_NOT)
	st.w	$fp, $a0, %pc_lo12(fol_NOT)
.LBB0_3:                                # %if.end
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	st.d	$s2, $a0, 8
	st.d	$s0, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$s1, $a0, 0
	pcalau12i	$a1, %pc_hi20(fol_SYMBOLS)
	st.d	$a0, $a1, %pc_lo12(fol_SYMBOLS)
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
.Lfunc_end0:
	.size	fol_Init, .Lfunc_end0-fol_Init
                                        # -- End function
	.globl	fol_IsStringPredefined          # -- Begin function fol_IsStringPredefined
	.p2align	5
	.type	fol_IsStringPredefined,@function
fol_IsStringPredefined:                 # @fol_IsStringPredefined
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_SIGNATURE)
	ld.w	$s1, $a1, 0
	ld.d	$s2, $a2, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(fol_SYMBOLS)
	addi.d	$s3, $a0, %pc_lo12(fol_SYMBOLS)
	.p2align	4, , 16
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB1_3
# %bb.2:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	ld.w	$s0, $s3, 8
	sub.d	$a0, $zero, $s0
	sra.w	$a0, $a0, $s1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $s2, $a0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_1
	b	.LBB1_4
.LBB1_3:
	move	$s0, $zero
.LBB1_4:                                # %cleanup
	move	$a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	fol_IsStringPredefined, .Lfunc_end1-fol_IsStringPredefined
                                        # -- End function
	.globl	fol_CreateQuantifier            # -- Begin function fol_CreateQuantifier
	.p2align	5
	.type	fol_CreateQuantifier,@function
fol_CreateQuantifier:                   # @fol_CreateQuantifier
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(fol_VARLIST)
	ld.w	$a3, $a3, %pc_lo12(fol_VARLIST)
	move	$fp, $a2
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s1, $a0, 8
	st.d	$fp, $a0, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(term_Create)
	jr	$t8
.Lfunc_end2:
	.size	fol_CreateQuantifier, .Lfunc_end2-fol_CreateQuantifier
                                        # -- End function
	.globl	fol_CreateQuantifierAddFather   # -- Begin function fol_CreateQuantifierAddFather
	.p2align	5
	.type	fol_CreateQuantifierAddFather,@function
fol_CreateQuantifierAddFather:          # @fol_CreateQuantifierAddFather
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a3, %pc_hi20(fol_VARLIST)
	ld.w	$a3, $a3, %pc_lo12(fol_VARLIST)
	move	$fp, $a2
	move	$s0, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(term_CreateAddFather)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s1, $a0, 8
	st.d	$fp, $a0, 0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(term_CreateAddFather)
	jr	$t8
.Lfunc_end3:
	.size	fol_CreateQuantifierAddFather, .Lfunc_end3-fol_CreateQuantifierAddFather
                                        # -- End function
	.globl	fol_ComplementaryTerm           # -- Begin function fol_ComplementaryTerm
	.p2align	5
	.type	fol_ComplementaryTerm,@function
fol_ComplementaryTerm:                  # @fol_ComplementaryTerm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(fol_NOT)
	ld.w	$fp, $a2, %pc_lo12(fol_NOT)
	bne	$a1, $fp, .LBB4_2
# %bb.1:                                # %if.then
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(term_Copy)
	jr	$t8
.LBB4_2:                                # %if.else
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s0, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(term_Create)
	jr	$t8
.Lfunc_end4:
	.size	fol_ComplementaryTerm, .Lfunc_end4-fol_ComplementaryTerm
                                        # -- End function
	.globl	fol_GetNonFOLPredicates         # -- Begin function fol_GetNonFOLPredicates
	.p2align	5
	.type	fol_GetNonFOLPredicates,@function
fol_GetNonFOLPredicates:                # @fol_GetNonFOLPredicates
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(symbol_GetAllPredicates)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(fol_IsPredefinedPred)
	addi.d	$a1, $a1, %pc_lo12(fol_IsPredefinedPred)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(list_DeleteElementIf)
	jr	$t8
.Lfunc_end5:
	.size	fol_GetNonFOLPredicates, .Lfunc_end5-fol_GetNonFOLPredicates
                                        # -- End function
	.p2align	5                               # -- Begin function fol_IsPredefinedPred
	.type	fol_IsPredefinedPred,@function
fol_IsPredefinedPred:                   # @fol_IsPredefinedPred
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(fol_EQUALITY)
	ld.w	$a1, $a1, %pc_lo12(fol_EQUALITY)
	xor	$a1, $a0, $a1
	pcalau12i	$a2, %pc_hi20(fol_TRUE)
	ld.w	$a2, $a2, %pc_lo12(fol_TRUE)
	sltui	$a1, $a1, 1
	pcalau12i	$a3, %pc_hi20(fol_FALSE)
	ld.w	$a3, $a3, %pc_lo12(fol_FALSE)
	xor	$a2, $a0, $a2
	sltui	$a2, $a2, 1
	or	$a1, $a1, $a2
	xor	$a0, $a0, $a3
	sltui	$a0, $a0, 1
	or	$a0, $a1, $a0
	ret
.Lfunc_end6:
	.size	fol_IsPredefinedPred, .Lfunc_end6-fol_IsPredefinedPred
                                        # -- End function
	.globl	fol_GetAssignments              # -- Begin function fol_GetAssignments
	.p2align	5
	.type	fol_GetAssignments,@function
fol_GetAssignments:                     # @fol_GetAssignments
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a1, $a0, 0
	addi.w	$a2, $zero, -1
	blt	$a2, $a1, .LBB7_9
# %bb.1:                                # %term_IsAtom.exit
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a2, $a2, 0
	sub.w	$a3, $zero, $a1
	and	$a2, $a2, $a3
	ori	$a3, $zero, 2
	bne	$a2, $a3, .LBB7_9
# %bb.2:                                # %if.then
	pcalau12i	$a2, %pc_hi20(fol_EQUALITY)
	ld.w	$a2, $a2, %pc_lo12(fol_EQUALITY)
	bne	$a1, $a2, .LBB7_18
# %bb.3:                                # %land.rhs.i
	ld.d	$a2, $a0, 16
	ld.d	$a1, $a2, 8
	ld.w	$a1, $a1, 0
	ori	$s0, $zero, 1
	blt	$a1, $s0, .LBB7_6
# %bb.4:                                # %land.lhs.true.i
	move	$fp, $a0
	ld.d	$a0, $a2, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_ContainsVariable)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_8
# %bb.5:                                # %land.lhs.true.lor.rhs_crit_edge.i
	move	$a0, $fp
	ld.d	$a2, $fp, 16
.LBB7_6:                                # %lor.rhs.i
	ld.d	$a1, $a2, 0
	ld.d	$a1, $a1, 8
	ld.w	$a1, $a1, 0
	blt	$a1, $s0, .LBB7_18
# %bb.7:                                # %fol_IsAssignment.exit
	move	$fp, $a0
	ld.d	$a0, $a2, 8
	pcaddu18i	$ra, %call36(term_ContainsVariable)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_18
.LBB7_8:                                # %if.then3
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	b	.LBB7_19
.LBB7_9:                                # %if.else
	ld.d	$fp, $a0, 16
	beqz	$fp, .LBB7_18
# %bb.10:                               # %for.body.preheader
	move	$s0, $zero
	b	.LBB7_13
	.p2align	4, , 16
.LBB7_11:                               #   in Loop: Header=BB7_13 Depth=1
	move	$a0, $s0
.LBB7_12:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB7_13 Depth=1
	ld.d	$fp, $fp, 0
	move	$s0, $a0
	beqz	$fp, .LBB7_19
.LBB7_13:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(fol_GetAssignments)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_11
# %bb.14:                               # %if.end.i
                                        #   in Loop: Header=BB7_13 Depth=1
	beqz	$s0, .LBB7_12
# %bb.15:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB7_13 Depth=1
	move	$a2, $a0
	.p2align	4, , 16
.LBB7_16:                               # %for.cond.i
                                        #   Parent Loop BB7_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB7_16
# %bb.17:                               # %for.end.i
                                        #   in Loop: Header=BB7_13 Depth=1
	st.d	$s0, $a1, 0
	b	.LBB7_12
.LBB7_18:
	move	$a0, $zero
.LBB7_19:                               # %return
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	fol_GetAssignments, .Lfunc_end7-fol_GetAssignments
                                        # -- End function
	.globl	fol_NormalizeVars               # -- Begin function fol_NormalizeVars
	.p2align	5
	.type	fol_NormalizeVars,@function
fol_NormalizeVars:                      # @fol_NormalizeVars
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(term_MARK)
	ld.d	$a1, $a1, %got_pc_lo12(term_MARK)
	pcalau12i	$a2, %got_pc_hi20(symbol_STANDARDVARCOUNTER)
	ld.d	$a3, $a2, %got_pc_lo12(symbol_STANDARDVARCOUNTER)
	ld.w	$a2, $a1, 0
	addi.w	$a4, $zero, -1
	st.w	$zero, $a3, 0
	beq	$a2, $a4, .LBB8_2
# %bb.1:                                # %term_NewMark.exit
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 0
	pcaddu18i	$t8, %call36(fol_NormalizeVarsIntern)
	jr	$t8
.LBB8_2:                                # %vector.body.preheader
	pcalau12i	$a2, %got_pc_hi20(term_BIND)
	ld.d	$a2, $a2, %got_pc_lo12(term_BIND)
	addi.d	$a3, $a2, 16
	ori	$a4, $zero, 3000
	.p2align	4, , 16
.LBB8_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a3, -16
	st.d	$zero, $a3, 0
	addi.d	$a4, $a4, -2
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB8_3
# %bb.4:                                # %for.body.i
	lu12i.w	$a3, 11
	ori	$a3, $a3, 2944
	stx.d	$zero, $a2, $a3
	ori	$a2, $zero, 1
	addi.d	$a2, $a2, 1
	st.w	$a2, $a1, 0
	pcaddu18i	$t8, %call36(fol_NormalizeVarsIntern)
	jr	$t8
.Lfunc_end8:
	.size	fol_NormalizeVars, .Lfunc_end8-fol_NormalizeVars
                                        # -- End function
	.p2align	5                               # -- Begin function fol_NormalizeVarsIntern
	.type	fol_NormalizeVarsIntern,@function
fol_NormalizeVarsIntern:                # @fol_NormalizeVarsIntern
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
	ld.d	$s2, $a0, 16
	ld.w	$a0, $a0, 0
	beqz	$s2, .LBB9_4
# %bb.1:                                # %if.then
	pcalau12i	$a1, %pc_hi20(fol_ALL)
	ld.w	$a1, $a1, %pc_lo12(fol_ALL)
	beq	$a1, $a0, .LBB9_6
# %bb.2:                                # %if.then
	pcalau12i	$a1, %pc_hi20(fol_EXIST)
	ld.w	$a1, $a1, %pc_lo12(fol_EXIST)
	beq	$a1, $a0, .LBB9_6
	.p2align	4, , 16
.LBB9_3:                                # %for.body39
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(fol_NormalizeVarsIntern)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	bnez	$s2, .LBB9_3
	b	.LBB9_22
.LBB9_4:                                # %if.else44
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB9_22
# %bb.5:                                # %if.then47
	pcalau12i	$a1, %got_pc_hi20(term_BIND)
	ld.d	$a1, $a1, %got_pc_lo12(term_BIND)
	alsl.d	$a0, $a0, $a1, 4
	ld.d	$a0, $a0, 8
	st.w	$a0, $fp, 0
	b	.LBB9_22
.LBB9_6:                                # %if.then4
	ld.d	$a0, $s2, 8
	ld.d	$s1, $a0, 16
	beqz	$s1, .LBB9_15
# %bb.7:                                # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(term_BIND)
	ld.d	$s2, $a0, %got_pc_lo12(term_BIND)
	pcalau12i	$a0, %got_pc_hi20(term_MARK)
	ld.d	$s3, $a0, %got_pc_lo12(term_MARK)
	pcalau12i	$a0, %got_pc_hi20(symbol_STANDARDVARCOUNTER)
	ld.d	$s4, $a0, %got_pc_lo12(symbol_STANDARDVARCOUNTER)
	move	$s0, $zero
	b	.LBB9_10
	.p2align	4, , 16
.LBB9_8:                                #   in Loop: Header=BB9_10 Depth=1
	move	$s0, $a0
.LBB9_9:                                # %list_Nconc.exit
                                        #   in Loop: Header=BB9_10 Depth=1
	ld.w	$a0, $s3, 0
	ld.w	$a1, $s4, 0
	addi.d	$a2, $s6, 8
	addi.d	$a0, $a0, -1
	addi.w	$a1, $a1, 1
	st.w	$a1, $s4, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a3, $s5, 4
	stx.d	$a0, $s2, $a3
	st.d	$a1, $a2, 0
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB9_14
.LBB9_10:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_12 Depth 2
	ld.d	$a0, $s1, 8
	ld.w	$s5, $a0, 0
	alsl.d	$s6, $s5, $s2, 4
	ld.d	$s7, $s6, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	st.d	$zero, $a0, 0
	beqz	$s0, .LBB9_8
# %bb.11:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB9_10 Depth=1
	move	$a2, $s0
	.p2align	4, , 16
.LBB9_12:                               # %for.cond.i
                                        #   Parent Loop BB9_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB9_12
# %bb.13:                               # %for.end.i
                                        #   in Loop: Header=BB9_10 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB9_9
.LBB9_14:                               # %for.end.loopexit
	ld.d	$s2, $fp, 16
	b	.LBB9_16
.LBB9_15:
	move	$s0, $zero
.LBB9_16:                               # %for.end
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(fol_NormalizeVarsIntern)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB9_19
# %bb.17:                               # %for.body23.preheader
	pcalau12i	$a1, %got_pc_hi20(term_BIND)
	ld.d	$a1, $a1, %got_pc_lo12(term_BIND)
	pcalau12i	$a2, %got_pc_hi20(term_MARK)
	ld.d	$a2, $a2, %got_pc_lo12(term_MARK)
	move	$a3, $s0
	.p2align	4, , 16
.LBB9_18:                               # %for.body23
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 8
	ld.w	$a5, $a4, 0
	alsl.d	$a6, $a5, $a1, 4
	ld.d	$a7, $a6, 8
	st.w	$a7, $a4, 0
	ld.w	$a4, $a2, 0
	slli.d	$a5, $a5, 4
	ld.d	$a7, $a3, 8
	addi.d	$a4, $a4, -1
	bstrpick.d	$a4, $a4, 31, 0
	stx.d	$a4, $a1, $a5
	st.d	$a7, $a6, 8
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a3, 0
	bnez	$a0, .LBB9_18
.LBB9_19:                               # %for.end33
	beqz	$s0, .LBB9_22
# %bb.20:                               # %while.body.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB9_21:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s0, 0
	ld.d	$a2, $a0, 128
	st.d	$s0, $a2, 0
	move	$s0, $a5
	bnez	$a5, .LBB9_21
.LBB9_22:                               # %if.end50
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
.Lfunc_end9:
	.size	fol_NormalizeVarsIntern, .Lfunc_end9-fol_NormalizeVarsIntern
                                        # -- End function
	.globl	fol_NormalizeVarsStartingAt     # -- Begin function fol_NormalizeVarsStartingAt
	.p2align	5
	.type	fol_NormalizeVarsStartingAt,@function
fol_NormalizeVarsStartingAt:            # @fol_NormalizeVarsStartingAt
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(symbol_STANDARDVARCOUNTER)
	pcalau12i	$a2, %got_pc_hi20(term_MARK)
	ld.d	$a2, $a2, %got_pc_lo12(term_MARK)
	ld.d	$fp, $a3, %got_pc_lo12(symbol_STANDARDVARCOUNTER)
	ld.w	$a3, $a2, 0
	ld.w	$s0, $fp, 0
	addi.w	$a4, $zero, -1
	st.w	$a1, $fp, 0
	bne	$a3, $a4, .LBB10_4
# %bb.1:                                # %vector.body.preheader
	pcalau12i	$a1, %got_pc_hi20(term_BIND)
	ld.d	$a1, $a1, %got_pc_lo12(term_BIND)
	addi.d	$a3, $a1, 16
	ori	$a4, $zero, 3000
	.p2align	4, , 16
.LBB10_2:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a3, -16
	st.d	$zero, $a3, 0
	addi.d	$a4, $a4, -2
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB10_2
# %bb.3:                                # %for.body.i
	lu12i.w	$a3, 11
	ori	$a3, $a3, 2944
	stx.d	$zero, $a1, $a3
	ori	$a3, $zero, 1
.LBB10_4:                               # %term_NewMark.exit
	addi.d	$a1, $a3, 1
	st.w	$a1, $a2, 0
	pcaddu18i	$ra, %call36(fol_NormalizeVarsIntern)
	jirl	$ra, $ra, 0
	st.w	$s0, $fp, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	fol_NormalizeVarsStartingAt, .Lfunc_end10-fol_NormalizeVarsStartingAt
                                        # -- End function
	.globl	fol_RemoveImplied               # -- Begin function fol_RemoveImplied
	.p2align	5
	.type	fol_RemoveImplied,@function
fol_RemoveImplied:                      # @fol_RemoveImplied
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(fol_NOT)
	ld.w	$a2, $a2, %pc_lo12(fol_NOT)
	pcalau12i	$a3, %pc_hi20(fol_ALL)
	ld.w	$a3, $a3, %pc_lo12(fol_ALL)
	pcalau12i	$a4, %pc_hi20(fol_EXIST)
	ld.w	$a4, $a4, %pc_lo12(fol_EXIST)
	addi.w	$a5, $zero, -1
	ori	$a6, $zero, 2
	b	.LBB11_2
	.p2align	4, , 16
.LBB11_1:                               # %if.then4
                                        #   in Loop: Header=BB11_2 Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
.LBB11_2:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a0, 0
	blt	$a5, $a7, .LBB11_4
# %bb.3:                                # %symbol_IsPredicate.exit.i
                                        #   in Loop: Header=BB11_2 Depth=1
	sub.w	$t0, $zero, $a7
	and	$t0, $a1, $t0
	beq	$t0, $a6, .LBB11_13
.LBB11_4:                               # %lor.rhs.i
                                        #   in Loop: Header=BB11_2 Depth=1
	bne	$a7, $a2, .LBB11_7
# %bb.5:                                # %land.rhs.i
                                        #   in Loop: Header=BB11_2 Depth=1
	ld.d	$t0, $a0, 16
	ld.d	$t0, $t0, 8
	ld.w	$t0, $t0, 0
	blt	$a5, $t0, .LBB11_7
# %bb.6:                                # %fol_IsLiteral.exit
                                        #   in Loop: Header=BB11_2 Depth=1
	sub.w	$t0, $zero, $t0
	and	$t0, $a1, $t0
	beq	$t0, $a6, .LBB11_13
	.p2align	4, , 16
.LBB11_7:                               # %if.then
                                        #   in Loop: Header=BB11_2 Depth=1
	beq	$a3, $a7, .LBB11_1
# %bb.8:                                # %if.then
                                        #   in Loop: Header=BB11_2 Depth=1
	beq	$a4, $a7, .LBB11_1
# %bb.9:                                # %if.else
	pcalau12i	$a1, %pc_hi20(fol_IMPLIED)
	ld.w	$a1, $a1, %pc_lo12(fol_IMPLIED)
	bne	$a7, $a1, .LBB11_11
# %bb.10:                               # %if.then10
	pcalau12i	$a1, %pc_hi20(fol_IMPLIES)
	ld.w	$a2, $a1, %pc_lo12(fol_IMPLIES)
	ld.d	$a1, $a0, 16
	st.w	$a2, $a0, 0
	move	$s0, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_NReverse)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$a0, $s0, 16
	bnez	$fp, .LBB11_12
	b	.LBB11_13
.LBB11_11:                              # %if.else.if.end_crit_edge
	ld.d	$fp, $a0, 16
	beqz	$fp, .LBB11_13
	.p2align	4, , 16
.LBB11_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(fol_RemoveImplied)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB11_12
.LBB11_13:                              # %if.end20
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	fol_RemoveImplied, .Lfunc_end11-fol_RemoveImplied
                                        # -- End function
	.globl	fol_VarOccursFreely             # -- Begin function fol_VarOccursFreely
	.p2align	5
	.type	fol_VarOccursFreely,@function
fol_VarOccursFreely:                    # @fol_VarOccursFreely
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(stack_POINTER)
	ld.d	$a2, $a2, %got_pc_lo12(stack_POINTER)
	ld.w	$a3, $a2, 0
	pcalau12i	$a4, %pc_hi20(fol_ALL)
	ld.w	$a4, $a4, %pc_lo12(fol_ALL)
	pcalau12i	$a5, %pc_hi20(fol_EXIST)
	ld.w	$a5, $a5, %pc_lo12(fol_EXIST)
	pcalau12i	$a6, %got_pc_hi20(stack_STACK)
	ld.d	$a6, $a6, %got_pc_lo12(stack_STACK)
	ori	$a7, $zero, 1
	move	$t0, $a3
	ld.d	$t1, $a1, 16
	ld.w	$a1, $a1, 0
	beqz	$t1, .LBB12_10
.LBB12_1:                               # %if.then
	beq	$a4, $a1, .LBB12_3
# %bb.2:                                # %if.then
	bne	$a5, $a1, .LBB12_9
.LBB12_3:                               # %if.then5
	ld.d	$a1, $t1, 8
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB12_8
# %bb.4:                                # %for.body.lr.ph
	ld.w	$t2, $a0, 0
	.p2align	4, , 16
.LBB12_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t3, $a1, 8
	ld.d	$a1, $a1, 0
	ld.w	$t3, $t3, 0
	beqz	$a1, .LBB12_7
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB12_5 Depth=1
	bne	$t3, $t2, .LBB12_5
.LBB12_7:                               # %for.end
	beq	$t3, $t2, .LBB12_12
.LBB12_8:                               # %if.then18
	ld.d	$t1, $t1, 0
.LBB12_9:                               # %if.end32.sink.split
	bstrpick.d	$a1, $t0, 31, 0
	addi.w	$t0, $t0, 1
	st.w	$t0, $a2, 0
	slli.d	$a1, $a1, 3
	stx.d	$t1, $a6, $a1
	b	.LBB12_12
	.p2align	4, , 16
.LBB12_10:                              # %if.else24
	blt	$a1, $a7, .LBB12_12
# %bb.11:                               # %land.lhs.true
	ld.w	$t1, $a0, 0
	beq	$a1, $t1, .LBB12_17
.LBB12_12:                              # %if.end32
	beq	$t0, $a3, .LBB12_16
	.p2align	4, , 16
.LBB12_13:                              # %land.rhs35
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a1, $t0, -1
	bstrpick.d	$t1, $a1, 31, 0
	slli.d	$t2, $t1, 3
	ldx.d	$t2, $a6, $t2
	bnez	$t2, .LBB12_15
# %bb.14:                               # %while.body
                                        #   in Loop: Header=BB12_13 Depth=1
	st.w	$a1, $a2, 0
	move	$t0, $a1
	bne	$a3, $a1, .LBB12_13
	b	.LBB12_16
	.p2align	4, , 16
.LBB12_15:                              # %do.cond
	ld.d	$t3, $t2, 0
	ld.d	$a1, $t2, 8
	alsl.d	$t1, $t1, $a6, 3
	st.d	$t3, $t1, 0
	ld.d	$t1, $a1, 16
	ld.w	$a1, $a1, 0
	bnez	$t1, .LBB12_1
	b	.LBB12_10
.LBB12_16:
	move	$a0, $zero
	ret
.LBB12_17:                              # %if.then30
	st.w	$a3, $a2, 0
	ori	$a0, $zero, 1
	ret
.Lfunc_end12:
	.size	fol_VarOccursFreely, .Lfunc_end12-fol_VarOccursFreely
                                        # -- End function
	.globl	fol_FreeVariables               # -- Begin function fol_FreeVariables
	.p2align	5
	.type	fol_FreeVariables,@function
fol_FreeVariables:                      # @fol_FreeVariables
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
	pcalau12i	$a1, %got_pc_hi20(stack_POINTER)
	pcalau12i	$a2, %got_pc_hi20(term_MARK)
	ld.d	$a2, $a2, %got_pc_lo12(term_MARK)
	ld.d	$fp, $a1, %got_pc_lo12(stack_POINTER)
	ld.w	$a3, $a2, 0
	ld.w	$s0, $fp, 0
	addi.w	$a1, $zero, -1
	beq	$a3, $a1, .LBB13_5
# %bb.1:                                # %term_ActMark.exit
	addi.w	$s1, $a3, 1
	bne	$s1, $a1, .LBB13_8
# %bb.2:                                # %vector.body.preheader
	pcalau12i	$a1, %got_pc_hi20(term_BIND)
	ld.d	$a1, $a1, %got_pc_lo12(term_BIND)
	addi.d	$a3, $a1, 16
	ori	$a4, $zero, 3000
	.p2align	4, , 16
.LBB13_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a3, -16
	st.d	$zero, $a3, 0
	addi.d	$a4, $a4, -2
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB13_3
# %bb.4:                                # %for.body.i39
	lu12i.w	$a3, 11
	ori	$a3, $a3, 2944
	stx.d	$zero, $a1, $a3
	ori	$s1, $zero, 1
	addi.w	$a3, $zero, -2
	b	.LBB13_8
.LBB13_5:                               # %vector.body144.preheader
	pcalau12i	$a1, %got_pc_hi20(term_BIND)
	ld.d	$a1, $a1, %got_pc_lo12(term_BIND)
	addi.d	$a3, $a1, 16
	ori	$a4, $zero, 3000
	.p2align	4, , 16
.LBB13_6:                               # %vector.body144
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a3, -16
	st.d	$zero, $a3, 0
	addi.d	$a4, $a4, -2
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB13_6
# %bb.7:                                # %for.body.i
	lu12i.w	$a3, 11
	ori	$a3, $a3, 2944
	stx.d	$zero, $a1, $a3
	ori	$s1, $zero, 2
	ori	$a3, $zero, 1
.LBB13_8:                               # %term_ActMark.exit44
	move	$a1, $zero
	addi.d	$a4, $s1, 1
	st.w	$a4, $a2, 0
	sltu	$a2, $s1, $a3
	masknez	$a4, $a3, $a2
	maskeqz	$a2, $s1, $a2
	or	$s8, $a2, $a4
	bstrpick.d	$s3, $a3, 31, 0
	bstrpick.d	$s2, $s1, 31, 0
	ori	$t0, $zero, 1
	pcalau12i	$a2, %got_pc_hi20(term_BIND)
	ld.d	$s6, $a2, %got_pc_lo12(term_BIND)
	pcalau12i	$a2, %got_pc_hi20(stack_STACK)
	ld.d	$s7, $a2, %got_pc_lo12(stack_STACK)
	pcalau12i	$s4, %pc_hi20(fol_ALL)
	pcalau12i	$t2, %pc_hi20(fol_EXIST)
	pcalau12i	$s5, %pc_hi20(fol_VARLIST)
	move	$a2, $s0
	ld.d	$a3, $a0, 16
	ld.w	$a4, $a0, 0
	beqz	$a3, .LBB13_16
.LBB13_9:                               # %if.then
	ld.w	$a5, $s4, %pc_lo12(fol_ALL)
	beq	$a5, $a4, .LBB13_19
# %bb.10:                               # %if.then
	ld.w	$a5, $t2, %pc_lo12(fol_EXIST)
	beq	$a5, $a4, .LBB13_19
# %bb.11:                               # %if.else
	ld.w	$a0, $s5, %pc_lo12(fol_VARLIST)
	beq	$a4, $a0, .LBB13_14
# %bb.12:                               # %if.else46
	bstrpick.d	$a0, $a2, 31, 0
	addi.w	$a2, $a2, 1
	st.w	$a2, $fp, 0
	slli.d	$a0, $a0, 3
	stx.d	$a3, $s7, $a0
	bne	$a2, $s0, .LBB13_26
	b	.LBB13_30
	.p2align	4, , 16
.LBB13_13:                              # %for.inc41
                                        #   in Loop: Header=BB13_14 Depth=1
	ld.d	$a3, $a3, 0
	beqz	$a3, .LBB13_29
.LBB13_14:                              # %for.body32
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a3, 8
	ld.w	$a0, $a0, 0
	slli.d	$a4, $a0, 4
	ldx.w	$a4, $s6, $a4
	bgeu	$a4, $s1, .LBB13_13
# %bb.15:                               # %if.then37
                                        #   in Loop: Header=BB13_14 Depth=1
	alsl.d	$a0, $a0, $s6, 4
	st.d	$zero, $a0, 0
	b	.LBB13_13
	.p2align	4, , 16
.LBB13_16:                              # %if.else50
	blt	$a4, $t0, .LBB13_25
# %bb.17:                               # %land.lhs.true
	slli.d	$a3, $a4, 4
	ldx.w	$a3, $s6, $a3
	bgeu	$a3, $s8, .LBB13_25
# %bb.18:                               # %if.then58
	alsl.d	$a2, $a4, $s6, 4
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 16
	st.d	$t2, $sp, 32                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.d	$t2, $sp, 32                    # 8-byte Folded Reload
	ori	$t0, $zero, 1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.w	$a2, $fp, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.d	$a1, $a0, 8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	move	$a1, $a0
	bne	$a2, $s0, .LBB13_26
	b	.LBB13_30
	.p2align	4, , 16
.LBB13_19:                              # %if.then8
	ld.d	$a4, $a3, 8
	ld.d	$a4, $a4, 16
	bnez	$a4, .LBB13_21
	b	.LBB13_24
	.p2align	4, , 16
.LBB13_20:                              # %for.inc
                                        #   in Loop: Header=BB13_21 Depth=1
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB13_23
.LBB13_21:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a4, 8
	ld.w	$a3, $a3, 0
	slli.d	$a5, $a3, 4
	ldx.w	$a5, $s6, $a5
	bgeu	$a5, $s1, .LBB13_20
# %bb.22:                               # %if.then16
                                        #   in Loop: Header=BB13_21 Depth=1
	alsl.d	$a3, $a3, $s6, 4
	st.d	$s3, $a3, 0
	b	.LBB13_20
	.p2align	4, , 16
.LBB13_23:                              # %for.end.loopexit
	ld.d	$a3, $a0, 16
.LBB13_24:                              # %for.end
	addi.d	$a4, $a2, 1
	st.w	$a4, $fp, 0
	bstrpick.d	$a5, $a2, 31, 0
	slli.d	$a5, $a5, 3
	stx.d	$a3, $s7, $a5
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	addi.w	$a2, $a2, 2
	st.w	$a2, $fp, 0
	bstrpick.d	$a3, $a4, 31, 0
	slli.d	$a3, $a3, 3
	stx.d	$a0, $s7, $a3
.LBB13_25:                              # %if.end61
	beq	$a2, $s0, .LBB13_30
	.p2align	4, , 16
.LBB13_26:                              # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a0, $a2, -1
	bstrpick.d	$a3, $a0, 31, 0
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $s7, $a4
	bnez	$a4, .LBB13_28
# %bb.27:                               # %while.body
                                        #   in Loop: Header=BB13_26 Depth=1
	st.w	$a0, $fp, 0
	move	$a2, $a0
	bne	$s0, $a0, .LBB13_26
	b	.LBB13_30
	.p2align	4, , 16
.LBB13_28:                              # %do.cond
	ld.d	$a5, $a4, 0
	ld.d	$a0, $a4, 8
	alsl.d	$a3, $a3, $s7, 3
	st.d	$a5, $a3, 0
	ld.d	$a3, $a0, 16
	ld.w	$a4, $a0, 0
	bnez	$a3, .LBB13_9
	b	.LBB13_16
	.p2align	4, , 16
.LBB13_29:                              # %for.end43
	addi.d	$a0, $a2, -1
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a3, $s7, $a0
	ld.d	$a3, $a3, 0
	stx.d	$a3, $s7, $a0
	bne	$a2, $s0, .LBB13_26
.LBB13_30:                              # %do.end
	move	$a0, $a1
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
.Lfunc_end13:
	.size	fol_FreeVariables, .Lfunc_end13-fol_FreeVariables
                                        # -- End function
	.globl	fol_BoundVariables              # -- Begin function fol_BoundVariables
	.p2align	5
	.type	fol_BoundVariables,@function
fol_BoundVariables:                     # @fol_BoundVariables
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
	pcalau12i	$a1, %got_pc_hi20(stack_POINTER)
	ld.d	$s1, $a1, %got_pc_lo12(stack_POINTER)
	ld.w	$s2, $s1, 0
	pcalau12i	$s3, %pc_hi20(fol_ALL)
	ld.w	$a1, $s3, %pc_lo12(fol_ALL)
	pcalau12i	$s4, %pc_hi20(fol_EXIST)
	ld.w	$a2, $s4, %pc_lo12(fol_EXIST)
	pcalau12i	$a3, %got_pc_hi20(stack_STACK)
	ld.d	$s5, $a3, %got_pc_lo12(stack_STACK)
	move	$s0, $a0
	move	$fp, $zero
	move	$a0, $s2
	ld.w	$a4, $s0, 0
	ld.d	$a3, $s0, 16
	beq	$a1, $a4, .LBB14_3
.LBB14_1:                               # %do.body
	beq	$a2, $a4, .LBB14_3
# %bb.2:                                # %if.else
	bnez	$a3, .LBB14_10
	b	.LBB14_11
	.p2align	4, , 16
.LBB14_3:                               # %if.then
	ld.d	$a0, $a3, 8
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB14_8
# %bb.4:                                # %if.end.i
	beqz	$a0, .LBB14_9
# %bb.5:                                # %for.cond.i.preheader
	move	$a2, $fp
	.p2align	4, , 16
.LBB14_6:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB14_6
# %bb.7:                                # %for.end.i
	st.d	$a0, $a1, 0
	b	.LBB14_9
	.p2align	4, , 16
.LBB14_8:
	move	$fp, $a0
.LBB14_9:                               # %list_Nconc.exit
	ld.d	$a0, $s0, 16
	ld.w	$a1, $s3, %pc_lo12(fol_ALL)
	ld.w	$a2, $s4, %pc_lo12(fol_EXIST)
	ld.d	$a3, $a0, 0
	ld.w	$a0, $s1, 0
.LBB14_10:                              # %if.end13.sink.split
	bstrpick.d	$a4, $a0, 31, 0
	addi.w	$a0, $a0, 1
	st.w	$a0, $s1, 0
	slli.d	$a4, $a4, 3
	stx.d	$a3, $s5, $a4
.LBB14_11:                              # %if.end13
	beq	$a0, $s2, .LBB14_15
	.p2align	4, , 16
.LBB14_12:                              # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a4, $a0, -1
	bstrpick.d	$a3, $a4, 31, 0
	slli.d	$a5, $a3, 3
	ldx.d	$a5, $s5, $a5
	bnez	$a5, .LBB14_14
# %bb.13:                               # %while.body
                                        #   in Loop: Header=BB14_12 Depth=1
	st.w	$a4, $s1, 0
	move	$a0, $a4
	bne	$s2, $a4, .LBB14_12
	b	.LBB14_15
	.p2align	4, , 16
.LBB14_14:                              # %do.cond
	ld.d	$a4, $a5, 0
	ld.d	$s0, $a5, 8
	alsl.d	$a3, $a3, $s5, 3
	st.d	$a4, $a3, 0
	ld.w	$a4, $s0, 0
	ld.d	$a3, $s0, 16
	bne	$a1, $a4, .LBB14_1
	b	.LBB14_3
.LBB14_15:                              # %do.end
	pcalau12i	$a0, %got_pc_hi20(term_Equal)
	ld.d	$a1, $a0, %got_pc_lo12(term_Equal)
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
	pcaddu18i	$t8, %call36(list_DeleteDuplicates)
	jr	$t8
.Lfunc_end14:
	.size	fol_BoundVariables, .Lfunc_end14-fol_BoundVariables
                                        # -- End function
	.globl	fol_Free                        # -- Begin function fol_Free
	.p2align	5
	.type	fol_Free,@function
fol_Free:                               # @fol_Free
# %bb.0:                                # %entry
	pcalau12i	$a0, %pc_hi20(fol_SYMBOLS)
	ld.d	$a0, $a0, %pc_lo12(fol_SYMBOLS)
	beqz	$a0, .LBB15_3
# %bb.1:                                # %while.body.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB15_2:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB15_2
.LBB15_3:                               # %list_Delete.exit
	ret
.Lfunc_end15:
	.size	fol_Free, .Lfunc_end15-fol_Free
                                        # -- End function
	.globl	fol_FormulaIsClause             # -- Begin function fol_FormulaIsClause
	.p2align	5
	.type	fol_FormulaIsClause,@function
fol_FormulaIsClause:                    # @fol_FormulaIsClause
# %bb.0:                                # %entry
	ld.w	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(fol_ALL)
	ld.w	$a2, $a2, %pc_lo12(fol_ALL)
	bne	$a1, $a2, .LBB16_2
# %bb.1:                                # %if.then
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
.LBB16_2:                               # %if.end
	pcalau12i	$a2, %pc_hi20(fol_OR)
	ld.w	$a2, $a2, %pc_lo12(fol_OR)
	bne	$a1, $a2, .LBB16_11
# %bb.3:                                # %if.end5
	ld.d	$a1, $a0, 16
	ori	$a0, $zero, 1
	beqz	$a1, .LBB16_12
# %bb.4:                                # %while.body.lr.ph
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a2, $a2, 0
	pcalau12i	$a3, %pc_hi20(fol_NOT)
	ld.w	$a3, $a3, %pc_lo12(fol_NOT)
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 2
	b	.LBB16_6
	.p2align	4, , 16
.LBB16_5:                               # %if.end12
                                        #   in Loop: Header=BB16_6 Depth=1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB16_12
.LBB16_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a1, 8
	ld.w	$a7, $a6, 0
	blt	$a4, $a7, .LBB16_8
# %bb.7:                                # %symbol_IsPredicate.exit.i
                                        #   in Loop: Header=BB16_6 Depth=1
	sub.w	$t0, $zero, $a7
	and	$t0, $a2, $t0
	beq	$t0, $a5, .LBB16_5
.LBB16_8:                               # %lor.rhs.i
                                        #   in Loop: Header=BB16_6 Depth=1
	bne	$a7, $a3, .LBB16_11
# %bb.9:                                # %land.rhs.i
                                        #   in Loop: Header=BB16_6 Depth=1
	ld.d	$a6, $a6, 16
	ld.d	$a6, $a6, 8
	ld.w	$a6, $a6, 0
	blt	$a4, $a6, .LBB16_11
# %bb.10:                               # %fol_IsLiteral.exit
                                        #   in Loop: Header=BB16_6 Depth=1
	sub.w	$a6, $zero, $a6
	and	$a6, $a2, $a6
	beq	$a6, $a5, .LBB16_5
.LBB16_11:
	move	$a0, $zero
.LBB16_12:                              # %cleanup
	ret
.Lfunc_end16:
	.size	fol_FormulaIsClause, .Lfunc_end16-fol_FormulaIsClause
                                        # -- End function
	.globl	fol_FPrintOtterOptions          # -- Begin function fol_FPrintOtterOptions
	.p2align	5
	.type	fol_FPrintOtterOptions,@function
fol_FPrintOtterOptions:                 # @fol_FPrintOtterOptions
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	ori	$a3, $zero, 3
	bltu	$a3, $a2, .LBB17_8
# %bb.1:                                # %entry
	move	$fp, $a0
	slli.d	$a0, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI17_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI17_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB17_2:                               # %sw.bb
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$s0, $a1
	ori	$a1, $zero, 20
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 19
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB17_4
# %bb.3:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 24
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB17_4:                               # %sw.bb12
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 11
	b	.LBB17_6
.LBB17_5:                               # %sw.bb14
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	ori	$a1, $zero, 12
.LBB17_6:                               # %sw.epilog
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB17_7:                               # %sw.epilog
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB17_8:                               # %sw.default
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	move	$fp, $a2
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$s0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	ori	$a3, $zero, 575
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_DumpCore)
	jirl	$ra, $ra, 0
.Lfunc_end17:
	.size	fol_FPrintOtterOptions, .Lfunc_end17-fol_FPrintOtterOptions
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI17_0:
	.word	.LBB17_7-.LJTI17_0
	.word	.LBB17_2-.LJTI17_0
	.word	.LBB17_4-.LJTI17_0
	.word	.LBB17_5-.LJTI17_0
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function misc_DumpCore
	.type	misc_DumpCore,@function
misc_DumpCore:                          # @misc_DumpCore
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	misc_DumpCore, .Lfunc_end18-misc_DumpCore
                                        # -- End function
	.text
	.globl	fol_FPrintOtter                 # -- Begin function fol_FPrintOtter
	.p2align	5
	.type	fol_FPrintOtter,@function
fol_FPrintOtter:                        # @fol_FPrintOtter
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	beqz	$a1, .LBB19_11
# %bb.1:
	move	$s0, $a1
	move	$s1, $a2
	pcalau12i	$s2, %pc_hi20(fol_EQUALITY)
	move	$s3, $a1
	.p2align	4, , 16
.LBB19_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 8
	ld.d	$a0, $a0, 0
	ld.w	$a1, $s2, %pc_lo12(fol_EQUALITY)
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB19_4
# %bb.3:                                # %for.body
                                        #   in Loop: Header=BB19_2 Depth=1
	beqz	$a0, .LBB19_2
.LBB19_4:                               # %if.then
	move	$s2, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fol_FPrintOtterOptions)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB19_6
# %bb.5:                                # %if.then11
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB19_6:                               # %for.body17.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$s1, $a0, %pc_lo12(.L.str.34)
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$s2, $a0, %pc_lo12(.L.str.33)
	b	.LBB19_8
	.p2align	4, , 16
.LBB19_7:                               # %if.end24
                                        #   in Loop: Header=BB19_8 Depth=1
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_FPrintOtterFormula)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB19_10
.LBB19_8:                               # %for.body17
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a2, $a0, 8
	beqz	$a2, .LBB19_7
# %bb.9:                                # %if.then20
                                        #   in Loop: Header=BB19_8 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	b	.LBB19_7
.LBB19_10:                              # %for.end30
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB19_11:                              # %for.end.thread
	move	$a0, $fp
	move	$a1, $zero
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fol_FPrintOtterOptions)
	jr	$t8
.Lfunc_end19:
	.size	fol_FPrintOtter, .Lfunc_end19-fol_FPrintOtter
                                        # -- End function
	.p2align	5                               # -- Begin function fol_FPrintOtterFormula
	.type	fol_FPrintOtterFormula,@function
fol_FPrintOtterFormula:                 # @fol_FPrintOtterFormula
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
	move	$s0, $a1
	ld.w	$s4, $a1, 0
	addi.w	$s5, $zero, -1
	move	$fp, $a0
	blt	$s5, $s4, .LBB20_4
# %bb.1:                                # %symbol_IsPredicate.exit
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a0, $a0, 0
	sub.w	$a1, $zero, $s4
	and	$a0, $a0, $a1
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB20_4
# %bb.2:                                # %if.then
	pcalau12i	$a0, %pc_hi20(fol_EQUALITY)
	ld.w	$a0, $a0, %pc_lo12(fol_EQUALITY)
	bne	$s4, $a0, .LBB20_42
# %bb.3:                                # %if.then5
	ld.d	$a0, $s0, 16
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrintOtterPrefix)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	b	.LBB20_43
.LBB20_4:                               # %if.else9
	pcalau12i	$s6, %pc_hi20(fol_ALL)
	ld.w	$a0, $s6, %pc_lo12(fol_ALL)
	beq	$a0, $s4, .LBB20_9
# %bb.5:                                # %if.else9
	pcalau12i	$a0, %pc_hi20(fol_EXIST)
	ld.w	$a0, $a0, %pc_lo12(fol_EXIST)
	beq	$a0, $s4, .LBB20_9
# %bb.6:                                # %if.else38
	pcalau12i	$s6, %pc_hi20(fol_NOT)
	ld.w	$a0, $s6, %pc_lo12(fol_NOT)
	bne	$s4, $a0, .LBB20_18
# %bb.7:                                # %if.then42
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_FPrintOtterFormula)
	jirl	$ra, $ra, 0
.LBB20_8:                               # %for.end111
	ori	$a0, $zero, 41
	move	$a1, $fp
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
	pcaddu18i	$t8, %call36(fputc)
	jr	$t8
.LBB20_9:                               # %if.then12
	ld.d	$a0, $s0, 16
	ld.d	$a1, $a0, 8
	ld.d	$s5, $a1, 16
	beqz	$s5, .LBB20_16
# %bb.10:                               # %for.body.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$s1, $a0, %pc_lo12(.L.str.60)
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$s2, $a0, %pc_lo12(.L.str.62)
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$s3, $a0, %pc_lo12(.L.str.61)
	b	.LBB20_13
	.p2align	4, , 16
.LBB20_11:                              # %if.else21
                                        #   in Loop: Header=BB20_13 Depth=1
	ori	$a1, $zero, 7
	ori	$a2, $zero, 1
	move	$a0, $s3
.LBB20_12:                              # %if.end23
                                        #   in Loop: Header=BB20_13 Depth=1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_FPrintOtterPrefix)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB20_15
.LBB20_13:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s6, %pc_lo12(fol_ALL)
	bne	$s4, $a0, .LBB20_11
# %bb.14:                               # %if.then19
                                        #   in Loop: Header=BB20_13 Depth=1
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a0, $s1
	b	.LBB20_12
.LBB20_15:                              # %for.end.loopexit
	ld.d	$a0, $s0, 16
.LBB20_16:                              # %for.end
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_FPrintOtterFormula)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 8
	ld.d	$s0, $a0, 16
	beqz	$s0, .LBB20_22
	.p2align	4, , 16
.LBB20_17:                              # %for.body33
                                        # =>This Inner Loop Header: Depth=1
	ori	$a0, $zero, 41
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB20_17
	b	.LBB20_22
.LBB20_18:                              # %if.else46
	pcalau12i	$s7, %pc_hi20(fol_AND)
	ld.w	$a0, $s7, %pc_lo12(fol_AND)
	pcalau12i	$s8, %pc_hi20(fol_OR)
	pcalau12i	$s1, %pc_hi20(fol_EQUIV)
	pcalau12i	$s2, %pc_hi20(fol_IMPLIES)
	beq	$s4, $a0, .LBB20_23
# %bb.19:                               # %if.else46
	ld.w	$a0, $s8, %pc_lo12(fol_OR)
	beq	$s4, $a0, .LBB20_23
# %bb.20:                               # %if.else46
	ld.w	$a0, $s1, %pc_lo12(fol_EQUIV)
	beq	$s4, $a0, .LBB20_23
# %bb.21:                               # %if.else46
	ld.w	$a0, $s2, %pc_lo12(fol_IMPLIES)
	beq	$s4, $a0, .LBB20_23
.LBB20_22:                              # %common.ret122
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
.LBB20_23:                              # %if.then61
	ori	$a0, $zero, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 16
	beqz	$s0, .LBB20_8
# %bb.24:                               # %for.body69.lr.ph
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$s3, $a0, %pc_lo12(.L.str.69)
	b	.LBB20_26
	.p2align	4, , 16
.LBB20_25:                              # %for.inc109
                                        #   in Loop: Header=BB20_26 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB20_8
.LBB20_26:                              # %for.body69
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	ld.w	$a0, $a1, 0
	blt	$s5, $a0, .LBB20_28
# %bb.27:                               # %symbol_IsPredicate.exit.i
                                        #   in Loop: Header=BB20_26 Depth=1
	sub.w	$a2, $zero, $a0
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	and	$a2, $a3, $a2
	ori	$a3, $zero, 2
	beq	$a2, $a3, .LBB20_31
.LBB20_28:                              # %lor.rhs.i
                                        #   in Loop: Header=BB20_26 Depth=1
	ld.w	$a2, $s6, %pc_lo12(fol_NOT)
	bne	$a0, $a2, .LBB20_32
# %bb.29:                               # %land.rhs.i90
                                        #   in Loop: Header=BB20_26 Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	blt	$s5, $a0, .LBB20_32
# %bb.30:                               # %fol_IsLiteral.exit
                                        #   in Loop: Header=BB20_26 Depth=1
	sub.w	$a0, $zero, $a0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $a2, $a0
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB20_32
.LBB20_31:                              # %if.then73
                                        #   in Loop: Header=BB20_26 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_FPrintOtterFormula)
	jirl	$ra, $ra, 0
	b	.LBB20_33
	.p2align	4, , 16
.LBB20_32:                              # %if.else75
                                        #   in Loop: Header=BB20_26 Depth=1
	ori	$a0, $zero, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_FPrintOtterFormula)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 41
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
.LBB20_33:                              # %if.end79
                                        #   in Loop: Header=BB20_26 Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB20_8
# %bb.34:                               # %if.then83
                                        #   in Loop: Header=BB20_26 Depth=1
	ld.w	$a0, $s7, %pc_lo12(fol_AND)
	beq	$s4, $a0, .LBB20_38
# %bb.35:                               # %if.end89
                                        #   in Loop: Header=BB20_26 Depth=1
	ld.w	$a0, $s8, %pc_lo12(fol_OR)
	beq	$s4, $a0, .LBB20_39
.LBB20_36:                              # %if.end95
                                        #   in Loop: Header=BB20_26 Depth=1
	ld.w	$a0, $s1, %pc_lo12(fol_EQUIV)
	beq	$s4, $a0, .LBB20_40
.LBB20_37:                              # %if.end101
                                        #   in Loop: Header=BB20_26 Depth=1
	ld.w	$a0, $s2, %pc_lo12(fol_IMPLIES)
	bne	$s4, $a0, .LBB20_25
	b	.LBB20_41
	.p2align	4, , 16
.LBB20_38:                              # %if.then87
                                        #   in Loop: Header=BB20_26 Depth=1
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, %pc_lo12(fol_OR)
	bne	$s4, $a0, .LBB20_36
.LBB20_39:                              # %if.then93
                                        #   in Loop: Header=BB20_26 Depth=1
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, %pc_lo12(fol_EQUIV)
	bne	$s4, $a0, .LBB20_37
.LBB20_40:                              # %if.then99
                                        #   in Loop: Header=BB20_26 Depth=1
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, %pc_lo12(fol_IMPLIES)
	bne	$s4, $a0, .LBB20_25
.LBB20_41:                              # %if.then105
                                        #   in Loop: Header=BB20_26 Depth=1
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB20_25
.LBB20_42:                              # %if.else
	move	$a0, $fp
	move	$a1, $s0
.LBB20_43:                              # %if.else
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
	pcaddu18i	$t8, %call36(term_FPrintOtterPrefix)
	jr	$t8
.Lfunc_end20:
	.size	fol_FPrintOtterFormula, .Lfunc_end20-fol_FPrintOtterFormula
                                        # -- End function
	.globl	fol_FPrintDFGSignature          # -- Begin function fol_FPrintDFGSignature
	.p2align	5
	.type	fol_FPrintDFGSignature,@function
fol_FPrintDFGSignature:                 # @fol_FPrintDFGSignature
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
	move	$fp, $a0
	pcaddu18i	$ra, %call36(symbol_GetAllFunctions)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcaddu18i	$ra, %call36(symbol_GetAllPredicates)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(fol_IsPredefinedPred)
	addi.d	$a1, $a1, %pc_lo12(fol_IsPredefinedPred)
	pcaddu18i	$ra, %call36(list_DeleteElementIf)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beqz	$s4, .LBB21_8
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	ori	$a1, $zero, 12
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	move	$s3, $zero
	ld.w	$s0, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s6, $a0, %got_pc_lo12(symbol_SIGNATURE)
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$s2, $a0, %pc_lo12(.L.str.37)
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s7, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s8, $a0, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB21_3
	.p2align	4, , 16
.LBB21_2:                               # %if.then13
                                        #   in Loop: Header=BB21_3 Depth=1
	addi.w	$s3, $s3, 1
	beqz	$s4, .LBB21_7
.LBB21_3:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	move	$s1, $s4
	ld.w	$a0, $s4, 8
	ld.d	$a1, $s6, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $s0
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a2, $a0, 0
	ld.w	$a3, $a0, 16
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s8, 0
	ld.d	$s4, $s4, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s7, 128
	st.d	$s1, $a0, 0
	beqz	$s4, .LBB21_5
# %bb.4:                                # %if.then11
                                        #   in Loop: Header=BB21_3 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB21_5:                               # %if.end
                                        #   in Loop: Header=BB21_3 Depth=1
	ori	$a0, $zero, 14
	bgeu	$a0, $s3, .LBB21_2
# %bb.6:                                # %if.else
                                        #   in Loop: Header=BB21_3 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	bnez	$s4, .LBB21_3
.LBB21_7:                               # %do.end
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB21_8:                               # %if.end19
	beqz	$s5, .LBB21_16
# %bb.9:                                # %if.then22
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	move	$s2, $zero
	ld.w	$s4, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s8, $a0, %got_pc_lo12(symbol_SIGNATURE)
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$s1, $a0, %pc_lo12(.L.str.37)
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s6, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s7, $a0, %got_pc_lo12(memory_FREEDBYTES)
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$s3, $a0, %pc_lo12(.L.str.38)
	b	.LBB21_11
	.p2align	4, , 16
.LBB21_10:                              # %if.then36
                                        #   in Loop: Header=BB21_11 Depth=1
	addi.w	$s2, $s2, 1
	beqz	$s5, .LBB21_15
.LBB21_11:                              # %do.body24
                                        # =>This Inner Loop Header: Depth=1
	move	$s0, $s5
	ld.w	$a0, $s5, 8
	ld.d	$a1, $s8, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $s4
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a2, $a0, 0
	ld.w	$a3, $a0, 16
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s7, 0
	ld.d	$s5, $s5, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s0, 0
	ld.d	$a0, $s6, 128
	st.d	$s0, $a0, 0
	beqz	$s5, .LBB21_13
# %bb.12:                               # %if.then32
                                        #   in Loop: Header=BB21_11 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB21_13:                              # %if.end34
                                        #   in Loop: Header=BB21_11 Depth=1
	ori	$a0, $zero, 14
	bgeu	$a0, $s2, .LBB21_10
# %bb.14:                               # %if.else38
                                        #   in Loop: Header=BB21_11 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s2, $zero
	bnez	$s5, .LBB21_11
.LBB21_15:                              # %do.end45
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.LBB21_16:                              # %list_Delete.exit64
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
.Lfunc_end21:
	.size	fol_FPrintDFGSignature, .Lfunc_end21-fol_FPrintDFGSignature
                                        # -- End function
	.globl	fol_FPrintDFG                   # -- Begin function fol_FPrintDFG
	.p2align	5
	.type	fol_FPrintDFG,@function
fol_FPrintDFG:                          # @fol_FPrintDFG
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.d	$a1, $a1, 16
	ld.w	$s1, $s0, 0
	move	$fp, $a0
	beqz	$a1, .LBB22_4
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(fol_ALL)
	ld.w	$s3, $a0, %pc_lo12(fol_ALL)
	pcalau12i	$a0, %pc_hi20(fol_EXIST)
	ld.w	$s2, $a0, %pc_lo12(fol_EXIST)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(symbol_FPrint)
	jirl	$ra, $ra, 0
	beq	$s3, $s1, .LBB22_5
# %bb.2:                                # %if.then
	beq	$s2, $s1, .LBB22_5
# %bb.3:                                # %if.else
	ori	$a0, $zero, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_TermListFPrintDFG)
	jirl	$ra, $ra, 0
	b	.LBB22_6
.LBB22_4:                               # %if.else15
	move	$a0, $fp
	move	$a1, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(symbol_FPrint)
	jr	$t8
.LBB22_5:                               # %if.then4
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_TermListFPrintDFG)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_FPrintDFG)
	jirl	$ra, $ra, 0
.LBB22_6:                               # %if.else
	ori	$a0, $zero, 41
	move	$a1, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(putc)
	jr	$t8
.Lfunc_end22:
	.size	fol_FPrintDFG, .Lfunc_end22-fol_FPrintDFG
                                        # -- End function
	.p2align	5                               # -- Begin function fol_TermListFPrintDFG
	.type	fol_TermListFPrintDFG,@function
fol_TermListFPrintDFG:                  # @fol_TermListFPrintDFG
# %bb.0:                                # %entry
	beqz	$a1, .LBB23_5
# %bb.1:                                # %for.body.preheader
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	.p2align	4, , 16
.LBB23_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fol_FPrintDFG)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB23_4
# %bb.3:                                # %for.inc
                                        #   in Loop: Header=BB23_2 Depth=1
	ori	$a0, $zero, 44
	move	$a1, $s0
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	bnez	$fp, .LBB23_2
.LBB23_4:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB23_5:                               # %for.end
	ret
.Lfunc_end23:
	.size	fol_TermListFPrintDFG, .Lfunc_end23-fol_TermListFPrintDFG
                                        # -- End function
	.globl	fol_PrintDFG                    # -- Begin function fol_PrintDFG
	.p2align	5
	.type	fol_PrintDFG,@function
fol_PrintDFG:                           # @fol_PrintDFG
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$a1, $a1, %got_pc_lo12(stdout)
	ld.d	$a1, $a1, 0
	move	$a2, $a0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$t8, %call36(fol_FPrintDFG)
	jr	$t8
.Lfunc_end24:
	.size	fol_PrintDFG, .Lfunc_end24-fol_PrintDFG
                                        # -- End function
	.globl	fol_PrintPrecedence             # -- Begin function fol_PrintPrecedence
	.p2align	5
	.type	fol_PrintPrecedence,@function
fol_PrintPrecedence:                    # @fol_PrintPrecedence
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
	move	$fp, $a0
	pcaddu18i	$ra, %call36(symbol_SignatureExists)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_18
# %bb.1:                                # %for.cond.preheader
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(symbol_ACTINDEX)
	ld.d	$s1, $a0, %got_pc_lo12(symbol_ACTINDEX)
	ld.w	$a1, $s1, 0
	ori	$a5, $zero, 2
	blt	$a1, $a5, .LBB25_11
# %bb.2:                                # %for.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_SIGNATURE)
	move	$s0, $zero
	ld.w	$s4, $a0, 0
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	ori	$s5, $zero, 1
	ori	$s6, $zero, 8
	addi.w	$s7, $zero, -1
	pcalau12i	$s8, %pc_hi20(fol_EQUALITY)
	pcalau12i	$s2, %pc_hi20(fol_TRUE)
	pcalau12i	$s3, %pc_hi20(fol_FALSE)
	b	.LBB25_4
	.p2align	4, , 16
.LBB25_3:                               # %for.inc
                                        #   in Loop: Header=BB25_4 Depth=1
	addi.d	$s5, $s5, 1
	addi.d	$s6, $s6, 8
	bge	$s5, $a1, .LBB25_12
.LBB25_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $a2, $s6
	beqz	$a0, .LBB25_3
# %bb.5:                                # %if.then4
                                        #   in Loop: Header=BB25_4 Depth=1
	ld.w	$fp, $a0, 24
	blt	$s7, $fp, .LBB25_3
# %bb.6:                                # %symbol_IsPredicate.exit
                                        #   in Loop: Header=BB25_4 Depth=1
	sub.w	$a0, $zero, $fp
	and	$a0, $s4, $a0
	bltu	$a5, $a0, .LBB25_3
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB25_4 Depth=1
	ld.w	$a0, $s8, %pc_lo12(fol_EQUALITY)
	beq	$fp, $a0, .LBB25_3
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB25_4 Depth=1
	ld.w	$a0, $s2, %pc_lo12(fol_TRUE)
	beq	$fp, $a0, .LBB25_3
# %bb.9:                                # %land.lhs.true
                                        #   in Loop: Header=BB25_4 Depth=1
	ld.w	$a0, $s3, %pc_lo12(fol_FALSE)
	beq	$fp, $a0, .LBB25_3
# %bb.10:                               # %if.then11
                                        #   in Loop: Header=BB25_4 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 2
	st.d	$s0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.w	$a1, $s1, 0
	st.d	$fp, $a0, 8
	move	$s0, $a0
	b	.LBB25_3
.LBB25_11:
	move	$s0, $zero
.LBB25_12:                              # %for.end
	move	$a0, $s0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(symbol_SortByPrecedence)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB25_18
# %bb.13:                               # %for.body18.lr.ph
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.w	$s1, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s2, $a0, %got_pc_lo12(symbol_SIGNATURE)
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s3, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$s0, $a0, %pc_lo12(.L.str.44)
	move	$s4, $fp
	.p2align	4, , 16
.LBB25_14:                              # %for.body18
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s4, 8
	ld.d	$a1, $s2, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $s1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $s3, 0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB25_16
# %bb.15:                               # %for.inc29
                                        #   in Loop: Header=BB25_14 Depth=1
	ld.d	$a3, $s3, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB25_14
.LBB25_16:                              # %while.body.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB25_17:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $fp, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $fp, 0
	ld.d	$a2, $a0, 128
	st.d	$fp, $a2, 0
	move	$fp, $a5
	bnez	$a5, .LBB25_17
.LBB25_18:                              # %if.end32
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
.Lfunc_end25:
	.size	fol_PrintPrecedence, .Lfunc_end25-fol_PrintPrecedence
                                        # -- End function
	.globl	fol_FPrintPrecedence            # -- Begin function fol_FPrintPrecedence
	.p2align	5
	.type	fol_FPrintPrecedence,@function
fol_FPrintPrecedence:                   # @fol_FPrintPrecedence
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
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(symbol_SignatureExists)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB26_21
# %bb.1:                                # %for.cond.preheader
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(symbol_ACTINDEX)
	ld.d	$s4, $a0, %got_pc_lo12(symbol_ACTINDEX)
	ld.w	$a1, $s4, 0
	ori	$a4, $zero, 2
	blt	$a1, $a4, .LBB26_11
# %bb.2:                                # %for.body.lr.ph
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_SIGNATURE)
	move	$t0, $zero
	ld.w	$s5, $a0, 0
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a2, $a2, 0
	ori	$s6, $zero, 1
	ori	$s7, $zero, 8
	addi.w	$s8, $zero, -1
	pcalau12i	$s1, %pc_hi20(fol_EQUALITY)
	pcalau12i	$s3, %pc_hi20(fol_TRUE)
	pcalau12i	$s2, %pc_hi20(fol_FALSE)
	b	.LBB26_4
	.p2align	4, , 16
.LBB26_3:                               # %for.inc
                                        #   in Loop: Header=BB26_4 Depth=1
	addi.d	$s6, $s6, 1
	addi.d	$s7, $s7, 8
	bge	$s6, $a1, .LBB26_12
.LBB26_4:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $a2, $s7
	beqz	$a0, .LBB26_3
# %bb.5:                                # %if.then4
                                        #   in Loop: Header=BB26_4 Depth=1
	ld.w	$s0, $a0, 24
	blt	$s8, $s0, .LBB26_3
# %bb.6:                                # %symbol_IsPredicate.exit
                                        #   in Loop: Header=BB26_4 Depth=1
	sub.w	$a0, $zero, $s0
	and	$a0, $s5, $a0
	bltu	$a4, $a0, .LBB26_3
# %bb.7:                                # %land.lhs.true
                                        #   in Loop: Header=BB26_4 Depth=1
	ld.w	$a0, $s1, %pc_lo12(fol_EQUALITY)
	beq	$s0, $a0, .LBB26_3
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB26_4 Depth=1
	ld.w	$a0, $s3, %pc_lo12(fol_TRUE)
	beq	$s0, $a0, .LBB26_3
# %bb.9:                                # %land.lhs.true
                                        #   in Loop: Header=BB26_4 Depth=1
	ld.w	$a0, $s2, %pc_lo12(fol_FALSE)
	beq	$s0, $a0, .LBB26_3
# %bb.10:                               # %if.then11
                                        #   in Loop: Header=BB26_4 Depth=1
	ori	$a0, $zero, 16
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ori	$a4, $zero, 2
	move	$t0, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $a1, 0
	ld.w	$a1, $s4, 0
	st.d	$s0, $a0, 8
	b	.LBB26_3
.LBB26_11:
	move	$t0, $zero
.LBB26_12:                              # %for.end
	move	$a0, $t0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(symbol_SortByPrecedence)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ori	$a1, $zero, 15
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB26_22
# %bb.13:                               # %for.body19.lr.ph
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	move	$s8, $zero
	ld.w	$s3, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s4, $a0, %got_pc_lo12(symbol_SIGNATURE)
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$s1, $a0, %pc_lo12(.L.str.46)
	ori	$s5, $zero, 114
	ori	$s6, $zero, 16
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s7, $s0
	b	.LBB26_15
	.p2align	4, , 16
.LBB26_14:                              # %if.else
                                        #   in Loop: Header=BB26_15 Depth=1
	addi.w	$s8, $s8, 1
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB26_19
.LBB26_15:                              # %for.body19
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s7, 8
	ld.d	$a1, $s4, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $s3
	slli.d	$a0, $a0, 3
	ldx.d	$s2, $a1, $a0
	ori	$a0, $zero, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a2, $s2, 12
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 8
	ld.d	$a1, $s4, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $s3
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.wu	$a0, $a0, 20
	andi	$a1, $a0, 8
	sltui	$a1, $a1, 1
	andi	$a0, $a0, 16
	sltui	$a0, $a0, 1
	xori	$a0, $a0, 109
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a0, $a0, $a1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 41
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s7, 0
	beqz	$a0, .LBB26_17
# %bb.16:                               # %if.then40
                                        #   in Loop: Header=BB26_15 Depth=1
	ori	$a0, $zero, 44
	move	$a1, $fp
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB26_17:                              # %if.end42
                                        #   in Loop: Header=BB26_15 Depth=1
	blt	$s8, $s6, .LBB26_14
# %bb.18:                               # %if.then45
                                        #   in Loop: Header=BB26_15 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s8, $zero
	ld.d	$s7, $s7, 0
	bnez	$s7, .LBB26_15
.LBB26_19:                              # %for.end51
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB26_20:                              # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s0, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s0, 0
	ld.d	$a2, $a0, 128
	st.d	$s0, $a2, 0
	move	$s0, $a5
	bnez	$a5, .LBB26_20
.LBB26_21:                              # %if.end53
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
.LBB26_22:                              # %for.end51.thread
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a3, $fp
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end26:
	.size	fol_FPrintPrecedence, .Lfunc_end26-fol_FPrintPrecedence
                                        # -- End function
	.globl	fol_FPrintDFGProblem            # -- Begin function fol_FPrintDFGProblem
	.p2align	5
	.type	fol_FPrintDFGProblem,@function
fol_FPrintDFGProblem:                   # @fol_FPrintDFGProblem
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
	move	$s0, $a6
	move	$s1, $a5
	move	$s2, $a4
	move	$s3, $a3
	move	$s4, $a2
	move	$s5, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	ori	$a1, $zero, 25
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ori	$a1, $zero, 22
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	move	$a0, $fp
	move	$a2, $s5
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a1, $a0, %pc_lo12(.L.str.51)
	move	$a0, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a1, $a0, %pc_lo12(.L.str.52)
	move	$a0, $fp
	move	$a2, $s3
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a1, $a0, %pc_lo12(.L.str.53)
	move	$a0, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$s2, $a0, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_FPrintDFGSignature)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a2, $a0, %pc_lo12(.L.str.55)
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(fol_FPrintFormulaList)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a2, $a0, %pc_lo12(.L.str.56)
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(fol_FPrintFormulaList)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a0, $a0, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	move	$a3, $fp
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end27:
	.size	fol_FPrintDFGProblem, .Lfunc_end27-fol_FPrintDFGProblem
                                        # -- End function
	.p2align	5                               # -- Begin function fol_FPrintFormulaList
	.type	fol_FPrintFormulaList,@function
fol_FPrintFormulaList:                  # @fol_FPrintFormulaList
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB28_3
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$s1, $a0, %pc_lo12(.L.str.72)
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$s2, $a0, %pc_lo12(.L.str.71)
	.p2align	4, , 16
.LBB28_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 9
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_FPrintDFG)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB28_2
.LBB28_3:                               # %for.end
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ori	$a1, $zero, 14
	ori	$a2, $zero, 1
	move	$a3, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end28:
	.size	fol_FPrintFormulaList, .Lfunc_end28-fol_FPrintFormulaList
                                        # -- End function
	.globl	fol_AssocEquation               # -- Begin function fol_AssocEquation
	.p2align	5
	.type	fol_AssocEquation,@function
fol_AssocEquation:                      # @fol_AssocEquation
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 0
	pcalau12i	$a3, %pc_hi20(fol_EQUALITY)
	ld.w	$a3, $a3, %pc_lo12(fol_EQUALITY)
	bne	$a2, $a3, .LBB29_16
# %bb.1:                                # %if.then
	ld.d	$a3, $a0, 16
	ld.d	$a2, $a3, 8
	ld.w	$a0, $a2, 0
	addi.w	$a4, $zero, -1
	blt	$a4, $a0, .LBB29_16
# %bb.2:                                # %land.rhs.i
	pcalau12i	$a4, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a4, $a4, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a5, $a4, 0
	sub.w	$a4, $zero, $a0
	and	$a5, $a5, $a4
	ori	$a6, $zero, 1
	bltu	$a6, $a5, .LBB29_16
# %bb.3:                                # %land.lhs.true
	pcalau12i	$a5, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a5, $a5, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a6, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a6, $a6, %got_pc_lo12(symbol_SIGNATURE)
	ld.wu	$a5, $a5, 0
	ld.d	$a6, $a6, 0
	srl.w	$a4, $a4, $a5
	slli.d	$a4, $a4, 3
	ldx.d	$a4, $a6, $a4
	ld.w	$a4, $a4, 16
	ori	$a5, $zero, 2
	bne	$a4, $a5, .LBB29_16
# %bb.4:                                # %land.lhs.true7
	ld.d	$a3, $a3, 0
	ld.d	$a5, $a3, 8
	ld.w	$a3, $a5, 0
	bne	$a0, $a3, .LBB29_16
# %bb.5:                                # %if.then11
	ld.d	$a4, $a2, 16
	ld.d	$a3, $a4, 8
	ld.w	$a3, $a3, 0
	blez	$a3, .LBB29_7
# %bb.6:
	move	$a2, $a5
	b	.LBB29_8
.LBB29_7:                               # %if.else
	ld.d	$a4, $a5, 16
	ld.d	$a3, $a4, 8
	ld.w	$a3, $a3, 0
	ori	$a5, $zero, 1
	blt	$a3, $a5, .LBB29_16
.LBB29_8:                               # %if.end25
	ld.d	$a4, $a4, 0
	ld.d	$a4, $a4, 8
	ld.w	$a5, $a4, 0
	bne	$a5, $a0, .LBB29_16
# %bb.9:                                # %land.lhs.true30
	ld.d	$a5, $a4, 16
	ld.d	$a4, $a5, 8
	ld.w	$a4, $a4, 0
	ori	$a6, $zero, 1
	blt	$a4, $a6, .LBB29_16
# %bb.10:                               # %land.lhs.true36
	ld.d	$a5, $a5, 0
	ld.d	$a5, $a5, 8
	ld.w	$a5, $a5, 0
	blt	$a5, $a6, .LBB29_16
# %bb.11:                               # %land.lhs.true42
	ld.d	$a2, $a2, 16
	ld.d	$a6, $a2, 8
	ld.w	$a7, $a6, 0
	bne	$a7, $a0, .LBB29_16
# %bb.12:                               # %land.lhs.true47
	ld.d	$a6, $a6, 16
	ld.d	$a7, $a6, 8
	ld.w	$a7, $a7, 0
	bne	$a3, $a7, .LBB29_16
# %bb.13:                               # %land.lhs.true53
	ld.d	$a3, $a6, 0
	ld.d	$a3, $a3, 8
	ld.w	$a3, $a3, 0
	bne	$a4, $a3, .LBB29_16
# %bb.14:                               # %land.lhs.true59
	ld.d	$a2, $a2, 0
	ld.d	$a2, $a2, 8
	ld.w	$a2, $a2, 0
	bne	$a5, $a2, .LBB29_16
# %bb.15:                               # %if.then64
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 1
	ret
.LBB29_16:
	move	$a0, $zero
	ret
.Lfunc_end29:
	.size	fol_AssocEquation, .Lfunc_end29-fol_AssocEquation
                                        # -- End function
	.globl	fol_DistributiveEquation        # -- Begin function fol_DistributiveEquation
	.p2align	5
	.type	fol_DistributiveEquation,@function
fol_DistributiveEquation:               # @fol_DistributiveEquation
# %bb.0:                                # %entry
	ld.w	$a3, $a0, 0
	pcalau12i	$a4, %pc_hi20(fol_EQUALITY)
	ld.w	$a4, $a4, %pc_lo12(fol_EQUALITY)
	bne	$a3, $a4, .LBB30_23
# %bb.1:                                # %if.end
	ld.d	$a3, $a0, 16
	ld.d	$a5, $a3, 8
	ld.w	$a6, $a5, 0
	addi.w	$t0, $zero, -1
	move	$a0, $zero
	blt	$t0, $a6, .LBB30_24
# %bb.2:                                # %if.end
	ld.d	$a3, $a3, 0
	ld.d	$a3, $a3, 8
	ld.w	$a4, $a3, 0
	beq	$a6, $a4, .LBB30_24
# %bb.3:                                # %land.rhs.i
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$t1, $a0, 0
	sub.w	$a7, $zero, $a6
	and	$t2, $t1, $a7
	ori	$a0, $zero, 1
	bne	$t2, $a0, .LBB30_5
# %bb.4:                                # %lor.lhs.false8
	blt	$t0, $a4, .LBB30_23
	b	.LBB30_7
.LBB30_5:                               # %symbol_IsFunction.exit
	move	$a0, $zero
	blt	$t0, $a4, .LBB30_24
# %bb.6:                                # %symbol_IsFunction.exit
	bnez	$t2, .LBB30_24
.LBB30_7:                               # %land.rhs.i57
	sub.w	$a0, $zero, $a4
	and	$t0, $t1, $a0
	ori	$t1, $zero, 1
	bltu	$t1, $t0, .LBB30_23
# %bb.8:                                # %lor.lhs.false12
	pcalau12i	$t0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$t0, $t0, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$t1, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$t2, $t1, %got_pc_lo12(symbol_SIGNATURE)
	ld.wu	$t1, $t0, 0
	ld.d	$t0, $t2, 0
	srl.w	$a7, $a7, $t1
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $t0, $a7
	ld.w	$t2, $a7, 16
	ori	$a7, $zero, 2
	bne	$t2, $a7, .LBB30_23
# %bb.9:                                # %lor.lhs.false15
	srl.w	$a0, $a0, $t1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $t0, $a0
	ld.w	$a0, $a0, 16
	bne	$a0, $a7, .LBB30_23
# %bb.10:                               # %if.end20
	ld.d	$a7, $a5, 16
	ld.d	$a0, $a7, 8
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB30_12
# %bb.11:
	move	$a4, $a6
	move	$t0, $a3
	move	$a3, $a5
	b	.LBB30_13
.LBB30_12:                              # %if.else
	ld.d	$a7, $a3, 16
	ld.d	$a0, $a7, 8
	ld.w	$a0, $a0, 0
	ori	$a6, $zero, 1
	move	$t0, $a5
	blt	$a0, $a6, .LBB30_23
.LBB30_13:                              # %if.end33
	ld.d	$a5, $t0, 16
	ld.d	$a6, $a5, 8
	ld.w	$t1, $a6, 0
	bne	$a4, $t1, .LBB30_23
# %bb.14:                               # %lor.lhs.false37
	ld.d	$a5, $a5, 0
	ld.d	$a5, $a5, 8
	ld.w	$t1, $a5, 0
	bne	$a4, $t1, .LBB30_23
# %bb.15:                               # %lor.lhs.false41
	ld.d	$a4, $a7, 0
	ld.d	$a7, $a4, 8
	ld.w	$a4, $a7, 0
	ld.w	$t0, $t0, 0
	bne	$a4, $t0, .LBB30_23
# %bb.16:                               # %if.end46
	ld.d	$a7, $a7, 16
	ld.d	$t0, $a7, 8
	ld.w	$t0, $t0, 0
	ori	$t1, $zero, 1
	blt	$t0, $t1, .LBB30_23
# %bb.17:                               # %land.lhs.true
	ld.d	$a7, $a7, 0
	ld.d	$a7, $a7, 8
	ld.w	$a7, $a7, 0
	blt	$a7, $t1, .LBB30_23
# %bb.18:                               # %land.lhs.true55
	ld.d	$a6, $a6, 16
	ld.d	$t1, $a6, 8
	ld.w	$t1, $t1, 0
	bne	$t1, $a0, .LBB30_23
# %bb.19:                               # %land.lhs.true60
	ld.d	$a6, $a6, 0
	ld.d	$a6, $a6, 8
	ld.w	$a6, $a6, 0
	bne	$a6, $t0, .LBB30_23
# %bb.20:                               # %land.lhs.true65
	ld.d	$a5, $a5, 16
	ld.d	$a6, $a5, 8
	ld.w	$a6, $a6, 0
	bne	$a6, $a0, .LBB30_23
# %bb.21:                               # %land.lhs.true70
	ld.d	$a0, $a5, 0
	ld.d	$a0, $a0, 8
	ld.w	$a0, $a0, 0
	bne	$a0, $a7, .LBB30_23
# %bb.22:                               # %if.then75
	st.w	$a4, $a1, 0
	ld.w	$a0, $a3, 0
	st.w	$a0, $a2, 0
	ori	$a0, $zero, 1
	ret
.LBB30_23:
	move	$a0, $zero
.LBB30_24:                              # %cleanup
	ret
.Lfunc_end30:
	.size	fol_DistributiveEquation, .Lfunc_end30-fol_DistributiveEquation
                                        # -- End function
	.globl	fol_Instances                   # -- Begin function fol_Instances
	.p2align	5
	.type	fol_Instances,@function
fol_Instances:                          # @fol_Instances
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
	move	$fp, $a1
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_ComputeSize)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_InstallSize)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stack_POINTER)
	ld.d	$s3, $a0, %got_pc_lo12(stack_POINTER)
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	move	$a3, $zero
	ld.w	$s4, $s3, 0
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stack_STACK)
	ld.d	$s6, $a0, %got_pc_lo12(stack_STACK)
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$s7, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$a4, $a0, %got_pc_lo12(cont_STACKPOINTER)
	pcalau12i	$a0, %got_pc_hi20(cont_STACK)
	ld.d	$a5, $a0, %got_pc_lo12(cont_STACK)
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a6, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(fol_ALL)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(fol_EXIST)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$s0, $a0, %got_pc_lo12(cont_LASTBINDING)
	pcalau12i	$a0, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$s5, $a0, %got_pc_lo12(cont_CURRENTBINDING)
	ori	$s1, $zero, 1
	vrepli.b	$vr0, 0
	beq	$s2, $fp, .LBB31_17
.LBB31_1:                               # %do.body.i
	ld.w	$a0, $s2, 28
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB31_17
# %bb.2:                                # %if.then.i
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	move	$a1, $fp
	move	$fp, $a3
	ld.w	$a3, $a4, 0
	ld.w	$a2, $s7, 0
	addi.d	$a0, $a3, 1
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	st.w	$a0, $a4, 0
	st.d	$a6, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $a6, 0
	slli.d	$a3, $a3, 2
	move	$s8, $a5
	stx.w	$a2, $a5, $a3
	st.w	$zero, $s7, 0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	move	$a2, $s2
	pcaddu18i	$ra, %call36(unify_MatchFlexible)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB31_5
# %bb.3:                                # %if.then6.i
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	st.d	$s2, $a0, 8
	st.d	$fp, $a0, 0
.LBB31_4:                               # %if.end21.i
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	move	$a5, $s8
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	ld.w	$a0, $s7, 0
	bge	$a0, $s1, .LBB31_13
	b	.LBB31_15
	.p2align	4, , 16
.LBB31_5:                               # %if.else.i
	ld.w	$a1, $s2, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB31_8
# %bb.6:                                # %symbol_IsPredicate.exit.i
	sub.w	$a0, $zero, $a1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $a2, $a0
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB31_8
# %bb.7:
	move	$a3, $fp
	b	.LBB31_4
	.p2align	4, , 16
.LBB31_8:                               # %if.then11.i
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a0, %pc_lo12(fol_ALL)
	ld.d	$a0, $s2, 16
	move	$a3, $fp
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	move	$a5, $s8
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	beq	$a2, $a1, .LBB31_11
# %bb.9:                                # %if.then11.i
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(fol_EXIST)
	beq	$a2, $a1, .LBB31_11
# %bb.10:                               # %if.else18.i
	ld.wu	$a1, $s3, 0
	b	.LBB31_12
.LBB31_11:                              # %if.then15.i
	ld.wu	$a1, $s3, 0
	ld.d	$a0, $a0, 0
.LBB31_12:                              # %if.end21.i
	addi.d	$a2, $a1, 1
	st.w	$a2, $s3, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s6, $a1
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a0, $s7, 0
	blt	$a0, $s1, .LBB31_15
.LBB31_13:                              # %while.body.i.i.preheader
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB31_14:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	st.d	$a1, $s5, 0
	ld.d	$a2, $a1, 24
	st.d	$a2, $s0, 0
	st.w	$zero, $a1, 20
	vst	$vr0, $a1, 4
	ld.d	$a1, $s5, 0
	st.d	$zero, $a1, 24
	addi.d	$a1, $a0, -2
	addi.w	$a0, $a0, -1
	st.w	$a1, $s7, 0
	bltu	$s1, $a0, .LBB31_14
.LBB31_15:                              # %while.end.i.i
	ld.w	$a0, $a4, 0
	beqz	$a0, .LBB31_17
# %bb.16:                               # %if.then.i.i
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $a5, $a1
	st.w	$a0, $a4, 0
	st.w	$a1, $s7, 0
.LBB31_17:                              # %if.end23.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB31_18 Depth 2
	ld.w	$a0, $s3, 0
	beq	$a0, $s4, .LBB31_21
	.p2align	4, , 16
.LBB31_18:                              # %land.rhs.i
                                        #   Parent Loop BB31_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a0, $a0, -1
	bstrpick.d	$a1, $a0, 31, 0
	slli.d	$a2, $a1, 3
	ldx.d	$a2, $s6, $a2
	bnez	$a2, .LBB31_20
# %bb.19:                               # %while.body.i
                                        #   in Loop: Header=BB31_18 Depth=2
	st.w	$a0, $s3, 0
	bne	$s4, $a0, .LBB31_18
	b	.LBB31_21
	.p2align	4, , 16
.LBB31_20:                              # %do.cond.i
                                        #   in Loop: Header=BB31_17 Depth=1
	ld.d	$a0, $a2, 0
	ld.d	$s2, $a2, 8
	alsl.d	$a1, $a1, $s6, 3
	st.d	$a0, $a1, 0
	bne	$s2, $fp, .LBB31_1
	b	.LBB31_17
.LBB31_21:                              # %fol_InstancesIntern.exit
	move	$a0, $a3
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
.Lfunc_end31:
	.size	fol_Instances, .Lfunc_end31-fol_Instances
                                        # -- End function
	.globl	fol_Generalizations             # -- Begin function fol_Generalizations
	.p2align	5
	.type	fol_Generalizations,@function
fol_Generalizations:                    # @fol_Generalizations
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
	move	$s8, $a1
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_ComputeSize)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_InstallSize)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stack_POINTER)
	ld.d	$s3, $a0, %got_pc_lo12(stack_POINTER)
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	move	$a4, $zero
	ld.w	$s4, $s3, 0
	ld.w	$fp, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(stack_STACK)
	ld.d	$s6, $a0, %got_pc_lo12(stack_STACK)
	addi.w	$a6, $zero, -1
	pcalau12i	$a7, %pc_hi20(fol_ALL)
	pcalau12i	$t0, %pc_hi20(fol_EXIST)
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$s5, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$t1, $a0, %got_pc_lo12(cont_STACKPOINTER)
	pcalau12i	$a0, %got_pc_hi20(cont_STACK)
	ld.d	$t2, $a0, %got_pc_lo12(cont_STACK)
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$t3, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$s0, $a0, %got_pc_lo12(cont_LASTBINDING)
	pcalau12i	$a0, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$s7, $a0, %got_pc_lo12(cont_CURRENTBINDING)
	ori	$t4, $zero, 2
	ori	$s1, $zero, 1
	vrepli.b	$vr0, 0
	move	$a0, $s4
	beq	$s2, $s8, .LBB32_23
.LBB32_1:                               # %if.then.i
	ld.w	$a1, $s2, 28
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	bgeu	$a2, $a1, .LBB32_7
# %bb.2:                                # %if.else24.i
	ld.w	$a1, $s2, 0
	blt	$a6, $a1, .LBB32_4
# %bb.3:                                # %symbol_IsPredicate.exit37.i
	sub.w	$a2, $zero, $a1
	and	$a2, $fp, $a2
	beq	$a2, $t4, .LBB32_23
.LBB32_4:                               # %if.then28.i
	ld.w	$a3, $a7, %pc_lo12(fol_ALL)
	ld.d	$a2, $s2, 16
	beq	$a3, $a1, .LBB32_9
# %bb.5:                                # %if.then28.i
	ld.w	$a3, $t0, %pc_lo12(fol_EXIST)
	beq	$a3, $a1, .LBB32_9
# %bb.6:                                # %if.else35.i
	addi.d	$a1, $a0, 1
	st.w	$a1, $s3, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$a2, $s6, $a0
	b	.LBB32_23
	.p2align	4, , 16
.LBB32_7:                               # %if.then4.i
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	move	$a2, $s8
	move	$s8, $a4
	ld.w	$a1, $t1, 0
	ld.w	$a3, $s5, 0
	addi.d	$a0, $a1, 1
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	st.w	$a0, $t1, 0
	st.d	$t3, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $t3, 0
	slli.d	$a1, $a1, 2
	st.d	$t2, $sp, 48                    # 8-byte Folded Spill
	stx.w	$a3, $t2, $a1
	st.w	$zero, $s5, 0
	move	$a1, $s2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(unify_MatchFlexible)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB32_10
# %bb.8:                                # %if.then7.i
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a4, $a0
	st.d	$s2, $a0, 8
	st.d	$s8, $a0, 0
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	ori	$t4, $zero, 2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	b	.LBB32_18
	.p2align	4, , 16
.LBB32_9:                               # %if.then32.i
	ld.d	$a1, $a2, 0
	addi.d	$a2, $a0, 1
	st.w	$a2, $s3, 0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s6, $a0
	b	.LBB32_23
.LBB32_10:                              # %if.else.i
	ld.w	$a1, $s2, 0
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 64                    # 8-byte Folded Reload
	ori	$t4, $zero, 2
	blt	$a6, $a1, .LBB32_13
# %bb.11:                               # %symbol_IsPredicate.exit.i
	sub.w	$a0, $zero, $a1
	and	$a0, $fp, $a0
	bne	$a0, $t4, .LBB32_13
# %bb.12:
	move	$a4, $s8
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	b	.LBB32_18
.LBB32_13:                              # %if.then12.i
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ld.w	$a2, $a7, %pc_lo12(fol_ALL)
	ld.d	$a0, $s2, 16
	move	$a4, $s8
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 40                    # 8-byte Folded Reload
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	beq	$a2, $a1, .LBB32_16
# %bb.14:                               # %if.then12.i
	ld.w	$a2, $t0, %pc_lo12(fol_EXIST)
	beq	$a2, $a1, .LBB32_16
# %bb.15:                               # %if.else19.i
	ld.wu	$a1, $s3, 0
	b	.LBB32_17
.LBB32_16:                              # %if.then16.i
	ld.wu	$a1, $s3, 0
	ld.d	$a0, $a0, 0
.LBB32_17:                              # %if.end22.i
	addi.d	$a2, $a1, 1
	st.w	$a2, $s3, 0
	slli.d	$a1, $a1, 3
	stx.d	$a0, $s6, $a1
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
.LBB32_18:                              # %if.end22.i
	ld.w	$a0, $s5, 0
	blt	$a0, $s1, .LBB32_21
# %bb.19:                               # %while.body.i.i.preheader
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB32_20:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	st.d	$a1, $s7, 0
	ld.d	$a2, $a1, 24
	st.d	$a2, $s0, 0
	st.w	$zero, $a1, 20
	vst	$vr0, $a1, 4
	ld.d	$a1, $s7, 0
	st.d	$zero, $a1, 24
	addi.d	$a1, $a0, -2
	addi.w	$a0, $a0, -1
	st.w	$a1, $s5, 0
	bltu	$s1, $a0, .LBB32_20
.LBB32_21:                              # %while.end.i.i
	ld.w	$a0, $t1, 0
	beqz	$a0, .LBB32_23
# %bb.22:                               # %if.then.i.i
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $t2, $a1
	st.w	$a0, $t1, 0
	st.w	$a1, $s5, 0
	.p2align	4, , 16
.LBB32_23:                              # %if.end40.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB32_24 Depth 2
	ld.w	$a0, $s3, 0
	beq	$a0, $s4, .LBB32_27
	.p2align	4, , 16
.LBB32_24:                              # %land.rhs.i
                                        #   Parent Loop BB32_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $a0, -1
	bstrpick.d	$a1, $a2, 31, 0
	slli.d	$a3, $a1, 3
	ldx.d	$a3, $s6, $a3
	bnez	$a3, .LBB32_26
# %bb.25:                               # %while.body.i
                                        #   in Loop: Header=BB32_24 Depth=2
	st.w	$a2, $s3, 0
	move	$a0, $a2
	bne	$s4, $a2, .LBB32_24
	b	.LBB32_27
	.p2align	4, , 16
.LBB32_26:                              # %do.cond.i
                                        #   in Loop: Header=BB32_23 Depth=1
	ld.d	$a2, $a3, 0
	ld.d	$s2, $a3, 8
	alsl.d	$a1, $a1, $s6, 3
	st.d	$a2, $a1, 0
	bne	$s2, $s8, .LBB32_1
	b	.LBB32_23
.LBB32_27:                              # %fol_GeneralizationsIntern.exit
	move	$a0, $a4
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
.Lfunc_end32:
	.size	fol_Generalizations, .Lfunc_end32-fol_Generalizations
                                        # -- End function
	.globl	fol_MostGeneralFormula          # -- Begin function fol_MostGeneralFormula
	.p2align	5
	.type	fol_MostGeneralFormula,@function
fol_MostGeneralFormula:                 # @fol_MostGeneralFormula
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
	ld.d	$s1, $a0, 0
	ld.d	$fp, $a0, 8
	beqz	$s1, .LBB33_10
# %bb.1:                                # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$s2, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$s3, $a0, %got_pc_lo12(cont_STACKPOINTER)
	ld.w	$a1, $s2, 0
	ld.w	$a2, $s3, 0
	pcalau12i	$a0, %got_pc_hi20(cont_STACK)
	ld.d	$s4, $a0, %got_pc_lo12(cont_STACK)
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$s5, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$s6, $a0, %got_pc_lo12(cont_LASTBINDING)
	pcalau12i	$a0, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$s7, $a0, %got_pc_lo12(cont_CURRENTBINDING)
	ori	$s8, $zero, 1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB33_4
	.p2align	4, , 16
.LBB33_2:                               # %if.then.i
                                        #   in Loop: Header=BB33_4 Depth=1
	addi.w	$a2, $a2, -1
	slli.d	$a1, $a2, 2
	ldx.w	$a1, $s4, $a1
	st.w	$a2, $s3, 0
	st.w	$a1, $s2, 0
.LBB33_3:                               # %cont_BackTrack.exit
                                        #   in Loop: Header=BB33_4 Depth=1
	ld.d	$s1, $s1, 0
	sltui	$a0, $a0, 1
	masknez	$a3, $s0, $a0
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a3
	beqz	$s1, .LBB33_10
.LBB33_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_6 Depth 2
	ld.d	$s0, $s1, 8
	addi.d	$a0, $a2, 1
	st.w	$a0, $s3, 0
	ld.d	$a0, $s5, 0
	slli.d	$a2, $a2, 2
	stx.w	$a1, $s4, $a2
	st.w	$zero, $s2, 0
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(unify_MatchFlexible)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	blt	$a1, $s8, .LBB33_8
# %bb.5:                                # %while.body.i.preheader
                                        #   in Loop: Header=BB33_4 Depth=1
	addi.d	$a1, $a1, 1
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	.p2align	4, , 16
.LBB33_6:                               # %while.body.i
                                        #   Parent Loop BB33_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s6, 0
	st.d	$a2, $s7, 0
	ld.d	$a3, $a2, 24
	st.d	$a3, $s6, 0
	st.w	$zero, $a2, 20
	vst	$vr0, $a2, 4
	ld.d	$a2, $s7, 0
	st.d	$zero, $a2, 24
	addi.d	$a2, $a1, -2
	addi.w	$a1, $a1, -1
	st.w	$a2, $s2, 0
	bltu	$s8, $a1, .LBB33_6
# %bb.7:                                #   in Loop: Header=BB33_4 Depth=1
	move	$a1, $zero
.LBB33_8:                               # %while.end.i
                                        #   in Loop: Header=BB33_4 Depth=1
	ld.w	$a2, $s3, 0
	bnez	$a2, .LBB33_2
# %bb.9:                                #   in Loop: Header=BB33_4 Depth=1
	move	$a2, $zero
	b	.LBB33_3
.LBB33_10:                              # %for.end
	move	$a0, $fp
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
.Lfunc_end33:
	.size	fol_MostGeneralFormula, .Lfunc_end33-fol_MostGeneralFormula
                                        # -- End function
	.globl	fol_ReplaceVariable             # -- Begin function fol_ReplaceVariable
	.p2align	5
	.type	fol_ReplaceVariable,@function
fol_ReplaceVariable:                    # @fol_ReplaceVariable
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a0
	ld.w	$a0, $a0, 0
	pcalau12i	$a3, %pc_hi20(fol_ALL)
	ld.w	$a3, $a3, %pc_lo12(fol_ALL)
	move	$fp, $a2
	move	$s1, $a1
	beq	$a3, $a0, .LBB34_4
# %bb.1:                                # %entry
	pcalau12i	$a1, %pc_hi20(fol_EXIST)
	ld.w	$a1, $a1, %pc_lo12(fol_EXIST)
	beq	$a1, $a0, .LBB34_4
# %bb.2:                                # %if.end13
	bne	$a0, $s1, .LBB34_8
.LBB34_3:                               # %if.then17
	ld.w	$a0, $fp, 0
	st.w	$a0, $s0, 0
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a1, %got_pc_lo12(term_Copy)
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s0, 16
	b	.LBB34_10
.LBB34_4:                               # %if.then
	ld.d	$a0, $s0, 16
	ld.d	$a1, $a0, 8
	addi.d	$a1, $a1, 16
	.p2align	4, , 16
.LBB34_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a1, 0
	beqz	$a1, .LBB34_7
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB34_5 Depth=1
	ld.d	$a2, $a1, 8
	ld.w	$a2, $a2, 0
	bne	$a2, $s1, .LBB34_5
	b	.LBB34_10
.LBB34_7:                               # %for.end
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fol_ReplaceVariable)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	beq	$a0, $s1, .LBB34_3
.LBB34_8:                               # %if.else
	ld.d	$s0, $s0, 16
	beqz	$s0, .LBB34_10
	.p2align	4, , 16
.LBB34_9:                               # %for.body26
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fol_ReplaceVariable)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB34_9
.LBB34_10:                              # %cleanup
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end34:
	.size	fol_ReplaceVariable, .Lfunc_end34-fol_ReplaceVariable
                                        # -- End function
	.globl	fol_PrettyPrintDFG              # -- Begin function fol_PrettyPrintDFG
	.p2align	5
	.type	fol_PrettyPrintDFG,@function
fol_PrettyPrintDFG:                     # @fol_PrettyPrintDFG
# %bb.0:                                # %entry
	move	$a1, $zero
	pcaddu18i	$t8, %call36(fol_PrettyPrintInternDFG)
	jr	$t8
.Lfunc_end35:
	.size	fol_PrettyPrintDFG, .Lfunc_end35-fol_PrettyPrintDFG
                                        # -- End function
	.p2align	5                               # -- Begin function fol_PrettyPrintInternDFG
	.type	fol_PrettyPrintInternDFG,@function
fol_PrettyPrintInternDFG:               # @fol_PrettyPrintInternDFG
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
	ld.w	$s0, $a0, 0
	pcalau12i	$a0, %pc_hi20(fol_VARLIST)
	ld.w	$a0, $a0, %pc_lo12(fol_VARLIST)
	bne	$s0, $a0, .LBB36_3
# %bb.1:                                # %if.else46
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 91
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(term_TermListPrintPrefix)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 93
.LBB36_2:                               # %for.end32
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(putc)
	jr	$t8
.LBB36_3:                               # %for.cond.preheader
	ori	$a2, $zero, 1
	move	$a0, $s0
	blt	$a1, $a2, .LBB36_7
# %bb.4:                                # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s3, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$s1, $a0, %pc_lo12(.L.str.73)
	move	$s2, $a1
	move	$s4, $a1
	.p2align	4, , 16
.LBB36_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $s3, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB36_5
# %bb.6:                                # %for.end.loopexit
	ld.w	$a0, $fp, 0
	move	$a1, $s2
.LBB36_7:                               # %for.end
	addi.w	$a2, $zero, -1
	blt	$a2, $a0, .LBB36_9
# %bb.8:                                # %symbol_IsPredicate.exit.i
	pcalau12i	$a3, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a3, $a3, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a3, $a3, 0
	sub.w	$a4, $zero, $a0
	and	$a3, $a3, $a4
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB36_24
.LBB36_9:                               # %lor.rhs.i
	pcalau12i	$a3, %pc_hi20(fol_NOT)
	ld.w	$a3, $a3, %pc_lo12(fol_NOT)
	bne	$a0, $a3, .LBB36_12
# %bb.10:                               # %land.rhs.i
	ld.d	$a3, $fp, 16
	ld.d	$a3, $a3, 8
	ld.w	$a3, $a3, 0
	blt	$a2, $a3, .LBB36_12
# %bb.11:                               # %fol_IsLiteral.exit
	pcalau12i	$a4, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a4, $a4, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a4, $a4, 0
	sub.w	$a3, $zero, $a3
	and	$a3, $a4, $a3
	ori	$a4, $zero, 2
	beq	$a3, $a4, .LBB36_24
.LBB36_12:                              # %if.else
	blt	$a2, $s0, .LBB36_24
# %bb.13:                               # %symbol_IsJunctor.exit
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a2, $a2, 0
	sub.w	$a3, $zero, $s0
	and	$a2, $a2, $a3
	ori	$a3, $zero, 3
	bne	$a2, $a3, .LBB36_24
# %bb.14:                               # %if.then9
	ld.d	$a2, $fp, 16
	beqz	$a2, .LBB36_25
# %bb.15:                               # %if.then12
	move	$s2, $a1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(symbol_Print)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s1, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fol_ALL)
	ld.w	$a0, $a0, %pc_lo12(fol_ALL)
	beq	$a0, $s0, .LBB36_18
# %bb.16:                               # %if.then12
	pcalau12i	$a0, %pc_hi20(fol_EXIST)
	ld.w	$a0, $a0, %pc_lo12(fol_EXIST)
	beq	$a0, $s0, .LBB36_18
# %bb.17:                               # %if.then16
	ld.d	$a1, $s1, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
.LBB36_18:                              # %if.end
	ld.d	$s3, $fp, 16
	beqz	$s3, .LBB36_22
# %bb.19:                               # %for.body22.lr.ph
	addi.w	$fp, $s2, 1
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$s0, $a0, %pc_lo12(.L.str.74)
	.p2align	4, , 16
.LBB36_20:                              # %for.body22
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s3, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fol_PrettyPrintInternDFG)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 0
	beqz	$a0, .LBB36_22
# %bb.21:                               # %for.inc30
                                        #   in Loop: Header=BB36_20 Depth=1
	ld.d	$a3, $s1, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB36_20
.LBB36_22:                              # %for.end32
	ld.d	$a1, $s1, 0
.LBB36_23:                              # %for.end32
	ori	$a0, $zero, 41
	b	.LBB36_2
.LBB36_24:                              # %if.then6
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(term_PrintPrefix)
	jr	$t8
.LBB36_25:                              # %if.else34
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB36_27
# %bb.26:                               # %if.then37
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(symbol_Print)
	jr	$t8
.LBB36_27:                              # %if.else38
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a1, $fp, 0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(symbol_Print)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	b	.LBB36_23
.Lfunc_end36:
	.size	fol_PrettyPrintInternDFG, .Lfunc_end36-fol_PrettyPrintInternDFG
                                        # -- End function
	.globl	fol_CheckFatherLinksIntern      # -- Begin function fol_CheckFatherLinksIntern
	.p2align	5
	.type	fol_CheckFatherLinksIntern,@function
fol_CheckFatherLinksIntern:             # @fol_CheckFatherLinksIntern
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(fol_ALL)
	ld.w	$a0, $a0, %pc_lo12(fol_ALL)
	pcalau12i	$a1, %pc_hi20(fol_EXIST)
	ld.w	$a2, $fp, 0
	ld.w	$a1, $a1, %pc_lo12(fol_EXIST)
	beq	$a0, $a2, .LBB37_2
# %bb.1:                                # %entry
	bne	$a1, $a2, .LBB37_4
	.p2align	4, , 16
.LBB37_2:                               # %if.then
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 16
	ld.d	$a2, $a2, 0
	ld.d	$fp, $a2, 8
	ld.w	$a2, $fp, 0
	beq	$a0, $a2, .LBB37_2
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB37_2 Depth=1
	beq	$a1, $a2, .LBB37_2
.LBB37_4:                               # %if.end
	ld.d	$s0, $fp, 16
	beqz	$s0, .LBB37_8
	.p2align	4, , 16
.LBB37_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a1, $a0, 8
	bne	$a1, $fp, .LBB37_9
# %bb.6:                                # %cleanup
                                        #   in Loop: Header=BB37_5 Depth=1
	pcaddu18i	$ra, %call36(fol_CheckFatherLinksIntern)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB37_9
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB37_5 Depth=1
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB37_5
.LBB37_8:
	move	$a0, $zero
.LBB37_9:                               # %cleanup22
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end37:
	.size	fol_CheckFatherLinksIntern, .Lfunc_end37-fol_CheckFatherLinksIntern
                                        # -- End function
	.globl	fol_CheckFatherLinks            # -- Begin function fol_CheckFatherLinks
	.p2align	5
	.type	fol_CheckFatherLinks,@function
fol_CheckFatherLinks:                   # @fol_CheckFatherLinks
# %bb.0:                                # %entry
	pcaddu18i	$t8, %call36(fol_CheckFatherLinksIntern)
	jr	$t8
.Lfunc_end38:
	.size	fol_CheckFatherLinks, .Lfunc_end38-fol_CheckFatherLinks
                                        # -- End function
	.globl	fol_PrettyPrint                 # -- Begin function fol_PrettyPrint
	.p2align	5
	.type	fol_PrettyPrint,@function
fol_PrettyPrint:                        # @fol_PrettyPrint
# %bb.0:                                # %entry
	move	$a1, $zero
	pcaddu18i	$t8, %call36(fol_PrettyPrintIntern)
	jr	$t8
.Lfunc_end39:
	.size	fol_PrettyPrint, .Lfunc_end39-fol_PrettyPrint
                                        # -- End function
	.p2align	5                               # -- Begin function fol_PrettyPrintIntern
	.type	fol_PrettyPrintIntern,@function
fol_PrettyPrintIntern:                  # @fol_PrettyPrintIntern
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
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	move	$s0, $a1
	move	$fp, $a0
	ld.w	$a0, $a2, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s5, $a0, %got_pc_lo12(stdout)
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$s1, $a0, %pc_lo12(.L.str.73)
	addi.w	$s8, $zero, -1
	pcalau12i	$a0, %pc_hi20(fol_ALL)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$s6, %pc_hi20(fol_EXIST)
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$s3, $a0, %pc_lo12(.L.str.75)
	b	.LBB40_2
	.p2align	4, , 16
.LBB40_1:                               # %for.end26
                                        #   in Loop: Header=BB40_2 Depth=1
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 3
	ori	$a2, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 0
	ld.d	$fp, $a0, 8
	addi.w	$s0, $s0, 1
.LBB40_2:                               # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB40_4 Depth 2
                                        #     Child Loop BB40_11 Depth 2
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB40_5
# %bb.3:                                # %for.body.preheader
                                        #   in Loop: Header=BB40_2 Depth=1
	move	$s4, $s0
	.p2align	4, , 16
.LBB40_4:                               # %for.body
                                        #   Parent Loop BB40_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s4, -1
	bnez	$s4, .LBB40_4
.LBB40_5:                               # %for.end
                                        #   in Loop: Header=BB40_2 Depth=1
	ld.w	$s4, $fp, 0
	blt	$s8, $s4, .LBB40_13
# %bb.6:                                # %symbol_IsJunctor.exit
                                        #   in Loop: Header=BB40_2 Depth=1
	sub.w	$a0, $zero, $s4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $a1, $a0
	ori	$a1, $zero, 3
	bne	$a0, $a1, .LBB40_13
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB40_2 Depth=1
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB40_14
# %bb.8:                                # %if.then5
                                        #   in Loop: Header=BB40_2 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$s2, $a0, %pc_lo12(fol_ALL)
	ld.w	$s7, $s6, %pc_lo12(fol_EXIST)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(symbol_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s5, 0
	beq	$s2, $s4, .LBB40_10
# %bb.9:                                # %if.then5
                                        #   in Loop: Header=BB40_2 Depth=1
	bne	$s7, $s4, .LBB40_15
.LBB40_10:                              # %if.then9
                                        #   in Loop: Header=BB40_2 Depth=1
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	ld.d	$s4, $a0, 16
	beqz	$s4, .LBB40_1
	.p2align	4, , 16
.LBB40_11:                              # %for.body16
                                        #   Parent Loop BB40_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 8
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(symbol_Print)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB40_1
# %bb.12:                               # %for.inc24
                                        #   in Loop: Header=BB40_11 Depth=2
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 44
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB40_11
	b	.LBB40_1
.LBB40_13:                              # %if.else61
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(term_PrintPrefix)
	jr	$t8
.LBB40_14:                              # %if.else55
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 40
	pcaddu18i	$ra, %call36(putc)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(symbol_Print)
	jirl	$ra, $ra, 0
	b	.LBB40_19
.LBB40_15:                              # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 16
	beqz	$s1, .LBB40_19
# %bb.16:                               # %for.body36.lr.ph
	addi.w	$fp, $s0, 1
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$s0, $a0, %pc_lo12(.L.str.74)
	.p2align	4, , 16
.LBB40_17:                              # %for.body36
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fol_PrettyPrintIntern)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB40_19
# %bb.18:                               # %for.inc45
                                        #   in Loop: Header=BB40_17 Depth=1
	ld.d	$a3, $s5, 0
	ori	$a1, $zero, 2
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB40_17
.LBB40_19:                              # %for.end47
	ld.d	$a1, $s5, 0
	ori	$a0, $zero, 41
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
	pcaddu18i	$t8, %call36(putc)
	jr	$t8
.Lfunc_end40:
	.size	fol_PrettyPrintIntern, .Lfunc_end40-fol_PrettyPrintIntern
                                        # -- End function
	.globl	fol_GetSubstEquations           # -- Begin function fol_GetSubstEquations
	.p2align	5
	.type	fol_GetSubstEquations,@function
fol_GetSubstEquations:                  # @fol_GetSubstEquations
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(fol_ALL)
	ld.w	$a0, $a0, %pc_lo12(fol_ALL)
	pcalau12i	$a2, %pc_hi20(fol_EXIST)
	ld.w	$a1, $fp, 0
	ld.w	$a2, $a2, %pc_lo12(fol_EXIST)
	beq	$a0, $a1, .LBB41_2
# %bb.1:                                # %entry
	bne	$a2, $a1, .LBB41_4
	.p2align	4, , 16
.LBB41_2:                               # %if.then
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 16
	ld.d	$a1, $a1, 0
	ld.d	$fp, $a1, 8
	ld.w	$a1, $fp, 0
	beq	$a0, $a1, .LBB41_2
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB41_2 Depth=1
	beq	$a2, $a1, .LBB41_2
.LBB41_4:                               # %if.end
	pcalau12i	$a0, %pc_hi20(fol_EQUALITY)
	ld.w	$a0, $a0, %pc_lo12(fol_EQUALITY)
	bne	$a1, $a0, .LBB41_9
# %bb.5:                                # %if.then7
	ld.d	$a2, $fp, 16
	ld.d	$a0, $a2, 0
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
	ld.d	$a2, $a2, 8
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB41_7
# %bb.6:                                # %if.then11
	move	$a0, $a2
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB41_9
	b	.LBB41_11
.LBB41_7:                               # %if.else
	ld.w	$a1, $a2, 0
	blt	$a1, $a3, .LBB41_9
# %bb.8:                                # %if.then23
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB41_11
.LBB41_9:
	move	$s0, $zero
	ld.w	$a0, $fp, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB41_12
.LBB41_10:                              # %symbol_IsPredicate.exit
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $a1, 0
	sub.w	$a0, $zero, $a0
	and	$a0, $a1, $a0
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB41_13
	b	.LBB41_12
.LBB41_11:                              # %if.end34.sink.split
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	ld.w	$a0, $fp, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB41_10
.LBB41_12:                              # %if.else39
	ld.d	$fp, $fp, 16
	bnez	$fp, .LBB41_16
.LBB41_13:                              # %cleanup
	move	$a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
	.p2align	4, , 16
.LBB41_14:                              #   in Loop: Header=BB41_16 Depth=1
	move	$s0, $a0
.LBB41_15:                              # %list_Nconc.exit
                                        #   in Loop: Header=BB41_16 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB41_13
.LBB41_16:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB41_19 Depth 2
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(fol_GetSubstEquations)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB41_14
# %bb.17:                               # %if.end.i
                                        #   in Loop: Header=BB41_16 Depth=1
	beqz	$a0, .LBB41_15
# %bb.18:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB41_16 Depth=1
	move	$a2, $s0
	.p2align	4, , 16
.LBB41_19:                              # %for.cond.i
                                        #   Parent Loop BB41_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB41_19
# %bb.20:                               # %for.end.i
                                        #   in Loop: Header=BB41_16 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB41_15
.Lfunc_end41:
	.size	fol_GetSubstEquations, .Lfunc_end41-fol_GetSubstEquations
                                        # -- End function
	.globl	fol_GetBindingQuantifier        # -- Begin function fol_GetBindingQuantifier
	.p2align	5
	.type	fol_GetBindingQuantifier,@function
fol_GetBindingQuantifier:               # @fol_GetBindingQuantifier
# %bb.0:                                # %entry
	pcalau12i	$a2, %pc_hi20(fol_ALL)
	ld.w	$a2, $a2, %pc_lo12(fol_ALL)
	pcalau12i	$a3, %pc_hi20(fol_EXIST)
	ld.w	$a3, $a3, %pc_lo12(fol_EXIST)
	b	.LBB42_2
	.p2align	4, , 16
.LBB42_1:                               # %if.end11
                                        #   in Loop: Header=BB42_2 Depth=1
	ld.d	$a0, $a0, 8
.LBB42_2:                               # %tailrecurse
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB42_5 Depth 2
	ld.w	$a4, $a0, 0
	beq	$a2, $a4, .LBB42_4
# %bb.3:                                # %tailrecurse
                                        #   in Loop: Header=BB42_2 Depth=1
	bne	$a3, $a4, .LBB42_1
.LBB42_4:                               # %if.then
                                        #   in Loop: Header=BB42_2 Depth=1
	ld.d	$a4, $a0, 16
	ld.d	$a4, $a4, 8
	addi.d	$a4, $a4, 16
	.p2align	4, , 16
.LBB42_5:                               # %for.cond
                                        #   Parent Loop BB42_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a4, 0
	beqz	$a4, .LBB42_1
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB42_5 Depth=2
	ld.d	$a5, $a4, 8
	ld.w	$a5, $a5, 0
	bne	$a1, $a5, .LBB42_5
# %bb.7:                                # %cleanup
	ret
.Lfunc_end42:
	.size	fol_GetBindingQuantifier, .Lfunc_end42-fol_GetBindingQuantifier
                                        # -- End function
	.globl	fol_TermPolarity                # -- Begin function fol_TermPolarity
	.p2align	5
	.type	fol_TermPolarity,@function
fol_TermPolarity:                       # @fol_TermPolarity
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$a2, $a0
	ori	$a0, $zero, 1
	beq	$a2, $a1, .LBB43_14
# %bb.1:                                # %if.end.lr.ph
	pcalau12i	$a3, %pc_hi20(fol_AND)
	ld.w	$a3, $a3, %pc_lo12(fol_AND)
	pcalau12i	$a4, %pc_hi20(fol_OR)
	ld.w	$a4, $a4, %pc_lo12(fol_OR)
	pcalau12i	$a5, %pc_hi20(fol_ALL)
	ld.w	$a5, $a5, %pc_lo12(fol_ALL)
	pcalau12i	$a6, %pc_hi20(fol_EXIST)
	ld.w	$a6, $a6, %pc_lo12(fol_EXIST)
	pcalau12i	$a7, %pc_hi20(fol_NOT)
	ld.w	$a7, $a7, %pc_lo12(fol_NOT)
	pcalau12i	$t0, %pc_hi20(fol_EQUIV)
	ld.w	$t0, $t0, %pc_lo12(fol_EQUIV)
	pcalau12i	$t1, %pc_hi20(fol_IMPLIES)
	ld.w	$t1, $t1, %pc_lo12(fol_IMPLIES)
	pcalau12i	$t2, %pc_hi20(fol_IMPLIED)
	ld.w	$t2, $t2, %pc_lo12(fol_IMPLIED)
	b	.LBB43_3
.LBB43_2:                               # %if.then24
                                        #   in Loop: Header=BB43_3 Depth=1
	ld.d	$t4, $a2, 16
	ld.d	$t4, $t4, 8
	bne	$t3, $t4, .LBB43_13
	b	.LBB43_15
	.p2align	4, , 16
.LBB43_3:                               # %if.end
                                        # =>This Inner Loop Header: Depth=1
	move	$t3, $a2
	ld.d	$a2, $a2, 8
	beqz	$a2, .LBB43_14
# %bb.4:                                # %if.then1
                                        #   in Loop: Header=BB43_3 Depth=1
	ld.w	$t4, $a2, 0
	beq	$t4, $a3, .LBB43_13
# %bb.5:                                # %if.then1
                                        #   in Loop: Header=BB43_3 Depth=1
	beq	$t4, $a4, .LBB43_13
# %bb.6:                                # %lor.lhs.false7
                                        #   in Loop: Header=BB43_3 Depth=1
	beq	$a5, $t4, .LBB43_13
# %bb.7:                                # %lor.lhs.false7
                                        #   in Loop: Header=BB43_3 Depth=1
	beq	$a6, $t4, .LBB43_13
# %bb.8:                                # %if.end12
                                        #   in Loop: Header=BB43_3 Depth=1
	beq	$t4, $a7, .LBB43_15
# %bb.9:                                # %if.end17
                                        #   in Loop: Header=BB43_3 Depth=1
	beq	$t4, $t0, .LBB43_16
# %bb.10:                               # %if.end21
                                        #   in Loop: Header=BB43_3 Depth=1
	beq	$t4, $t1, .LBB43_2
# %bb.11:                               # %if.end31
                                        #   in Loop: Header=BB43_3 Depth=1
	bne	$t4, $t2, .LBB43_17
# %bb.12:                               # %if.then34
                                        #   in Loop: Header=BB43_3 Depth=1
	ld.d	$t4, $a2, 16
	ld.d	$t4, $t4, 0
	ld.d	$t4, $t4, 8
	beq	$t3, $t4, .LBB43_15
	.p2align	4, , 16
.LBB43_13:                              # %tailrecurse.backedge
                                        #   in Loop: Header=BB43_3 Depth=1
	bne	$a2, $a1, .LBB43_3
.LBB43_14:                              # %common.ret60
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB43_15:                              # %common.ret.sink.split
	move	$a0, $a2
	pcaddu18i	$ra, %call36(fol_TermPolarity)
	jirl	$ra, $ra, 0
	sub.w	$a0, $zero, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB43_16:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB43_17:                              # %cleanup
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fflush)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$fp, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	pcalau12i	$a2, %pc_hi20(.L.str.27)
	addi.d	$a2, $a2, %pc_lo12(.L.str.27)
	ori	$a3, $zero, 1527
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	pcaddu18i	$ra, %call36(misc_ErrorReport)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	ori	$a1, $zero, 132
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(misc_DumpCore)
	jirl	$ra, $ra, 0
.Lfunc_end43:
	.size	fol_TermPolarity, .Lfunc_end43-fol_TermPolarity
                                        # -- End function
	.globl	fol_PolarCheck                  # -- Begin function fol_PolarCheck
	.p2align	5
	.type	fol_PolarCheck,@function
fol_PolarCheck:                         # @fol_PolarCheck
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(fol_TermPolarity)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	ori	$a2, $zero, 1
	beq	$a0, $a2, .LBB44_22
# %bb.1:                                # %entry
	addi.w	$a2, $zero, -1
	bne	$a0, $a2, .LBB44_42
# %bb.2:                                # %land.lhs.true
	pcalau12i	$a0, %pc_hi20(fol_ALL)
	ld.w	$a0, $a0, %pc_lo12(fol_ALL)
	bne	$a1, $a0, .LBB44_42
# %bb.3:                                # %if.then
	ori	$a0, $zero, 1
	beq	$s0, $fp, .LBB44_43
# %bb.4:                                # %if.end.lr.ph.i
	ld.d	$t2, $s0, 8
	beq	$t2, $fp, .LBB44_43
# %bb.5:                                # %if.end3.i.preheader
	pcalau12i	$a3, %pc_hi20(fol_OR)
	ld.w	$a3, $a3, %pc_lo12(fol_OR)
	pcalau12i	$a4, %pc_hi20(fol_AND)
	ld.w	$a4, $a4, %pc_lo12(fol_AND)
	pcalau12i	$a5, %pc_hi20(fol_EXIST)
	ld.w	$a5, $a5, %pc_lo12(fol_EXIST)
	pcalau12i	$a6, %pc_hi20(fol_IMPLIES)
	ld.w	$a6, $a6, %pc_lo12(fol_IMPLIES)
	pcalau12i	$a7, %pc_hi20(fol_IMPLIED)
	ld.w	$a7, $a7, %pc_lo12(fol_IMPLIED)
	pcalau12i	$t0, %pc_hi20(fol_EQUIV)
	ld.w	$t0, $t0, %pc_lo12(fol_EQUIV)
	pcalau12i	$t1, %pc_hi20(fol_NOT)
	ld.w	$t1, $t1, %pc_lo12(fol_NOT)
	b	.LBB44_7
	.p2align	4, , 16
.LBB44_6:                               # %if.then25.i
                                        #   in Loop: Header=BB44_7 Depth=1
	ld.d	$t2, $s0, 8
	beq	$t2, $fp, .LBB44_43
.LBB44_7:                               # %if.end3.i
                                        # =>This Inner Loop Header: Depth=1
	move	$t3, $s0
	move	$s0, $t2
	ld.w	$t2, $t2, 0
	beq	$t3, $s0, .LBB44_17
# %bb.8:                                # %if.end3.i
                                        #   in Loop: Header=BB44_7 Depth=1
	beq	$t2, $a3, .LBB44_17
# %bb.9:                                # %if.end3.i
                                        #   in Loop: Header=BB44_7 Depth=1
	beq	$t2, $a4, .LBB44_17
# %bb.10:                               # %lor.lhs.false4.i.i
                                        #   in Loop: Header=BB44_7 Depth=1
	beq	$a1, $t2, .LBB44_17
# %bb.11:                               # %lor.lhs.false4.i.i
                                        #   in Loop: Header=BB44_7 Depth=1
	beq	$a5, $t2, .LBB44_17
# %bb.12:                               # %lor.lhs.false7.i.i
                                        #   in Loop: Header=BB44_7 Depth=1
	bne	$t2, $a6, .LBB44_14
# %bb.13:                               # %land.lhs.true.i.i
                                        #   in Loop: Header=BB44_7 Depth=1
	ld.d	$t4, $s0, 16
	ld.d	$t4, $t4, 0
	ld.d	$t4, $t4, 8
	beq	$t3, $t4, .LBB44_17
.LBB44_14:                              # %lor.lhs.false12.i.i
                                        #   in Loop: Header=BB44_7 Depth=1
	bne	$t2, $a7, .LBB44_16
# %bb.15:                               # %land.lhs.true15.i.i
                                        #   in Loop: Header=BB44_7 Depth=1
	ld.d	$t4, $s0, 16
	ld.d	$t4, $t4, 8
	beq	$t3, $t4, .LBB44_17
.LBB44_16:                              # %if.end19.i.i
                                        #   in Loop: Header=BB44_7 Depth=1
	xor	$t3, $t2, $t0
	sltui	$t3, $t3, 1
	sub.w	$a2, $zero, $a2
	masknez	$a2, $a2, $t3
	.p2align	4, , 16
.LBB44_17:                              # %fol_PolarCheckCount.exit.i
                                        #   in Loop: Header=BB44_7 Depth=1
	beq	$t2, $t1, .LBB44_6
# %bb.18:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB44_7 Depth=1
	xor	$t3, $t2, $a3
	sltui	$t4, $t3, 1
	addi.d	$t3, $a2, -1
	sltui	$t3, $t3, 1
	and	$t4, $t4, $t3
	bnez	$t4, .LBB44_6
# %bb.19:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB44_7 Depth=1
	xor	$t4, $t2, $a4
	sltui	$t4, $t4, 1
	addi.d	$t5, $a2, 1
	sltui	$t5, $t5, 1
	and	$t4, $t4, $t5
	bnez	$t4, .LBB44_6
# %bb.20:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB44_7 Depth=1
	xor	$t4, $t2, $a6
	sltui	$t4, $t4, 1
	and	$t4, $t4, $t3
	bnez	$t4, .LBB44_6
# %bb.21:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB44_7 Depth=1
	xor	$t2, $t2, $a7
	sltui	$t2, $t2, 1
	and	$t2, $t2, $t3
	bnez	$t2, .LBB44_6
	b	.LBB44_42
.LBB44_22:                              # %land.lhs.true5
	pcalau12i	$a0, %pc_hi20(fol_EXIST)
	ld.w	$a0, $a0, %pc_lo12(fol_EXIST)
	bne	$a1, $a0, .LBB44_42
# %bb.23:                               # %if.then8
	ori	$a0, $zero, 1
	beq	$s0, $fp, .LBB44_43
# %bb.24:                               # %if.end.lr.ph.i13
	ld.d	$t1, $s0, 8
	beq	$t1, $fp, .LBB44_43
# %bb.25:                               # %if.end3.i19.preheader
	pcalau12i	$a0, %pc_hi20(fol_OR)
	ld.w	$a0, $a0, %pc_lo12(fol_OR)
	pcalau12i	$a2, %pc_hi20(fol_AND)
	ld.w	$a2, $a2, %pc_lo12(fol_AND)
	pcalau12i	$a3, %pc_hi20(fol_ALL)
	ld.w	$a3, $a3, %pc_lo12(fol_ALL)
	pcalau12i	$a4, %pc_hi20(fol_IMPLIES)
	ld.w	$a4, $a4, %pc_lo12(fol_IMPLIES)
	pcalau12i	$a5, %pc_hi20(fol_IMPLIED)
	ld.w	$a5, $a5, %pc_lo12(fol_IMPLIED)
	pcalau12i	$a6, %pc_hi20(fol_EQUIV)
	ld.w	$a6, $a6, %pc_lo12(fol_EQUIV)
	pcalau12i	$a7, %pc_hi20(fol_NOT)
	ld.w	$a7, $a7, %pc_lo12(fol_NOT)
	ori	$t0, $zero, 1
	b	.LBB44_27
	.p2align	4, , 16
.LBB44_26:                              # %if.then25.i46
                                        #   in Loop: Header=BB44_27 Depth=1
	ld.d	$t1, $s0, 8
	beq	$t1, $fp, .LBB44_44
.LBB44_27:                              # %if.end3.i19
                                        # =>This Inner Loop Header: Depth=1
	move	$t2, $s0
	move	$s0, $t1
	ld.w	$t1, $t1, 0
	beq	$t2, $s0, .LBB44_37
# %bb.28:                               # %if.end3.i19
                                        #   in Loop: Header=BB44_27 Depth=1
	beq	$t1, $a0, .LBB44_37
# %bb.29:                               # %if.end3.i19
                                        #   in Loop: Header=BB44_27 Depth=1
	beq	$t1, $a2, .LBB44_37
# %bb.30:                               # %lor.lhs.false4.i.i26
                                        #   in Loop: Header=BB44_27 Depth=1
	beq	$a3, $t1, .LBB44_37
# %bb.31:                               # %lor.lhs.false4.i.i26
                                        #   in Loop: Header=BB44_27 Depth=1
	beq	$a1, $t1, .LBB44_37
# %bb.32:                               # %lor.lhs.false7.i.i47
                                        #   in Loop: Header=BB44_27 Depth=1
	bne	$t1, $a4, .LBB44_34
# %bb.33:                               # %land.lhs.true.i.i59
                                        #   in Loop: Header=BB44_27 Depth=1
	ld.d	$t3, $s0, 16
	ld.d	$t3, $t3, 0
	ld.d	$t3, $t3, 8
	beq	$t2, $t3, .LBB44_37
.LBB44_34:                              # %lor.lhs.false12.i.i49
                                        #   in Loop: Header=BB44_27 Depth=1
	bne	$t1, $a5, .LBB44_36
# %bb.35:                               # %land.lhs.true15.i.i55
                                        #   in Loop: Header=BB44_27 Depth=1
	ld.d	$t3, $s0, 16
	ld.d	$t3, $t3, 8
	beq	$t2, $t3, .LBB44_37
.LBB44_36:                              # %if.end19.i.i51
                                        #   in Loop: Header=BB44_27 Depth=1
	xor	$t2, $t1, $a6
	sltui	$t2, $t2, 1
	sub.w	$t0, $zero, $t0
	masknez	$t0, $t0, $t2
	.p2align	4, , 16
.LBB44_37:                              # %fol_PolarCheckCount.exit.i30
                                        #   in Loop: Header=BB44_27 Depth=1
	beq	$t1, $a7, .LBB44_26
# %bb.38:                               # %lor.lhs.false.i33
                                        #   in Loop: Header=BB44_27 Depth=1
	xor	$t2, $t1, $a0
	sltui	$t3, $t2, 1
	addi.d	$t2, $t0, 1
	sltui	$t2, $t2, 1
	and	$t3, $t3, $t2
	bnez	$t3, .LBB44_26
# %bb.39:                               # %lor.lhs.false.i33
                                        #   in Loop: Header=BB44_27 Depth=1
	xor	$t3, $t1, $a2
	sltui	$t3, $t3, 1
	addi.d	$t4, $t0, -1
	sltui	$t4, $t4, 1
	and	$t3, $t3, $t4
	bnez	$t3, .LBB44_26
# %bb.40:                               # %lor.lhs.false.i33
                                        #   in Loop: Header=BB44_27 Depth=1
	xor	$t3, $t1, $a4
	sltui	$t3, $t3, 1
	and	$t3, $t3, $t2
	bnez	$t3, .LBB44_26
# %bb.41:                               # %lor.lhs.false.i33
                                        #   in Loop: Header=BB44_27 Depth=1
	xor	$t1, $t1, $a5
	sltui	$t1, $t1, 1
	and	$t1, $t1, $t2
	bnez	$t1, .LBB44_26
.LBB44_42:
	move	$a0, $zero
.LBB44_43:                              # %cleanup
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB44_44:
	ori	$a0, $zero, 1
	b	.LBB44_43
.Lfunc_end44:
	.size	fol_PolarCheck, .Lfunc_end44-fol_PolarCheck
                                        # -- End function
	.globl	fol_PopQuantifier               # -- Begin function fol_PopQuantifier
	.p2align	5
	.type	fol_PopQuantifier,@function
fol_PopQuantifier:                      # @fol_PopQuantifier
# %bb.0:                                # %while.body.ithread-pre-split.lr.ph
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a4, $fp, 16
	ld.d	$a5, $a0, 128
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a1, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a3, $a4, 0
	ld.w	$a6, $a5, 32
	ld.d	$a7, $a2, 0
	ld.d	$a1, $a3, 8
	add.d	$a6, $a7, $a6
	st.d	$a6, $a2, 0
	ld.d	$a5, $a5, 0
	st.d	$a5, $a4, 0
	ld.d	$a5, $a0, 128
	st.d	$a4, $a5, 0
	.p2align	4, , 16
.LBB45_1:                               # %while.body.ithread-pre-split
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 128
	ld.w	$a5, $a4, 32
	ld.d	$a6, $a2, 0
	ld.d	$a7, $a3, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a2, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $a3, 0
	ld.d	$a4, $a0, 128
	st.d	$a3, $a4, 0
	move	$a3, $a7
	bnez	$a7, .LBB45_1
# %bb.2:                                # %list_Delete.exit
	ld.w	$a3, $a1, 0
	st.w	$a3, $fp, 0
	ld.d	$a3, $a1, 16
	st.d	$a3, $fp, 16
	bnez	$a3, .LBB45_5
.LBB45_3:                               # %for.end
	ld.d	$a3, $a0, 256
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a2, $a3, 0
	st.d	$a2, $a1, 0
	ld.d	$a0, $a0, 256
	st.d	$a1, $a0, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
	.p2align	4, , 16
.LBB45_4:                               # %for.inc
                                        #   in Loop: Header=BB45_5 Depth=1
	ld.d	$a3, $a3, 0
	beqz	$a3, .LBB45_3
.LBB45_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 8
	ld.d	$a5, $a4, 8
	beqz	$a5, .LBB45_4
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB45_5 Depth=1
	st.d	$fp, $a4, 8
	b	.LBB45_4
.Lfunc_end45:
	.size	fol_PopQuantifier, .Lfunc_end45-fol_PopQuantifier
                                        # -- End function
	.globl	fol_DeleteQuantifierVariable    # -- Begin function fol_DeleteQuantifierVariable
	.p2align	5
	.type	fol_DeleteQuantifierVariable,@function
fol_DeleteQuantifierVariable:           # @fol_DeleteQuantifierVariable
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ld.d	$s2, $a0, 8
	ld.d	$s1, $s2, 16
	beqz	$s1, .LBB46_6
# %bb.1:                                # %for.body.preheader
	move	$s0, $a1
	b	.LBB46_3
	.p2align	4, , 16
.LBB46_2:                               # %for.inc
                                        #   in Loop: Header=BB46_3 Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB46_5
.LBB46_3:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	ld.w	$a1, $a0, 0
	bne	$a1, $s0, .LBB46_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB46_3 Depth=1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 8
	b	.LBB46_2
.LBB46_5:                               # %for.end.loopexit
	ld.d	$a0, $fp, 16
	ld.d	$s2, $a0, 8
	ld.d	$a0, $s2, 16
	b	.LBB46_7
.LBB46_6:
	move	$a0, $zero
.LBB46_7:                               # %for.end
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	ld.d	$a0, $fp, 16
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a0, 16
	bnez	$a1, .LBB46_12
# %bb.8:                                # %if.then14
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a4, $fp, 16
	ld.d	$a5, $a0, 128
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a1, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$a3, $a4, 0
	ld.w	$a6, $a5, 32
	ld.d	$a7, $a2, 0
	ld.d	$a1, $a3, 8
	add.d	$a6, $a7, $a6
	st.d	$a6, $a2, 0
	ld.d	$a5, $a5, 0
	st.d	$a5, $a4, 0
	ld.d	$a5, $a0, 128
	st.d	$a4, $a5, 0
	.p2align	4, , 16
.LBB46_9:                               # %while.body.ithread-pre-split.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a0, 128
	ld.w	$a5, $a4, 32
	ld.d	$a6, $a2, 0
	ld.d	$a7, $a3, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a2, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $a3, 0
	ld.d	$a4, $a0, 128
	st.d	$a3, $a4, 0
	move	$a3, $a7
	bnez	$a7, .LBB46_9
# %bb.10:                               # %list_Delete.exit.i
	ld.w	$a3, $a1, 0
	st.w	$a3, $fp, 0
	ld.d	$a3, $a1, 16
	st.d	$a3, $fp, 16
	bnez	$a3, .LBB46_14
.LBB46_11:                              # %fol_PopQuantifier.exit
	ld.d	$a3, $a0, 256
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a2, $a3, 0
	st.d	$a2, $a1, 0
	ld.d	$a0, $a0, 256
	st.d	$a1, $a0, 0
.LBB46_12:                              # %if.end15
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
	.p2align	4, , 16
.LBB46_13:                              # %for.inc.i
                                        #   in Loop: Header=BB46_14 Depth=1
	ld.d	$a3, $a3, 0
	beqz	$a3, .LBB46_11
.LBB46_14:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a3, 8
	ld.d	$a5, $a4, 8
	beqz	$a5, .LBB46_13
# %bb.15:                               # %if.then.i
                                        #   in Loop: Header=BB46_14 Depth=1
	st.d	$fp, $a4, 8
	b	.LBB46_13
.Lfunc_end46:
	.size	fol_DeleteQuantifierVariable, .Lfunc_end46-fol_DeleteQuantifierVariable
                                        # -- End function
	.globl	fol_SetTrue                     # -- Begin function fol_SetTrue
	.p2align	5
	.type	fol_SetTrue,@function
fol_SetTrue:                            # @fol_SetTrue
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fol_TRUE)
	ld.w	$a0, $a0, %pc_lo12(fol_TRUE)
	st.d	$zero, $fp, 16
	st.w	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end47:
	.size	fol_SetTrue, .Lfunc_end47-fol_SetTrue
                                        # -- End function
	.globl	fol_SetFalse                    # -- Begin function fol_SetFalse
	.p2align	5
	.type	fol_SetFalse,@function
fol_SetFalse:                           # @fol_SetFalse
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	pcalau12i	$a1, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(fol_FALSE)
	ld.w	$a0, $a0, %pc_lo12(fol_FALSE)
	st.d	$zero, $fp, 16
	st.w	$a0, $fp, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end48:
	.size	fol_SetFalse, .Lfunc_end48-fol_SetFalse
                                        # -- End function
	.globl	fol_PropagateFreeness           # -- Begin function fol_PropagateFreeness
	.p2align	5
	.type	fol_PropagateFreeness,@function
fol_PropagateFreeness:                  # @fol_PropagateFreeness
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
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(fol_ALL)
	ld.w	$a1, $a0, %pc_lo12(fol_ALL)
	pcalau12i	$a2, %pc_hi20(fol_EXIST)
	ld.w	$a0, $s1, 0
	ld.w	$a2, $a2, %pc_lo12(fol_EXIST)
	beq	$a1, $a0, .LBB49_2
# %bb.1:                                # %entry
	bne	$a2, $a0, .LBB49_4
	.p2align	4, , 16
.LBB49_2:                               # %if.then
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 16
	ld.d	$a0, $a0, 0
	ld.d	$s1, $a0, 8
	ld.w	$a0, $s1, 0
	beq	$a1, $a0, .LBB49_2
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB49_2 Depth=1
	beq	$a2, $a0, .LBB49_2
.LBB49_4:                               # %if.end
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB49_20
# %bb.5:                                # %term_IsAtom.exit
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $a1, 0
	sub.w	$a2, $zero, $a0
	and	$a1, $a1, $a2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB49_20
# %bb.6:                                # %if.else
	pcalau12i	$s4, %pc_hi20(fol_EQUALITY)
	ld.w	$a1, $s4, %pc_lo12(fol_EQUALITY)
	bne	$a0, $a1, .LBB49_23
# %bb.7:                                # %if.then18
	ld.d	$s3, $s1, 16
	ld.d	$a0, $s3, 0
	ld.d	$s0, $s3, 8
	ld.d	$fp, $a0, 8
	ld.w	$a0, $s0, 0
	ld.w	$a1, $fp, 0
	bne	$a0, $a1, .LBB49_23
# %bb.8:                                # %land.lhs.true
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a2, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_SIGNATURE)
	ld.wu	$a1, $a1, 0
	ld.d	$a2, $a2, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $a1
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a2, $a0
	ld.wu	$a0, $a0, 20
	andi	$a0, $a0, 768
	ori	$a1, $zero, 768
	bne	$a0, $a1, .LBB49_23
# %bb.9:                                # %if.then32
	pcalau12i	$a0, %pc_hi20(fol_AND)
	ld.w	$a0, $a0, %pc_lo12(fol_AND)
	st.d	$zero, $s1, 16
	st.w	$a0, $s1, 0
	ld.d	$s6, $s0, 16
	addi.d	$s5, $fp, 16
	beqz	$s6, .LBB49_15
# %bb.10:                               # %for.body.i.preheader
	move	$s7, $s5
	.p2align	4, , 16
.LBB49_11:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s7, $s7, 0
	ld.d	$s8, $s7, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s8, $a0, 8
	st.d	$zero, $a0, 0
	ld.d	$s8, $s6, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, %pc_lo12(fol_EQUALITY)
	move	$a2, $a0
	st.d	$s8, $a0, 8
	st.d	$s2, $a0, 0
	move	$a0, $a1
	move	$a1, $a2
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s1, 16
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s8, $a0, 0
	st.d	$a0, $s1, 16
	ld.d	$s6, $s6, 0
	bnez	$s6, .LBB49_11
# %bb.12:                               # %for.end.i
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB49_15
# %bb.13:                               # %while.body.i.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB49_14:                              # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB49_14
.LBB49_15:                              # %list_Delete.exit.i
	ld.d	$a0, $s5, 0
	beqz	$a0, .LBB49_18
# %bb.16:                               # %while.body.i31.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB49_17:                              # %while.body.i31.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB49_17
.LBB49_18:                              # %list_Delete.exit38.i
	st.d	$zero, $s0, 16
	st.d	$zero, $fp, 16
	move	$a0, $s0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	ori	$fp, $zero, 1
	.p2align	4, , 16
.LBB49_19:                              # %while.body.i42.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s3, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s3, 0
	ld.d	$a2, $a0, 128
	st.d	$s3, $a2, 0
	move	$s3, $a5
	bnez	$a5, .LBB49_19
	b	.LBB49_24
.LBB49_20:                              # %if.then6
	ld.d	$s0, $s1, 16
	beqz	$s0, .LBB49_23
# %bb.21:                               # %for.body.preheader
	move	$fp, $zero
	ori	$s1, $zero, 1
	.p2align	4, , 16
.LBB49_22:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(fol_PropagateFreeness)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	bnez	$s0, .LBB49_22
	b	.LBB49_24
.LBB49_23:
	move	$fp, $zero
.LBB49_24:                              # %cleanup
	move	$a0, $fp
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
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
.Lfunc_end49:
	.size	fol_PropagateFreeness, .Lfunc_end49-fol_PropagateFreeness
                                        # -- End function
	.globl	fol_PropagateWitness            # -- Begin function fol_PropagateWitness
	.p2align	5
	.type	fol_PropagateWitness,@function
fol_PropagateWitness:                   # @fol_PropagateWitness
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(fol_ALL)
	ld.w	$a0, $a0, %pc_lo12(fol_ALL)
	pcalau12i	$a2, %pc_hi20(fol_EXIST)
	ld.w	$a1, $fp, 0
	ld.w	$a2, $a2, %pc_lo12(fol_EXIST)
	beq	$a0, $a1, .LBB50_2
# %bb.1:                                # %entry
	bne	$a2, $a1, .LBB50_4
	.p2align	4, , 16
.LBB50_2:                               # %if.then
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $fp, 16
	ld.d	$a1, $a1, 0
	ld.d	$fp, $a1, 8
	ld.w	$a1, $fp, 0
	beq	$a0, $a1, .LBB50_2
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB50_2 Depth=1
	beq	$a2, $a1, .LBB50_2
.LBB50_4:                               # %if.end
	pcalau12i	$a0, %pc_hi20(fol_EQUALITY)
	ld.w	$a0, $a0, %pc_lo12(fol_EQUALITY)
	bne	$a1, $a0, .LBB50_10
# %bb.5:                                # %if.then6
	ld.d	$a2, $fp, 16
	ld.d	$a0, $a2, 0
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
	ld.d	$a2, $a2, 8
	ori	$a3, $zero, 1
	addi.d	$s0, $fp, 16
	blt	$a1, $a3, .LBB50_8
# %bb.6:                                # %if.then10
	move	$a0, $a2
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB50_10
# %bb.7:                                # %if.then16
	ld.d	$s0, $s0, 0
	b	.LBB50_12
.LBB50_8:                               # %if.else
	ld.w	$a1, $a2, 0
	blt	$a1, $a3, .LBB50_10
# %bb.9:                                # %if.then24
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB50_12
.LBB50_10:
	move	$a0, $zero
	ld.w	$a1, $fp, 0
	addi.w	$a2, $zero, -1
	blt	$a2, $a1, .LBB50_13
.LBB50_11:                              # %symbol_IsPredicate.exit
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a2, $a2, 0
	sub.w	$a1, $zero, $a1
	and	$a1, $a2, $a1
	ori	$a2, $zero, 2
	move	$s0, $zero
	beq	$a1, $a2, .LBB50_17
	b	.LBB50_13
.LBB50_12:                              # %if.end37.sink.split
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_PropagateWitnessIntern)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	addi.w	$a2, $zero, -1
	bge	$a2, $a1, .LBB50_11
.LBB50_13:                              # %if.end42
	ld.d	$fp, $fp, 16
	beqz	$fp, .LBB50_16
# %bb.14:                               # %for.body.preheader
	ori	$s1, $zero, 1
	move	$s0, $a0
	.p2align	4, , 16
.LBB50_15:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(fol_PropagateWitness)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $s0, $a0
	or	$s0, $a0, $a1
	bnez	$fp, .LBB50_15
	b	.LBB50_17
.LBB50_16:
	move	$s0, $a0
.LBB50_17:                              # %cleanup
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end50:
	.size	fol_PropagateWitness, .Lfunc_end50-fol_PropagateWitness
                                        # -- End function
	.p2align	5                               # -- Begin function fol_PropagateWitnessIntern
	.type	fol_PropagateWitnessIntern,@function
fol_PropagateWitnessIntern:             # @fol_PropagateWitnessIntern
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s2, $a0, 8
	beqz	$s2, .LBB51_24
# %bb.1:                                # %if.end
	ld.d	$fp, $s2, 8
	beqz	$fp, .LBB51_24
# %bb.2:                                # %if.end7
	ld.w	$a2, $fp, 0
	pcalau12i	$s1, %pc_hi20(fol_ALL)
	ld.w	$a3, $s1, %pc_lo12(fol_ALL)
	ld.w	$s0, $s2, 0
	beq	$a3, $a2, .LBB51_4
# %bb.3:                                # %if.end7
	pcalau12i	$a3, %pc_hi20(fol_EXIST)
	ld.w	$a3, $a3, %pc_lo12(fol_EXIST)
	bne	$a3, $a2, .LBB51_24
.LBB51_4:                               # %lor.lhs.false
	move	$s3, $a1
	move	$s4, $a0
	ld.d	$a0, $s2, 16
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB51_24
# %bb.5:                                # %if.end14
	ld.d	$a0, $s2, 16
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a1, 8
	move	$a4, $a2
	move	$a1, $s4
	move	$a3, $s3
	bne	$s4, $a2, .LBB51_7
# %bb.6:                                # %if.then17
	ld.d	$a4, $a0, 8
.LBB51_7:                               # %if.end20
	ld.w	$a5, $fp, 0
	ld.w	$a6, $s1, %pc_lo12(fol_ALL)
	ld.w	$a7, $a4, 0
	bne	$a5, $a6, .LBB51_13
# %bb.8:                                # %if.end20
	pcalau12i	$t0, %pc_hi20(fol_OR)
	ld.w	$t0, $t0, %pc_lo12(fol_OR)
	bne	$s0, $t0, .LBB51_13
# %bb.9:                                # %land.lhs.true28
	pcalau12i	$t0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$t0, $t0, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$t1, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$t2, $t1, %got_pc_lo12(symbol_SIGNATURE)
	pcalau12i	$t1, %pc_hi20(fol_NOT)
	ld.w	$t3, $t1, %pc_lo12(fol_NOT)
	ld.w	$t1, $t0, 0
	ld.d	$t0, $t2, 0
	bne	$a7, $t3, .LBB51_14
# %bb.10:                               # %land.lhs.true33
	ld.d	$t2, $a4, 16
	ld.d	$t2, $t2, 8
	ld.w	$t3, $t2, 0
	sub.d	$t3, $zero, $t3
	sra.w	$t3, $t3, $t1
	slli.d	$t3, $t3, 3
	ldx.d	$t3, $t0, $t3
	ld.wu	$t3, $t3, 20
	andi	$t3, $t3, 768
	ori	$t4, $zero, 768
	bne	$t3, $t4, .LBB51_14
# %bb.11:                               # %land.lhs.true43
	ld.d	$t2, $t2, 16
	ld.d	$t2, $t2, 8
	ld.w	$t2, $t2, 0
	bne	$t2, $a3, .LBB51_14
# %bb.12:
	pcalau12i	$a0, %pc_hi20(fol_FALSE)
	addi.d	$s1, $a0, %pc_lo12(fol_FALSE)
	b	.LBB51_23
.LBB51_13:                              # %if.end20.if.end50_crit_edge
	pcalau12i	$t0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$t0, $t0, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$t1, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$t2, $t1, %got_pc_lo12(symbol_SIGNATURE)
	ld.w	$t1, $t0, 0
	ld.d	$t0, $t2, 0
.LBB51_14:                              # %if.end50
	sub.d	$a7, $zero, $a7
	sra.w	$a7, $a7, $t1
	slli.d	$a7, $a7, 3
	ldx.d	$a7, $t0, $a7
	ld.wu	$a7, $a7, 20
	andi	$a7, $a7, 768
	ori	$t0, $zero, 768
	bne	$a7, $t0, .LBB51_24
# %bb.15:                               # %lor.lhs.false58
	ld.d	$a4, $a4, 16
	ld.d	$a4, $a4, 8
	ld.w	$a4, $a4, 0
	bne	$a3, $a4, .LBB51_24
# %bb.16:                               # %if.end64
	bne	$a5, $a6, .LBB51_21
# %bb.17:                               # %if.then69
	pcalau12i	$a3, %pc_hi20(fol_FALSE)
	addi.d	$s1, $a3, %pc_lo12(fol_FALSE)
	bne	$a1, $a2, .LBB51_19
# %bb.18:                               # %if.then69
	pcalau12i	$a2, %pc_hi20(fol_IMPLIES)
	ld.w	$a2, $a2, %pc_lo12(fol_IMPLIES)
	beq	$s0, $a2, .LBB51_23
.LBB51_19:                              # %if.end77
	pcalau12i	$a2, %pc_hi20(fol_IMPLIED)
	ld.w	$a2, $a2, %pc_lo12(fol_IMPLIED)
	bne	$s0, $a2, .LBB51_24
# %bb.20:                               # %land.lhs.true81
	ld.d	$a0, $a0, 8
	bne	$a0, $a1, .LBB51_24
	b	.LBB51_23
.LBB51_21:                              # %if.else86
	pcalau12i	$a0, %pc_hi20(fol_AND)
	ld.w	$a0, $a0, %pc_lo12(fol_AND)
	bne	$s0, $a0, .LBB51_24
# %bb.22:
	pcalau12i	$a0, %pc_hi20(fol_TRUE)
	addi.d	$s1, $a0, %pc_lo12(fol_TRUE)
.LBB51_23:                              # %cleanup.sink.split
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
	st.d	$zero, $fp, 16
	st.w	$a0, $fp, 0
	ori	$a0, $zero, 1
	b	.LBB51_25
.LBB51_24:
	move	$a0, $zero
.LBB51_25:                              # %cleanup
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end51:
	.size	fol_PropagateWitnessIntern, .Lfunc_end51-fol_PropagateWitnessIntern
                                        # -- End function
	.globl	fol_PropagateTautologies        # -- Begin function fol_PropagateTautologies
	.p2align	5
	.type	fol_PropagateTautologies,@function
fol_PropagateTautologies:               # @fol_PropagateTautologies
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(fol_ALL)
	ld.w	$a0, $a0, %pc_lo12(fol_ALL)
	pcalau12i	$a1, %pc_hi20(fol_EXIST)
	ld.w	$a1, $a1, %pc_lo12(fol_EXIST)
	ld.w	$s1, $fp, 0
	ld.d	$s2, $fp, 16
	beq	$a0, $s1, .LBB52_2
# %bb.1:                                # %entry
	bne	$a1, $s1, .LBB52_4
	.p2align	4, , 16
.LBB52_2:                               # %if.then
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $s2, 0
	ld.d	$fp, $a2, 8
	ld.w	$s1, $fp, 0
	ld.d	$s2, $fp, 16
	beq	$a0, $s1, .LBB52_2
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB52_2 Depth=1
	beq	$a1, $s1, .LBB52_2
.LBB52_4:                               # %if.end
	pcalau12i	$a0, %pc_hi20(fol_EQUALITY)
	ld.w	$a0, $a0, %pc_lo12(fol_EQUALITY)
	bne	$s1, $a0, .LBB52_7
# %bb.5:                                # %if.then7
	ld.d	$a1, $s2, 0
	ld.d	$a0, $s2, 8
	ld.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB52_7
# %bb.6:                                # %if.then12
	ld.d	$a0, $fp, 16
	pcalau12i	$a1, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 16
	pcalau12i	$a0, %pc_hi20(fol_TRUE)
	addi.d	$a0, $a0, %pc_lo12(fol_TRUE)
	b	.LBB52_25
.LBB52_7:                               # %if.end14
	pcalau12i	$a0, %pc_hi20(fol_OR)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$a0, $a0, %pc_lo12(fol_OR)
	pcalau12i	$a1, %pc_hi20(fol_AND)
	ld.w	$a1, $a1, %pc_lo12(fol_AND)
	xor	$a0, $s1, $a0
	sltu	$a0, $zero, $a0
	xor	$a1, $s1, $a1
	sltu	$a1, $zero, $a1
	and	$a0, $a0, $a1
	bnez	$a0, .LBB52_20
# %bb.8:                                # %if.end14
	beqz	$s2, .LBB52_20
# %bb.9:                                # %for.body.preheader
	pcalau12i	$a0, %pc_hi20(fol_NOT)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(term_BIND)
	ld.d	$s4, $a0, %got_pc_lo12(term_BIND)
	pcalau12i	$a0, %got_pc_hi20(term_MARK)
	ld.d	$s5, $a0, %got_pc_lo12(term_MARK)
	addi.w	$s6, $zero, -1
	addi.d	$s7, $s4, 16
	lu12i.w	$a0, 11
	ori	$s8, $a0, 2944
	move	$s3, $s2
	b	.LBB52_11
	.p2align	4, , 16
.LBB52_10:                              # %for.inc51
                                        #   in Loop: Header=BB52_11 Depth=1
	ld.d	$s3, $s3, 0
	beqz	$s3, .LBB52_20
.LBB52_11:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB52_15 Depth 2
                                        #       Child Loop BB52_18 Depth 3
	ld.d	$a0, $s3, 8
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(fol_NOT)
	bne	$a0, $a1, .LBB52_10
# %bb.12:                               # %for.body34.preheader
                                        #   in Loop: Header=BB52_11 Depth=1
	move	$s0, $s2
	b	.LBB52_15
	.p2align	4, , 16
.LBB52_13:                              # %fol_AlphaEqual.exit
                                        #   in Loop: Header=BB52_15 Depth=2
	addi.d	$a3, $a2, 1
	st.w	$a3, $s5, 0
	pcaddu18i	$ra, %call36(fol_AlphaEqualIntern)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB52_24
.LBB52_14:                              # %for.inc
                                        #   in Loop: Header=BB52_15 Depth=2
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB52_10
.LBB52_15:                              # %for.body34
                                        #   Parent Loop BB52_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB52_18 Depth 3
	ld.d	$a0, $s3, 8
	ld.d	$a1, $s0, 8
	beq	$a0, $a1, .LBB52_14
# %bb.16:                               # %land.lhs.true
                                        #   in Loop: Header=BB52_15 Depth=2
	ld.d	$a0, $a0, 16
	ld.w	$a2, $s5, 0
	ld.d	$a0, $a0, 8
	bne	$a2, $s6, .LBB52_13
# %bb.17:                               # %vector.body.preheader
                                        #   in Loop: Header=BB52_15 Depth=2
	ori	$a2, $zero, 3000
	move	$a3, $s7
	.p2align	4, , 16
.LBB52_18:                              # %vector.body
                                        #   Parent Loop BB52_11 Depth=1
                                        #     Parent Loop BB52_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	st.d	$zero, $a3, -16
	st.d	$zero, $a3, 0
	addi.d	$a2, $a2, -2
	addi.d	$a3, $a3, 32
	bnez	$a2, .LBB52_18
# %bb.19:                               # %for.body.i.i
                                        #   in Loop: Header=BB52_15 Depth=2
	stx.d	$zero, $s4, $s8
	ori	$a2, $zero, 1
	b	.LBB52_13
.LBB52_20:                              # %if.end54
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $fp, 0
	ld.w	$a0, $a0, 0
	slti	$a2, $a1, 0
	sub.w	$a1, $zero, $a1
	and	$a0, $a0, $a1
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	and	$a0, $a2, $a0
	move	$fp, $zero
	bnez	$a0, .LBB52_26
# %bb.21:                               # %if.end54
	beqz	$s2, .LBB52_26
# %bb.22:                               # %for.body62.preheader
	move	$fp, $zero
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB52_23:                              # %for.body62
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, 8
	pcaddu18i	$ra, %call36(fol_PropagateTautologies)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s2, 0
	sltui	$a0, $a0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $fp, $a0
	or	$fp, $a0, $a1
	bnez	$s2, .LBB52_23
	b	.LBB52_26
.LBB52_24:                              # %if.then42
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, %pc_lo12(fol_OR)
	ld.d	$a0, $fp, 16
	xor	$a1, $s1, $a1
	sltui	$s0, $a1, 1
	pcalau12i	$a1, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	st.d	$zero, $fp, 16
	pcalau12i	$a0, %pc_hi20(fol_FALSE)
	addi.d	$a0, $a0, %pc_lo12(fol_FALSE)
	masknez	$a0, $a0, $s0
	pcalau12i	$a1, %pc_hi20(fol_TRUE)
	addi.d	$a1, $a1, %pc_lo12(fol_TRUE)
	maskeqz	$a1, $a1, $s0
	or	$a0, $a1, $a0
.LBB52_25:                              # %cleanup.sink.split
	ld.w	$a0, $a0, 0
	st.w	$a0, $fp, 0
	ori	$fp, $zero, 1
.LBB52_26:                              # %cleanup
	move	$a0, $fp
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
.Lfunc_end52:
	.size	fol_PropagateTautologies, .Lfunc_end52-fol_PropagateTautologies
                                        # -- End function
	.globl	fol_AlphaEqual                  # -- Begin function fol_AlphaEqual
	.p2align	5
	.type	fol_AlphaEqual,@function
fol_AlphaEqual:                         # @fol_AlphaEqual
# %bb.0:                                # %entry
	pcalau12i	$a2, %got_pc_hi20(term_MARK)
	ld.d	$a3, $a2, %got_pc_lo12(term_MARK)
	ld.w	$a2, $a3, 0
	addi.w	$a4, $zero, -1
	beq	$a2, $a4, .LBB53_2
# %bb.1:                                # %term_ActMark.exit
	addi.d	$a4, $a2, 1
	st.w	$a4, $a3, 0
	pcaddu18i	$t8, %call36(fol_AlphaEqualIntern)
	jr	$t8
.LBB53_2:                               # %vector.body.preheader
	pcalau12i	$a2, %got_pc_hi20(term_BIND)
	ld.d	$a2, $a2, %got_pc_lo12(term_BIND)
	addi.d	$a4, $a2, 16
	ori	$a5, $zero, 3000
	.p2align	4, , 16
.LBB53_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a4, -16
	st.d	$zero, $a4, 0
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB53_3
# %bb.4:                                # %for.body.i
	lu12i.w	$a4, 11
	ori	$a4, $a4, 2944
	stx.d	$zero, $a2, $a4
	ori	$a2, $zero, 1
	addi.d	$a4, $a2, 1
	st.w	$a4, $a3, 0
	pcaddu18i	$t8, %call36(fol_AlphaEqualIntern)
	jr	$t8
.Lfunc_end53:
	.size	fol_AlphaEqual, .Lfunc_end53-fol_AlphaEqual
                                        # -- End function
	.p2align	5                               # -- Begin function fol_AlphaEqualIntern
	.type	fol_AlphaEqualIntern,@function
fol_AlphaEqualIntern:                   # @fol_AlphaEqualIntern
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.w	$a3, $a0, 0
	ld.w	$a1, $a1, 0
	ori	$a4, $zero, 1
	move	$fp, $a2
	blt	$a3, $a4, .LBB54_4
# %bb.1:                                # %entry
	blt	$a1, $a4, .LBB54_4
# %bb.2:                                # %if.then
	pcalau12i	$a0, %got_pc_hi20(term_BIND)
	ld.d	$a0, $a0, %got_pc_lo12(term_BIND)
	slli.d	$a2, $a1, 4
	ldx.w	$a2, $a0, $a2
	bgeu	$a2, $fp, .LBB54_11
# %bb.3:                                # %if.else
	xor	$a0, $a3, $a1
	b	.LBB54_12
.LBB54_4:                               # %if.end
	bne	$a3, $a1, .LBB54_22
# %bb.5:                                # %if.end14
	pcalau12i	$a1, %pc_hi20(fol_ALL)
	ld.w	$a2, $a1, %pc_lo12(fol_ALL)
	ld.d	$a1, $a0, 16
	addi.d	$s2, $a0, 16
	beq	$a2, $a3, .LBB54_13
# %bb.6:                                # %if.end14
	pcalau12i	$a0, %pc_hi20(fol_EXIST)
	ld.w	$a0, $a0, %pc_lo12(fol_EXIST)
	beq	$a0, $a3, .LBB54_13
# %bb.7:                                # %if.else54
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB54_22
# %bb.8:                                # %for.cond65.preheader
	addi.d	$s0, $s0, 16
	.p2align	4, , 16
.LBB54_9:                               # %for.cond65
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	sltui	$s1, $s2, 1
	beqz	$s2, .LBB54_23
# %bb.10:                               # %for.body69
                                        #   in Loop: Header=BB54_9 Depth=1
	ld.d	$s0, $s0, 0
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s0, 8
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fol_AlphaEqualIntern)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB54_9
	b	.LBB54_23
.LBB54_11:                              # %if.then7
	alsl.d	$a0, $a1, $a0, 4
	ld.w	$a0, $a0, 8
	xor	$a0, $a3, $a0
.LBB54_12:                              # %cleanup
	sltui	$s1, $a0, 1
	b	.LBB54_23
.LBB54_13:                              # %if.then17
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	ld.d	$a1, $a1, 8
	ld.d	$a1, $a1, 16
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	bne	$s1, $a0, .LBB54_22
# %bb.14:                               # %if.end23
	ld.d	$a1, $s2, 0
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB54_18
# %bb.15:                               # %for.body.lr.ph
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a1, 8
	pcalau12i	$a1, %got_pc_hi20(term_BIND)
	ld.d	$a1, $a1, %got_pc_lo12(term_BIND)
	addi.d	$a2, $a2, 16
	bstrpick.d	$a3, $fp, 31, 0
	.p2align	4, , 16
.LBB54_16:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a2, 0
	ld.d	$a4, $a2, 8
	ld.d	$a5, $a0, 8
	ld.w	$a4, $a4, 0
	ld.w	$a5, $a5, 0
	alsl.d	$a6, $a4, $a1, 4
	slli.d	$a4, $a4, 4
	stx.d	$a3, $a1, $a4
	st.d	$a5, $a6, 8
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB54_16
# %bb.17:                               # %for.end.loopexit
	ld.d	$a1, $s2, 0
.LBB54_18:                              # %for.end
	ld.d	$a0, $s0, 16
	ld.d	$a1, $a1, 0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a2, 8
	move	$a2, $fp
	pcaddu18i	$ra, %call36(fol_AlphaEqualIntern)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB54_22
# %bb.19:                               # %if.end39
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	ori	$s1, $zero, 1
	beqz	$a0, .LBB54_23
# %bb.20:                               # %for.body46.preheader
	ld.d	$a1, $s0, 16
	ld.d	$a2, $a1, 8
	pcalau12i	$a1, %got_pc_hi20(term_BIND)
	ld.d	$a1, $a1, %got_pc_lo12(term_BIND)
	addi.d	$a2, $a2, 16
	.p2align	4, , 16
.LBB54_21:                              # %for.body46
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a2, 0
	ld.d	$a3, $a2, 8
	ld.w	$a3, $a3, 0
	slli.d	$a3, $a3, 4
	stx.d	$zero, $a1, $a3
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB54_21
	b	.LBB54_23
.LBB54_22:
	move	$s1, $zero
.LBB54_23:                              # %cleanup
	move	$a0, $s1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end54:
	.size	fol_AlphaEqualIntern, .Lfunc_end54-fol_AlphaEqualIntern
                                        # -- End function
	.globl	fol_VarBoundTwice               # -- Begin function fol_VarBoundTwice
	.p2align	5
	.type	fol_VarBoundTwice,@function
fol_VarBoundTwice:                      # @fol_VarBoundTwice
# %bb.0:                                # %entry
	pcalau12i	$a1, %got_pc_hi20(term_MARK)
	ld.d	$a2, $a1, %got_pc_lo12(term_MARK)
	ld.w	$a1, $a2, 0
	addi.w	$a3, $zero, -1
	beq	$a1, $a3, .LBB55_2
# %bb.1:                                # %term_ActMark.exit
	addi.d	$a3, $a1, 1
	st.w	$a3, $a2, 0
	pcaddu18i	$t8, %call36(fol_VarBoundTwiceIntern)
	jr	$t8
.LBB55_2:                               # %vector.body.preheader
	pcalau12i	$a1, %got_pc_hi20(term_BIND)
	ld.d	$a1, $a1, %got_pc_lo12(term_BIND)
	addi.d	$a3, $a1, 16
	ori	$a4, $zero, 3000
	.p2align	4, , 16
.LBB55_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a3, -16
	st.d	$zero, $a3, 0
	addi.d	$a4, $a4, -2
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB55_3
# %bb.4:                                # %for.body.i
	lu12i.w	$a3, 11
	ori	$a3, $a3, 2944
	stx.d	$zero, $a1, $a3
	ori	$a1, $zero, 1
	addi.d	$a3, $a1, 1
	st.w	$a3, $a2, 0
	pcaddu18i	$t8, %call36(fol_VarBoundTwiceIntern)
	jr	$t8
.Lfunc_end55:
	.size	fol_VarBoundTwice, .Lfunc_end55-fol_VarBoundTwice
                                        # -- End function
	.p2align	5                               # -- Begin function fol_VarBoundTwiceIntern
	.type	fol_VarBoundTwiceIntern,@function
fol_VarBoundTwiceIntern:                # @fol_VarBoundTwiceIntern
# %bb.0:                                # %entry
	beqz	$a0, .LBB56_8
# %bb.1:                                # %if.end
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	ld.w	$a1, $a0, 0
	addi.w	$a2, $zero, -1
	blt	$a2, $a1, .LBB56_3
# %bb.2:                                # %term_IsAtom.exit
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a2, $a2, 0
	sub.w	$a3, $zero, $a1
	and	$a2, $a2, $a3
	ori	$a3, $zero, 2
	beq	$a2, $a3, .LBB56_18
.LBB56_3:                               # %if.end3
	pcalau12i	$a2, %pc_hi20(fol_ALL)
	ld.w	$a2, $a2, %pc_lo12(fol_ALL)
	addi.d	$s0, $a0, 16
	beq	$a2, $a1, .LBB56_9
# %bb.4:                                # %if.end3
	pcalau12i	$a0, %pc_hi20(fol_EXIST)
	ld.w	$a0, $a0, %pc_lo12(fol_EXIST)
	beq	$a0, $a1, .LBB56_9
	.p2align	4, , 16
.LBB56_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB56_18
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB56_5 Depth=1
	ld.d	$a0, $s0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fol_VarBoundTwiceIntern)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB56_5
.LBB56_7:
	ori	$a0, $zero, 1
	b	.LBB56_19
.LBB56_8:
	move	$a0, $zero
	ret
.LBB56_9:                               # %if.else
	ld.d	$a1, $s0, 0
	ld.d	$a0, $a1, 8
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB56_14
# %bb.10:                               # %for.body22.lr.ph
	pcalau12i	$a1, %got_pc_hi20(term_BIND)
	ld.d	$a1, $a1, %got_pc_lo12(term_BIND)
	bstrpick.d	$a2, $fp, 31, 0
	.p2align	4, , 16
.LBB56_11:                              # %for.body22
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 8
	ld.w	$a3, $a3, 0
	slli.d	$a4, $a3, 4
	ldx.w	$a4, $a1, $a4
	bgeu	$a4, $fp, .LBB56_7
# %bb.12:                               # %if.then27
                                        #   in Loop: Header=BB56_11 Depth=1
	alsl.d	$a3, $a3, $a1, 4
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB56_11
# %bb.13:                               # %for.end34.loopexit
	ld.d	$a1, $s0, 0
.LBB56_14:                              # %for.end34
	ld.d	$a0, $a1, 0
	ld.d	$a0, $a0, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fol_VarBoundTwiceIntern)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ori	$a0, $zero, 1
	bnez	$a1, .LBB56_19
# %bb.15:                               # %if.end39
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	beqz	$a0, .LBB56_18
# %bb.16:                               # %for.body45.preheader
	pcalau12i	$a1, %got_pc_hi20(term_BIND)
	ld.d	$a1, $a1, %got_pc_lo12(term_BIND)
	.p2align	4, , 16
.LBB56_17:                              # %for.body45
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 8
	ld.w	$a2, $a2, 0
	slli.d	$a2, $a2, 4
	stx.d	$zero, $a1, $a2
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB56_17
.LBB56_18:
	move	$a0, $zero
.LBB56_19:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end56:
	.size	fol_VarBoundTwiceIntern, .Lfunc_end56-fol_VarBoundTwiceIntern
                                        # -- End function
	.globl	fol_Depth                       # -- Begin function fol_Depth
	.p2align	5
	.type	fol_Depth,@function
fol_Depth:                              # @fol_Depth
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(fol_ALL)
	ld.w	$a2, $a2, %pc_lo12(fol_ALL)
	pcalau12i	$a3, %pc_hi20(fol_EXIST)
	ld.w	$a3, $a3, %pc_lo12(fol_EXIST)
	move	$fp, $zero
	addi.w	$a4, $zero, -1
	ori	$a5, $zero, 2
	b	.LBB57_2
	.p2align	4, , 16
.LBB57_1:                               # %if.then5
                                        #   in Loop: Header=BB57_2 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, 8
	addi.d	$fp, $fp, 1
.LBB57_2:                               # %tailrecurse
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a0, 0
	blt	$a4, $a6, .LBB57_4
# %bb.3:                                # %symbol_IsPredicate.exit
                                        #   in Loop: Header=BB57_2 Depth=1
	sub.w	$a7, $zero, $a6
	and	$a7, $a1, $a7
	beq	$a7, $a5, .LBB57_10
.LBB57_4:                               # %if.end
                                        #   in Loop: Header=BB57_2 Depth=1
	ld.d	$s0, $a0, 16
	beq	$a2, $a6, .LBB57_1
# %bb.5:                                # %if.end
                                        #   in Loop: Header=BB57_2 Depth=1
	beq	$a3, $a6, .LBB57_1
# %bb.6:                                # %if.end8
	beqz	$s0, .LBB57_10
# %bb.7:                                # %for.body.preheader
	move	$s1, $zero
	.p2align	4, , 16
.LBB57_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(fol_Depth)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a0, $a0, $a1
	or	$s1, $a0, $a2
	bnez	$s0, .LBB57_8
# %bb.9:                                # %for.end.loopexit
	addi.d	$a0, $s1, 1
	b	.LBB57_11
.LBB57_10:
	ori	$a0, $zero, 1
.LBB57_11:                              # %cleanup
	add.w	$a0, $a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end57:
	.size	fol_Depth, .Lfunc_end57-fol_Depth
                                        # -- End function
	.globl	fol_ApplyContextToTerm          # -- Begin function fol_ApplyContextToTerm
	.p2align	5
	.type	fol_ApplyContextToTerm,@function
fol_ApplyContextToTerm:                 # @fol_ApplyContextToTerm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(fol_CheckApplyContextToTerm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB58_2
# %bb.1:                                # %if.then
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(fol_ApplyContextToTermIntern)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB58_3
.LBB58_2:
	move	$a0, $zero
.LBB58_3:                               # %return
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end58:
	.size	fol_ApplyContextToTerm, .Lfunc_end58-fol_ApplyContextToTerm
                                        # -- End function
	.p2align	5                               # -- Begin function fol_CheckApplyContextToTerm
	.type	fol_CheckApplyContextToTerm,@function
fol_CheckApplyContextToTerm:            # @fol_CheckApplyContextToTerm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.w	$a2, $a1, 0
	pcalau12i	$a3, %pc_hi20(fol_ALL)
	ld.w	$a3, $a3, %pc_lo12(fol_ALL)
	ld.d	$s1, $a1, 16
	move	$fp, $a0
	beq	$a3, $a2, .LBB59_4
# %bb.1:                                # %entry
	pcalau12i	$a0, %pc_hi20(fol_EXIST)
	ld.w	$a0, $a0, %pc_lo12(fol_EXIST)
	beq	$a0, $a2, .LBB59_4
# %bb.2:                                # %if.else
	ori	$s0, $zero, 1
	beqz	$s1, .LBB59_12
	.p2align	4, , 16
.LBB59_3:                               # %for.body31
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_CheckApplyContextToTerm)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	sltui	$a0, $a0, 1
	masknez	$s0, $s0, $a0
	bnez	$s1, .LBB59_3
	b	.LBB59_12
.LBB59_4:                               # %if.then
	ld.d	$a0, $s1, 8
	addi.d	$a0, $a0, 16
	.p2align	4, , 16
.LBB59_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 0
	beqz	$a0, .LBB59_8
# %bb.6:                                # %for.body
                                        #   in Loop: Header=BB59_5 Depth=1
	ld.d	$a1, $a0, 8
	ld.w	$a1, $a1, 0
	slli.d	$a1, $a1, 5
	add.d	$a1, $fp, $a1
	ld.d	$a1, $a1, 8
	beqz	$a1, .LBB59_5
# %bb.7:
	move	$s0, $zero
	b	.LBB59_12
.LBB59_8:                               # %for.end
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, 8
	ld.d	$s1, $a0, 16
	beqz	$s1, .LBB59_11
# %bb.9:                                # %for.body17.preheader
	ori	$s0, $zero, 1
	.p2align	4, , 16
.LBB59_10:                              # %for.body17
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_CheckApplyContextToTerm)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	sltui	$a0, $a0, 1
	masknez	$s0, $s0, $a0
	bnez	$s1, .LBB59_10
	b	.LBB59_12
.LBB59_11:
	ori	$s0, $zero, 1
.LBB59_12:                              # %cleanup
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end59:
	.size	fol_CheckApplyContextToTerm, .Lfunc_end59-fol_CheckApplyContextToTerm
                                        # -- End function
	.p2align	5                               # -- Begin function fol_ApplyContextToTermIntern
	.type	fol_ApplyContextToTermIntern,@function
fol_ApplyContextToTermIntern:           # @fol_ApplyContextToTermIntern
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(fol_ALL)
	ld.w	$a3, $a2, %pc_lo12(fol_ALL)
	pcalau12i	$a4, %pc_hi20(fol_EXIST)
	ld.w	$a2, $a1, 0
	ld.w	$a4, $a4, %pc_lo12(fol_EXIST)
	move	$fp, $a0
	beq	$a3, $a2, .LBB60_2
# %bb.1:                                # %entry
	bne	$a4, $a2, .LBB60_4
	.p2align	4, , 16
.LBB60_2:                               # %if.then
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a1, 16
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 8
	ld.w	$a2, $a1, 0
	beq	$a3, $a2, .LBB60_2
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB60_2 Depth=1
	beq	$a4, $a2, .LBB60_2
.LBB60_4:                               # %if.else
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB60_7
# %bb.5:                                # %if.then6
	slli.d	$a0, $a2, 5
	add.d	$a0, $fp, $a0
	ld.d	$a0, $a0, 8
	beqz	$a0, .LBB60_9
# %bb.6:                                # %if.then10
	ori	$a2, $zero, 1
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(cont_ApplyBindingsModuloMatching)
	jr	$t8
.LBB60_7:                               # %if.else12
	ld.d	$s0, $a1, 16
	beqz	$s0, .LBB60_9
	.p2align	4, , 16
.LBB60_8:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fol_ApplyContextToTermIntern)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 0
	bnez	$s0, .LBB60_8
.LBB60_9:                               # %if.end19
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end60:
	.size	fol_ApplyContextToTermIntern, .Lfunc_end60-fol_ApplyContextToTermIntern
                                        # -- End function
	.globl	fol_SignatureMatchFormula       # -- Begin function fol_SignatureMatchFormula
	.p2align	5
	.type	fol_SignatureMatchFormula,@function
fol_SignatureMatchFormula:              # @fol_SignatureMatchFormula
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
	pcalau12i	$a4, %got_pc_hi20(stack_POINTER)
	pcalau12i	$a3, %got_pc_hi20(term_MARK)
	ld.d	$a3, $a3, %got_pc_lo12(term_MARK)
	ld.d	$s3, $a4, %got_pc_lo12(stack_POINTER)
	ld.w	$s6, $a3, 0
	ld.w	$s4, $s3, 0
	addi.w	$a4, $zero, -1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	move	$s1, $a1
	move	$s0, $a0
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	bne	$s6, $a4, .LBB61_4
# %bb.1:                                # %vector.body.preheader
	pcalau12i	$a0, %got_pc_hi20(term_BIND)
	ld.d	$a0, $a0, %got_pc_lo12(term_BIND)
	addi.d	$a1, $a0, 16
	ori	$a2, $zero, 3000
	.p2align	4, , 16
.LBB61_2:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$zero, $a1, -16
	st.d	$zero, $a1, 0
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 32
	bnez	$a2, .LBB61_2
# %bb.3:                                # %for.body.i
	lu12i.w	$a1, 11
	ori	$a1, $a1, 2944
	stx.d	$zero, $a0, $a1
	ori	$s6, $zero, 1
.LBB61_4:                               # %term_NewMark.exit
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPEMASK)
	addi.d	$a2, $s6, 1
	st.w	$a2, $a3, 0
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a0, $a1, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s6, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(symbol_CONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_CONTEXT)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(fol_EQUALITY)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(term_BIND)
	ld.d	$s8, $a0, %got_pc_lo12(term_BIND)
	pcalau12i	$a0, %got_pc_hi20(stack_STACK)
	ld.d	$s7, $a0, %got_pc_lo12(stack_STACK)
	pcalau12i	$a0, %pc_hi20(fol_TRUE)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(fol_FALSE)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.w	$fp, $s0, 0
	ld.w	$s5, $s1, 0
	bgtz	$fp, .LBB61_19
.LBB61_5:                               # %if.then
	sub.w	$a1, $zero, $fp
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	srl.w	$a0, $a1, $a0
	slli.d	$a2, $a0, 2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a2
	beqz	$a2, .LBB61_7
# %bb.6:                                # %land.lhs.true26
	beq	$a2, $s5, .LBB61_19
	b	.LBB61_32
	.p2align	4, , 16
.LBB61_7:                               # %if.then7
	beqz	$fp, .LBB61_10
# %bb.8:                                # %if.then7
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	and	$a1, $a2, $a1
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB61_10
.LBB61_9:                               # %if.else
	beq	$fp, $s5, .LBB61_19
	b	.LBB61_32
.LBB61_10:                              # %land.lhs.true
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	blt	$a1, $s5, .LBB61_12
# %bb.11:                               # %symbol_IsJunctor.exit42
	sub.w	$a1, $zero, $s5
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	and	$a1, $a2, $a1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB61_9
.LBB61_12:                              # %land.lhs.true12
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(fol_EQUALITY)
	beq	$fp, $a1, .LBB61_9
# %bb.13:                               # %land.lhs.true12
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(fol_TRUE)
	beq	$fp, $a2, .LBB61_9
# %bb.14:                               # %land.lhs.true12
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(fol_FALSE)
	beq	$fp, $a3, .LBB61_9
# %bb.15:                               # %land.lhs.true15
	beq	$s5, $a1, .LBB61_9
# %bb.16:                               # %land.lhs.true15
	beq	$s5, $a2, .LBB61_9
# %bb.17:                               # %land.lhs.true15
	beq	$s5, $a3, .LBB61_9
# %bb.18:                               # %if.then18
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	st.w	$s5, $a0, 0
	.p2align	4, , 16
.LBB61_19:                              # %if.end33
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB61_23 Depth 2
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	move	$s2, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	bne	$s2, $a0, .LBB61_32
# %bb.20:                               # %if.end39
                                        #   in Loop: Header=BB61_19 Depth=1
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB61_26
# %bb.21:                               # %if.then42
                                        #   in Loop: Header=BB61_19 Depth=1
	ld.wu	$a0, $s3, 0
	ld.d	$a1, $s1, 16
	addi.d	$a2, $a0, 1
	st.w	$a2, $s3, 0
	slli.d	$a3, $a0, 3
	stx.d	$a1, $s7, $a3
	ld.d	$a1, $s0, 16
	addi.d	$a0, $a0, 2
	st.w	$a0, $s3, 0
	bstrpick.d	$a0, $a2, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $s7, $a0
.LBB61_22:                              # %if.end66
                                        #   in Loop: Header=BB61_19 Depth=1
	ld.w	$a1, $s3, 0
	ori	$a0, $zero, 1
	beq	$a1, $s4, .LBB61_33
	.p2align	4, , 16
.LBB61_23:                              # %land.rhs
                                        #   Parent Loop BB61_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a2, $a1, -1
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a3, $a2, 3
	ldx.d	$a3, $s7, $a3
	bnez	$a3, .LBB61_25
# %bb.24:                               # %while.body
                                        #   in Loop: Header=BB61_23 Depth=2
	addi.w	$a1, $a1, -2
	st.w	$a1, $s3, 0
	bne	$s4, $a1, .LBB61_23
	b	.LBB61_33
	.p2align	4, , 16
.LBB61_25:                              # %do.cond
                                        #   in Loop: Header=BB61_19 Depth=1
	addi.d	$a0, $a1, -2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $s7, $a0
	ld.d	$a4, $a3, 0
	alsl.d	$a2, $a2, $s7, 3
	ld.d	$s0, $a3, 8
	ld.d	$s1, $a1, 8
	st.d	$a4, $a2, 0
	ld.d	$a1, $a1, 0
	stx.d	$a1, $s7, $a0
	ld.w	$fp, $s0, 0
	ld.w	$s5, $s1, 0
	bgtz	$fp, .LBB61_19
	b	.LBB61_5
	.p2align	4, , 16
.LBB61_26:                              # %if.else45
                                        #   in Loop: Header=BB61_19 Depth=1
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB61_22
# %bb.27:                               # %if.then48
                                        #   in Loop: Header=BB61_19 Depth=1
	slli.d	$a0, $fp, 4
	ldx.w	$a1, $s8, $a0
	alsl.d	$a0, $fp, $s8, 4
	bgeu	$a1, $s6, .LBB61_31
# %bb.28:                               # %if.then51
                                        #   in Loop: Header=BB61_19 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beqz	$a1, .LBB61_30
# %bb.29:                               # %if.then51
                                        #   in Loop: Header=BB61_19 Depth=1
	ori	$a1, $zero, 1
	blt	$s5, $a1, .LBB61_32
.LBB61_30:                              # %if.then55
                                        #   in Loop: Header=BB61_19 Depth=1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$s5, $a0, 8
	b	.LBB61_22
	.p2align	4, , 16
.LBB61_31:                              # %if.else58
                                        #   in Loop: Header=BB61_19 Depth=1
	ld.w	$a0, $a0, 8
	beq	$s5, $a0, .LBB61_22
.LBB61_32:
	move	$a0, $zero
.LBB61_33:                              # %cleanup
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
.Lfunc_end61:
	.size	fol_SignatureMatchFormula, .Lfunc_end61-fol_SignatureMatchFormula
                                        # -- End function
	.globl	fol_SignatureMatch              # -- Begin function fol_SignatureMatch
	.p2align	5
	.type	fol_SignatureMatch,@function
fol_SignatureMatch:                     # @fol_SignatureMatch
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
	pcalau12i	$a4, %got_pc_hi20(term_MARK)
	ld.d	$a4, $a4, %got_pc_lo12(term_MARK)
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$s2, $a1
	move	$s1, $a0
	pcalau12i	$a0, %got_pc_hi20(stack_POINTER)
	ld.d	$s4, $a0, %got_pc_lo12(stack_POINTER)
	ld.w	$a0, $a4, 0
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a2, %got_pc_hi20(symbol_TYPEMASK)
	ld.d	$a2, $a2, %got_pc_lo12(symbol_TYPEMASK)
	ld.w	$s5, $s4, 0
	addi.w	$s6, $a0, -1
	ld.w	$a0, $a1, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.w	$a0, $a2, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s6, 31, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(symbol_CONTEXT)
	ld.d	$fp, $a0, %got_pc_lo12(symbol_CONTEXT)
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(fol_EQUALITY)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(fol_TRUE)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(fol_FALSE)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, -4
	ori	$a0, $a0, 416
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(term_BIND)
	ld.d	$a0, $a0, %got_pc_lo12(term_BIND)
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$s0, $a0, 3680
	ld.w	$s7, $s1, 0
	ld.w	$s8, $s2, 0
	bgtz	$s7, .LBB62_19
.LBB62_1:                               # %if.then
	sub.w	$a1, $zero, $s7
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	srl.w	$a0, $a1, $a0
	slli.d	$a2, $a0, 2
	ldx.w	$a2, $fp, $a2
	beqz	$a2, .LBB62_3
# %bb.2:                                # %land.lhs.true30
	beq	$a2, $s8, .LBB62_19
	b	.LBB62_32
	.p2align	4, , 16
.LBB62_3:                               # %if.then7
	beqz	$s7, .LBB62_6
# %bb.4:                                # %if.then7
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	and	$a1, $a2, $a1
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB62_6
.LBB62_5:                               # %if.else
	beq	$s7, $s8, .LBB62_19
	b	.LBB62_32
.LBB62_6:                               # %land.lhs.true
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	blt	$a1, $s8, .LBB62_8
# %bb.7:                                # %symbol_IsJunctor.exit47
	sub.w	$a1, $zero, $s8
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	and	$a1, $a2, $a1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB62_5
.LBB62_8:                               # %land.lhs.true12
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a1, $a1, %pc_lo12(fol_EQUALITY)
	beq	$s7, $a1, .LBB62_5
# %bb.9:                                # %land.lhs.true12
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a2, %pc_lo12(fol_TRUE)
	beq	$s7, $a2, .LBB62_5
# %bb.10:                               # %land.lhs.true12
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a3, $a3, %pc_lo12(fol_FALSE)
	beq	$s7, $a3, .LBB62_5
# %bb.11:                               # %land.lhs.true15
	beq	$s8, $a1, .LBB62_5
# %bb.12:                               # %land.lhs.true15
	beq	$s8, $a2, .LBB62_5
# %bb.13:                               # %land.lhs.true15
	beq	$s8, $a3, .LBB62_5
# %bb.14:                               # %vector.ph
	alsl.d	$a0, $a0, $fp, 2
	xvreplgr2vr.w	$xr0, $s8
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB62_15:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a3
	add.d	$a2, $fp, $a3
	xvldx	$xr1, $a2, $s0
	xvseq.w	$xr1, $xr1, $xr0
	xvmskltz.w	$xr1, $xr1
	xvpickve2gr.wu	$a2, $xr1, 0
	xvpickve2gr.wu	$a3, $xr1, 4
	bstrins.d	$a2, $a3, 7, 4
	bnez	$a2, .LBB62_17
# %bb.16:                               # %vector.body
                                        #   in Loop: Header=BB62_15 Depth=1
	addi.d	$a3, $a1, 32
	bnez	$a1, .LBB62_15
.LBB62_17:                              # %middle.split
	andi	$a1, $a2, 255
	bnez	$a1, .LBB62_5
# %bb.18:                               # %if.then21
	st.w	$s8, $a0, 0
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $s3, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $s3, 0
	.p2align	4, , 16
.LBB62_19:                              # %if.end37
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB62_23 Depth 2
	ld.d	$a0, $s1, 16
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 16
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	bne	$s3, $a0, .LBB62_32
# %bb.20:                               # %if.end44
                                        #   in Loop: Header=BB62_19 Depth=1
	ld.d	$a0, $s1, 16
	beqz	$a0, .LBB62_26
# %bb.21:                               # %if.then47
                                        #   in Loop: Header=BB62_19 Depth=1
	ld.wu	$a0, $s4, 0
	ld.d	$a1, $s2, 16
	pcalau12i	$a2, %got_pc_hi20(stack_STACK)
	ld.d	$a2, $a2, %got_pc_lo12(stack_STACK)
	addi.d	$a3, $a0, 1
	st.w	$a3, $s4, 0
	slli.d	$a4, $a0, 3
	stx.d	$a1, $a2, $a4
	ld.d	$a1, $s1, 16
	addi.d	$a0, $a0, 2
	st.w	$a0, $s4, 0
	bstrpick.d	$a0, $a3, 31, 0
	slli.d	$a0, $a0, 3
	stx.d	$a1, $a2, $a0
.LBB62_22:                              # %if.end74
                                        #   in Loop: Header=BB62_19 Depth=1
	ld.w	$a1, $s4, 0
	ori	$a0, $zero, 1
	beq	$a1, $s5, .LBB62_33
	.p2align	4, , 16
.LBB62_23:                              # %land.rhs
                                        #   Parent Loop BB62_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a2, %got_pc_hi20(stack_STACK)
	ld.d	$a2, $a2, %got_pc_lo12(stack_STACK)
	addi.d	$a3, $a1, -1
	bstrpick.d	$a3, $a3, 31, 0
	slli.d	$a4, $a3, 3
	ldx.d	$a4, $a2, $a4
	bnez	$a4, .LBB62_25
# %bb.24:                               # %while.body
                                        #   in Loop: Header=BB62_23 Depth=2
	addi.w	$a1, $a1, -2
	st.w	$a1, $s4, 0
	bne	$s5, $a1, .LBB62_23
	b	.LBB62_33
	.p2align	4, , 16
.LBB62_25:                              # %do.cond
                                        #   in Loop: Header=BB62_19 Depth=1
	addi.d	$a0, $a1, -2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $a2, $a0
	ld.d	$a5, $a4, 0
	alsl.d	$a3, $a3, $a2, 3
	ld.d	$s1, $a4, 8
	ld.d	$s2, $a1, 8
	st.d	$a5, $a3, 0
	ld.d	$a1, $a1, 0
	stx.d	$a1, $a2, $a0
	ld.w	$s7, $s1, 0
	ld.w	$s8, $s2, 0
	bgtz	$s7, .LBB62_19
	b	.LBB62_1
	.p2align	4, , 16
.LBB62_26:                              # %if.else50
                                        #   in Loop: Header=BB62_19 Depth=1
	ori	$a0, $zero, 1
	blt	$s7, $a0, .LBB62_22
# %bb.27:                               # %if.then53
                                        #   in Loop: Header=BB62_19 Depth=1
	slli.d	$a0, $s7, 4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a0
	alsl.d	$a0, $s7, $a2, 4
	bgeu	$a1, $s6, .LBB62_31
# %bb.28:                               # %if.then56
                                        #   in Loop: Header=BB62_19 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beqz	$a1, .LBB62_30
# %bb.29:                               # %if.then56
                                        #   in Loop: Header=BB62_19 Depth=1
	ori	$a1, $zero, 1
	blt	$s8, $a1, .LBB62_32
.LBB62_30:                              # %if.then60
                                        #   in Loop: Header=BB62_19 Depth=1
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$s8, $a0, 8
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $s2, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $s2, 0
	b	.LBB62_22
	.p2align	4, , 16
.LBB62_31:                              # %if.else66
                                        #   in Loop: Header=BB62_19 Depth=1
	ld.w	$a0, $a0, 8
	beq	$s8, $a0, .LBB62_22
.LBB62_32:
	move	$a0, $zero
.LBB62_33:                              # %cleanup
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
.Lfunc_end62:
	.size	fol_SignatureMatch, .Lfunc_end62-fol_SignatureMatch
                                        # -- End function
	.globl	fol_CheckFormula                # -- Begin function fol_CheckFormula
	.p2align	5
	.type	fol_CheckFormula,@function
fol_CheckFormula:                       # @fol_CheckFormula
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB63_4
# %bb.1:                                # %while.body.i.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB63_2:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a0, 0
	ld.d	$a3, $a1, 128
	st.d	$a0, $a3, 0
	move	$a0, $a6
	bnez	$a6, .LBB63_2
# %bb.3:                                # %cleanup
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB63_4:                               # %if.end
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(term_CheckTerm)
	jr	$t8
.Lfunc_end63:
	.size	fol_CheckFormula, .Lfunc_end63-fol_CheckFormula
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"forall"
	.size	.L.str, 7

	.type	fol_ALL,@object                 # @fol_ALL
	.bss
	.globl	fol_ALL
	.p2align	2, 0x0
fol_ALL:
	.word	0                               # 0x0
	.size	fol_ALL, 4

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"exists"
	.size	.L.str.1, 7

	.type	fol_EXIST,@object               # @fol_EXIST
	.bss
	.globl	fol_EXIST
	.p2align	2, 0x0
fol_EXIST:
	.word	0                               # 0x0
	.size	fol_EXIST, 4

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"and"
	.size	.L.str.2, 4

	.type	fol_AND,@object                 # @fol_AND
	.bss
	.globl	fol_AND
	.p2align	2, 0x0
fol_AND:
	.word	0                               # 0x0
	.size	fol_AND, 4

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"or"
	.size	.L.str.3, 3

	.type	fol_OR,@object                  # @fol_OR
	.bss
	.globl	fol_OR
	.p2align	2, 0x0
fol_OR:
	.word	0                               # 0x0
	.size	fol_OR, 4

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"not"
	.size	.L.str.4, 4

	.type	fol_NOT,@object                 # @fol_NOT
	.bss
	.globl	fol_NOT
	.p2align	2, 0x0
fol_NOT:
	.word	0                               # 0x0
	.size	fol_NOT, 4

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"implies"
	.size	.L.str.5, 8

	.type	fol_IMPLIES,@object             # @fol_IMPLIES
	.bss
	.globl	fol_IMPLIES
	.p2align	2, 0x0
fol_IMPLIES:
	.word	0                               # 0x0
	.size	fol_IMPLIES, 4

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"implied"
	.size	.L.str.6, 8

	.type	fol_IMPLIED,@object             # @fol_IMPLIED
	.bss
	.globl	fol_IMPLIED
	.p2align	2, 0x0
fol_IMPLIED:
	.word	0                               # 0x0
	.size	fol_IMPLIED, 4

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"equiv"
	.size	.L.str.7, 6

	.type	fol_EQUIV,@object               # @fol_EQUIV
	.bss
	.globl	fol_EQUIV
	.p2align	2, 0x0
fol_EQUIV:
	.word	0                               # 0x0
	.size	fol_EQUIV, 4

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.space	1
	.size	.L.str.8, 1

	.type	fol_VARLIST,@object             # @fol_VARLIST
	.bss
	.globl	fol_VARLIST
	.p2align	2, 0x0
fol_VARLIST:
	.word	0                               # 0x0
	.size	fol_VARLIST, 4

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"equal"
	.size	.L.str.9, 6

	.type	fol_EQUALITY,@object            # @fol_EQUALITY
	.bss
	.globl	fol_EQUALITY
	.p2align	2, 0x0
fol_EQUALITY:
	.word	0                               # 0x0
	.size	fol_EQUALITY, 4

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"true"
	.size	.L.str.10, 5

	.type	fol_TRUE,@object                # @fol_TRUE
	.bss
	.globl	fol_TRUE
	.p2align	2, 0x0
fol_TRUE:
	.word	0                               # 0x0
	.size	fol_TRUE, 4

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"false"
	.size	.L.str.11, 6

	.type	fol_FALSE,@object               # @fol_FALSE
	.bss
	.globl	fol_FALSE
	.p2align	2, 0x0
fol_FALSE:
	.word	0                               # 0x0
	.size	fol_FALSE, 4

	.type	fol_SYMBOLS,@object             # @fol_SYMBOLS
	.globl	fol_SYMBOLS
	.p2align	3, 0x0
fol_SYMBOLS:
	.dword	0
	.size	fol_SYMBOLS, 8

	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"\nset(process_input)."
	.size	.L.str.12, 21

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"\nset(binary_res)."
	.size	.L.str.13, 18

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"\nset(factor)."
	.size	.L.str.14, 14

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"\nclear(print_kept)."
	.size	.L.str.15, 20

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"\nassign(max_seconds, 20)."
	.size	.L.str.16, 26

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\nclear(print_new_demod)."
	.size	.L.str.17, 25

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"\nclear(print_back_demod)."
	.size	.L.str.18, 26

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\nclear(print_back_sub)."
	.size	.L.str.19, 24

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\nset(para_from)."
	.size	.L.str.20, 17

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"\nset(para_into)."
	.size	.L.str.21, 17

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"\nset(para_from_vars)."
	.size	.L.str.22, 22

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"\nset(back_demod)."
	.size	.L.str.23, 18

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"\nset(auto)."
	.size	.L.str.24, 12

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"\nset(auto2)."
	.size	.L.str.25, 13

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"\n\tError in file %s at line %d\n"
	.size	.L.str.26, 31

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"/home/zhaoqi/llvm-test-suite/MultiSource/Applications/SPASS/foldfg.c"
	.size	.L.str.27, 69

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"\n In fol_FPrintOtterOptions: Illegal parameter value %d."
	.size	.L.str.28, 57

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"\n Please report this error via email to spass@mpi-sb.mpg.de including\n the SPASS version, input problem, options, operating system.\n"
	.size	.L.str.29, 133

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"\n\n"
	.size	.L.str.30, 3

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"formula_list(usable).\n"
	.size	.L.str.31, 23

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"all x (x=x).\n"
	.size	.L.str.32, 14

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"\n%% %s \n"
	.size	.L.str.33, 9

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	".\n\n"
	.size	.L.str.34, 4

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"end_of_list.\n\n"
	.size	.L.str.35, 15

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"  functions["
	.size	.L.str.36, 13

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"(%s, %d)"
	.size	.L.str.37, 9

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	", "
	.size	.L.str.38, 3

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"\n\t"
	.size	.L.str.39, 3

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"].\n"
	.size	.L.str.40, 4

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"  predicates["
	.size	.L.str.41, 14

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"(["
	.size	.L.str.42, 3

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"],"
	.size	.L.str.43, 3

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	" > "
	.size	.L.str.44, 4

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"set_precedence("
	.size	.L.str.45, 16

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"%d"
	.size	.L.str.46, 3

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	")."
	.size	.L.str.47, 3

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"begin_problem(Unknown).\n\n"
	.size	.L.str.48, 26

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"list_of_descriptions.\n"
	.size	.L.str.49, 23

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"name(%s).\n"
	.size	.L.str.50, 11

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"author(%s).\n"
	.size	.L.str.51, 13

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"status(%s).\n"
	.size	.L.str.52, 13

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"description(%s).\n"
	.size	.L.str.53, 18

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"list_of_symbols.\n"
	.size	.L.str.54, 18

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"axioms"
	.size	.L.str.55, 7

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"conjectures"
	.size	.L.str.56, 12

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"end_problem.\n"
	.size	.L.str.57, 14

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"\n In fol_TermPolarity: Unknown first-order operator.\n"
	.size	.L.str.58, 54

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	" = "
	.size	.L.str.59, 4

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"all "
	.size	.L.str.60, 5

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"exists "
	.size	.L.str.61, 8

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	" ("
	.size	.L.str.62, 3

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"- ("
	.size	.L.str.64, 4

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	" & "
	.size	.L.str.66, 4

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	" | "
	.size	.L.str.67, 4

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	" <-> "
	.size	.L.str.68, 6

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	" -> "
	.size	.L.str.69, 5

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"list_of_formulae("
	.size	.L.str.70, 18

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	").\n"
	.size	.L.str.71, 4

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"\tformula("
	.size	.L.str.72, 10

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"  "
	.size	.L.str.73, 3

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	",\n"
	.size	.L.str.74, 3

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"],\n"
	.size	.L.str.75, 4

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"(\n"
	.size	.L.str.76, 3

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym term_Copy
	.addrsig_sym fol_IsPredefinedPred
	.addrsig_sym term_Delete
	.addrsig_sym term_Equal
