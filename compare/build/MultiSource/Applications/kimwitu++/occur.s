	.file	"occur.cc"
	.text
	.globl	_ZN2kc10v_defoccurEPNS_7impl_IDEPNS_11impl_IDtypeE # -- Begin function _ZN2kc10v_defoccurEPNS_7impl_IDEPNS_11impl_IDtypeE
	.p2align	5
	.type	_ZN2kc10v_defoccurEPNS_7impl_IDEPNS_11impl_IDtypeE,@function
_ZN2kc10v_defoccurEPNS_7impl_IDEPNS_11impl_IDtypeE: # @_ZN2kc10v_defoccurEPNS_7impl_IDEPNS_11impl_IDtypeE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 0
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB0_2
# %bb.1:                                # %if.then
	ld.d	$s2, $fp, 40
	b	.LBB0_3
.LBB0_2:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 63
	pcaddu18i	$ra, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jirl	$ra, $ra, 0
                                        # implicit-def: $r25
.LBB0_3:                                # %if.end
	ld.d	$a0, $s0, 0
	st.d	$s0, $fp, 8
	ld.d	$s1, $s2, 8
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 172
	beq	$a0, $s3, .LBB0_6
# %bb.4:                                # %if.else13
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_7
# %bb.5:                                # %if.then18
	ld.w	$a0, $fp, 24
	ld.d	$a1, $fp, 32
	st.d	$s0, $s2, 8
	st.w	$a0, $s2, 16
	st.d	$a1, $s2, 24
.LBB0_6:                                # %cleanup542
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_7:                                # %cleanup.cont
	ld.d	$s0, $fp, 8
	ld.d	$a0, $s0, 0
	ld.d	$s1, $s2, 8
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 184
	bne	$a0, $s3, .LBB0_10
# %bb.8:                                # %land.lhs.true
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_10
# %bb.9:                                # %land.lhs.true40
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 115
	beq	$a0, $a1, .LBB0_6
.LBB0_10:                               # %if.else47
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_13
# %bb.11:                               # %land.lhs.true52
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 184
	bne	$a0, $a1, .LBB0_13
# %bb.12:                               # %land.lhs.true57
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 114
	beq	$a0, $a1, .LBB0_6
.LBB0_13:                               # %if.else65
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 184
	bne	$a0, $s3, .LBB0_16
# %bb.14:                               # %land.lhs.true70
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_16
# %bb.15:                               # %land.lhs.true75
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 113
	beq	$a0, $a1, .LBB0_6
.LBB0_16:                               # %if.else83
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_21
# %bb.17:                               # %land.lhs.true88
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 184
	bne	$a0, $a1, .LBB0_21
# %bb.18:                               # %land.lhs.true93
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 112
	bne	$a0, $s3, .LBB0_21
# %bb.19:                               # %if.then100
	ld.d	$s0, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_52
# %bb.20:                               # %if.then108
	ld.d	$a0, $s2, 24
	ld.d	$a1, $fp, 32
	pcaddu18i	$ra, %call36(_ZNK2kc20impl_abstract_phylum2eqEPKS0_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
	b	.LBB0_53
.LBB0_21:                               # %if.else125
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 184
	bne	$a0, $s3, .LBB0_24
# %bb.22:                               # %land.lhs.true130
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_24
# %bb.23:                               # %land.lhs.true135
	ld.d	$a0, $s1, 8
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 111
	beq	$a0, $a1, .LBB0_6
.LBB0_24:                               # %if.else146
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 185
	bne	$a0, $s3, .LBB0_28
# %bb.25:                               # %land.lhs.true151
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_28
# %bb.26:                               # %if.then156
	ld.d	$a0, $s0, 16
	ld.d	$a1, $s1, 16
	bne	$a0, $a1, .LBB0_6
# %bb.27:                               # %if.then161
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB0_54
.LBB0_28:                               # %if.else164
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 183
	bne	$a0, $s3, .LBB0_31
# %bb.29:                               # %land.lhs.true169
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_31
# %bb.30:                               # %if.then174
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 32
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jr	$t8
.LBB0_31:                               # %if.else176
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_34
# %bb.32:                               # %land.lhs.true181
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 182
	bne	$a0, $a1, .LBB0_34
# %bb.33:                               # %if.then186
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	b	.LBB0_54
.LBB0_34:                               # %if.else188
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 182
	bne	$a0, $s3, .LBB0_37
# %bb.35:                               # %land.lhs.true193
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 183
	bne	$a0, $a1, .LBB0_37
# %bb.36:                               # %if.then198
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	b	.LBB0_54
.LBB0_37:                               # %if.else200
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_40
# %bb.38:                               # %land.lhs.true205
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 182
	bne	$a0, $a1, .LBB0_40
# %bb.39:                               # %if.then210
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB0_54
.LBB0_40:                               # %if.else212
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 180
	bne	$a0, $s3, .LBB0_43
# %bb.41:                               # %land.lhs.true217
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_43
# %bb.42:                               # %if.then222
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	b	.LBB0_54
.LBB0_43:                               # %if.else224
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_46
# %bb.44:                               # %land.lhs.true229
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 179
	bne	$a0, $a1, .LBB0_46
# %bb.45:                               # %if.then234
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	b	.LBB0_54
.LBB0_46:                               # %if.else236
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 179
	bne	$a0, $s3, .LBB0_49
# %bb.47:                               # %land.lhs.true241
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 180
	bne	$a0, $a1, .LBB0_49
# %bb.48:                               # %if.then246
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	b	.LBB0_54
.LBB0_49:                               # %if.else248
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_56
# %bb.50:                               # %land.lhs.true253
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 179
	bne	$a0, $a1, .LBB0_56
# %bb.51:                               # %if.then258
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	b	.LBB0_54
.LBB0_52:                               # %if.else115
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 111
	bne	$a0, $a1, .LBB0_65
.LBB0_53:                               # %if.then112
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
.LBB0_54:                               # %if.then112
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
.LBB0_55:                               # %if.then112
	ld.d	$a1, $fp, 32
	ld.w	$a2, $fp, 24
	move	$a3, $a0
	move	$a0, $a2
	move	$a2, $a3
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE)
	jr	$t8
