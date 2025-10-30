	.file	"lookup.c"
	.text
	.globl	linit                           # -- Begin function linit
	.p2align	5
	.type	linit,@function
linit:                                  # @linit
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
	pcalau12i	$s2, %pc_hi20(inited)
	ld.bu	$a0, $s2, %pc_lo12(inited)
	beqz	$a0, .LBB0_2
# %bb.1:
	move	$a0, $zero
	b	.LBB0_97
.LBB0_2:                                # %if.end
	pcalau12i	$a0, %got_pc_hi20(hashname)
	ld.d	$fp, $a0, %got_pc_lo12(hashname)
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_85
# %bb.3:                                # %if.end4
	move	$s0, $a0
	ori	$a1, $zero, 47
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strrchr)
	jirl	$ra, $ra, 0
	sltui	$a1, $a0, 1
	addi.d	$a0, $a0, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s1, $a1, $a0
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$fp, $a0, %got_pc_lo12(hashheader)
	ori	$a2, $zero, 3928
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(hashsize)
	ld.d	$s8, $a1, %got_pc_lo12(hashsize)
	bstrpick.d	$a1, $a0, 31, 3
	ori	$a2, $zero, 490
	st.w	$a0, $s8, 0
	bgeu	$a2, $a1, .LBB0_86
# %bb.4:                                # %if.else27
	ld.hu	$a4, $fp, 0
	lu12i.w	$a0, 9
	ori	$a3, $a0, 1538
	bne	$a4, $a3, .LBB0_89
# %bb.5:                                # %if.else34
	ori	$a0, $zero, 3924
	ldx.hu	$a4, $fp, $a0
	bne	$a4, $a3, .LBB0_90
# %bb.6:                                # %if.else41
	ld.hu	$a2, $fp, 2
	ld.hu	$a1, $fp, 4
	ld.hu	$a4, $fp, 6
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB0_91
# %bb.7:                                # %if.else41
	ori	$a0, $zero, 100
	bne	$a1, $a0, .LBB0_91
# %bb.8:                                # %if.else41
	ori	$a0, $zero, 10
	bne	$a4, $a0, .LBB0_91
# %bb.9:                                # %if.end60
	pcalau12i	$a0, %got_pc_hi20(nodictflag)
	ld.d	$s7, $a0, %got_pc_lo12(nodictflag)
	ld.w	$s5, $s7, 0
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	beqz	$s5, .LBB0_12
# %bb.10:                               # %if.then62
	ori	$a0, $zero, 1
	st.w	$a0, $s8, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 24
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(hashtbl)
	ld.d	$a1, $a1, %got_pc_lo12(hashtbl)
	st.d	$a0, $a1, 0
	beqz	$a0, .LBB0_84
# %bb.11:                               # %if.end68
	ld.wu	$a1, $fp, 16
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	move	$s4, $zero
	b	.LBB0_13
.LBB0_12:                               # %if.else74
	ld.wu	$s1, $fp, 20
	slli.d	$a0, $s1, 4
	alsl.d	$a0, $s1, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	pcalau12i	$a0, %got_pc_hi20(hashtbl)
	ld.d	$a1, $a0, %got_pc_lo12(hashtbl)
	ld.wu	$a0, $fp, 12
	st.d	$s2, $a1, 0
	st.w	$s1, $s8, 0
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	sltui	$s4, $s2, 1
.LBB0_13:                               # %if.end79
	pcalau12i	$a0, %got_pc_hi20(hashstrings)
	ld.d	$s2, $a0, %got_pc_lo12(hashstrings)
	ld.w	$s3, $fp, 24
	st.d	$s1, $s2, 0
	pcalau12i	$a0, %got_pc_hi20(numsflags)
	ld.d	$s6, $a0, %got_pc_lo12(numsflags)
	ld.w	$a0, $fp, 28
	st.w	$s3, $s6, 0
	pcalau12i	$a1, %got_pc_hi20(numpflags)
	ld.d	$a1, $a1, %got_pc_lo12(numpflags)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.w	$a0, $a1, 0
	add.w	$a0, $a0, $s3
	slli.d	$a0, $a0, 8
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %got_pc_hi20(sflaglist)
	ld.d	$a1, $a1, %got_pc_lo12(sflaglist)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	beqz	$a0, .LBB0_84
