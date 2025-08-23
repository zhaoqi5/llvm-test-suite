	.file	"defs.c"
	.text
	.globl	def_CreateFromClauses           # -- Begin function def_CreateFromClauses
	.p2align	5
	.type	def_CreateFromClauses,@function
def_CreateFromClauses:                  # @def_CreateFromClauses
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a4
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$s3, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s3, $a0, 0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s0, $a0, 0
	st.d	$a0, $s4, 24
	st.d	$zero, $s4, 32
	st.w	$fp, $s4, 40
	move	$a0, $s4
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end0:
	.size	def_CreateFromClauses, .Lfunc_end0-def_CreateFromClauses
                                        # -- End function
	.globl	def_CreateFromTerm              # -- Begin function def_CreateFromTerm
	.p2align	5
	.type	def_CreateFromTerm,@function
def_CreateFromTerm:                     # @def_CreateFromTerm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$s2, $a0, 0
	st.d	$s1, $a0, 8
	st.d	$s0, $a0, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	st.d	$a0, $s3, 24
	st.d	$fp, $s3, 32
	st.w	$zero, $s3, 40
	move	$a0, $s3
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	def_CreateFromTerm, .Lfunc_end1-def_CreateFromTerm
                                        # -- End function
	.globl	def_Delete                      # -- Begin function def_Delete
	.p2align	5
	.type	def_Delete,@function
def_Delete:                             # @def_Delete
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	ld.d	$s0, $a0, 8
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB2_8
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 24
	ld.d	$a1, $a0, 8
	beqz	$a1, .LBB2_5
# %bb.2:                                # %while.body.i.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB2_3:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a1, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a1, 0
	ld.d	$a3, $a0, 128
	st.d	$a1, $a3, 0
	move	$a1, $a6
	bnez	$a6, .LBB2_3
# %bb.4:                                # %list_Delete.exit.loopexit.i
	ld.d	$a0, $fp, 24
.LBB2_5:                                # %list_Delete.exit.i
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB2_11
# %bb.6:                                # %while.body.i10.i.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB2_7:                                # %while.body.i10.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a0, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $a1, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $a1, 0
	ld.d	$a3, $a0, 128
	st.d	$a1, $a3, 0
	move	$a1, $a6
	bnez	$a6, .LBB2_7
	b	.LBB2_10
.LBB2_8:                                # %if.else
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB2_10
# %bb.9:                                # %if.then.i
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB2_10:                               # %if.end.sink.split
	ld.d	$a0, $fp, 24
.LBB2_11:                               # %if.end
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a2, $a1, 128
	st.d	$a0, $a2, 0
	ld.d	$a0, $a1, 384
	ld.w	$a2, $a0, 32
	ld.d	$a4, $a3, 0
	add.d	$a2, $a4, $a2
	st.d	$a2, $a3, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 0
	ld.d	$a0, $a1, 384
	st.d	$fp, $a0, 0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	def_Delete, .Lfunc_end2-def_Delete
                                        # -- End function
	.globl	def_PredicateOccurrences        # -- Begin function def_PredicateOccurrences
	.p2align	5
	.type	def_PredicateOccurrences,@function
def_PredicateOccurrences:               # @def_PredicateOccurrences
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a2, %got_pc_hi20(fol_ALL)
	ld.d	$a2, $a2, %got_pc_lo12(fol_ALL)
	pcalau12i	$a3, %got_pc_hi20(fol_EXIST)
	ld.d	$a4, $a3, %got_pc_lo12(fol_EXIST)
	ld.w	$a3, $a2, 0
	ld.w	$a2, $a0, 0
	ld.w	$a4, $a4, 0
	move	$fp, $a1
	beq	$a3, $a2, .LBB3_2
# %bb.1:                                # %entry
	bne	$a4, $a2, .LBB3_4
	.p2align	4, , 16
.LBB3_2:                                # %if.then
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $a0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	ld.w	$a2, $a0, 0
	beq	$a3, $a2, .LBB3_2
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB3_2 Depth=1
	beq	$a4, $a2, .LBB3_2
.LBB3_4:                                # %if.end
	pcalau12i	$a1, %got_pc_hi20(fol_AND)
	ld.d	$a1, $a1, %got_pc_lo12(fol_AND)
	pcalau12i	$a3, %got_pc_hi20(fol_NOT)
	ld.d	$a3, $a3, %got_pc_lo12(fol_NOT)
	ld.w	$a1, $a1, 0
	ld.w	$a3, $a3, 0
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	xor	$a3, $a2, $a3
	sltui	$a3, $a3, 1
	or	$a1, $a1, $a3
	bnez	$a1, .LBB3_11
# %bb.5:                                # %if.end
	pcalau12i	$a1, %got_pc_hi20(fol_OR)
	ld.d	$a1, $a1, %got_pc_lo12(fol_OR)
	ld.w	$a1, $a1, 0
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	bnez	$a1, .LBB3_11
# %bb.6:                                # %if.end
	pcalau12i	$a1, %got_pc_hi20(fol_IMPLIED)
	ld.d	$a1, $a1, %got_pc_lo12(fol_IMPLIED)
	ld.w	$a1, $a1, 0
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	bnez	$a1, .LBB3_11
# %bb.7:                                # %if.end
	pcalau12i	$a1, %got_pc_hi20(fol_VARLIST)
	ld.d	$a1, $a1, %got_pc_lo12(fol_VARLIST)
	ld.w	$a1, $a1, 0
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	bnez	$a1, .LBB3_11
# %bb.8:                                # %if.end
	pcalau12i	$a1, %got_pc_hi20(fol_IMPLIES)
	ld.d	$a1, $a1, %got_pc_lo12(fol_IMPLIES)
	ld.w	$a1, $a1, 0
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	bnez	$a1, .LBB3_11
# %bb.9:                                # %if.end
	pcalau12i	$a1, %got_pc_hi20(fol_EQUIV)
	ld.d	$a1, $a1, %got_pc_lo12(fol_EQUIV)
	ld.w	$a1, $a1, 0
	beq	$a2, $a1, .LBB3_11
# %bb.10:                               # %if.end21
	xor	$a0, $a2, $fp
	sltui	$s0, $a0, 1
	b	.LBB3_14
.LBB3_11:                               # %if.then11
	move	$s0, $zero
	addi.d	$s1, $a0, 16
	ori	$s2, $zero, 1
	.p2align	4, , 16
.LBB3_12:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB3_14
# %bb.13:                               # %for.body
                                        #   in Loop: Header=BB3_12 Depth=1
	ld.d	$a0, $s1, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(def_PredicateOccurrences)
	jirl	$ra, $ra, 0
	add.w	$s0, $a0, $s0
	bge	$s2, $s0, .LBB3_12
.LBB3_14:                               # %return
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	def_PredicateOccurrences, .Lfunc_end3-def_PredicateOccurrences
                                        # -- End function
	.globl	def_ExtractDefsFromTerm         # -- Begin function def_ExtractDefsFromTerm
	.p2align	5
	.type	def_ExtractDefsFromTerm,@function
def_ExtractDefsFromTerm:                # @def_ExtractDefsFromTerm
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
	move	$fp, $a1
	move	$s1, $a0
	move	$s0, $zero
	pcalau12i	$a0, %got_pc_hi20(fol_ALL)
	ld.d	$s5, $a0, %got_pc_lo12(fol_ALL)
	pcalau12i	$a0, %got_pc_hi20(fol_EXIST)
	ld.d	$s6, $a0, %got_pc_lo12(fol_EXIST)
	pcalau12i	$a0, %got_pc_hi20(fol_NOT)
	ld.d	$s7, $a0, %got_pc_lo12(fol_NOT)
	ori	$s8, $zero, 1
	addi.w	$s3, $zero, -1
	move	$s2, $s1
	ori	$s4, $zero, 1
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_1:                                #   in Loop: Header=BB4_4 Depth=1
	move	$s0, $a0
.LBB4_2:                                # %if.end22
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s2, 16
.LBB4_3:                                # %if.end22
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $a0, 0
	ld.d	$s2, $a0, 8
.LBB4_4:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
	ld.w	$a0, $s2, 0
	ld.w	$a1, $s5, 0
	bne	$a0, $a1, .LBB4_6
# %bb.5:                                # %while.body
                                        #   in Loop: Header=BB4_4 Depth=1
	beq	$s4, $s8, .LBB4_8
.LBB4_6:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a1, $s6, 0
	bne	$a0, $a1, .LBB4_13
# %bb.7:                                # %lor.lhs.false
                                        #   in Loop: Header=BB4_4 Depth=1
	bne	$s4, $s3, .LBB4_13
.LBB4_8:                                # %if.then
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $s2, 16
	ld.d	$a0, $a0, 8
	ld.d	$a0, $a0, 16
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB4_1
# %bb.9:                                # %if.end.i
                                        #   in Loop: Header=BB4_4 Depth=1
	beqz	$a0, .LBB4_2
# %bb.10:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$a2, $s0
	.p2align	4, , 16
.LBB4_11:                               # %for.cond.i
                                        #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB4_11
# %bb.12:                               # %for.end.i
                                        #   in Loop: Header=BB4_4 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB4_2
	.p2align	4, , 16
.LBB4_13:                               # %if.else
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.w	$a1, $s7, 0
	bne	$a0, $a1, .LBB4_15
# %bb.14:                               # %if.then19
                                        #   in Loop: Header=BB4_4 Depth=1
	sub.w	$s4, $zero, $s4
	addi.d	$a0, $s2, 16
	b	.LBB4_3
.LBB4_15:                               # %while.end
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$a1, $a0, %got_pc_lo12(fol_AND)
	ld.w	$a0, $s2, 0
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB4_17
# %bb.16:                               # %while.end
	ori	$a1, $zero, 1
	beq	$s4, $a1, .LBB4_19
.LBB4_17:                               # %lor.lhs.false30
	pcalau12i	$a1, %got_pc_hi20(fol_OR)
	ld.d	$a1, $a1, %got_pc_lo12(fol_OR)
	ld.w	$a1, $a1, 0
	bne	$a0, $a1, .LBB4_27
# %bb.18:                               # %lor.lhs.false30
	bne	$s4, $s3, .LBB4_27
.LBB4_19:                               # %if.then37
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 0
	pcaddu18i	$ra, %call36(cnf_Flatten)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$s6, $a0, 16
	beqz	$s6, .LBB4_25
# %bb.20:                               # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$s2, $a0, %got_pc_lo12(term_Copy)
	move	$a0, $zero
	.p2align	4, , 16
.LBB4_21:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s3, $s5, 0
	move	$s7, $a0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(list_CopyWithElement)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s6, 8
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s8, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fol_CreateQuantifierAddFather)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s3, $a0, 8
	st.d	$s7, $a0, 0
	ld.d	$s6, $s6, 0
	bnez	$s6, .LBB4_21
# %bb.22:                               # %for.end
	ld.d	$a1, $s1, 16
	beqz	$a1, .LBB4_26
# %bb.23:                               # %while.body.i.preheader
	pcalau12i	$a2, %got_pc_hi20(memory_ARRAY)
	ld.d	$a2, $a2, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB4_24:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a4, $a2, 128
	ld.w	$a5, $a4, 32
	ld.d	$a6, $a3, 0
	ld.d	$a7, $a1, 0
	add.d	$a5, $a6, $a5
	st.d	$a5, $a3, 0
	ld.d	$a4, $a4, 0
	st.d	$a4, $a1, 0
	ld.d	$a4, $a2, 128
	st.d	$a1, $a4, 0
	move	$a1, $a7
	bnez	$a7, .LBB4_24
	b	.LBB4_26
.LBB4_25:
	move	$a0, $zero
.LBB4_26:                               # %list_Delete.exit
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 256
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s1, 0
	ld.d	$a1, $a1, 256
	st.d	$s1, $a1, 0
	bnez	$s0, .LBB4_28
	b	.LBB4_30
.LBB4_27:                               # %if.else53
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$zero, $a0, 0
	beqz	$s0, .LBB4_30