.LBB0_56:                               # %if.else260
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 178
	bne	$a0, $s3, .LBB0_59
# %bb.57:                               # %land.lhs.true265
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_59
# %bb.58:                               # %if.then270
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	b	.LBB0_54
.LBB0_59:                               # %if.else272
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_62
# %bb.60:                               # %land.lhs.true277
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 177
	bne	$a0, $a1, .LBB0_62
# %bb.61:                               # %if.then282
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	b	.LBB0_54
.LBB0_62:                               # %if.else284
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 177
	bne	$a0, $s3, .LBB0_67
# %bb.63:                               # %land.lhs.true289
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 178
	bne	$a0, $a1, .LBB0_67
# %bb.64:                               # %if.then294
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB0_54
.LBB0_65:                               # %if.else122
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 107
.LBB0_66:                               # %if.else122
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jr	$t8
.LBB0_67:                               # %if.else296
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_70
# %bb.68:                               # %land.lhs.true301
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 177
	bne	$a0, $a1, .LBB0_70
# %bb.69:                               # %if.then306
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	b	.LBB0_54
.LBB0_70:                               # %if.else308
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 176
	bne	$a0, $s3, .LBB0_73
# %bb.71:                               # %land.lhs.true313
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_73
# %bb.72:                               # %if.then318
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	b	.LBB0_54
.LBB0_73:                               # %if.else320
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_76
# %bb.74:                               # %land.lhs.true325
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 175
	bne	$a0, $a1, .LBB0_76
# %bb.75:                               # %if.then330
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	b	.LBB0_54
.LBB0_76:                               # %if.else332
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 175
	bne	$a0, $s3, .LBB0_79
# %bb.77:                               # %land.lhs.true337
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 176
	bne	$a0, $a1, .LBB0_79
# %bb.78:                               # %if.then342
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	b	.LBB0_54
.LBB0_79:                               # %if.else344
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_82
# %bb.80:                               # %land.lhs.true349
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 175
	bne	$a0, $a1, .LBB0_82
# %bb.81:                               # %if.then354
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	b	.LBB0_54
.LBB0_82:                               # %if.else356
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 174
	bne	$a0, $s3, .LBB0_85
# %bb.83:                               # %land.lhs.true361
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_85
# %bb.84:                               # %if.then366
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	b	.LBB0_54
.LBB0_85:                               # %if.else368
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_88
# %bb.86:                               # %land.lhs.true373
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 173
	bne	$a0, $a1, .LBB0_88
# %bb.87:                               # %if.then378
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	b	.LBB0_54
.LBB0_88:                               # %if.else380
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 173
	bne	$a0, $s3, .LBB0_91
# %bb.89:                               # %land.lhs.true385
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 174
	bne	$a0, $a1, .LBB0_91
# %bb.90:                               # %if.then390
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	b	.LBB0_54
.LBB0_91:                               # %if.else392
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB0_94
# %bb.92:                               # %land.lhs.true397
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 173
	bne	$a0, $a1, .LBB0_94
# %bb.93:                               # %if.then402
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	b	.LBB0_54
.LBB0_94:                               # %if.else404
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 185
	bne	$a0, $a1, .LBB0_96
# %bb.95:                               # %if.then409
	ld.d	$a1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a2, %pc_hi20(.L.str.25)
	addi.d	$a2, $a2, %pc_lo12(.L.str.25)
	b	.LBB0_101
.LBB0_96:                               # %if.else415
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 183
	bne	$a0, $a1, .LBB0_98
# %bb.97:                               # %if.then420
	ld.d	$a1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	b	.LBB0_100
.LBB0_98:                               # %if.else423
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 182
	bne	$a0, $a1, .LBB0_102
# %bb.99:                               # %if.then428
	ld.d	$a1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
.LBB0_100:                              # %if.then420
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
.LBB0_101:                              # %if.then420
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE)
	jirl	$ra, $ra, 0
	b	.LBB0_55
.LBB0_102:                              # %if.else431
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 180
	bne	$a0, $a1, .LBB0_104
# %bb.103:                              # %if.then436
	ld.d	$a1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	b	.LBB0_106
.LBB0_104:                              # %if.else439
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 179
	bne	$a0, $a1, .LBB0_107
# %bb.105:                              # %if.then444
	ld.d	$a1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
.LBB0_106:                              # %if.then436
	pcalau12i	$a2, %pc_hi20(.L.str.28)
	addi.d	$a2, $a2, %pc_lo12(.L.str.28)
	b	.LBB0_101
.LBB0_107:                              # %if.else447
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 184
	bne	$a0, $a1, .LBB0_109
# %bb.108:                              # %if.then452
	ld.d	$a1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a2, %pc_hi20(.L.str.29)
	addi.d	$a2, $a2, %pc_lo12(.L.str.29)
	b	.LBB0_101
.LBB0_109:                              # %if.else455
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 178
	bne	$a0, $a1, .LBB0_111
# %bb.110:                              # %if.then460
	ld.d	$a1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcalau12i	$a2, %pc_hi20(.L.str.30)
	addi.d	$a2, $a2, %pc_lo12(.L.str.30)
	b	.LBB0_101
.LBB0_111:                              # %if.else463
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 177
	bne	$a0, $a1, .LBB0_113
# %bb.112:                              # %if.then468
	ld.d	$a1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcalau12i	$a2, %pc_hi20(.L.str.31)
	addi.d	$a2, $a2, %pc_lo12(.L.str.31)
	b	.LBB0_101
.LBB0_113:                              # %if.else471
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 176
	bne	$a0, $a1, .LBB0_115
# %bb.114:                              # %if.then476
	ld.d	$a1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	b	.LBB0_117
.LBB0_115:                              # %if.else479
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 175
	bne	$a0, $a1, .LBB0_118
# %bb.116:                              # %if.then484
	ld.d	$a1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
.LBB0_117:                              # %if.then476
	pcalau12i	$a2, %pc_hi20(.L.str.32)
	addi.d	$a2, $a2, %pc_lo12(.L.str.32)
	b	.LBB0_101