# %bb.14:                               # %if.end79
	beqz	$s1, .LBB0_84
# %bb.15:                               # %if.end79
	bnez	$s4, .LBB0_84
# %bb.16:                               # %if.end93
	slli.d	$a1, $s3, 8
	add.d	$a0, $a0, $a1
	pcalau12i	$a1, %got_pc_hi20(pflaglist)
	ld.d	$a1, $a1, %got_pc_lo12(pflaglist)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $a1, 0
	beqz	$s5, .LBB0_19
# %bb.17:                               # %if.then95
	ld.wu	$a2, $fp, 16
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 16
	bne	$a0, $a1, .LBB0_83
# %bb.18:                               # %if.end103
	ld.w	$a1, $fp, 12
	ld.w	$a2, $fp, 20
	sub.d	$a0, $a1, $a0
	slli.d	$a1, $a2, 4
	alsl.d	$a1, $a2, $a1, 3
	add.d	$a1, $a0, $a1
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB0_21
.LBB0_19:                               # %if.else110
	ld.wu	$a2, $fp, 12
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 12
	bne	$a0, $a1, .LBB0_83
# %bb.20:                               # %lor.lhs.false116
	pcalau12i	$a0, %got_pc_hi20(hashtbl)
	ld.d	$a0, $a0, %got_pc_lo12(hashtbl)
	ld.wu	$a2, $fp, 20
	ld.d	$a1, $a0, 0
	ori	$s1, $zero, 24
	mul.d	$a2, $a2, $s1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 20
	mul.d	$a1, $a1, $s1
	bne	$a0, $a1, .LBB0_83
.LBB0_21:                               # %if.end127
	ld.w	$a0, $s6, 0
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a2, $s1, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	add.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a2, $a0, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(read)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s6, 0
	ld.w	$a2, $s1, 0
	add.w	$a1, $a2, $a1
	slli.d	$a1, $a1, 8
	bne	$a0, $a1, .LBB0_83
# %bb.22:                               # %if.end139
	move	$a0, $s0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	bnez	$a0, .LBB0_26
# %bb.23:                               # %if.then142
	ld.w	$a2, $s8, 0
	blez	$a2, .LBB0_26
# %bb.24:                               # %for.body.preheader
	pcalau12i	$a0, %got_pc_hi20(hashtbl)
	ld.d	$a0, $a0, %got_pc_lo12(hashtbl)
	ld.d	$a1, $a0, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 1
	ori	$a3, $zero, 24
	ori	$a4, $zero, 1
	.p2align	4, , 16
.LBB0_25:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a5, $a1, 0
	ld.d	$a6, $s2, 0
	addi.d	$a7, $a5, 1
	addi.w	$a5, $a5, 0
	add.d	$a5, $a6, $a5
	ld.d	$a6, $a1, -8
	sltui	$a7, $a7, 1
	masknez	$a5, $a5, $a7
	st.d	$a5, $a1, 0
	addi.d	$a5, $a6, 1
	ld.d	$a7, $a0, 0
	sltui	$a5, $a5, 1
	addi.w	$a6, $a6, 0
	mul.d	$a6, $a6, $a3
	add.d	$a6, $a7, $a6
	masknez	$a5, $a6, $a5
	st.d	$a5, $a1, -8
	addi.w	$a2, $a2, -1
	addi.d	$a1, $a1, 24
	bltu	$a4, $a2, .LBB0_25
.LBB0_26:                               # %if.end167
	ld.w	$s1, $s6, 0
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s3, $s8, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $a0, 0
	add.w	$a0, $s3, $s1
	blez	$a0, .LBB0_33
# %bb.27:                               # %for.body173.preheader
	add.d	$a0, $s1, $s3
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 1
	move	$a2, $s0
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_28:                               #   in Loop: Header=BB0_30 Depth=1
	move	$a3, $zero
	ld.hu	$a4, $a2, 20
	st.d	$a3, $a2, 0
	beqz	$a4, .LBB0_32
.LBB0_29:                               # %if.then183
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a3, $s2, 0
	ld.w	$a4, $a2, 8
	add.d	$a3, $a3, $a4
	st.d	$a3, $a2, 8
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 256
	bgeu	$a1, $a0, .LBB0_33