.LBB4_28:                               # %while.body.i66.preheader
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB4_29:                               # %while.body.i66
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, 128
	ld.w	$a4, $a3, 32
	ld.d	$a5, $a2, 0
	ld.d	$a6, $s0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a2, 0
	ld.d	$a3, $a3, 0
	st.d	$a3, $s0, 0
	ld.d	$a3, $a1, 128
	st.d	$s0, $a3, 0
	move	$s0, $a6
	bnez	$a6, .LBB4_29
.LBB4_30:                               # %list_Delete.exit73
	beqz	$a0, .LBB4_47
# %bb.31:                               # %for.body62.preheader
	pcalau12i	$a1, %got_pc_hi20(fol_EQUALITY)
	ld.d	$s6, $a1, %got_pc_lo12(fol_EQUALITY)
	move	$s0, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	ori	$s7, $zero, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s8, $a0
	b	.LBB4_36
	.p2align	4, , 16
.LBB4_32:                               # %if.then83
                                        #   in Loop: Header=BB4_36 Depth=1
	ori	$a0, $a1, 2
.LBB4_33:                               # %if.end85
                                        #   in Loop: Header=BB4_36 Depth=1
	st.w	$a0, $s2, 44
.LBB4_34:                               # %if.end85
                                        #   in Loop: Header=BB4_36 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$s0, $a0, 0
	move	$s0, $a0
.LBB4_35:                               # %if.end87
                                        #   in Loop: Header=BB4_36 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s8, 0
	beqz	$s8, .LBB4_45
.LBB4_36:                               # %for.body62
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s1, $s8, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 48
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cnf_ContainsDefinition)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_35
# %bb.37:                               # %if.then66
                                        #   in Loop: Header=BB4_36 Depth=1
	ld.d	$a1, $sp, 48
	addi.d	$a2, $sp, 40
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cnf_DefConvert)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	ld.d	$a1, $a1, 8
	ld.d	$a1, $a1, 16
	ld.d	$a1, $a1, 0
	ld.d	$a1, $a1, 8
	move	$s1, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 40
	move	$s4, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	st.d	$s3, $a0, 0
	st.d	$s4, $a0, 8
	st.d	$s5, $a0, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	ld.d	$s3, $sp, 48
	st.d	$a0, $s2, 24
	st.d	$fp, $s2, 32
	st.w	$zero, $s2, 40
	ld.w	$a1, $s3, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(def_PredicateOccurrences)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s2, 44
	blt	$a0, $s7, .LBB4_40
# %bb.38:                               # %if.then76
                                        #   in Loop: Header=BB4_36 Depth=1
	andi	$a0, $a1, 1
	beqz	$a0, .LBB4_42
# %bb.39:                               # %if.then.i
                                        #   in Loop: Header=BB4_36 Depth=1
	addi.d	$a1, $a1, -1
	b	.LBB4_41
	.p2align	4, , 16
.LBB4_40:                               # %if.else77
                                        #   in Loop: Header=BB4_36 Depth=1
	ori	$a1, $a1, 1
.LBB4_41:                               # %if.end78.sink.split
                                        #   in Loop: Header=BB4_36 Depth=1
	st.w	$a1, $s2, 44
.LBB4_42:                               # %if.end78
                                        #   in Loop: Header=BB4_36 Depth=1
	ld.w	$a0, $s3, 0
	ld.w	$a2, $s6, 0
	beq	$a0, $a2, .LBB4_32
# %bb.43:                               # %if.else84
                                        #   in Loop: Header=BB4_36 Depth=1
	andi	$a0, $a1, 2
	beqz	$a0, .LBB4_34
# %bb.44:                               # %if.then.i86
                                        #   in Loop: Header=BB4_36 Depth=1
	addi.d	$a0, $a1, -2
	b	.LBB4_33
.LBB4_45:                               # %while.body.i93.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB4_46:                               # %while.body.i93
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a0, 128
	ld.w	$a3, $a2, 32
	ld.d	$a4, $a1, 0
	ld.d	$a5, $s5, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a1, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $s5, 0
	ld.d	$a2, $a0, 128
	st.d	$s5, $a2, 0
	move	$s5, $a5
	bnez	$a5, .LBB4_46
	b	.LBB4_48
.LBB4_47:
	move	$s0, $zero
.LBB4_48:                               # %list_Delete.exit100
	move	$a0, $s0
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
.Lfunc_end4:
	.size	def_ExtractDefsFromTerm, .Lfunc_end4-def_ExtractDefsFromTerm
                                        # -- End function
	.globl	def_ExtractDefsFromClauselist   # -- Begin function def_ExtractDefsFromClauselist
	.p2align	5
	.type	def_ExtractDefsFromClauselist,@function
def_ExtractDefsFromClauselist:          # @def_ExtractDefsFromClauselist
# %bb.0:                                # %entry
	beqz	$a1, .LBB5_47
# %bb.1:                                # %for.body.lr.ph
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
	move	$s1, $a1
	ld.d	$s2, $a0, 112
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $a0, 104
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$fp, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s0, $a0, %got_pc_lo12(memory_FREEDBYTES)
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	move	$s4, $a1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                # %list_Delete.exit118
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $fp, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s0, 0
	ld.d	$a3, $sp, 72
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a3, 0
	ld.d	$a0, $fp, 128
	st.d	$a3, $a0, 0
.LBB5_3:                                # %if.end89
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB5_34
.LBB5_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
                                        #     Child Loop BB5_22 Depth 2
                                        #     Child Loop BB5_32 Depth 2
                                        #     Child Loop BB5_14 Depth 2
                                        #     Child Loop BB5_16 Depth 2
                                        #     Child Loop BB5_19 Depth 2
                                        #     Child Loop BB5_29 Depth 2
	ld.d	$s3, $s4, 8
	addi.d	$a3, $sp, 84
	addi.d	$a4, $sp, 72
	move	$a0, $s3
	move	$a1, $s2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(clause_ContainsPotPredDef)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_3
# %bb.5:                                # %for.body13.lr.ph
                                        #   in Loop: Header=BB5_4 Depth=1
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	move	$s7, $zero
	move	$s6, $zero
	move	$s2, $s1
	.p2align	4, , 16
.LBB5_6:                                # %for.body13
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $sp, 84
	ld.d	$a1, $s3, 56
	slli.d	$a0, $a0, 3
	ldx.d	$a1, $a1, $a0
	ld.d	$a0, $s2, 8
	ld.d	$a1, $a1, 24
	ld.d	$a3, $sp, 72
	addi.d	$a2, $sp, 68
	pcaddu18i	$ra, %call36(clause_IsPartOfDefinition)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	beqz	$a0, .LBB5_10
# %bb.7:                                # %if.then18
                                        #   in Loop: Header=BB5_6 Depth=2
	ld.d	$s8, $s2, 8
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.w	$s1, $sp, 68
	move	$s4, $a0
	st.d	$s8, $a0, 8
	st.d	$s6, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s7, $a0, 0
	ld.d	$a1, $sp, 72
	st.d	$s1, $a0, 8
	ld.d	$a2, $a1, 8
	bnez	$a2, .LBB5_9
# %bb.8:                                # %land.lhs.true
                                        #   in Loop: Header=BB5_6 Depth=2
	ld.d	$a1, $a1, 0
	sltu	$s5, $zero, $a1
.LBB5_9:                                # %if.end29
                                        #   in Loop: Header=BB5_6 Depth=2
	move	$s6, $s4
	move	$s7, $a0
.LBB5_10:                               # %if.end29
                                        #   in Loop: Header=BB5_6 Depth=2
	ld.d	$s2, $s2, 0
	beqz	$s2, .LBB5_12
# %bb.11:                               # %if.end29
                                        #   in Loop: Header=BB5_6 Depth=2
	bnez	$s5, .LBB5_6
.LBB5_12:                               # %for.end
                                        #   in Loop: Header=BB5_4 Depth=1
	beqz	$s5, .LBB5_20
# %bb.13:                               # %if.else
                                        #   in Loop: Header=BB5_4 Depth=1
	beqz	$s7, .LBB5_15
	.p2align	4, , 16
.LBB5_14:                               # %while.body.i
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s0, 0
	ld.d	$a3, $s7, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s7, 0
	ld.d	$a0, $fp, 128
	st.d	$s7, $a0, 0
	move	$s7, $a3
	bnez	$a3, .LBB5_14
.LBB5_15:                               # %list_Delete.exit
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a1, $sp, 72
	ld.d	$a0, $a1, 0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_18
	.p2align	4, , 16
.LBB5_16:                               # %while.body.i93
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s0, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $fp, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB5_16
# %bb.17:                               # %list_Delete.exit100.loopexit
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a1, $sp, 72
.LBB5_18:                               # %list_Delete.exit100
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $a1, 8
	beqz	$a0, .LBB5_28
	.p2align	4, , 16
.LBB5_19:                               # %while.body.i102
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s0, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s0, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $fp, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB5_19
	b	.LBB5_28
	.p2align	4, , 16
.LBB5_20:                               # %if.then32
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a0, $s3, 48
	bstrpick.d	$s2, $a0, 3, 3
	beqz	$s6, .LBB5_23
# %bb.21:                               # %for.body39.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$s5, $zero
	move	$s4, $s6
	ori	$s8, $zero, 1
	.p2align	4, , 16
.LBB5_22:                               # %for.body39
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 8
	ld.w	$s1, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s5, $a0, 0
	ld.d	$a1, $s4, 8
	ld.bu	$a1, $a1, 48
	andi	$a1, $a1, 8
	ld.d	$s4, $s4, 0
	sltui	$a1, $a1, 1
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $s2, $a1
	or	$s2, $a1, $a2
	move	$s5, $a0
	bnez	$s4, .LBB5_22
	b	.LBB5_24
.LBB5_23:                               #   in Loop: Header=BB5_4 Depth=1
	move	$a0, $zero
.LBB5_24:                               # %for.end51
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$s1, $s3, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	ld.wu	$s8, $sp, 84
	st.d	$s1, $a0, 8
	move	$s1, $a0
	st.d	$s4, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s8, $a0, 8
	st.d	$s7, $a0, 0
	ld.w	$a0, $sp, 84
	ld.d	$a1, $s3, 56
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 64
	ld.w	$a2, $s3, 68
	ld.w	$a3, $s3, 72
	add.w	$a4, $a2, $a1
	sub.w	$a5, $zero, $a3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $zero
	bne	$a4, $a5, .LBB5_30
.LBB5_25:                               # %for.end72
                                        #   in Loop: Header=BB5_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(fol_OR)
	ld.d	$a0, $a0, %got_pc_lo12(fol_OR)
	ld.w	$a0, $a0, 0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(term_CreateAddFather)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(fol_NOT)
	ld.d	$a1, $a1, %got_pc_lo12(fol_NOT)
	ld.w	$s3, $a1, 0
	move	$s7, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s7, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(cnf_NegationNormalFormula)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$s7, $a0, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$a0, $s3, 8
	st.d	$zero, $s3, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s5, $a0, 0
	st.d	$a0, $s3, 24
	st.d	$zero, $s3, 32
	st.w	$s2, $s3, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s3, $a0, 8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $s4, 0
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $s2, 148
	beqz	$a0, .LBB5_27
# %bb.26:                               # %if.then83
                                        #   in Loop: Header=BB5_4 Depth=1
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 23
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(def_Print)
	jirl	$ra, $ra, 0
.LBB5_27:                               #   in Loop: Header=BB5_4 Depth=1
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
.LBB5_28:                               # %if.end88
                                        #   in Loop: Header=BB5_4 Depth=1
	beqz	$s6, .LBB5_2
	.p2align	4, , 16
.LBB5_29:                               # %while.body.i111
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $fp, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s0, 0
	ld.d	$a3, $s6, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s0, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s6, 0
	ld.d	$a0, $fp, 128
	st.d	$s6, $a0, 0
	move	$s6, $a3
	bnez	$a3, .LBB5_29
	b	.LBB5_2
.LBB5_30:                               # %for.body63.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$s4, $zero
	move	$s7, $zero
	b	.LBB5_32
	.p2align	4, , 16
.LBB5_31:                               # %for.inc71
                                        #   in Loop: Header=BB5_32 Depth=2
	addi.w	$s4, $s4, 1
	add.d	$a0, $a2, $a1
	add.w	$a0, $a0, $a3
	bgeu	$s4, $a0, .LBB5_25