.LBB0_118:                              # %if.else487
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 174
	bne	$a0, $a1, .LBB0_120
# %bb.119:                              # %if.then492
	ld.d	$a1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	b	.LBB0_122
.LBB0_120:                              # %if.else495
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 173
	bne	$a0, $a1, .LBB0_123
# %bb.121:                              # %if.then500
	ld.d	$a1, $s2, 8
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
.LBB0_122:                              # %if.then492
	pcalau12i	$a2, %pc_hi20(.L.str.33)
	addi.d	$a2, $a2, %pc_lo12(.L.str.33)
	b	.LBB0_101
.LBB0_123:                              # %if.else503
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 255
	b	.LBB0_66
.Lfunc_end0:
	.size	_ZN2kc10v_defoccurEPNS_7impl_IDEPNS_11impl_IDtypeE, .Lfunc_end0-_ZN2kc10v_defoccurEPNS_7impl_IDEPNS_11impl_IDtypeE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL2NFPN2kc7impl_IDEPNS_12impl_problemE
	.type	_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE,@function
_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE: # @_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a2
	move	$a2, $a1
	addi.w	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jr	$t8
.Lfunc_end1:
	.size	_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE, .Lfunc_end1-_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2kc13v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeE # -- Begin function _ZN2kc13v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeE
	.p2align	5
	.type	_ZN2kc13v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeE,@function
_ZN2kc13v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeE: # @_ZN2kc13v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeE
	.cfi_startproc
# %bb.0:                                # %entry
	ori	$a2, $zero, 1
	pcaddu18i	$t8, %call36(_ZN2kcL16do_v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeEb)
	jr	$t8
.Lfunc_end2:
	.size	_ZN2kc13v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeE, .Lfunc_end2-_ZN2kc13v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN2kcL16do_v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeEb
	.type	_ZN2kcL16do_v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeEb,@function
_ZN2kcL16do_v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeEb: # @_ZN2kcL16do_v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeEb
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
	ld.d	$a0, $a0, 0
	ld.d	$a3, $a0, 0
	move	$s2, $a2
	move	$s3, $a1
	move	$a0, $fp
	jirl	$ra, $a3, 0
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB3_2
# %bb.1:                                # %if.then
	ld.d	$s4, $fp, 40
	b	.LBB3_3
.LBB3_2:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 277
	pcaddu18i	$ra, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jirl	$ra, $ra, 0
                                        # implicit-def: $r27
.LBB3_3:                                # %if.end
	ld.d	$a0, $s3, 0
	st.d	$s3, $fp, 8
	ld.d	$s0, $s4, 8
	ld.d	$a1, $a0, 0
	move	$a0, $s3
	jirl	$ra, $a1, 0
	ori	$s1, $zero, 172
	beq	$a0, $s1, .LBB3_6
# %bb.4:                                # %if.else13
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s1, .LBB3_7
# %bb.5:                                # %if.then18
	ld.w	$a0, $fp, 24
	ld.d	$a1, $fp, 32
	st.d	$s3, $s4, 8
	st.w	$a0, $s4, 16
	st.d	$a1, $s4, 24
.LBB3_6:                                # %cleanup461
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
.LBB3_7:                                # %cleanup.cont
	ld.d	$s0, $fp, 8
	ld.d	$a0, $s0, 0
	ld.d	$s1, $s4, 8
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s5, $zero, 185
	bne	$a0, $s5, .LBB3_11
# %bb.8:                                # %land.lhs.true
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s5, .LBB3_11
# %bb.9:                                # %if.then40
	ld.d	$s2, $s0, 16
	ld.d	$a0, $s1, 16
	beq	$s2, $a0, .LBB3_40
# %bb.10:                               # %if.else53
	ld.d	$s0, $s4, 8
	ld.d	$s1, $s4, 24
	ld.w	$a0, $s4, 16
	pcaddu18i	$ra, %call36(_ZN2kc9mkintegerEi)
	jirl	$ra, $ra, 0
	move	$a3, $a0
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZN2kc17ScopeTypeFileLineEPNS_17impl_integer__IntEPNS_11impl_IDtypeEPNS_20impl_casestring__StrES1_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 32
	pcaddu18i	$ra, %call36(_ZN2kc26ConsscopetypefilelinestackEPNS_22impl_scopetypefilelineEPNS_27impl_scopetypefilelinestackE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 32
	st.d	$a0, $s4, 32
	st.d	$s3, $s4, 8
	st.w	$a1, $s4, 16
	st.d	$a2, $s4, 24
	b	.LBB3_6
.LBB3_11:                               # %if.else67
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 183
	bne	$a0, $s3, .LBB3_15
# %bb.12:                               # %land.lhs.true72
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB3_15
# %bb.13:                               # %if.then77
	beqz	$s2, .LBB3_6
# %bb.14:                               # %if.then78
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	b	.LBB3_22
.LBB3_15:                               # %if.else81
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB3_19
# %bb.16:                               # %land.lhs.true86
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 182
	bne	$a0, $a1, .LBB3_19
# %bb.17:                               # %if.then91
	beqz	$s2, .LBB3_6
# %bb.18:                               # %if.then93
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
	b	.LBB3_66
.LBB3_19:                               # %if.else96
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 182
	bne	$a0, $s3, .LBB3_23
# %bb.20:                               # %land.lhs.true101
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 183
	bne	$a0, $a1, .LBB3_23
# %bb.21:                               # %if.then106
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
.LBB3_22:                               # %if.then78
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 32
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jr	$t8
.LBB3_23:                               # %if.else108
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB3_26
# %bb.24:                               # %land.lhs.true113
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 182
	bne	$a0, $a1, .LBB3_26
# %bb.25:                               # %if.then118
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	b	.LBB3_66
.LBB3_26:                               # %if.else120
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s3, $zero, 180
	bne	$a0, $s3, .LBB3_30
# %bb.27:                               # %land.lhs.true125
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB3_30
# %bb.28:                               # %if.then130
	beqz	$s2, .LBB3_6
# %bb.29:                               # %if.then132
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	b	.LBB3_66
.LBB3_30:                               # %if.else135
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s3, .LBB3_34
# %bb.31:                               # %land.lhs.true140
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 179
	bne	$a0, $a1, .LBB3_34
# %bb.32:                               # %if.then145
	beqz	$s2, .LBB3_6
# %bb.33:                               # %if.then147
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	b	.LBB3_66
.LBB3_34:                               # %if.else150
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s2, $zero, 179
	bne	$a0, $s2, .LBB3_37
# %bb.35:                               # %land.lhs.true155
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 180
	bne	$a0, $a1, .LBB3_37
# %bb.36:                               # %if.then160
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	b	.LBB3_66
.LBB3_37:                               # %if.else162
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s2, .LBB3_42
# %bb.38:                               # %land.lhs.true167
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 179
	bne	$a0, $a1, .LBB3_42
# %bb.39:                               # %if.then172
	pcalau12i	$a0, %pc_hi20(.L.str.66)
	addi.d	$a0, $a0, %pc_lo12(.L.str.66)
	b	.LBB3_66
.LBB3_40:                               # %if.then48
	ld.d	$s0, $s0, 8
	ld.d	$s1, $s1, 8
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNK2kc20impl_abstract_phylum2eqEPKS0_)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_6
# %bb.41:                               # %if.then50
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a2, $a1, %pc_lo12(.L.str.57)
	pcalau12i	$a1, %pc_hi20(.L.str.58)
	addi.d	$a4, $a1, %pc_lo12(.L.str.58)
	move	$a1, $fp
	move	$a3, $s1
	move	$a5, $s0
	pcaddu18i	$ra, %call36(_ZN2kc22Problem1S1ID1S1ID1S1IDEPKcPNS_7impl_IDES1_S3_S1_S3_)
	jirl	$ra, $ra, 0
	b	.LBB3_67