.LBB0_30:                               # %for.body173
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a3, $a2, 18
	beqz	$a3, .LBB0_28
# %bb.31:                               # %if.then175
                                        #   in Loop: Header=BB0_30 Depth=1
	ld.d	$a3, $s2, 0
	ld.w	$a4, $a2, 0
	add.d	$a3, $a3, $a4
	ld.hu	$a4, $a2, 20
	st.d	$a3, $a2, 0
	bnez	$a4, .LBB0_29
.LBB0_32:                               # %if.else187
                                        #   in Loop: Header=BB0_30 Depth=1
	st.d	$zero, $a2, 8
	addi.w	$a0, $a0, -1
	addi.d	$a2, $a2, 256
	bltu	$a1, $a0, .LBB0_30
.LBB0_33:                               # %for.cond193.preheader
	blez	$s1, .LBB0_55
# %bb.34:
	pcalau12i	$a0, %got_pc_hi20(sflagindex)
	ld.d	$s5, $a0, %got_pc_lo12(sflagindex)
	ori	$s8, $zero, 1
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_35:                               # %if.end233.thread
                                        #   in Loop: Header=BB0_38 Depth=1
	st.d	$s0, $s3, 0
	ori	$a0, $zero, 1
.LBB0_36:                               # %for.inc264.sink.split
                                        #   in Loop: Header=BB0_38 Depth=1
	st.w	$a0, $s3, 8
.LBB0_37:                               # %for.inc264
                                        #   in Loop: Header=BB0_38 Depth=1
	move	$a0, $s1
	addi.w	$s1, $s1, -1
	addi.d	$s0, $s0, 256
	bge	$s8, $a0, .LBB0_54
.LBB0_38:                               # %for.body196
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_44 Depth 2
	ld.h	$a1, $s0, 20
	beqz	$a1, .LBB0_46
# %bb.39:                               # %if.else202
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $s0, 8
	add.d	$a2, $a0, $a1
	ld.bu	$a1, $a2, -1
	alsl.d	$s3, $a1, $s5, 4
	ld.w	$a3, $s3, 8
	ori	$a1, $zero, 1
	bnez	$a3, .LBB0_47
# %bb.40:                               # %land.rhs.preheader
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a3, $s3, 0
	beqz	$a3, .LBB0_52
# %bb.41:                               #   in Loop: Header=BB0_38 Depth=1
	addi.d	$a1, $a2, -1
	b	.LBB0_44
	.p2align	4, , 16
.LBB0_42:                               #   in Loop: Header=BB0_44 Depth=2
	ori	$a2, $zero, 1
	move	$s3, $a3
	move	$a1, $a0
	ld.w	$a3, $s3, 8
	bnez	$a3, .LBB0_53
.LBB0_43:                               # %land.rhs
                                        #   in Loop: Header=BB0_44 Depth=2
	ld.d	$a3, $s3, 0
	beqz	$a3, .LBB0_53
.LBB0_44:                               # %while.body
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beq	$a1, $a0, .LBB0_42
# %bb.45:                               # %if.else221
                                        #   in Loop: Header=BB0_44 Depth=2
	ld.bu	$a4, $a1, -1
	move	$a2, $zero
	addi.d	$a1, $a1, -1
	alsl.d	$s3, $a4, $a3, 4
	ld.w	$a3, $s3, 8
	beqz	$a3, .LBB0_43
	b	.LBB0_53
	.p2align	4, , 16
.LBB0_46:                               #   in Loop: Header=BB0_38 Depth=1
	move	$a1, $zero
	move	$s3, $s5
.LBB0_47:                               # %if.end227
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.w	$a0, $s3, 8
	beqz	$a0, .LBB0_35
.LBB0_48:                               # %if.end233
                                        #   in Loop: Header=BB0_38 Depth=1
	addi.d	$a2, $a0, 1
	slti	$a0, $a0, 3
	xori	$a1, $a1, 1
	or	$a0, $a1, $a0
	st.w	$a2, $s3, 8
	bnez	$a0, .LBB0_37
# %bb.49:                               # %land.lhs.true239
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.d	$s4, $s3, 0
	ld.d	$a0, $s0, 8
	ld.d	$a1, $s4, 8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_37