.LBB5_32:                               # %for.body63
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $sp, 84
	beq	$s4, $a0, .LBB5_31
# %bb.33:                               # %if.then66
                                        #   in Loop: Header=BB5_32 Depth=2
	ld.d	$a0, $s3, 56
	slli.d	$a1, $s4, 3
	ldx.d	$a0, $a0, $a1
	ld.d	$a0, $a0, 24
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s8, $a0, 8
	st.d	$s7, $a0, 0
	ld.w	$a1, $s3, 64
	ld.w	$a2, $s3, 68
	ld.w	$a3, $s3, 72
	move	$s7, $a0
	b	.LBB5_31
.LBB5_34:                               # %for.end92
	ld.w	$a0, $s2, 148
	beqz	$a0, .LBB5_38
# %bb.35:                               # %for.end92
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_38
# %bb.36:                               # %if.then98
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$fp, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s0, $a0, %pc_lo12(.L.str.2)
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_37:                               # %for.body104
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(def_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $fp, 0
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB5_37
.LBB5_38:                               # %if.end111
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	beqz	$a5, .LBB5_41
# %bb.39:                               # %for.body116.lr.ph
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a1, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_SIGNATURE)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	move	$a2, $a5
	.p2align	4, , 16
.LBB5_40:                               # %for.body116
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 8
	ld.d	$a3, $a3, 8
	ld.w	$a3, $a3, 0
	sub.d	$a3, $zero, $a3
	sra.w	$a3, $a3, $a0
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	ld.w	$a4, $a3, 20
	ori	$a4, $a4, 128
	st.w	$a4, $a3, 20
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB5_40
.LBB5_41:                               # %for.end122
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a3, $a0, 0
	sltui	$a1, $a3, 1
	masknez	$a2, $a3, $a1
	maskeqz	$a1, $a5, $a1
	or	$a1, $a1, $a2
	beqz	$a3, .LBB5_46
# %bb.42:                               # %for.end122
	beqz	$a5, .LBB5_46
# %bb.43:
	move	$a1, $a3
	.p2align	4, , 16
.LBB5_44:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB5_44
# %bb.45:                               # %for.end.i
	st.d	$a5, $a2, 0
	move	$a1, $a3
.LBB5_46:
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
	st.d	$a1, $a0, 0
	ret
.LBB5_47:                               # %for.end122.thread
	ld.d	$a1, $a0, 0
	st.d	$a1, $a0, 0
	ret
.Lfunc_end5:
	.size	def_ExtractDefsFromClauselist, .Lfunc_end5-def_ExtractDefsFromClauselist
                                        # -- End function
	.globl	def_Print                       # -- Begin function def_Print
	.p2align	5
	.type	def_Print,@function
def_Print:                              # @def_Print
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(stdout)
	ld.d	$s1, $a1, %got_pc_lo12(stdout)
	ld.d	$a3, $s1, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(fol_PrettyPrint)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	pcaddu18i	$ra, %call36(fol_PrettyPrint)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ld.d	$a0, $a0, 8
	ld.d	$a3, $s1, 0
	beqz	$a0, .LBB6_6
# %bb.1:                                # %if.then
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s2, $fp, 24
	ld.d	$s3, $s2, 8
	beqz	$s3, .LBB6_4
# %bb.2:                                # %for.body.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$s0, $a0, %pc_lo12(.L.str.6)
	.p2align	4, , 16
.LBB6_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s2, 0
	ld.w	$a1, $s3, 8
	ld.w	$a2, $s2, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$s3, $s3, 0
	bnez	$s3, .LBB6_3
.LBB6_4:                                # %for.end
	ld.w	$a0, $fp, 40
	ld.d	$a3, $s1, 0
	beqz	$a0, .LBB6_8
# %bb.5:                                # %if.then17
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 33
	b	.LBB6_10
.LBB6_6:                                # %if.else20
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 8
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	ld.d	$a1, $s1, 0
	pcaddu18i	$ra, %call36(fputs)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB6_9
# %bb.7:                                # %if.then26
	pcaddu18i	$ra, %call36(fol_PrettyPrint)
	jirl	$ra, $ra, 0
	b	.LBB6_11
.LBB6_8:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 37
	b	.LBB6_10
.LBB6_9:                                # %if.else28
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 8
.LBB6_10:                               # %if.end31
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
.LBB6_11:                               # %if.end31
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	ori	$a1, $zero, 13
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 44
	andi	$a1, $a0, 2
	bnez	$a1, .LBB6_14
# %bb.12:                               # %lor.lhs.false
	andi	$a0, $a0, 1
	bnez	$a0, .LBB6_16
# %bb.13:                               # %if.else48
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	ori	$a1, $zero, 6
	b	.LBB6_17
.LBB6_14:                               # %if.end42
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	ori	$a1, $zero, 10
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 44
	andi	$a0, $a0, 1
	bnez	$a0, .LBB6_16
# %bb.15:                               # %if.end50
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_16:                               # %if.then45
	ld.d	$a3, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ori	$a1, $zero, 25
.LBB6_17:                               # %if.then45
	ori	$a2, $zero, 1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end6:
	.size	def_Print, .Lfunc_end6-def_Print
                                        # -- End function
	.globl	def_ApplyDefToTermOnce          # -- Begin function def_ApplyDefToTermOnce
	.p2align	5
	.type	def_ApplyDefToTermOnce,@function
def_ApplyDefToTermOnce:                 # @def_ApplyDefToTermOnce
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
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s3, $a0
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s7, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s8, $a0, %got_pc_lo12(memory_FREEDBYTES)
	ori	$a0, $zero, 1
	st.w	$a0, $a4, 0
	move	$s5, $a1
	.p2align	4, , 16
.LBB7_1:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
                                        #     Child Loop BB7_8 Depth 2
                                        #     Child Loop BB7_10 Depth 2
                                        #     Child Loop BB7_12 Depth 2
	move	$s4, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 8
	st.d	$zero, $sp, 40
	st.d	$zero, $sp, 48
	ld.w	$a1, $a0, 0
	addi.d	$a2, $sp, 64
	addi.d	$a3, $sp, 56
	addi.d	$a4, $sp, 48
	addi.d	$a5, $sp, 40
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cnf_ContainsPredicate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_16
# %bb.2:                                # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	st.w	$zero, $s0, 0
	ld.d	$a0, $s3, 16
	st.w	$zero, $sp, 36
	move	$a1, $zero
	pcaddu18i	$ra, %call36(term_Equal)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_9
# %bb.3:                                # %if.then9
                                        #   in Loop: Header=BB7_1 Depth=1
	ld.d	$s6, $s3, 8
	ld.d	$a0, $s3, 0
	ori	$a1, $zero, 1
	st.w	$a1, $sp, 36
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 64
	move	$a1, $a0
	move	$a0, $s6
	move	$a2, $s5
	move	$a4, $s2
	pcaddu18i	$ra, %call36(cnf_ApplyDefinitionOnce)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beq	$s4, $fp, .LBB7_5
# %bb.4:                                # %if.then14
                                        #   in Loop: Header=BB7_1 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	ld.d	$a0, $sp, 48
	beqz	$a0, .LBB7_7
	.p2align	4, , 16
.LBB7_6:                                # %while.body.i
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s8, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s7, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB7_6
.LBB7_7:                                # %list_Delete.exit
                                        #   in Loop: Header=BB7_1 Depth=1
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB7_1
	.p2align	4, , 16
.LBB7_8:                                # %while.body.i42
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s8, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s7, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB7_8
	b	.LBB7_1
	.p2align	4, , 16
.LBB7_9:                                # %if.else
                                        #   in Loop: Header=BB7_1 Depth=1
	ld.d	$a0, $s3, 16
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s3, 8
	ld.d	$a4, $sp, 64
	ld.d	$a1, $sp, 56
	ld.d	$a3, $a2, 16
	ld.d	$a4, $a4, 16
	ld.d	$a5, $sp, 48
	ld.d	$a6, $sp, 40
	move	$a2, $a0
	addi.d	$a0, $sp, 36
	st.d	$a0, $sp, 8
	st.d	$s1, $sp, 0
	move	$a0, $s5
	move	$a7, $s2
	pcaddu18i	$ra, %call36(cnf_DefTargetConvert)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 48
	move	$s5, $a0
	beqz	$a1, .LBB7_11
	.p2align	4, , 16
.LBB7_10:                               # %while.body.i51
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s7, 128
	ld.w	$a2, $a0, 32
	ld.d	$a3, $s8, 0
	ld.d	$a4, $a1, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s7, 128
	st.d	$a1, $a0, 0
	move	$a1, $a4
	bnez	$a4, .LBB7_10
.LBB7_11:                               # %list_Delete.exit58
                                        #   in Loop: Header=BB7_1 Depth=1
	ld.d	$a0, $sp, 40
	beqz	$a0, .LBB7_13
	.p2align	4, , 16
.LBB7_12:                               # %while.body.i60
                                        #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s7, 128
	ld.w	$a2, $a1, 32
	ld.d	$a3, $s8, 0
	ld.d	$a4, $a0, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $a0, 0
	ld.d	$a1, $s7, 128
	st.d	$a0, $a1, 0
	move	$a0, $a4
	bnez	$a4, .LBB7_12
.LBB7_13:                               # %list_Delete.exit67
                                        #   in Loop: Header=BB7_1 Depth=1
	ld.w	$a0, $sp, 36
	beqz	$a0, .LBB7_18
# %bb.14:                               # %if.then22
                                        #   in Loop: Header=BB7_1 Depth=1
	ld.d	$s6, $s3, 8
	ld.d	$a0, $s3, 0
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 64
	move	$a1, $a0
	move	$a0, $s6
	move	$a2, $s5
	move	$a4, $s2
	pcaddu18i	$ra, %call36(cnf_ApplyDefinitionOnce)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beq	$s4, $fp, .LBB7_1
# %bb.15:                               # %if.then28
                                        #   in Loop: Header=BB7_1 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	b	.LBB7_1
.LBB7_16:                               # %if.else37
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	beq	$s4, $fp, .LBB7_19
.LBB7_17:                               # %cleanup.sink.split
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cnf_ObviousSimplifications)
	jirl	$ra, $ra, 0
	b	.LBB7_20
.LBB7_18:                               # %if.else30
	move	$a0, $s5
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	bne	$s4, $fp, .LBB7_17
.LBB7_19:
	move	$a0, $zero
.LBB7_20:                               # %cleanup
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
.Lfunc_end7:
	.size	def_ApplyDefToTermOnce, .Lfunc_end7-def_ApplyDefToTermOnce
                                        # -- End function
	.globl	def_ApplyDefToTermExhaustive    # -- Begin function def_ApplyDefToTermExhaustive
	.p2align	5
	.type	def_ApplyDefToTermExhaustive,@function
def_ApplyDefToTermExhaustive:           # @def_ApplyDefToTermExhaustive
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
	ld.d	$s5, $a0, 0
	move	$fp, $a1
	move	$s3, $a1
	beqz	$s5, .LBB8_9
# %bb.1:                                # %for.body.preheader
	move	$s0, $a0
	ld.d	$s1, $a0, 112
	ld.d	$s2, $a0, 104
	ori	$s6, $zero, 1
	move	$s3, $fp
	.p2align	4, , 16
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 8
	addi.d	$a4, $sp, 20
	move	$a1, $s3
	move	$a2, $s1
	move	$a3, $s2
	pcaddu18i	$ra, %call36(def_ApplyDefToTermOnce)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_6
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB8_2 Depth=1
	move	$s4, $a0
	beq	$s3, $fp, .LBB8_5
# %bb.4:                                # %if.then9
                                        #   in Loop: Header=BB8_2 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB8_5:                                # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	move	$s6, $zero
	move	$s3, $s4
.LBB8_6:                                # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$s5, $s5, 0
	bnez	$s5, .LBB8_2
# %bb.7:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB8_2 Depth=1
	bnez	$s6, .LBB8_9
# %bb.8:                                # %for.cond.preheaderthread-pre-split
                                        #   in Loop: Header=BB8_2 Depth=1
	ld.d	$s5, $s0, 0
	ori	$s6, $zero, 1
	bnez	$s5, .LBB8_2