.LBB3_42:                               # %if.else174
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s2, $zero, 184
	bne	$a0, $s2, .LBB3_45
# %bb.43:                               # %land.lhs.true179
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s2, .LBB3_45
# %bb.44:                               # %if.then184
	pcalau12i	$a0, %pc_hi20(.L.str.67)
	addi.d	$a0, $a0, %pc_lo12(.L.str.67)
	b	.LBB3_66
.LBB3_45:                               # %if.else186
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s2, $zero, 178
	bne	$a0, $s2, .LBB3_47
# %bb.46:                               # %land.lhs.true191
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	beq	$a0, $s2, .LBB3_6
.LBB3_47:                               # %if.else197
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s2, .LBB3_49
# %bb.48:                               # %land.lhs.true202
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 177
	beq	$a0, $a1, .LBB3_6
.LBB3_49:                               # %if.else208
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s2, $zero, 177
	bne	$a0, $s2, .LBB3_52
# %bb.50:                               # %land.lhs.true213
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 178
	bne	$a0, $a1, .LBB3_52
# %bb.51:                               # %if.then218
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	b	.LBB3_66
.LBB3_52:                               # %if.else220
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s2, .LBB3_55
# %bb.53:                               # %land.lhs.true225
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 177
	bne	$a0, $a1, .LBB3_55
# %bb.54:                               # %if.then230
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	b	.LBB3_66
.LBB3_55:                               # %if.else232
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s2, $zero, 176
	bne	$a0, $s2, .LBB3_58
# %bb.56:                               # %land.lhs.true237
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s2, .LBB3_58
# %bb.57:                               # %if.then242
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	b	.LBB3_66
.LBB3_58:                               # %if.else244
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s2, .LBB3_60
# %bb.59:                               # %land.lhs.true249
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 175
	beq	$a0, $a1, .LBB3_65
.LBB3_60:                               # %if.else256
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s2, $zero, 175
	bne	$a0, $s2, .LBB3_63
# %bb.61:                               # %land.lhs.true261
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 176
	bne	$a0, $a1, .LBB3_63
# %bb.62:                               # %if.then266
	pcalau12i	$a0, %pc_hi20(.L.str.71)
	addi.d	$a0, $a0, %pc_lo12(.L.str.71)
	b	.LBB3_66
.LBB3_63:                               # %if.else268
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s2, .LBB3_68
# %bb.64:                               # %land.lhs.true273
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 175
	bne	$a0, $a1, .LBB3_68
.LBB3_65:                               # %if.then254
	pcalau12i	$a0, %pc_hi20(.L.str.70)
	addi.d	$a0, $a0, %pc_lo12(.L.str.70)
.LBB3_66:                               # %if.then93
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
.LBB3_67:                               # %if.then93
	ld.d	$a1, $fp, 32
	ld.w	$a2, $fp, 24
	move	$a3, $a0
	move	$a0, $a2
	move	$a2, $a3
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZL2NFPN2kc7impl_IDEPNS_12impl_problemE)
	jr	$t8
.LBB3_68:                               # %if.else280
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s2, $zero, 174
	bne	$a0, $s2, .LBB3_70
# %bb.69:                               # %land.lhs.true285
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	beq	$a0, $s2, .LBB3_6
.LBB3_70:                               # %if.else291
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s2, .LBB3_73
# %bb.71:                               # %land.lhs.true296
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 173
	bne	$a0, $a1, .LBB3_73
# %bb.72:                               # %if.then301
	pcalau12i	$a0, %pc_hi20(.L.str.72)
	addi.d	$a0, $a0, %pc_lo12(.L.str.72)
	b	.LBB3_66
.LBB3_73:                               # %if.else303
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s2, $zero, 173
	bne	$a0, $s2, .LBB3_76
# %bb.74:                               # %land.lhs.true308
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 174
	bne	$a0, $a1, .LBB3_76
# %bb.75:                               # %if.then313
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	b	.LBB3_66
.LBB3_76:                               # %if.else315
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s2, .LBB3_78
# %bb.77:                               # %land.lhs.true320
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 173
	beq	$a0, $a1, .LBB3_6
.LBB3_78:                               # %if.else326
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 185
	bne	$a0, $a1, .LBB3_80
# %bb.79:                               # %if.then331
	ld.d	$a1, $s4, 8
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcalau12i	$a2, %pc_hi20(.L.str.75)
	addi.d	$a2, $a2, %pc_lo12(.L.str.75)
	b	.LBB3_83