# %bb.50:                               # %if.then246
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.w	$a0, $fp, 36
	ld.w	$s1, $s6, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s7, $a1, 0
	addi.d	$a0, $a0, 128
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	beqz	$a0, .LBB0_92
# %bb.51:                               # %if.end261
                                        #   in Loop: Header=BB0_38 Depth=1
	move	$a0, $zero
	addi.d	$s0, $s4, -256
	sub.d	$a1, $s0, $s7
	srli.d	$a1, $a1, 8
	sub.w	$s1, $s1, $a1
	b	.LBB0_36
.LBB0_52:                               #   in Loop: Header=BB0_38 Depth=1
	move	$a2, $zero
.LBB0_53:                               # %if.end227.loopexit
                                        #   in Loop: Header=BB0_38 Depth=1
	sltui	$a1, $a2, 1
	ld.w	$a0, $s3, 8
	bnez	$a0, .LBB0_48
	b	.LBB0_35
.LBB0_54:                               # %for.end267.loopexit
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.w	$s3, $s8, 0
.LBB0_55:                               # %for.end267
	blez	$s3, .LBB0_74
# %bb.56:                               # %for.body271.preheader
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(pflagindex)
	ld.d	$s0, $a0, %got_pc_lo12(pflagindex)
	ori	$s1, $zero, 1
	b	.LBB0_60
	.p2align	4, , 16
.LBB0_57:                               # %if.end311.thread
                                        #   in Loop: Header=BB0_60 Depth=1
	st.d	$s6, $s5, 0
	ori	$a0, $zero, 1
.LBB0_58:                               # %for.inc348.sink.split
                                        #   in Loop: Header=BB0_60 Depth=1
	st.w	$a0, $s5, 8
.LBB0_59:                               # %for.inc348
                                        #   in Loop: Header=BB0_60 Depth=1
	move	$a0, $s3
	addi.w	$s3, $s3, -1
	addi.d	$s6, $s6, 256
	bge	$s1, $a0, .LBB0_74
.LBB0_60:                               # %for.body271
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
	ld.hu	$a0, $s6, 20
	beqz	$a0, .LBB0_67
# %bb.61:                               # %if.else277
                                        #   in Loop: Header=BB0_60 Depth=1
	ld.d	$a1, $s6, 8
	ld.bu	$a0, $a1, 0
	alsl.d	$s5, $a0, $s0, 4
	ld.w	$a2, $s5, 8
	ori	$a0, $zero, 1
	bnez	$a2, .LBB0_68
# %bb.62:                               # %land.rhs286.preheader
                                        #   in Loop: Header=BB0_60 Depth=1
	ld.d	$a2, $s5, 0
	beqz	$a2, .LBB0_73
# %bb.63:                               # %while.body291.lr.ph
                                        #   in Loop: Header=BB0_60 Depth=1
	addi.d	$a0, $a1, 1
	.p2align	4, , 16
.LBB0_64:                               # %while.body291
                                        #   Parent Loop BB0_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a0, 0
	alsl.d	$s5, $a3, $a2, 4
	ld.w	$a2, $s5, 8
	sltui	$a1, $a3, 1
	bnez	$a2, .LBB0_66
# %bb.65:                               # %land.rhs286
                                        #   in Loop: Header=BB0_64 Depth=2
	ld.d	$a2, $s5, 0
	sltu	$a3, $zero, $a3
	add.d	$a0, $a0, $a3
	bnez	$a2, .LBB0_64
.LBB0_66:                               # %if.end305.loopexit
                                        #   in Loop: Header=BB0_60 Depth=1
	xori	$a0, $a1, 1
	ld.w	$a1, $s5, 8
	bnez	$a1, .LBB0_69
	b	.LBB0_57
	.p2align	4, , 16
.LBB0_67:                               #   in Loop: Header=BB0_60 Depth=1
	move	$a0, $zero
	move	$s5, $s0
.LBB0_68:                               # %if.end305
                                        #   in Loop: Header=BB0_60 Depth=1
	ld.w	$a1, $s5, 8
	beqz	$a1, .LBB0_57
.LBB0_69:                               # %if.end311
                                        #   in Loop: Header=BB0_60 Depth=1
	addi.d	$a2, $a1, 1
	slti	$a1, $a1, 3
	xori	$a0, $a0, 1
	or	$a0, $a0, $a1
	st.w	$a2, $s5, 8
	bnez	$a0, .LBB0_59