.LBB8_9:                                # %while.end
	xor	$a0, $s3, $fp
	sltui	$a0, $a0, 1
	masknez	$a0, $s3, $a0
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
.Lfunc_end8:
	.size	def_ApplyDefToTermExhaustive, .Lfunc_end8-def_ApplyDefToTermExhaustive
                                        # -- End function
	.globl	def_ApplyDefToClauseOnce        # -- Begin function def_ApplyDefToClauseOnce
	.p2align	5
	.type	def_ApplyDefToClauseOnce,@function
def_ApplyDefToClauseOnce:               # @def_ApplyDefToClauseOnce
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
	move	$s1, $a3
	move	$s2, $a2
	move	$fp, $a1
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	st.d	$fp, $a0, 8
	st.d	$zero, $a0, 0
	move	$s4, $a0
	b	.LBB9_5
	.p2align	4, , 16
.LBB9_1:                                #   in Loop: Header=BB9_5 Depth=1
	move	$s3, $a0
	ld.d	$a0, $s4, 8
	beq	$a0, $fp, .LBB9_3
.LBB9_2:                                # %if.then13
                                        #   in Loop: Header=BB9_5 Depth=1
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
.LBB9_3:                                # %if.end
                                        #   in Loop: Header=BB9_5 Depth=1
	st.d	$zero, $s4, 8