.LBB3_80:                               # %if.else338
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 183
	beq	$a0, $a1, .LBB3_82
# %bb.81:                               # %if.else346
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 182
	bne	$a0, $a1, .LBB3_84
.LBB3_82:                               # %if.then343
	ld.d	$a1, $s4, 8
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcalau12i	$a2, %pc_hi20(.L.str.26)
	addi.d	$a2, $a2, %pc_lo12(.L.str.26)
.LBB3_83:                               # %if.then331
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN2kc16Problem1S1t1S1IDEPKcPNS_11impl_IDtypeES1_PNS_7impl_IDE)
	jirl	$ra, $ra, 0
	b	.LBB3_67
.LBB3_84:                               # %if.else354
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 180
	beq	$a0, $a1, .LBB3_86
# %bb.85:                               # %if.else362
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 179
	bne	$a0, $a1, .LBB3_87
.LBB3_86:                               # %if.then359
	ld.d	$a1, $s4, 8
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcalau12i	$a2, %pc_hi20(.L.str.28)
	addi.d	$a2, $a2, %pc_lo12(.L.str.28)
	b	.LBB3_83
.LBB3_87:                               # %if.else370
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 184
	bne	$a0, $a1, .LBB3_89
# %bb.88:                               # %if.then375
	ld.d	$a1, $s4, 8
	pcalau12i	$a0, %pc_hi20(.L.str.74)
	addi.d	$a0, $a0, %pc_lo12(.L.str.74)
	pcalau12i	$a2, %pc_hi20(.L.str.77)
	addi.d	$a2, $a2, %pc_lo12(.L.str.77)
	b	.LBB3_83
.LBB3_89:                               # %if.else378
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 178
	beq	$a0, $a1, .LBB3_91
# %bb.90:                               # %if.else386
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 177
	bne	$a0, $a1, .LBB3_92
.LBB3_91:                               # %if.then383
	ld.d	$a1, $s4, 8
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcalau12i	$a2, %pc_hi20(.L.str.31)
	addi.d	$a2, $a2, %pc_lo12(.L.str.31)
	b	.LBB3_83
.LBB3_92:                               # %if.else394
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 176
	beq	$a0, $a1, .LBB3_94
# %bb.93:                               # %if.else402
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 175
	bne	$a0, $a1, .LBB3_95
.LBB3_94:                               # %if.then399
	ld.d	$a1, $s4, 8
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcalau12i	$a2, %pc_hi20(.L.str.32)
	addi.d	$a2, $a2, %pc_lo12(.L.str.32)
	b	.LBB3_83
.LBB3_95:                               # %if.else410
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 174
	bne	$a0, $a1, .LBB3_97
# %bb.96:                               # %if.then415
	ld.d	$a1, $s4, 8
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcalau12i	$a2, %pc_hi20(.L.str.33)
	addi.d	$a2, $a2, %pc_lo12(.L.str.33)
	b	.LBB3_83
.LBB3_97:                               # %if.else418
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 173
	bne	$a0, $a1, .LBB3_99
# %bb.98:                               # %if.then423
	ld.d	$a1, $s4, 8
	pcalau12i	$a0, %pc_hi20(.L.str.76)
	addi.d	$a0, $a0, %pc_lo12(.L.str.76)
	pcalau12i	$a2, %pc_hi20(.L.str.78)
	addi.d	$a2, $a2, %pc_lo12(.L.str.78)
	b	.LBB3_83
.LBB3_99:                               # %if.else426
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 445
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	pcaddu18i	$t8, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jr	$t8
.Lfunc_end3:
	.size	_ZN2kcL16do_v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeEb, .Lfunc_end3-_ZN2kcL16do_v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeEb
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2kc23v_extendoccur_nowarningEPNS_7impl_IDEPNS_11impl_IDtypeE # -- Begin function _ZN2kc23v_extendoccur_nowarningEPNS_7impl_IDEPNS_11impl_IDtypeE
	.p2align	5
	.type	_ZN2kc23v_extendoccur_nowarningEPNS_7impl_IDEPNS_11impl_IDtypeE,@function
_ZN2kc23v_extendoccur_nowarningEPNS_7impl_IDEPNS_11impl_IDtypeE: # @_ZN2kc23v_extendoccur_nowarningEPNS_7impl_IDEPNS_11impl_IDtypeE
	.cfi_startproc
# %bb.0:                                # %entry
	move	$a2, $zero
	pcaddu18i	$t8, %call36(_ZN2kcL16do_v_extendoccurEPNS_7impl_IDEPNS_11impl_IDtypeEb)
	jr	$t8
.Lfunc_end4:
	.size	_ZN2kc23v_extendoccur_nowarningEPNS_7impl_IDEPNS_11impl_IDtypeE, .Lfunc_end4-_ZN2kc23v_extendoccur_nowarningEPNS_7impl_IDEPNS_11impl_IDtypeE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2kc18f_useoccuroperatorEPNS_7impl_IDE # -- Begin function _ZN2kc18f_useoccuroperatorEPNS_7impl_IDE
	.p2align	5
	.type	_ZN2kc18f_useoccuroperatorEPNS_7impl_IDE,@function
_ZN2kc18f_useoccuroperatorEPNS_7impl_IDE: # @_ZN2kc18f_useoccuroperatorEPNS_7impl_IDE
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
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB5_4
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 40
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	ori	$a2, $zero, 176
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB5_8
# %bb.2:                                # %if.else
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 175
	bne	$a0, $a1, .LBB5_5
# %bb.3:                                # %if.then13
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
	b	.LBB5_6
.LBB5_4:                                # %if.else18
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 471
	pcaddu18i	$ra, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jirl	$ra, $ra, 0
	b	.LBB5_7
.LBB5_5:                                # %if.else15
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %cleanup19
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 32
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
.LBB5_7:                                # %cleanup19
	move	$a0, $zero
.LBB5_8:                                # %cleanup19
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	_ZN2kc18f_useoccuroperatorEPNS_7impl_IDE, .Lfunc_end5-_ZN2kc18f_useoccuroperatorEPNS_7impl_IDE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2kc19f_warnifnotvariableEPNS_7impl_IDE # -- Begin function _ZN2kc19f_warnifnotvariableEPNS_7impl_IDE
	.p2align	5
	.type	_ZN2kc19f_warnifnotvariableEPNS_7impl_IDE,@function