# %bb.70:                               # %land.lhs.true319
                                        #   in Loop: Header=BB0_60 Depth=1
	ld.d	$s4, $s5, 0
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s4, 8
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_59
# %bb.71:                               # %if.then326
                                        #   in Loop: Header=BB0_60 Depth=1
	ld.w	$s3, $s8, 0
	ld.w	$a0, $fp, 36
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $a1, 0
	addi.w	$a0, $a0, 128
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	beqz	$a0, .LBB0_92
# %bb.72:                               # %if.end345
                                        #   in Loop: Header=BB0_60 Depth=1
	move	$a0, $zero
	addi.d	$s6, $s4, -256
	sub.d	$a1, $s6, $s7
	srli.d	$a1, $a1, 8
	sub.w	$s3, $s3, $a1
	b	.LBB0_58
.LBB0_73:                               #   in Loop: Header=BB0_60 Depth=1
	move	$a1, $zero
	xori	$a0, $a1, 1
	ld.w	$a1, $s5, 8
	bnez	$a1, .LBB0_69
	b	.LBB0_57
.LBB0_74:                               # %for.end351
	ld.w	$s1, $fp, 40
	beqz	$s1, .LBB0_81
# %bb.75:                               # %if.else355
	slli.d	$a0, $s1, 4
	alsl.d	$a0, $s1, $a0, 3
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(chartypes)
	ld.d	$a0, $a0, %got_pc_lo12(chartypes)
	st.d	$s0, $a0, 0
	beqz	$s0, .LBB0_92
# %bb.76:                               # %if.end363
	blez	$s1, .LBB0_82
# %bb.77:                               # %for.body367.lr.ph
	ld.w	$s3, $fp, 44
	ld.d	$fp, $s2, 0
	move	$s2, $zero
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_78:                               # %while.end410
                                        #   in Loop: Header=BB0_79 Depth=1
	addi.d	$s2, $s2, 1
	addi.w	$s3, $s3, 1
	beq	$s2, $s1, .LBB0_82
.LBB0_79:                               # %for.body367
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_80 Depth 2
	add.d	$a0, $fp, $s3
	slli.d	$a1, $s2, 4
	alsl.d	$a1, $s2, $a1, 3
	add.d	$s4, $s0, $a1
	stx.d	$a0, $s0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $a0
	addi.w	$s3, $a0, 1
	add.d	$a0, $fp, $s3
	st.d	$a0, $s4, 8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $a0, $s3
	addi.w	$s3, $a0, 1
	add.d	$a0, $fp, $s3
	st.d	$a0, $s4, 16
	ldx.bu	$a1, $fp, $s3
	beqz	$a1, .LBB0_78
	.p2align	4, , 16
.LBB0_80:                               # %while.body402
                                        #   Parent Loop BB0_79 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $a0
	addi.w	$s3, $a0, 1
	ldx.bu	$a1, $fp, $s3
	add.d	$a0, $fp, $s3
	bnez	$a1, .LBB0_80
	b	.LBB0_78
.LBB0_81:                               # %if.then354
	pcalau12i	$a0, %got_pc_hi20(chartypes)
	ld.d	$a0, $a0, %got_pc_lo12(chartypes)
	st.d	$zero, $a0, 0
.LBB0_82:                               # %if.end415
	move	$a0, $zero
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.b	$a1, $a2, %pc_lo12(inited)
	b	.LBB0_97
.LBB0_83:                               # %if.then101
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	ori	$a1, $zero, 27
	b	.LBB0_93
.LBB0_84:                               # %if.then66
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ori	$a1, $zero, 40
	b	.LBB0_93
.LBB0_85:                               # %if.then2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	pcalau12i	$a2, %got_pc_hi20(hashname)
	ld.d	$a2, $a2, %got_pc_lo12(hashname)
	b	.LBB0_88
.LBB0_86:                               # %if.else18
	addi.w	$a3, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	bnez	$a3, .LBB0_94