.LBB9_4:                                # %for.inc
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB9_12
.LBB9_5:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_9 Depth 2
	ld.d	$a1, $s0, 8
	ld.d	$a0, $s4, 8
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(clause_ContainsSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_4
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s0, 8
	ld.d	$a2, $s0, 0
	move	$a3, $s2
	move	$a4, $s1
	pcaddu18i	$ra, %call36(cnf_ApplyDefinitionToClause)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB9_1
# %bb.7:                                # %if.end.i
                                        #   in Loop: Header=BB9_5 Depth=1
	beqz	$a0, .LBB9_11
# %bb.8:                                # %for.cond.i.preheader
                                        #   in Loop: Header=BB9_5 Depth=1
	move	$a2, $s3
	.p2align	4, , 16
.LBB9_9:                                # %for.cond.i
                                        #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB9_9
# %bb.10:                               # %for.end.i
                                        #   in Loop: Header=BB9_5 Depth=1
	st.d	$a0, $a1, 0
.LBB9_11:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB9_5 Depth=1
	ld.d	$a0, $s4, 8
	bne	$a0, $fp, .LBB9_2
	b	.LBB9_3
.LBB9_12:                               # %for.end
	move	$a0, $s3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_20
# %bb.13:                               # %if.then20
	ld.d	$a1, $a0, 8
	bne	$a1, $fp, .LBB9_15
# %bb.14:                               # %if.end26
	pcalau12i	$a1, %got_pc_hi20(memory_ARRAY)
	ld.d	$a1, $a1, %got_pc_lo12(memory_ARRAY)
	ld.d	$a2, $a1, 128
	pcalau12i	$a3, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a3, $a3, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a4, $a2, 32
	ld.d	$a5, $a3, 0
	ld.d	$a6, $a0, 0
	add.d	$a4, $a5, $a4
	st.d	$a4, $a3, 0
	ld.d	$a2, $a2, 0
	st.d	$a2, $a0, 0
	ld.d	$a1, $a1, 128
	st.d	$a0, $a1, 0
	move	$a0, $a6
	beqz	$a6, .LBB9_20
.LBB9_15:                               # %for.body31.lr.ph
	ori	$s3, $zero, 25
	move	$s2, $a0
	move	$s4, $a0
	b	.LBB9_17
	.p2align	4, , 16
.LBB9_16:                               # %if.end37
                                        #   in Loop: Header=BB9_17 Depth=1
	st.w	$s3, $s5, 76
	ld.d	$a0, $s0, 24
	ld.w	$s6, $fp, 0
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $s5, 32
	ld.d	$a0, $s0, 24
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(list_Copy)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$zero, $a0, 8
	st.d	$s1, $a0, 0
	st.d	$a0, $s5, 40
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB9_19
.LBB9_17:                               # %for.body31
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, 40
	ld.d	$s5, $s4, 8
	beqz	$a0, .LBB9_16
# %bb.18:                               # %if.then35
                                        #   in Loop: Header=BB9_17 Depth=1
	ld.w	$a0, $s5, 48
	ori	$a0, $a0, 8
	st.w	$a0, $s5, 48
	b	.LBB9_16
.LBB9_19:
	move	$a0, $s2
	b	.LBB9_21
.LBB9_20:
	move	$a0, $zero
.LBB9_21:                               # %for.end47
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
.Lfunc_end9:
	.size	def_ApplyDefToClauseOnce, .Lfunc_end9-def_ApplyDefToClauseOnce
                                        # -- End function
	.globl	def_ApplyDefToClauseExhaustive  # -- Begin function def_ApplyDefToClauseExhaustive
	.p2align	5
	.type	def_ApplyDefToClauseExhaustive,@function
def_ApplyDefToClauseExhaustive:         # @def_ApplyDefToClauseExhaustive
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
	move	$s0, $a0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	ld.d	$s2, $s0, 112
	ld.d	$s3, $s0, 104
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s6, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s7, $a0, %got_pc_lo12(memory_FREEDBYTES)
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_1:                               # %for.cond.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_4 Depth 2
                                        #       Child Loop BB10_8 Depth 3
                                        #         Child Loop BB10_11 Depth 4
                                        #       Child Loop BB10_18 Depth 3
                                        #     Child Loop BB10_23 Depth 2
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	move	$s1, $s8
	b	.LBB10_4
.LBB10_2:                               #   in Loop: Header=BB10_4 Depth=2
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB10_3:                               # %if.end35
                                        #   in Loop: Header=BB10_4 Depth=2
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB10_23
.LBB10_4:                               # %for.body
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_8 Depth 3
                                        #         Child Loop BB10_11 Depth 4
                                        #       Child Loop BB10_18 Depth 3
	ld.d	$fp, $s0, 0
	ld.d	$s5, $s1, 8
	beqz	$fp, .LBB10_20
# %bb.5:                                # %for.body17.preheader
                                        #   in Loop: Header=BB10_4 Depth=2
	move	$s4, $zero
	b	.LBB10_8
	.p2align	4, , 16
.LBB10_6:                               #   in Loop: Header=BB10_8 Depth=3
	move	$s4, $a0
.LBB10_7:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB10_8 Depth=3
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB10_13
.LBB10_8:                               # %for.body17
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_11 Depth 4
	ld.d	$a0, $fp, 8
	move	$a1, $s5
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(def_ApplyDefToClauseOnce)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB10_6
# %bb.9:                                # %if.end.i
                                        #   in Loop: Header=BB10_8 Depth=3
	beqz	$a0, .LBB10_7
# %bb.10:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB10_8 Depth=3
	move	$a2, $s4
	.p2align	4, , 16
.LBB10_11:                              # %for.cond.i
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_4 Depth=2
                                        #       Parent Loop BB10_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB10_11
# %bb.12:                               # %for.end.i
                                        #   in Loop: Header=BB10_8 Depth=3
	st.d	$a0, $a1, 0
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_13:                              # %for.end
                                        #   in Loop: Header=BB10_4 Depth=2
	beqz	$s4, .LBB10_20
# %bb.14:                               # %if.then
                                        #   in Loop: Header=BB10_4 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s5, $a0, .LBB10_17
# %bb.15:                               # %if.then24
                                        #   in Loop: Header=BB10_4 Depth=2
	ld.w	$a0, $s2, 36
	beqz	$a0, .LBB10_22
# %bb.16:                               # %if.then27
                                        #   in Loop: Header=BB10_4 Depth=2
	move	$a0, $s0
	move	$a1, $s5
	pcaddu18i	$ra, %call36(prfs_InsertDocProofClause)
	jirl	$ra, $ra, 0
.LBB10_17:                              # %if.end28
                                        #   in Loop: Header=BB10_4 Depth=2
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beqz	$a1, .LBB10_2
	.p2align	4, , 16
.LBB10_18:                              # %for.cond.i35
                                        #   Parent Loop BB10_1 Depth=1
                                        #     Parent Loop BB10_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB10_18
# %bb.19:                               # %for.end.i39
                                        #   in Loop: Header=BB10_4 Depth=2
	st.d	$s4, $a0, 0
	b	.LBB10_3
	.p2align	4, , 16
.LBB10_20:                              # %if.else30
                                        #   in Loop: Header=BB10_4 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s5, $a0, .LBB10_3
# %bb.21:                               # %if.then32
                                        #   in Loop: Header=BB10_4 Depth=2
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $a0, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB10_3
.LBB10_22:                              # %if.else
                                        #   in Loop: Header=BB10_4 Depth=2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bnez	$a1, .LBB10_18
	b	.LBB10_2
	.p2align	4, , 16
.LBB10_23:                              # %while.body.i
                                        #   Parent Loop BB10_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s6, 128
	ld.w	$a1, $a0, 32
	ld.d	$a2, $s7, 0
	ld.d	$a3, $s8, 0
	add.d	$a1, $a2, $a1
	st.d	$a1, $s7, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $s8, 0
	ld.d	$a0, $s6, 128
	st.d	$s8, $a0, 0
	move	$s8, $a3
	bnez	$a3, .LBB10_23
# %bb.24:                               # %list_Delete.exit
                                        #   in Loop: Header=BB10_1 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$s8, $a0
	bnez	$a0, .LBB10_1
# %bb.25:                               # %while.end
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
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
.Lfunc_end10:
	.size	def_ApplyDefToClauseExhaustive, .Lfunc_end10-def_ApplyDefToClauseExhaustive
                                        # -- End function
	.globl	def_ApplyDefToClauselist        # -- Begin function def_ApplyDefToClauselist
	.p2align	5
	.type	def_ApplyDefToClauselist,@function
def_ApplyDefToClauselist:               # @def_ApplyDefToClauselist
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
	ld.d	$s1, $a0, 112
	move	$s2, $a3
	move	$fp, $a2
	beqz	$a2, .LBB11_13
# %bb.1:                                # %for.body.lr.ph
	move	$s5, $a0
	move	$s3, $a1
	ld.d	$s4, $a0, 104
	move	$s0, $zero
	beqz	$s2, .LBB11_25
# %bb.2:                                # %for.body.preheader
	move	$s7, $fp
	b	.LBB11_5
	.p2align	4, , 16
.LBB11_3:                               # %if.end14
                                        #   in Loop: Header=BB11_5 Depth=1
	sltui	$a0, $s0, 1
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s6, $a0
	or	$s0, $a0, $a1
.LBB11_4:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB11_5 Depth=1
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB11_14
.LBB11_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_9 Depth 2
	ld.d	$a1, $s7, 8
	move	$a0, $s3
	move	$a2, $s1
	move	$a3, $s4
	pcaddu18i	$ra, %call36(def_ApplyDefToClauseOnce)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	beqz	$a0, .LBB11_3
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB11_5 Depth=1
	ld.w	$a0, $s1, 36
	ld.d	$a1, $s7, 8
	beqz	$a0, .LBB11_11
# %bb.7:                                # %if.then11
                                        #   in Loop: Header=BB11_5 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(prfs_InsertDocProofClause)
	jirl	$ra, $ra, 0
	st.d	$zero, $s7, 8
	beqz	$s0, .LBB11_12
.LBB11_8:                               # %for.cond.i.preheader
                                        #   in Loop: Header=BB11_5 Depth=1
	move	$a1, $s0
	.p2align	4, , 16
.LBB11_9:                               # %for.cond.i
                                        #   Parent Loop BB11_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB11_9
# %bb.10:                               # %for.end.i
                                        #   in Loop: Header=BB11_5 Depth=1
	st.d	$s6, $a0, 0
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_11:                              # %if.else
                                        #   in Loop: Header=BB11_5 Depth=1
	move	$a0, $a1
	pcaddu18i	$ra, %call36(clause_Delete)
	jirl	$ra, $ra, 0
	st.d	$zero, $s7, 8
	bnez	$s0, .LBB11_8
.LBB11_12:                              #   in Loop: Header=BB11_5 Depth=1
	move	$s0, $s6
	b	.LBB11_4
.LBB11_13:
	move	$s0, $zero
.LBB11_14:                              # %for.end
	beqz	$s2, .LBB11_16
# %bb.15:                               # %if.then18
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	move	$fp, $a0
.LBB11_16:                              # %if.end20
	ld.w	$a0, $s1, 148
	beqz	$a0, .LBB11_19
# %bb.17:                               # %if.end20
	beqz	$s0, .LBB11_19
# %bb.18:                               # %if.then26
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$a0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	ori	$a1, $zero, 43
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(clause_ListPrint)
	jirl	$ra, $ra, 0
.LBB11_19:                              # %if.end29
	sltui	$a0, $fp, 1
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s0, $a0
	or	$a0, $a0, $a1
	beqz	$fp, .LBB11_24
# %bb.20:                               # %if.end29
	beqz	$s0, .LBB11_24
# %bb.21:                               # %for.cond.i30.preheader
	move	$a1, $fp
	.p2align	4, , 16
.LBB11_22:                              # %for.cond.i30
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB11_22
# %bb.23:                               # %for.end.i34
	st.d	$s0, $a0, 0
	move	$a0, $fp
.LBB11_24:                              # %list_Nconc.exit36
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
.LBB11_25:                              # %for.body.us.preheader
	move	$s5, $fp
	b	.LBB11_28
	.p2align	4, , 16
.LBB11_26:                              #   in Loop: Header=BB11_28 Depth=1
	move	$s0, $a0
.LBB11_27:                              # %list_Nconc.exit.us
                                        #   in Loop: Header=BB11_28 Depth=1
	ld.d	$s5, $s5, 0
	beqz	$s5, .LBB11_14
.LBB11_28:                              # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_31 Depth 2
	ld.d	$a1, $s5, 8
	move	$a0, $s3
	move	$a2, $s1
	move	$a3, $s4
	pcaddu18i	$ra, %call36(def_ApplyDefToClauseOnce)
	jirl	$ra, $ra, 0
	beqz	$s0, .LBB11_26
# %bb.29:                               # %if.end.i.us
                                        #   in Loop: Header=BB11_28 Depth=1
	beqz	$a0, .LBB11_27
# %bb.30:                               # %for.cond.i.us.preheader
                                        #   in Loop: Header=BB11_28 Depth=1
	move	$a2, $s0
	.p2align	4, , 16
.LBB11_31:                              # %for.cond.i.us
                                        #   Parent Loop BB11_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB11_31
# %bb.32:                               # %for.end.i.us
                                        #   in Loop: Header=BB11_28 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB11_27
.Lfunc_end11:
	.size	def_ApplyDefToClauselist, .Lfunc_end11-def_ApplyDefToClauselist
                                        # -- End function
	.globl	def_ApplyDefToTermlist          # -- Begin function def_ApplyDefToTermlist
	.p2align	5
	.type	def_ApplyDefToTermlist,@function
def_ApplyDefToTermlist:                 # @def_ApplyDefToTermlist
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
	move	$fp, $a2
	move	$s3, $a0
	ori	$a0, $zero, 1
	st.w	$a0, $a4, 0
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	beqz	$a1, .LBB12_10
# %bb.1:                                # %for.body.lr.ph
	move	$s1, $a4
	move	$s2, $a3
	beqz	$a5, .LBB12_21
# %bb.2:                                # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$s7, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a0, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$s8, $a0, %got_pc_lo12(memory_FREEDBYTES)
	move	$s6, $zero
	move	$s0, $a1
	b	.LBB12_5
	.p2align	4, , 16
.LBB12_3:                               # %if.end19
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$a0, $s7, 128
	ld.w	$a2, $a0, 32
	ld.d	$a3, $s8, 0
	add.d	$a2, $a3, $a2
	st.d	$a2, $s8, 0
	ld.d	$a0, $a0, 0
	st.d	$a0, $a1, 0
	ld.d	$a0, $s7, 128
	st.d	$a1, $a0, 0
	st.d	$zero, $s0, 8
	move	$s6, $s4
.LBB12_4:                               # %if.end22
                                        #   in Loop: Header=BB12_5 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB12_11
.LBB12_5:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a1, $a0, 0
	addi.d	$a4, $sp, 20
	move	$a0, $s3
	move	$a2, $fp
	move	$a3, $s2
	pcaddu18i	$ra, %call36(def_ApplyDefToTermOnce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$s4, $a0
	beqz	$a1, .LBB12_7
# %bb.6:                                # %if.end
                                        #   in Loop: Header=BB12_5 Depth=1
	bnez	$s4, .LBB12_8
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_7:                               # %if.then
                                        #   in Loop: Header=BB12_5 Depth=1
	st.w	$zero, $s1, 0
	beqz	$s4, .LBB12_4
.LBB12_8:                               # %if.then6
                                        #   in Loop: Header=BB12_5 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$zero, $a0, 8
	st.d	$s4, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	st.d	$s5, $a0, 8
	st.d	$s6, $a0, 0
	ld.d	$a0, $s0, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 8
	ld.d	$a0, $a1, 8
	beqz	$a0, .LBB12_3
# %bb.9:                                # %if.then16
                                        #   in Loop: Header=BB12_5 Depth=1
	pcaddu18i	$ra, %call36(string_StringFree)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 8
	b	.LBB12_3
.LBB12_10:
	move	$s6, $zero
.LBB12_11:                              # %for.end
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 148
	move	$fp, $a0
	beqz	$a1, .LBB12_15
# %bb.12:                               # %for.end
	beqz	$s6, .LBB12_15
# %bb.13:                               # %if.then30
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$a1, $zero, 42
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$s1, $s6
	.p2align	4, , 16
.LBB12_14:                              # %for.body36
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(fputc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fol_PrettyPrint)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB12_14
.LBB12_15:                              # %if.end44
	sltui	$a0, $fp, 1
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s6, $a0
	or	$a0, $a0, $a1
	beqz	$fp, .LBB12_20
# %bb.16:                               # %if.end44
	beqz	$s6, .LBB12_20
# %bb.17:                               # %for.cond.i.preheader
	move	$a1, $fp
	.p2align	4, , 16
.LBB12_18:                              # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 0
	bnez	$a1, .LBB12_18
# %bb.19:                               # %for.end.i
	st.d	$s6, $a0, 0
	move	$a0, $fp
.LBB12_20:                              # %list_Nconc.exit
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
.LBB12_21:                              # %for.body.us.preheader
	move	$s6, $zero
	move	$s0, $a1
	b	.LBB12_23
	.p2align	4, , 16
.LBB12_22:                              # %if.end22.us
                                        #   in Loop: Header=BB12_23 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB12_11
.LBB12_23:                              # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 8
	ld.d	$a1, $a0, 0
	addi.d	$a4, $sp, 20
	move	$a0, $s3
	move	$a2, $fp
	move	$a3, $s2
	pcaddu18i	$ra, %call36(def_ApplyDefToTermOnce)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 20
	move	$s4, $a0
	beqz	$a1, .LBB12_25
# %bb.24:                               # %if.end.us
                                        #   in Loop: Header=BB12_23 Depth=1
	bnez	$s4, .LBB12_26
	b	.LBB12_22
	.p2align	4, , 16
.LBB12_25:                              # %if.then.us
                                        #   in Loop: Header=BB12_23 Depth=1
	st.w	$zero, $s1, 0
	beqz	$s4, .LBB12_22
.LBB12_26:                              # %if.then6.us
                                        #   in Loop: Header=BB12_23 Depth=1
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$zero, $a0, 8
	st.d	$s4, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s5, $a0, 8
	st.d	$s6, $a0, 0
	move	$s6, $a0
	b	.LBB12_22
.Lfunc_end12:
	.size	def_ApplyDefToTermlist, .Lfunc_end12-def_ApplyDefToTermlist
                                        # -- End function
	.globl	def_ExtractDefsFromTermlist     # -- Begin function def_ExtractDefsFromTermlist
	.p2align	5
	.type	def_ExtractDefsFromTermlist,@function
def_ExtractDefsFromTermlist:            # @def_ExtractDefsFromTermlist
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s2, $a0, 112
	move	$s0, $a2
	beqz	$a1, .LBB13_9
# %bb.1:                                # %for.body.preheader
	move	$s1, $a1
	move	$s3, $zero
	b	.LBB13_4
	.p2align	4, , 16
.LBB13_2:                               #   in Loop: Header=BB13_4 Depth=1
	move	$s3, $a0
.LBB13_3:                               # %list_Nconc.exit
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB13_10
.LBB13_4:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
	ld.d	$a0, $s1, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fol_NormalizeVars)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 8
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(def_ExtractDefsFromTerm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB13_2
# %bb.5:                                # %if.end.i
                                        #   in Loop: Header=BB13_4 Depth=1
	beqz	$a0, .LBB13_3
# %bb.6:                                # %for.cond.i.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	move	$a2, $s3
	.p2align	4, , 16
.LBB13_7:                               # %for.cond.i
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB13_7
# %bb.8:                                # %for.end.i
                                        #   in Loop: Header=BB13_4 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB13_3
.LBB13_9:
	move	$s3, $zero
.LBB13_10:                              # %for.cond12.preheader
	bnez	$s0, .LBB13_21
.LBB13_11:                              # %for.cond28.preheader
	beqz	$s3, .LBB13_26
# %bb.12:                               # %for.body32.lr.ph
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	pcalau12i	$a1, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_SIGNATURE)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	move	$a2, $s3
	.p2align	4, , 16
.LBB13_13:                              # %for.body32
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a2, 8
	ld.d	$a3, $a3, 8
	ld.w	$a3, $a3, 0
	sub.d	$a3, $zero, $a3
	sra.w	$a3, $a3, $a0
	slli.d	$a3, $a3, 3
	ldx.d	$a3, $a1, $a3
	ld.w	$a4, $a3, 20
	ori	$a4, $a4, 128
	st.w	$a4, $a3, 20
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB13_13
# %bb.14:                               # %for.end38.thread
	ld.d	$a0, $fp, 0
	move	$a1, $s3
	beqz	$a0, .LBB13_18
# %bb.15:                               # %for.cond.i50.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB13_16:                              # %for.cond.i50
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB13_16
# %bb.17:                               # %for.end.i54
	st.d	$s3, $a1, 0
	move	$a1, $a0
.LBB13_18:                              # %list_Nconc.exit56
	st.d	$a1, $fp, 0
	ld.w	$a0, $s2, 148
	bnez	$a0, .LBB13_27
	b	.LBB13_31
	.p2align	4, , 16
.LBB13_19:                              #   in Loop: Header=BB13_21 Depth=1
	move	$s3, $a0
.LBB13_20:                              # %list_Nconc.exit44
                                        #   in Loop: Header=BB13_21 Depth=1
	ld.d	$s0, $s0, 0
	beqz	$s0, .LBB13_11
.LBB13_21:                              # %for.body16
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_24 Depth 2
	ld.d	$a0, $s0, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(fol_NormalizeVars)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 8
	ld.d	$a0, $a1, 0
	ld.d	$a1, $a1, 8
	pcaddu18i	$ra, %call36(def_ExtractDefsFromTerm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB13_19
# %bb.22:                               # %if.end.i36
                                        #   in Loop: Header=BB13_21 Depth=1
	beqz	$a0, .LBB13_20
# %bb.23:                               # %for.cond.i38.preheader
                                        #   in Loop: Header=BB13_21 Depth=1
	move	$a2, $s3
	.p2align	4, , 16
.LBB13_24:                              # %for.cond.i38
                                        #   Parent Loop BB13_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a1, $a2
	ld.d	$a2, $a2, 0
	bnez	$a2, .LBB13_24
# %bb.25:                               # %for.end.i42
                                        #   in Loop: Header=BB13_21 Depth=1
	st.d	$a0, $a1, 0
	b	.LBB13_20
.LBB13_26:                              # %for.end38
	ld.d	$a0, $fp, 0
	sltui	$a1, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a0
	st.d	$a1, $fp, 0
	ld.w	$a0, $s2, 148
	beqz	$a0, .LBB13_31
.LBB13_27:                              # %list_Nconc.exit56
	beqz	$s3, .LBB13_31
# %bb.28:                               # %if.then45
	pcalau12i	$a0, %got_pc_hi20(stdout)
	ld.d	$s0, $a0, %got_pc_lo12(stdout)
	ld.d	$a3, $s0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 21
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $fp, 0
	beqz	$s1, .LBB13_31
# %bb.29:                               # %for.body52.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$fp, $a0, %pc_lo12(.L.str.2)
	.p2align	4, , 16
.LBB13_30:                              # %for.body52
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 8
	pcaddu18i	$ra, %call36(def_Print)
	jirl	$ra, $ra, 0
	ld.d	$a3, $s0, 0
	ori	$a1, $zero, 5
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB13_30
.LBB13_31:                              # %if.end58
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end13:
	.size	def_ExtractDefsFromTermlist, .Lfunc_end13-def_ExtractDefsFromTermlist
                                        # -- End function
	.globl	def_FlattenWithOneDefinition    # -- Begin function def_FlattenWithOneDefinition
	.p2align	5
	.type	def_FlattenWithOneDefinition,@function
def_FlattenWithOneDefinition:           # @def_FlattenWithOneDefinition
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
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB14_3
.LBB14_1:
	move	$s2, $zero
.LBB14_2:                               # %if.end33
	move	$a0, $s2
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
.LBB14_3:                               # %for.cond.preheader
	ld.d	$s7, $a0, 0
	beqz	$s7, .LBB14_1
# %bb.4:                                # %for.body.lr.ph
	ld.d	$s0, $a0, 112
	ld.d	$s1, $a0, 104
	move	$s2, $zero
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	b	.LBB14_6
	.p2align	4, , 16
.LBB14_5:                               # %if.end31
                                        #   in Loop: Header=BB14_6 Depth=1
	ld.d	$s7, $s7, 0
	beqz	$s7, .LBB14_2
.LBB14_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $s7, 8
	beq	$s5, $fp, .LBB14_5
# %bb.7:                                # %if.then8
                                        #   in Loop: Header=BB14_6 Depth=1
	ld.d	$a1, $fp, 8
	ld.d	$a0, $s5, 0
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB14_5
# %bb.8:                                # %if.then14
                                        #   in Loop: Header=BB14_6 Depth=1
	ld.d	$a1, $s5, 8
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB14_5
# %bb.9:                                # %if.then20
                                        #   in Loop: Header=BB14_6 Depth=1
	ld.d	$a1, $s5, 0
	addi.d	$a4, $sp, 36
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(def_ApplyDefToTermOnce)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 8
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s5, 16
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s5, 32
	move	$s5, $a0
	ori	$a0, $zero, 48
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.d	$s3, $a0, 0
	st.d	$s4, $a0, 8
	st.d	$s5, $a0, 16
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	st.d	$a0, $s6, 24
	st.d	$s8, $s6, 32
	st.w	$zero, $s6, 40
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s6, $a0, 8
	st.d	$s2, $a0, 0
	move	$s2, $a0
	b	.LBB14_5
.Lfunc_end14:
	.size	def_FlattenWithOneDefinition, .Lfunc_end14-def_FlattenWithOneDefinition
                                        # -- End function
	.globl	def_FlattenWithOneDefinitionDestructive # -- Begin function def_FlattenWithOneDefinitionDestructive
	.p2align	5
	.type	def_FlattenWithOneDefinitionDestructive,@function
def_FlattenWithOneDefinitionDestructive: # @def_FlattenWithOneDefinitionDestructive
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
	move	$s0, $a1
	ld.d	$a1, $a1, 16
	bnez	$a1, .LBB15_15
# %bb.1:                                # %if.then
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a0, $a0, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.d	$s1, $fp, 0
	ld.w	$s6, $a0, 0
	beqz	$s1, .LBB15_12
# %bb.2:                                # %for.body.lr.ph
	ld.d	$s2, $fp, 112
	ld.d	$s3, $fp, 104
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s7, $a0, %got_pc_lo12(symbol_SIGNATURE)
	move	$s8, $s1
	b	.LBB15_6
	.p2align	4, , 16
.LBB15_3:                               # %symbol_RemoveProperty.exit
                                        #   in Loop: Header=BB15_6 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(def_Delete)
	jirl	$ra, $ra, 0
.LBB15_4:                               # %if.else26
                                        #   in Loop: Header=BB15_6 Depth=1
	st.d	$zero, $s8, 8
.LBB15_5:                               # %if.end27
                                        #   in Loop: Header=BB15_6 Depth=1
	ld.d	$s8, $s8, 0
	beqz	$s8, .LBB15_12
.LBB15_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s4, $s8, 8
	beq	$s4, $s0, .LBB15_4
# %bb.7:                                # %if.then7
                                        #   in Loop: Header=BB15_6 Depth=1
	ld.d	$a1, $s0, 8
	ld.d	$a0, $s4, 0
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_5
# %bb.8:                                # %if.then13
                                        #   in Loop: Header=BB15_6 Depth=1
	ld.d	$a1, $s4, 8
	ld.d	$a0, $s0, 0
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB15_11
# %bb.9:                                # %if.else
                                        #   in Loop: Header=BB15_6 Depth=1
	ld.d	$a0, $s4, 8
	ld.w	$a0, $a0, 0
	ld.d	$a1, $s7, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $s6
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.wu	$a1, $a0, 20
	andi	$a2, $a1, 128
	beqz	$a2, .LBB15_3
# %bb.10:                               # %if.then.i
                                        #   in Loop: Header=BB15_6 Depth=1
	addi.d	$a1, $a1, -128
	st.w	$a1, $a0, 20
	b	.LBB15_3
.LBB15_11:                              # %if.then19
                                        #   in Loop: Header=BB15_6 Depth=1
	ld.d	$a1, $s4, 0
	addi.d	$a4, $sp, 20
	move	$a0, $s0
	move	$a2, $s2
	move	$a3, $s3
	pcaddu18i	$ra, %call36(def_ApplyDefToTermOnce)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 0
	move	$s5, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	st.d	$s5, $s4, 0
	b	.LBB15_5
.LBB15_12:                              # %for.end
	ld.d	$a0, $s0, 8
	pcalau12i	$a1, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_SIGNATURE)
	ld.w	$a0, $a0, 0
	ld.d	$a1, $a1, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $s6
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.wu	$a1, $a0, 20
	andi	$a2, $a1, 128
	beqz	$a2, .LBB15_14
# %bb.13:                               # %if.then.i41
	addi.d	$a1, $a1, -128
	st.w	$a1, $a0, 20
.LBB15_14:                              # %symbol_RemoveProperty.exit43
	move	$a0, $s0
	pcaddu18i	$ra, %call36(def_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
.LBB15_15:                              # %if.end32
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
.Lfunc_end15:
	.size	def_FlattenWithOneDefinitionDestructive, .Lfunc_end15-def_FlattenWithOneDefinitionDestructive
                                        # -- End function
	.globl	def_FlattenWithOneDefinitionSemiDestructive # -- Begin function def_FlattenWithOneDefinitionSemiDestructive
	.p2align	5
	.type	def_FlattenWithOneDefinitionSemiDestructive,@function
def_FlattenWithOneDefinitionSemiDestructive: # @def_FlattenWithOneDefinitionSemiDestructive
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
	move	$fp, $a1
	ld.d	$a1, $a1, 16
	beqz	$a1, .LBB16_2
.LBB16_1:                               # %if.end28
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
.LBB16_2:                               # %for.cond.preheader
	ld.d	$s4, $a0, 0
	beqz	$s4, .LBB16_1
# %bb.3:                                # %for.body.lr.ph
	pcalau12i	$a1, %got_pc_hi20(symbol_TYPESTATBITS)
	ld.d	$a1, $a1, %got_pc_lo12(symbol_TYPESTATBITS)
	ld.d	$s0, $a0, 112
	ld.d	$s1, $a0, 104
	ld.w	$s5, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(symbol_SIGNATURE)
	ld.d	$s6, $a0, %got_pc_lo12(symbol_SIGNATURE)
	b	.LBB16_6
	.p2align	4, , 16
.LBB16_4:                               # %symbol_RemoveProperty.exit
                                        #   in Loop: Header=BB16_6 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(def_Delete)
	jirl	$ra, $ra, 0
	st.d	$zero, $s4, 8
.LBB16_5:                               # %if.end26
                                        #   in Loop: Header=BB16_6 Depth=1
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB16_1
.LBB16_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s2, $s4, 8
	beq	$s2, $fp, .LBB16_5
# %bb.7:                                # %if.then7
                                        #   in Loop: Header=BB16_6 Depth=1
	ld.d	$a1, $fp, 8
	ld.d	$a0, $s2, 0
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_5
# %bb.8:                                # %if.then13
                                        #   in Loop: Header=BB16_6 Depth=1
	ld.d	$a1, $s2, 8
	ld.d	$a0, $fp, 0
	ld.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(term_ContainsSymbol)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB16_11
# %bb.9:                                # %if.else
                                        #   in Loop: Header=BB16_6 Depth=1
	ld.d	$a0, $s2, 8
	ld.w	$a0, $a0, 0
	ld.d	$a1, $s6, 0
	sub.d	$a0, $zero, $a0
	sra.w	$a0, $a0, $s5
	slli.d	$a0, $a0, 3
	ldx.d	$a0, $a1, $a0
	ld.wu	$a1, $a0, 20
	andi	$a2, $a1, 128
	beqz	$a2, .LBB16_4
# %bb.10:                               # %if.then.i
                                        #   in Loop: Header=BB16_6 Depth=1
	addi.d	$a1, $a1, -128
	st.w	$a1, $a0, 20
	b	.LBB16_4
.LBB16_11:                              # %if.then19
                                        #   in Loop: Header=BB16_6 Depth=1
	ld.d	$a1, $s2, 0
	addi.d	$a4, $sp, 20
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(def_ApplyDefToTermOnce)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 0
	move	$s3, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	st.d	$s3, $s2, 0
	b	.LBB16_5
.Lfunc_end16:
	.size	def_FlattenWithOneDefinitionSemiDestructive, .Lfunc_end16-def_FlattenWithOneDefinitionSemiDestructive
                                        # -- End function
	.globl	def_FlattenDefinitionsDestructive # -- Begin function def_FlattenDefinitionsDestructive
	.p2align	5
	.type	def_FlattenDefinitionsDestructive,@function
def_FlattenDefinitionsDestructive:      # @def_FlattenDefinitionsDestructive
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 0
	beqz	$s1, .LBB17_3
	.p2align	4, , 16
.LBB17_1:                               # %if.end
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s0, $s1, 8
	ld.d	$a0, $s0, 8
	pcaddu18i	$ra, %call36(fol_PrettyPrintDFG)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(def_FlattenWithOneDefinitionSemiDestructive)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB17_1
# %bb.2:                                # %for.end.loopexit
	ld.d	$a0, $fp, 0
	b	.LBB17_4
.LBB17_3:
	move	$a0, $zero
.LBB17_4:                               # %for.end
	move	$a1, $zero
	pcaddu18i	$ra, %call36(list_PointerDeleteElement)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end17:
	.size	def_FlattenDefinitionsDestructive, .Lfunc_end17-def_FlattenDefinitionsDestructive
                                        # -- End function
	.globl	def_GetTermsForProof            # -- Begin function def_GetTermsForProof
	.p2align	5
	.type	def_GetTermsForProof,@function
def_GetTermsForProof:                   # @def_GetTermsForProof
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
	pcalau12i	$a3, %got_pc_hi20(fol_NOT)
	ld.d	$s6, $a3, %got_pc_lo12(fol_NOT)
	pcalau12i	$a3, %got_pc_hi20(fol_OR)
	ld.d	$a3, $a3, %got_pc_lo12(fol_OR)
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(fol_AND)
	ld.d	$a3, $a3, %got_pc_lo12(fol_AND)
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a3, %got_pc_hi20(fol_IMPLIES)
	ld.d	$s7, $a3, %got_pc_lo12(fol_IMPLIES)
	pcalau12i	$a3, %got_pc_hi20(fol_IMPLIED)
	ld.d	$s8, $a3, %got_pc_lo12(fol_IMPLIED)
	pcalau12i	$a3, %got_pc_hi20(fol_ALL)
	ld.d	$s5, $a3, %got_pc_lo12(fol_ALL)
	pcalau12i	$a3, %got_pc_hi20(fol_EXIST)
	ld.d	$a3, $a3, %got_pc_lo12(fol_EXIST)
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	move	$s3, $a2
	move	$s0, $a1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s4, $zero, 1
	addi.w	$s1, $zero, -1
.LBB18_1:                               # %tailrecurse.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_2 Depth 2
	move	$s2, $s0
	.p2align	4, , 16
.LBB18_2:                               # %tailrecurse
                                        #   Parent Loop BB18_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	beq	$fp, $s2, .LBB18_21
# %bb.3:                                # %if.end
                                        #   in Loop: Header=BB18_2 Depth=2
	ld.d	$s0, $s2, 8
	ld.w	$fp, $s0, 0
	ld.w	$a0, $s6, 0
	beq	$fp, $a0, .LBB18_20
# %bb.4:                                # %if.end9
                                        #   in Loop: Header=BB18_2 Depth=2
	bne	$s3, $s4, .LBB18_6
# %bb.5:                                # %if.end9
                                        #   in Loop: Header=BB18_2 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beq	$fp, $a0, .LBB18_22
.LBB18_6:                               # %if.end39
                                        #   in Loop: Header=BB18_2 Depth=2
	bne	$s3, $s1, .LBB18_8
# %bb.7:                                # %if.end39
                                        #   in Loop: Header=BB18_2 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beq	$fp, $a0, .LBB18_27
.LBB18_8:                               # %if.end91
                                        #   in Loop: Header=BB18_2 Depth=2
	ld.w	$a0, $s7, 0
	bne	$fp, $a0, .LBB18_13
# %bb.9:                                # %if.then95
                                        #   in Loop: Header=BB18_2 Depth=2
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(term_HasPointerSubterm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	ld.d	$a1, $a1, 8
	bne	$s3, $s4, .LBB18_11
# %bb.10:                               # %if.then95
                                        #   in Loop: Header=BB18_2 Depth=2
	bnez	$a0, .LBB18_35
.LBB18_11:                              # %if.end106
                                        #   in Loop: Header=BB18_2 Depth=2
	move	$a0, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(term_HasPointerSubterm)
	jirl	$ra, $ra, 0
	bne	$s3, $s1, .LBB18_13
# %bb.12:                               # %if.end106
                                        #   in Loop: Header=BB18_2 Depth=2
	bnez	$a0, .LBB18_37
.LBB18_13:                              # %if.end122
                                        #   in Loop: Header=BB18_2 Depth=2
	ld.w	$a0, $s8, 0
	bne	$fp, $a0, .LBB18_18
# %bb.14:                               # %if.then126
                                        #   in Loop: Header=BB18_2 Depth=2
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(term_HasPointerSubterm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	ld.d	$a1, $a1, 8
	bne	$s3, $s1, .LBB18_16
# %bb.15:                               # %if.then126
                                        #   in Loop: Header=BB18_2 Depth=2
	bnez	$a0, .LBB18_36
.LBB18_16:                              # %if.end141
                                        #   in Loop: Header=BB18_2 Depth=2
	move	$a0, $a1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(term_HasPointerSubterm)
	jirl	$ra, $ra, 0
	bne	$s3, $s4, .LBB18_18
# %bb.17:                               # %if.end141
                                        #   in Loop: Header=BB18_2 Depth=2
	bnez	$a0, .LBB18_39
.LBB18_18:                              # %if.end153
                                        #   in Loop: Header=BB18_2 Depth=2
	ld.w	$a0, $s5, 0
	move	$s2, $s0
	beq	$a0, $fp, .LBB18_2
# %bb.19:                               # %if.end153
                                        #   in Loop: Header=BB18_2 Depth=2
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	move	$s2, $s0
	beq	$a0, $fp, .LBB18_2
	b	.LBB18_21
.LBB18_20:                              # %if.then7
                                        #   in Loop: Header=BB18_1 Depth=1
	sub.w	$s3, $zero, $s3
	b	.LBB18_1
.LBB18_21:
	move	$a0, $zero
	b	.LBB18_52
.LBB18_22:                              # %if.then14
	ld.d	$fp, $s0, 16
	beqz	$fp, .LBB18_42
# %bb.23:                               # %for.body.preheader
	move	$s3, $zero
	b	.LBB18_25
	.p2align	4, , 16
.LBB18_24:                              # %for.inc
                                        #   in Loop: Header=BB18_25 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB18_43
.LBB18_25:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(term_HasPointerSubterm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_24
# %bb.26:                               # %if.then21
                                        #   in Loop: Header=BB18_25 Depth=1
	ld.w	$s1, $s6, 0
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s4, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s1, $a0, 8
	st.d	$s3, $a0, 0
	move	$s3, $a0
	b	.LBB18_24
.LBB18_27:                              # %if.then45
	ld.d	$a0, $s0, 16
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB18_30
# %bb.28:                               # %if.then49
	ld.d	$a0, $a1, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(term_HasPointerSubterm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 16
	beqz	$a0, .LBB18_48
# %bb.29:                               # %if.else56
	ld.d	$a0, $a1, 0
	ld.d	$a0, $a0, 8
	b	.LBB18_49
.LBB18_30:                              # %if.else60
	move	$a0, $a1
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ld.d	$fp, $s0, 16
	ori	$a1, $zero, 3
	bltu	$a0, $a1, .LBB18_47
# %bb.31:                               # %for.cond66.preheader
	move	$s3, $zero
	bnez	$fp, .LBB18_33
	b	.LBB18_46
	.p2align	4, , 16
.LBB18_32:                              # %for.inc79
                                        #   in Loop: Header=BB18_33 Depth=1
	ld.d	$fp, $fp, 0
	beqz	$fp, .LBB18_46
.LBB18_33:                              # %for.body70
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(term_HasPointerSubterm)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB18_32
# %bb.34:                               # %if.then74
                                        #   in Loop: Header=BB18_33 Depth=1
	ld.d	$a0, $fp, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s4, $a0, 8
	st.d	$s3, $a0, 0
	move	$s3, $a0
	b	.LBB18_32
.LBB18_35:                              # %if.then101
	move	$a0, $a1
	b	.LBB18_40
.LBB18_36:                              # %if.then132
	move	$a0, $a1
	b	.LBB18_38
.LBB18_37:                              # %if.then112
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
.LBB18_38:                              # %common.ret.sink.split
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.w	$s1, $s6, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	b	.LBB18_41
.LBB18_39:                              # %if.then147
	ld.d	$a0, $s0, 16
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, 8
.LBB18_40:                              # %common.ret.sink.split
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
.LBB18_41:                              # %common.ret.sink.split
	move	$s2, $a0
	ori	$s1, $zero, 1
	b	.LBB18_51
.LBB18_42:
	move	$s3, $zero
.LBB18_43:                              # %for.end
	move	$a0, $s3
	pcaddu18i	$ra, %call36(list_Length)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	bne	$a0, $s1, .LBB18_46
# %bb.44:                               # %if.then32
	ld.d	$s2, $s3, 8
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	pcalau12i	$a1, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a1, $a1, %got_pc_lo12(memory_FREEDBYTES)
	.p2align	4, , 16
.LBB18_45:                              # %while.body.i
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
	bnez	$a5, .LBB18_45
	b	.LBB18_51
.LBB18_46:                              # %if.else
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	b	.LBB18_50
.LBB18_47:                              # %if.else84
	ld.d	$a0, $fp, 8
	b	.LBB18_49
.LBB18_48:                              # %if.then53
	ld.d	$a0, $a1, 8
.LBB18_49:                              # %common.ret.sink.split
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
.LBB18_50:                              # %common.ret.sink.split
	move	$s2, $a0
.LBB18_51:                              # %common.ret.sink.split
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(def_GetTermsForProof)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	st.d	$s2, $a0, 8
	st.d	$fp, $a0, 0
.LBB18_52:                              # %common.ret250
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
.Lfunc_end18:
	.size	def_GetTermsForProof, .Lfunc_end18-def_GetTermsForProof
                                        # -- End function
	.globl	def_FindProofForGuard           # -- Begin function def_FindProofForGuard
	.p2align	5
	.type	def_FindProofForGuard,@function
def_FindProofForGuard:                  # @def_FindProofForGuard
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
	move	$s0, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $a0
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(def_GetTermsForProof)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB19_6
# %bb.1:                                # %if.then
	move	$a1, $a0
	pcalau12i	$a0, %got_pc_hi20(fol_AND)
	ld.d	$a0, $a0, %got_pc_lo12(fol_AND)
	ld.w	$a0, $a0, 0
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fol_FreeVariables)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	beqz	$s4, .LBB19_7
# %bb.2:                                # %if.end.i
	beqz	$a1, .LBB19_8
# %bb.3:                                # %for.cond.i.preheader
	move	$a3, $s4
	.p2align	4, , 16
.LBB19_4:                               # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $a3
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB19_4
# %bb.5:                                # %for.end.i
	st.d	$a1, $a2, 0
	b	.LBB19_8
.LBB19_6:                               # %if.else
	pcalau12i	$a0, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a0, %got_pc_lo12(term_Delete)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	b	.LBB19_9
.LBB19_7:
	move	$s4, $a1
.LBB19_8:                               # %list_Nconc.exit
	pcalau12i	$a1, %got_pc_hi20(term_Equal)
	ld.d	$a1, $a1, %got_pc_lo12(term_Equal)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_DeleteDuplicates)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	pcalau12i	$a0, %got_pc_hi20(term_Copy)
	ld.d	$a1, $a0, %got_pc_lo12(term_Copy)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(list_NMapCar)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	st.d	$s2, $a0, 8
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(fol_IMPLIES)
	ld.d	$a2, $a1, %got_pc_lo12(fol_IMPLIES)
	move	$a1, $a0
	st.d	$s5, $a0, 0
	ld.w	$a0, $a2, 0
	st.d	$s3, $a1, 8
	pcaddu18i	$ra, %call36(term_Create)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(fol_ALL)
	ld.d	$a1, $a1, %got_pc_lo12(fol_ALL)
	ld.w	$s2, $a1, 0
	move	$s3, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(memory_Malloc)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	st.d	$s3, $a0, 8
	st.d	$zero, $a0, 0
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(fol_CreateQuantifier)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	move	$a0, $zero
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s0
	pcaddu18i	$ra, %call36(cnf_HaveProof)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bnez	$s0, .LBB19_10
.LBB19_9:                               # %if.end24
	move	$a0, $zero
.LBB19_10:                              # %cleanup
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
.Lfunc_end19:
	.size	def_FindProofForGuard, .Lfunc_end19-def_FindProofForGuard
                                        # -- End function
	.globl	def_ApplyDefinitionToTermList   # -- Begin function def_ApplyDefinitionToTermList
	.p2align	5
	.type	def_ApplyDefinitionToTermList,@function
def_ApplyDefinitionToTermList:          # @def_ApplyDefinitionToTermList
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ld.w	$a2, $a2, 204
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	beqz	$a2, .LBB20_47
# %bb.1:                                # %for.cond.preheader.lr.ph
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	beqz	$a0, .LBB20_47
# %bb.2:                                # %for.cond.preheader.lr.ph.split.us
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	beqz	$a0, .LBB20_46
# %bb.3:                                # %for.body.us.us.us.preheader
	pcalau12i	$a0, %got_pc_hi20(cont_BINDINGS)
	ld.d	$s0, $a0, %got_pc_lo12(cont_BINDINGS)
	pcalau12i	$a0, %got_pc_hi20(cont_STACKPOINTER)
	ld.d	$s2, $a0, %got_pc_lo12(cont_STACKPOINTER)
	pcalau12i	$a0, %got_pc_hi20(cont_STACK)
	ld.d	$a0, $a0, %got_pc_lo12(cont_STACK)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LEFTCONTEXT)
	ld.d	$a0, $a0, %got_pc_lo12(cont_LEFTCONTEXT)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cont_LASTBINDING)
	ld.d	$s5, $a0, %got_pc_lo12(cont_LASTBINDING)
	pcalau12i	$a0, %got_pc_hi20(cont_CURRENTBINDING)
	ld.d	$s3, $a0, %got_pc_lo12(cont_CURRENTBINDING)
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	ori	$s1, $zero, 1
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	st.d	$s2, $sp, 64                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB20_4:                               # %for.body.us.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_5 Depth 2
                                        #       Child Loop BB20_9 Depth 3
                                        #         Child Loop BB20_12 Depth 4
                                        #         Child Loop BB20_20 Depth 4
                                        #         Child Loop BB20_34 Depth 4
                                        #       Child Loop BB20_38 Depth 3
	ld.d	$a0, $s8, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB20_5:                               # %for.body16.us.us.us
                                        #   Parent Loop BB20_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB20_9 Depth 3
                                        #         Child Loop BB20_12 Depth 4
                                        #         Child Loop BB20_20 Depth 4
                                        #         Child Loop BB20_34 Depth 4
                                        #       Child Loop BB20_38 Depth 3
	ld.d	$a0, $s4, 8
	ld.d	$s6, $a0, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_FindAllAtoms)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB20_40
# %bb.6:                                # %for.body27.us.us.us.preheader
                                        #   in Loop: Header=BB20_5 Depth=2
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $s0, 0
	ld.w	$a2, $s2, 0
	move	$s4, $fp
	b	.LBB20_9
	.p2align	4, , 16
.LBB20_7:                               #   in Loop: Header=BB20_9 Depth=3
	move	$a2, $zero
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB20_38
.LBB20_8:                               # %cont_BackTrack.exit105.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB20_38
.LBB20_9:                               # %for.body27.us.us.us
                                        #   Parent Loop BB20_4 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB20_12 Depth 4
                                        #         Child Loop BB20_20 Depth 4
                                        #         Child Loop BB20_34 Depth 4
	ld.d	$s7, $s4, 8
	addi.d	$a0, $a2, 1
	st.w	$a0, $s2, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a2, $a2, 2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	stx.w	$a1, $a3, $a2
	st.w	$zero, $s0, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s7
	pcaddu18i	$ra, %call36(unify_Match)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_32
# %bb.10:                               # %if.then.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	ld.w	$a0, $s0, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	blt	$a0, $s1, .LBB20_13
# %bb.11:                               # %while.body.i.us.us.us.preheader
                                        #   in Loop: Header=BB20_9 Depth=3
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB20_12:                              # %while.body.i.us.us.us
                                        #   Parent Loop BB20_4 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        #       Parent Loop BB20_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 0
	st.d	$a1, $s3, 0
	ld.d	$a2, $a1, 24
	st.d	$a2, $s5, 0
	st.w	$zero, $a1, 20
	vst	$vr0, $a1, 4
	ld.d	$a1, $s3, 0
	st.d	$zero, $a1, 24
	addi.d	$a1, $a0, -2
	addi.w	$a0, $a0, -1
	st.w	$a1, $s0, 0
	bltu	$s1, $a0, .LBB20_12
.LBB20_13:                              # %while.end.i.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB20_15
# %bb.14:                               # %if.then.i.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	addi.w	$a0, $a0, -1
	slli.d	$a1, $a0, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	st.w	$a0, $s2, 0
	st.w	$a1, $s0, 0
.LBB20_15:                              # %cont_BackTrack.exit.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	ld.d	$a0, $s8, 8
	ld.d	$a0, $a0, 0
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	pcaddu18i	$ra, %call36(term_MaxVar)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(fol_NormalizeVarsStartingAt)
	jirl	$ra, $ra, 0
	move	$s2, $s8
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s7
	pcaddu18i	$ra, %call36(unify_Match)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(fol_ApplyContextToTerm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_26
# %bb.16:                               # %if.then42.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	ld.d	$a0, $s2, 8
	ld.d	$a0, $a0, 16
	move	$s8, $s2
	beqz	$a0, .LBB20_27
# %bb.17:                               # %if.else.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	move	$a2, $a0
	move	$a0, $a1
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	move	$a1, $a2
	pcaddu18i	$ra, %call36(fol_ApplyContextToTerm)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB20_30
# %bb.18:                               # %if.then64.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a0, $s0, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	blt	$a0, $s1, .LBB20_21
# %bb.19:                               # %while.body.i81.us.us.us.preheader
                                        #   in Loop: Header=BB20_9 Depth=3
	addi.d	$a0, $a0, 1
	.p2align	4, , 16
.LBB20_20:                              # %while.body.i81.us.us.us
                                        #   Parent Loop BB20_4 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        #       Parent Loop BB20_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 0
	st.d	$a1, $s3, 0
	ld.d	$a2, $a1, 24
	st.d	$a2, $s5, 0
	st.w	$zero, $a1, 20
	vst	$vr0, $a1, 4
	ld.d	$a1, $s3, 0
	st.d	$zero, $a1, 24
	addi.d	$a1, $a0, -2
	addi.w	$a0, $a0, -1
	st.w	$a1, $s0, 0
	bltu	$s1, $a0, .LBB20_20
.LBB20_21:                              # %while.end.i75.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	ld.w	$a1, $s2, 0
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a1, .LBB20_23
# %bb.22:                               # %if.then.i77.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	addi.w	$a3, $a1, -1
	slli.d	$a1, $a3, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	st.w	$a3, $s2, 0
	st.w	$a1, $s0, 0
.LBB20_23:                              # %cont_BackTrack.exit87.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	move	$a1, $s7
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	move	$a3, $s8
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(def_FindProofForGuard)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB20_29
# %bb.24:                               # %if.then68.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	ld.w	$a1, $s6, 0
	ld.d	$a0, $s7, 16
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a2, $a2, -1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.w	$a1, $s7, 0
	pcalau12i	$a1, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 16
	st.d	$a0, $s7, 16
	st.d	$zero, $s6, 16
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s7
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s8, 148
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	beqz	$a0, .LBB20_29
# %bb.25:                               # %if.then76.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(fol_PrettyPrintDFG)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fol_PrettyPrintDFG)
	jirl	$ra, $ra, 0
	b	.LBB20_30
	.p2align	4, , 16
.LBB20_26:                              #   in Loop: Header=BB20_9 Depth=3
	move	$s8, $s2
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	b	.LBB20_31
.LBB20_27:                              # %if.then46.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	ld.w	$a1, $s6, 0
	ld.d	$a0, $s7, 16
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a2, $a2, -1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.w	$a1, $s7, 0
	pcalau12i	$a1, %got_pc_hi20(term_Delete)
	ld.d	$a1, $a1, %got_pc_lo12(term_Delete)
	pcaddu18i	$ra, %call36(list_DeleteWithElement)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 16
	st.d	$a0, $s7, 16
	st.d	$zero, $s6, 16
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s7
	pcaddu18i	$ra, %call36(term_AddFatherLinks)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 148
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s2, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB20_31
# %bb.28:                               # %if.then53.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s8, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(fol_PrettyPrintDFG)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fol_PrettyPrintDFG)
	jirl	$ra, $ra, 0
	b	.LBB20_31
.LBB20_29:                              #   in Loop: Header=BB20_9 Depth=3
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
.LBB20_30:                              # %if.end83.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB20_31:                              # %if.end85.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	move	$a0, $s6
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
.LBB20_32:                              # %if.end86.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	ld.w	$a1, $s0, 0
	blt	$a1, $s1, .LBB20_36
# %bb.33:                               # %while.body.i99.us.us.us.preheader
                                        #   in Loop: Header=BB20_9 Depth=3
	addi.d	$a0, $a1, 1
	.p2align	4, , 16
.LBB20_34:                              # %while.body.i99.us.us.us
                                        #   Parent Loop BB20_4 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        #       Parent Loop BB20_9 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s5, 0
	st.d	$a1, $s3, 0
	ld.d	$a2, $a1, 24
	st.d	$a2, $s5, 0
	st.w	$zero, $a1, 20
	vst	$vr0, $a1, 4
	ld.d	$a1, $s3, 0
	st.d	$zero, $a1, 24
	addi.d	$a1, $a0, -2
	addi.w	$a0, $a0, -1
	st.w	$a1, $s0, 0
	bltu	$s1, $a0, .LBB20_34
# %bb.35:                               #   in Loop: Header=BB20_9 Depth=3
	move	$a1, $zero
.LBB20_36:                              # %while.end.i93.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB20_7
# %bb.37:                               # %if.then.i95.us.us.us
                                        #   in Loop: Header=BB20_9 Depth=3
	addi.w	$a2, $a0, -1
	slli.d	$a0, $a2, 2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	st.w	$a2, $s2, 0
	st.w	$a1, $s0, 0
	ld.d	$s4, $s4, 0
	bnez	$s4, .LBB20_8
	.p2align	4, , 16
.LBB20_38:                              # %while.body.i106.us.us.us
                                        #   Parent Loop BB20_4 Depth=1
                                        #     Parent Loop BB20_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	pcalau12i	$a0, %got_pc_hi20(memory_ARRAY)
	ld.d	$a0, $a0, %got_pc_lo12(memory_ARRAY)
	ld.d	$a1, $a0, 128
	pcalau12i	$a2, %got_pc_hi20(memory_FREEDBYTES)
	ld.d	$a2, $a2, %got_pc_lo12(memory_FREEDBYTES)
	ld.w	$a3, $a1, 32
	ld.d	$a4, $a2, 0
	ld.d	$a5, $fp, 0
	add.d	$a3, $a4, $a3
	st.d	$a3, $a2, 0
	ld.d	$a1, $a1, 0
	st.d	$a1, $fp, 0
	ld.d	$a0, $a0, 128
	st.d	$fp, $a0, 0
	move	$fp, $a5
	bnez	$a5, .LBB20_38
# %bb.39:                               #   in Loop: Header=BB20_5 Depth=2
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
.LBB20_40:                              # %list_Delete.exit.us.us.us
                                        #   in Loop: Header=BB20_5 Depth=2
	ld.d	$s4, $s4, 0
	beqz	$s4, .LBB20_42
# %bb.41:                               # %list_Delete.exit.us.us.us
                                        #   in Loop: Header=BB20_5 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bnez	$a0, .LBB20_5
.LBB20_42:                              # %for.cond10.for.end91_crit_edge.us.us.us
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$s8, $s8, 0
	beqz	$s8, .LBB20_44
# %bb.43:                               # %for.cond10.for.end91_crit_edge.us.us.us
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bnez	$a0, .LBB20_4
.LBB20_44:                              # %for.cond.while.cond.loopexit_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB20_4 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB20_47
# %bb.45:                               # %for.cond.while.cond.loopexit_crit_edge.split.us.us.us
                                        #   in Loop: Header=BB20_4 Depth=1
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bnez	$a0, .LBB20_4
	b	.LBB20_47
	.p2align	4, , 16
.LBB20_46:                              # %for.body.us129
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $fp, 8
	ld.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(term_Copy)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(term_Delete)
	jirl	$ra, $ra, 0
	ld.d	$fp, $fp, 0
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	bnez	$fp, .LBB20_46
.LBB20_47:                              # %while.end
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.Lfunc_end20:
	.size	def_ApplyDefinitionToTermList, .Lfunc_end20-def_ApplyDefinitionToTermList
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nNew definition found :"
	.size	.L.str, 24

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\nFound definitions :\n"
	.size	.L.str.1, 22

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"\n---\n"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\n\nAtom: "
	.size	.L.str.3, 9

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\nExpansion: \n"
	.size	.L.str.4, 14

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"\nParent clauses: "
	.size	.L.str.5, 18

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"%d.%d "
	.size	.L.str.6, 7

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"\nDerived from conjecture clauses."
	.size	.L.str.7, 34

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\nNot derived from conjecture clauses."
	.size	.L.str.8, 38

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"\nLabel: "
	.size	.L.str.9, 9

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\nGuard:"
	.size	.L.str.10, 8

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Nothing."
	.size	.L.str.11, 9

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"\nAttributes: "
	.size	.L.str.12, 14

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	" Equality "
	.size	.L.str.13, 11

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	" No Multiple Occurrences "
	.size	.L.str.14, 26

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	" None "
	.size	.L.str.15, 7

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"\nNew clauses after applying definitions : \n"
	.size	.L.str.16, 44

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\n\nNew terms after applying definitions : \n"
	.size	.L.str.17, 43

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"\nApplied definition for"
	.size	.L.str.19, 24

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"\nNew formula:"
	.size	.L.str.20, 14

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym term_Copy
	.addrsig_sym term_Delete
	.addrsig_sym term_Equal