_ZN2kc19f_warnifnotvariableEPNS_7impl_IDE: # @_ZN2kc19f_warnifnotvariableEPNS_7impl_IDE
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
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB6_4
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 40
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 172
	beq	$a0, $a1, .LBB6_5
# %bb.2:                                # %if.else
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 185
	beq	$a0, $a1, .LBB6_5
# %bb.3:                                # %if.else14
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 32
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB6_6
.LBB6_4:                                # %if.else17
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 496
	pcaddu18i	$ra, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jirl	$ra, $ra, 0
.LBB6_5:                                # %cleanup18
	move	$a0, $zero
.LBB6_6:                                # %cleanup18
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	_ZN2kc19f_warnifnotvariableEPNS_7impl_IDE, .Lfunc_end6-_ZN2kc19f_warnifnotvariableEPNS_7impl_IDE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2kc16f_useoccurphylumEPNS_7impl_IDE # -- Begin function _ZN2kc16f_useoccurphylumEPNS_7impl_IDE
	.p2align	5
	.type	_ZN2kc16f_useoccurphylumEPNS_7impl_IDE,@function
_ZN2kc16f_useoccurphylumEPNS_7impl_IDE: # @_ZN2kc16f_useoccurphylumEPNS_7impl_IDE
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
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB7_4
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 40
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	ori	$a2, $zero, 174
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB7_6
# %bb.2:                                # %if.else
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a2, $zero, 173
	move	$a1, $a0
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB7_6
# %bb.3:                                # %if.else14
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a0, $a0, %pc_lo12(.L.str.39)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 32
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
	b	.LBB7_5
.LBB7_4:                                # %if.else17
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a0, $a0, %pc_lo12(.L.str.40)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 521
	pcaddu18i	$ra, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %cleanup18
	move	$a0, $zero
.LBB7_6:                                # %cleanup18
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end7:
	.size	_ZN2kc16f_useoccurphylumEPNS_7impl_IDE, .Lfunc_end7-_ZN2kc16f_useoccurphylumEPNS_7impl_IDE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2kc20f_useoccurlistphylumEPNS_7impl_IDE # -- Begin function _ZN2kc20f_useoccurlistphylumEPNS_7impl_IDE
	.p2align	5
	.type	_ZN2kc20f_useoccurlistphylumEPNS_7impl_IDE,@function
_ZN2kc20f_useoccurlistphylumEPNS_7impl_IDE: # @_ZN2kc20f_useoccurlistphylumEPNS_7impl_IDE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB8_5
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 40
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 174
	bne	$a0, $a1, .LBB8_7
# %bb.2:                                # %if.then8
	ld.d	$s0, $s0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s1, $zero, 15
	bne	$a0, $s1, .LBB8_8
# %bb.3:                                # %land.lhs.true
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 24
	bne	$a0, $a1, .LBB8_8
# %bb.4:                                # %if.then20
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	b	.LBB8_16
.LBB8_5:                                # %if.else68
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 567
.LBB8_6:                                # %cleanup69
	pcaddu18i	$ra, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jirl	$ra, $ra, 0
	b	.LBB8_18
.LBB8_7:                                # %if.else64
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
	b	.LBB8_17
.LBB8_8:                                # %if.else
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s1, .LBB8_11
# %bb.9:                                # %land.lhs.true26
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 23
	bne	$a0, $a1, .LBB8_11
# %bb.10:                               # %if.then33
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a0, $a0, %pc_lo12(.L.str.42)
	b	.LBB8_16
.LBB8_11:                               # %if.else35
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$s1, $zero, 15
	bne	$a0, $s1, .LBB8_13
# %bb.12:                               # %land.lhs.true40
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	ori	$a2, $zero, 22
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB8_19
.LBB8_13:                               # %if.else48
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	bne	$a0, $s1, .LBB8_20
# %bb.14:                               # %land.lhs.true53
	ld.d	$a0, $s0, 48
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 21
	bne	$a0, $a1, .LBB8_20
# %bb.15:                               # %if.then60
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
.LBB8_16:                               # %cleanup69
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc12Problem1S1IDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
.LBB8_17:                               # %cleanup69
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 32
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
.LBB8_18:                               # %cleanup69
	move	$a0, $zero
.LBB8_19:                               # %cleanup69
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB8_20:                               # %if.else62
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a0, $a0, %pc_lo12(.L.str.44)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 556
	b	.LBB8_6
.Lfunc_end8:
	.size	_ZN2kc20f_useoccurlistphylumEPNS_7impl_IDE, .Lfunc_end8-_ZN2kc20f_useoccurlistphylumEPNS_7impl_IDE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2kc19f_useoccuruviewnameEPNS_7impl_IDE # -- Begin function _ZN2kc19f_useoccuruviewnameEPNS_7impl_IDE
	.p2align	5
	.type	_ZN2kc19f_useoccuruviewnameEPNS_7impl_IDE,@function
_ZN2kc19f_useoccuruviewnameEPNS_7impl_IDE: # @_ZN2kc19f_useoccuruviewnameEPNS_7impl_IDE
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
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB9_4
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 40
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	ori	$a2, $zero, 180
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB9_6
# %bb.2:                                # %if.else
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a2, $zero, 179
	move	$a1, $a0
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB9_6
# %bb.3:                                # %if.else14
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 32
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
	b	.LBB9_5
.LBB9_4:                                # %if.else17
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 592
	pcaddu18i	$ra, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jirl	$ra, $ra, 0
.LBB9_5:                                # %cleanup18
	move	$a0, $zero
.LBB9_6:                                # %cleanup18
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	_ZN2kc19f_useoccuruviewnameEPNS_7impl_IDE, .Lfunc_end9-_ZN2kc19f_useoccuruviewnameEPNS_7impl_IDE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2kc19f_useoccurrviewnameEPNS_7impl_IDE # -- Begin function _ZN2kc19f_useoccurrviewnameEPNS_7impl_IDE
	.p2align	5
	.type	_ZN2kc19f_useoccurrviewnameEPNS_7impl_IDE,@function