# %bb.87:                               # %if.then21
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	move	$a2, $s1
.LBB0_88:                               # %cleanup
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_96
.LBB0_89:                               # %if.then31
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	b	.LBB0_95
.LBB0_90:                               # %if.then38
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	b	.LBB0_95
.LBB0_91:                               # %if.then52
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	ext.w.h	$a3, $a1
	ext.w.h	$a4, $a4
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a5, $zero, 3
	ori	$a6, $zero, 100
	ori	$a7, $zero, 10
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	b	.LBB0_96
.LBB0_92:                               # %if.then259
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	ori	$a1, $zero, 45
.LBB0_93:                               # %cleanup
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	b	.LBB0_96
.LBB0_94:                               # %if.else23
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a4, $zero, 3928
.LBB0_95:                               # %cleanup
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
.LBB0_96:                               # %cleanup
	addi.w	$a0, $zero, -1
.LBB0_97:                               # %cleanup
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
	.size	linit, .Lfunc_end0-linit
                                        # -- End function
	.globl	lookup                          # -- Begin function lookup
	.p2align	5
	.type	lookup,@function
lookup:                                 # @lookup
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(hashtbl)
	ld.d	$a0, $a0, %got_pc_lo12(hashtbl)
	ld.d	$s2, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(hashsize)
	ld.d	$a0, $a0, %got_pc_lo12(hashsize)
	ld.w	$a1, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hash)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 120
	ori	$a3, $zero, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(ichartostr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_13
# %bb.1:                                # %if.end
	beqz	$s2, .LBB1_9
.LBB1_2:                                # %for.body.lr.ph
	slli.d	$a0, $s1, 4
	ld.bu	$s3, $sp, 8
	alsl.d	$a0, $s1, $a0, 3
	add.d	$s1, $s2, $a0
	addi.d	$s2, $sp, 9
	.p2align	4, , 16
.LBB1_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	ld.d	$a0, $s1, 8
	beqz	$a0, .LBB1_7
# %bb.4:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.bu	$a1, $a0, 0
	bne	$a1, $s3, .LBB1_7
# %bb.5:                                # %land.lhs.true10
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $a0, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_7
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_6:                                # %while.body
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$s1, $s1, 0
.LBB1_7:                                # %while.body
                                        #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s1, 19
	andi	$a0, $a0, 64
	bnez	$a0, .LBB1_6
# %bb.8:                                # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$s1, $s1, 0
	bnez	$s1, .LBB1_3
.LBB1_9:                                # %for.end
	beqz	$s0, .LBB1_11
# %bb.10:                               # %if.then22
	move	$a0, $fp
	pcaddu18i	$ra, %call36(treelookup)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	b	.LBB1_12
.LBB1_11:
	move	$s1, $zero
.LBB1_12:                               # %cleanup
	move	$a0, $s1
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB1_13:                               # %if.then
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	pcalau12i	$a2, %pc_hi20(.L.str.11)
	addi.d	$a4, $a2, %pc_lo12(.L.str.11)
	addi.d	$a2, $sp, 8
	ori	$a3, $zero, 475
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB1_2
	b	.LBB1_9
.Lfunc_end1:
	.size	lookup, .Lfunc_end1-lookup
                                        # -- End function
	.type	inited,@object                  # @inited
	.local	inited
	.comm	inited,1,4
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Can't open %s\r\n"
	.size	.L.str, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Null hash table %s\r\n"
	.size	.L.str.2, 21

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Truncated hash table %s:  got %d bytes, expected %d\r\n"
	.size	.L.str.3, 54

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Illegal format hash table %s - expected magic 0x%x, got 0x%x\r\n"
	.size	.L.str.4, 63

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Illegal format hash table %s - expected magic2 0x%x, got 0x%x\r\n"
	.size	.L.str.5, 64

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Hash table options don't agree with buildhash - 0x%x/%d/%d vs. 0x%x/%d/%d\r\n"
	.size	.L.str.6, 76

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Couldn't allocate space for hash table\r\n"
	.size	.L.str.7, 41

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Illegal format hash table\r\n"
	.size	.L.str.8, 28

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Couldn't allocate space for language tables\r\n"
	.size	.L.str.9, 46

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"\r\nWord '%s' too long at line %d of %s, truncated\r\n"
	.size	.L.str.10, 51

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"/home/zhaoqi/llvm-test-suite/MultiSource/Benchmarks/MiBench/office-ispell/lookup.c"
	.size	.L.str.11, 83

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hashname
	.addrsig_sym hashheader