_ZN2kc19f_useoccurrviewnameEPNS_7impl_IDE: # @_ZN2kc19f_useoccurrviewnameEPNS_7impl_IDE
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
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB10_4
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 40
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	ori	$a2, $zero, 183
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB10_6
# %bb.2:                                # %if.else
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a2, $zero, 182
	move	$a1, $a0
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB10_6
# %bb.3:                                # %if.else14
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 32
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
	b	.LBB10_5
.LBB10_4:                               # %if.else17
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 617
	pcaddu18i	$ra, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jirl	$ra, $ra, 0
.LBB10_5:                               # %cleanup18
	move	$a0, $zero
.LBB10_6:                               # %cleanup18
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	_ZN2kc19f_useoccurrviewnameEPNS_7impl_IDE, .Lfunc_end10-_ZN2kc19f_useoccurrviewnameEPNS_7impl_IDE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2kc22f_useoccurstorageclassEPNS_7impl_IDE # -- Begin function _ZN2kc22f_useoccurstorageclassEPNS_7impl_IDE
	.p2align	5
	.type	_ZN2kc22f_useoccurstorageclassEPNS_7impl_IDE,@function
_ZN2kc22f_useoccurstorageclassEPNS_7impl_IDE: # @_ZN2kc22f_useoccurstorageclassEPNS_7impl_IDE
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
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB11_4
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 40
	ld.d	$s0, $a0, 8
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	ori	$a2, $zero, 178
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB11_6
# %bb.2:                                # %if.else
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ori	$a2, $zero, 177
	move	$a1, $a0
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB11_6
# %bb.3:                                # %if.else14
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 32
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
	b	.LBB11_5
.LBB11_4:                               # %if.else17
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 642
	pcaddu18i	$ra, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jirl	$ra, $ra, 0
.LBB11_5:                               # %cleanup18
	move	$a0, $zero
.LBB11_6:                               # %cleanup18
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end11:
	.size	_ZN2kc22f_useoccurstorageclassEPNS_7impl_IDE, .Lfunc_end11-_ZN2kc22f_useoccurstorageclassEPNS_7impl_IDE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2kc22f_useoccurlanguagenameEPNS_18impl_languagenamesE # -- Begin function _ZN2kc22f_useoccurlanguagenameEPNS_18impl_languagenamesE
	.p2align	5
	.type	_ZN2kc22f_useoccurlanguagenameEPNS_18impl_languagenamesE,@function
_ZN2kc22f_useoccurlanguagenameEPNS_18impl_languagenamesE: # @_ZN2kc22f_useoccurlanguagenameEPNS_18impl_languagenamesE
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	move	$a1, $a0
	ori	$a2, $zero, 164
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB12_9
# %bb.1:                                # %if.else
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$s2, $zero, 165
	bne	$a0, $s2, .LBB12_7
# %bb.2:                                # %if.then6
	ld.d	$s0, $fp, 8
	ld.d	$a0, $fp, 16
	pcaddu18i	$ra, %call36(_ZN2kc22f_useoccurlanguagenameEPNS_18impl_languagenamesE)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %got_pc_hi20(Thelanguages)
	ld.d	$a0, $a0, %got_pc_lo12(Thelanguages)
	ld.d	$s1, $a0, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	bne	$a0, $s2, .LBB12_6
# %bb.3:
	ori	$s2, $zero, 165
	.p2align	4, , 16
.LBB12_4:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s1, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNK2kc20impl_abstract_phylum2eqEPKS0_)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB12_8
# %bb.5:                                # %while.cond.i
                                        #   in Loop: Header=BB12_4 Depth=1
	ld.d	$s1, $s1, 16
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 0
	move	$a0, $s1
	jirl	$ra, $a1, 0
	beq	$a0, $s2, .LBB12_4
.LBB12_6:                               # %cleanup.cont7.i
	ld.d	$a0, $s0, 32
	ld.w	$a1, $s0, 24
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.79)
	addi.d	$a0, $a0, %pc_lo12(.L.str.79)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN2kc5FatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
	and	$a0, $fp, $zero
	b	.LBB12_9
.LBB12_7:                               # %if.else9
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 694
	pcaddu18i	$ra, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB12_9
.LBB12_8:
	ori	$a0, $zero, 1
	and	$a0, $fp, $a0
.LBB12_9:                               # %cleanup
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	_ZN2kc22f_useoccurlanguagenameEPNS_18impl_languagenamesE, .Lfunc_end12-_ZN2kc22f_useoccurlanguagenameEPNS_18impl_languagenamesE
	.cfi_endproc
                                        # -- End function
	.globl	_ZN2kc25f_useoccurpatternvariableEPNS_7impl_IDE # -- Begin function _ZN2kc25f_useoccurpatternvariableEPNS_7impl_IDE
	.p2align	5
	.type	_ZN2kc25f_useoccurpatternvariableEPNS_7impl_IDE,@function
_ZN2kc25f_useoccurpatternvariableEPNS_7impl_IDE: # @_ZN2kc25f_useoccurpatternvariableEPNS_7impl_IDE
	.cfi_startproc
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB13_3
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 40
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, 0
	jirl	$ra, $a1, 0
	move	$a1, $a0
	ori	$a2, $zero, 185
	ori	$a0, $zero, 1
	beq	$a1, $a2, .LBB13_5
# %bb.2:                                # %if.else
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc13Problem1S1tIDEPKcPNS_7impl_IDE)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 24
	ld.d	$a2, $fp, 32
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZN2kc8FileLineEPNS_20impl_casestring__StrEi)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN2kc8NonFatalEPNS_13impl_filelineEPNS_12impl_problemE)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZN2kc8v_reportEPNS_10impl_errorE)
	jirl	$ra, $ra, 0
	b	.LBB13_4
.LBB13_3:                               # %if.else11
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a2, $a1, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 716
	pcaddu18i	$ra, %call36(_ZN2kc21kc_no_default_in_withEPKciS1_)
	jirl	$ra, $ra, 0
.LBB13_4:                               # %cleanup12
	move	$a0, $zero
.LBB13_5:                               # %cleanup12
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end13:
	.size	_ZN2kc25f_useoccurpatternvariableEPNS_7impl_IDE, .Lfunc_end13-_ZN2kc25f_useoccurpatternvariableEPNS_7impl_IDE
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"v_defoccur"
	.size	.L.str, 11

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"/home/zhaoqi/llvm-test-suite/MultiSource/Applications/kimwitu++/occur.cc"
	.size	.L.str.1, 73

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"illegal redefinition of local function:"
	.size	.L.str.2, 40

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"illegal redefinition of pattern variable:"
	.size	.L.str.3, 42

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"illegal redefinition of rewrite view:"
	.size	.L.str.4, 38

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"illegal redefinition of predefined rewrite view:"
	.size	.L.str.5, 49

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"illegal predefinition of rewrite view:"
	.size	.L.str.6, 39

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"illegal predefinition of predefined rewrite view:"
	.size	.L.str.7, 50

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"illegal redefinition of unparse view:"
	.size	.L.str.8, 38

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"illegal redefinition of predefined unparse view:"
	.size	.L.str.9, 49

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"illegal predefinition of unparse view:"
	.size	.L.str.10, 39

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"illegal predefinition of predefined unparse view:"
	.size	.L.str.11, 50

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"illegal redefinition of storage class:"
	.size	.L.str.12, 39

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"illegal redefinition of predefined storage class:"
	.size	.L.str.13, 50

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"illegal predefinition of storage class:"
	.size	.L.str.14, 40

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"illegal predefinition of predefined storage class:"
	.size	.L.str.15, 51

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"illegal redefinition of operator:"
	.size	.L.str.16, 34

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"illegal redefinition of predefined operator:"
	.size	.L.str.17, 45

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"illegal predefinition of operator:"
	.size	.L.str.18, 35

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"illegal predefinition of predefined operator:"
	.size	.L.str.19, 46

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"illegal redefinition of phylum:"
	.size	.L.str.20, 32

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"illegal redefinition of predefined phylum:"
	.size	.L.str.21, 43

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"illegal predefinition of phylum:"
	.size	.L.str.22, 33

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"illegal predefinition of predefined phylum:"
	.size	.L.str.23, 44

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"illegal redefinition of "
	.size	.L.str.24, 25

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"as pattern variable"
	.size	.L.str.25, 20

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"as rewrite view"
	.size	.L.str.26, 16

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"illegal predefinition of "
	.size	.L.str.27, 26

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"as unparse view"
	.size	.L.str.28, 16

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"as function"
	.size	.L.str.29, 12

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"as storage class"
	.size	.L.str.30, 17

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"as storage class:"
	.size	.L.str.31, 18

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"as operator:"
	.size	.L.str.32, 13

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"as phylum:"
	.size	.L.str.33, 11

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"undefined operator (it's predefined, you're not supposed to use those):"
	.size	.L.str.34, 72

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"undefined operator"
	.size	.L.str.35, 19

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"f_useoccuroperator"
	.size	.L.str.36, 19

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"variable expected:"
	.size	.L.str.37, 19

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"f_warnifnotvariable"
	.size	.L.str.38, 20

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"undefined phylum"
	.size	.L.str.39, 17

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"f_useoccurphylum"
	.size	.L.str.40, 17

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"undefined list phylum (it's a predefined phylum):"
	.size	.L.str.41, 50

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"undefined list phylum (it's a non-list phylum):"
	.size	.L.str.42, 48

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"undefined list phylum (the productionblock is empty):"
	.size	.L.str.43, 54

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"f_useoccurlistphylum"
	.size	.L.str.44, 21

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"undefined list phylum"
	.size	.L.str.45, 22

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"undefined unparse view:"
	.size	.L.str.46, 24

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"f_useoccuruviewname"
	.size	.L.str.47, 20

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"undefined rewrite view:"
	.size	.L.str.48, 24

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"f_useoccurrviewname"
	.size	.L.str.49, 20

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"undefined storage class:"
	.size	.L.str.50, 25

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"f_useoccurstorageclass"
	.size	.L.str.51, 23

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"f_useoccurlanguagename"
	.size	.L.str.52, 23

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"undefined pattern variable:"
	.size	.L.str.53, 28

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"f_useoccurpatternvariable"
	.size	.L.str.54, 26

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"do_v_extendoccur"
	.size	.L.str.55, 17

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"type mismatch in redefinition of pattern variable:"
	.size	.L.str.56, 51

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"old type"
	.size	.L.str.57, 9

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"new type"
	.size	.L.str.58, 9

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"superfluous redeclaration of rewrite view:"
	.size	.L.str.59, 43

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"superfluous redeclaration of predefined rewrite view:"
	.size	.L.str.60, 54

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"illegal extension of rewrite view:"
	.size	.L.str.61, 35

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"illegal extension of predefined rewrite view:"
	.size	.L.str.62, 46

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"superfluous redeclaration of unparse view:"
	.size	.L.str.63, 43

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"superfluous redeclaration of predefined unparse view:"
	.size	.L.str.64, 54

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"illegal extension of unparse view:"
	.size	.L.str.65, 35

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"illegal extension of predefined unparse view:"
	.size	.L.str.66, 46

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"illegal extension of function:"
	.size	.L.str.67, 31

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"illegal extension of storage class:"
	.size	.L.str.68, 36

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"illegal extension of predefined storage class:"
	.size	.L.str.69, 47

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"illegal extension of predefined operator:"
	.size	.L.str.70, 42

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"illegal extension of operator:"
	.size	.L.str.71, 31

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"illegal extension of predefined phylum:"
	.size	.L.str.72, 40

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"illegal extension of phylum:"
	.size	.L.str.73, 29

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"illegal extension of"
	.size	.L.str.74, 21

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"as pattern variable:"
	.size	.L.str.75, 21

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"illegal extension of "
	.size	.L.str.76, 22

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"as function:"
	.size	.L.str.77, 13

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"as phylum"
	.size	.L.str.78, 10

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"undefined language name:"
	.size	.L.str.79, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
