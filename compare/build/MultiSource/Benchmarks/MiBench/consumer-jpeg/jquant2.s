	.file	"jquant2.c"
	.text
	.globl	jinit_2pass_quantizer           # -- Begin function jinit_2pass_quantizer
	.p2align	5
	.type	jinit_2pass_quantizer,@function
jinit_2pass_quantizer:                  # @jinit_2pass_quantizer
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 88
	move	$a0, $fp
	jirl	$ra, $a3, 0
	move	$s0, $a0
	st.d	$a0, $fp, 608
	pcalau12i	$a0, %pc_hi20(start_pass_2_quant)
	addi.d	$a0, $a0, %pc_lo12(start_pass_2_quant)
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(new_color_map_2_quant)
	addi.d	$a0, $a0, %pc_lo12(new_color_map_2_quant)
	ld.w	$a1, $fp, 136
	st.d	$a0, $s0, 24
	st.d	$zero, $s0, 64
	ori	$a0, $zero, 3
	st.d	$zero, $s0, 80
	beq	$a1, $a0, .LBB0_2
# %bb.1:                                # %if.then
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 46
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_2:                                # %if.end
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 256
	ori	$s2, $zero, 256
	move	$a0, $fp
	jirl	$ra, $a3, 0
	move	$s3, $zero
	st.d	$a0, $s0, 48
	lu12i.w	$s1, 1
	.p2align	4, , 16
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 8
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s1
	jirl	$ra, $a3, 0
	ld.d	$a1, $s0, 48
	stx.d	$a0, $a1, $s3
	addi.d	$s3, $s3, 8
	bne	$s3, $s2, .LBB0_3
# %bb.4:                                # %for.end
	ld.w	$a0, $fp, 124
	ori	$a1, $zero, 1
	st.w	$a1, $s0, 56
	beqz	$a0, .LBB0_11
# %bb.5:                                # %if.then11
	ld.w	$s1, $fp, 112
	ori	$a1, $zero, 8
	ori	$a0, $zero, 55
	blt	$s1, $a1, .LBB0_8
# %bb.6:                                # %if.end20
	ori	$a0, $zero, 257
	bltu	$s1, $a0, .LBB0_9
# %bb.7:
	ori	$a1, $zero, 256
	ori	$a0, $zero, 56
.LBB0_8:                                # %if.end30.sink.split
	ld.d	$a2, $fp, 0
	st.w	$a1, $a2, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$a0, $a2, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_9:                                # %if.end30
	ld.d	$a0, $fp, 8
	ld.d	$a4, $a0, 16
	ori	$a1, $zero, 1
	ori	$a3, $zero, 3
	move	$a0, $fp
	move	$a2, $s1
	jirl	$ra, $a4, 0
	st.d	$a0, $s0, 32
	st.w	$s1, $s0, 40
	ld.w	$a0, $fp, 104
	beqz	$a0, .LBB0_12
.LBB0_10:                               # %if.then42
	ld.d	$a0, $fp, 8
	ld.w	$a1, $fp, 128
	ori	$a2, $zero, 2
	st.w	$a2, $fp, 104
	ld.d	$a3, $a0, 8
	addi.d	$a0, $a1, 2
	bstrpick.d	$a0, $a0, 31, 0
	slli.d	$a1, $a0, 2
	alsl.d	$a2, $a0, $a1, 1
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a3, 0
	st.d	$a0, $s0, 64
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(init_error_limit)
	jr	$t8
.LBB0_11:                               # %if.else
	st.d	$zero, $s0, 32
	ld.w	$a0, $fp, 104
	bnez	$a0, .LBB0_10
.LBB0_12:                               # %if.end47
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	jinit_2pass_quantizer, .Lfunc_end0-jinit_2pass_quantizer
                                        # -- End function
	.p2align	5                               # -- Begin function start_pass_2_quant
	.type	start_pass_2_quant,@function
start_pass_2_quant:                     # @start_pass_2_quant
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 608
	ld.w	$a0, $a0, 104
	ld.d	$s2, $s1, 48
	beqz	$a0, .LBB1_3
# %bb.1:                                # %if.end.thread
	ori	$a0, $zero, 2
	st.w	$a0, $fp, 104
	bnez	$a1, .LBB1_4
# %bb.2:
	pcalau12i	$a0, %pc_hi20(pass2_fs_dither)
	addi.d	$a0, $a0, %pc_lo12(pass2_fs_dither)
	b	.LBB1_6
.LBB1_3:                                # %if.end
	beqz	$a1, .LBB1_5
.LBB1_4:                                # %if.then4
	pcalau12i	$a0, %pc_hi20(prescan_quantize)
	addi.d	$a0, $a0, %pc_lo12(prescan_quantize)
	st.d	$a0, $s1, 8
	pcalau12i	$a0, %pc_hi20(finish_pass1)
	addi.d	$a0, $a0, %pc_lo12(finish_pass1)
	st.d	$a0, $s1, 16
	ori	$a0, $zero, 1
	ori	$s0, $zero, 56
	b	.LBB1_20
.LBB1_5:
	pcalau12i	$a0, %pc_hi20(pass2_no_dither)
	addi.d	$a0, $a0, %pc_lo12(pass2_no_dither)
.LBB1_6:                                # %if.end14
	st.d	$a0, $s1, 8
	ld.w	$a1, $fp, 148
	pcalau12i	$a0, %pc_hi20(finish_pass2)
	addi.d	$a2, $a0, %pc_lo12(finish_pass2)
	ori	$a0, $zero, 1
	st.d	$a2, $s1, 16
	blt	$a1, $a0, .LBB1_12
# %bb.7:                                # %if.end21
	ori	$a0, $zero, 257
	bgeu	$a1, $a0, .LBB1_13
# %bb.8:                                # %if.end31
	ld.w	$a0, $fp, 104
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_15
.LBB1_9:                                # %if.end46
	ld.w	$a0, $s1, 56
	beqz	$a0, .LBB1_11
.LBB1_10:                               # %for.body.preheader
	ld.d	$a0, $s2, 0
	lu12i.w	$fp, 1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 16
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 24
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 32
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 40
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 48
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 56
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 64
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 72
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 80
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 88
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 96
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 104
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 112
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 120
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 128
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 136
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 144
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 152
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 160
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 168
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 176
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 184
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 192
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 200
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 208
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 216
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 224
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 232
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 240
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 248
	move	$a1, $fp
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	st.w	$zero, $s1, 56
.LBB1_11:                               # %if.end54
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB1_12:
	ori	$a1, $zero, 55
	b	.LBB1_14
.LBB1_13:
	ori	$a0, $zero, 256
	ori	$a1, $zero, 56
.LBB1_14:                               # %if.end31.sink.split
	ld.d	$a2, $fp, 0
	st.w	$a0, $a2, 44
	ld.d	$a0, $fp, 0
	ld.d	$a3, $a0, 0
	st.w	$a1, $a2, 40
	move	$a0, $fp
	jirl	$ra, $a3, 0
	ld.w	$a0, $fp, 104
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB1_9
.LBB1_15:                               # %if.then34
	ld.w	$a1, $fp, 128
	ld.d	$a0, $s1, 64
	addi.d	$a1, $a1, 2
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 2
	alsl.d	$s0, $a1, $a2, 1
	bnez	$a0, .LBB1_17
# %bb.16:                               # %if.then37
	ld.d	$a0, $fp, 8
	ld.d	$a3, $a0, 8
	ori	$a1, $zero, 1
	move	$a0, $fp
	move	$a2, $s0
	jirl	$ra, $a3, 0
	st.d	$a0, $s1, 64
.LBB1_17:                               # %if.end39
	move	$a1, $s0
	pcaddu18i	$ra, %call36(jzero_far)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 80
	ori	$s0, $zero, 72
	bnez	$a0, .LBB1_19
# %bb.18:                               # %if.then43
	move	$a0, $fp
	pcaddu18i	$ra, %call36(init_error_limit)
	jirl	$ra, $ra, 0
.LBB1_19:                               # %if.end46.sink.split
	move	$a0, $zero
.LBB1_20:                               # %if.end46.sink.split
	stx.w	$a0, $s1, $s0
	ld.w	$a0, $s1, 56
	bnez	$a0, .LBB1_10
	b	.LBB1_11
.Lfunc_end1:
	.size	start_pass_2_quant, .Lfunc_end1-start_pass_2_quant
                                        # -- End function
	.p2align	5                               # -- Begin function new_color_map_2_quant
	.type	new_color_map_2_quant,@function
new_color_map_2_quant:                  # @new_color_map_2_quant
# %bb.0:                                # %entry
	ld.d	$a0, $a0, 608
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 56
	ret
.Lfunc_end2:
	.size	new_color_map_2_quant, .Lfunc_end2-new_color_map_2_quant
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function init_error_limit
.LCPI3_0:
	.word	4294967289                      # 0xfffffff9
	.word	4294967290                      # 0xfffffffa
	.word	4294967291                      # 0xfffffffb
	.word	4294967292                      # 0xfffffffc
	.word	4294967293                      # 0xfffffffd
	.word	4294967294                      # 0xfffffffe
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
.LCPI3_1:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
.LCPI3_2:
	.word	4294967281                      # 0xfffffff1
	.word	4294967282                      # 0xfffffff2
	.word	4294967283                      # 0xfffffff3
	.word	4294967284                      # 0xfffffff4
	.word	4294967285                      # 0xfffffff5
	.word	4294967286                      # 0xfffffff6
	.word	4294967287                      # 0xfffffff7
	.word	4294967288                      # 0xfffffff8
.LCPI3_3:
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
.LCPI3_4:
	.word	4294967277                      # 0xffffffed
	.word	4294967277                      # 0xffffffed
	.word	4294967278                      # 0xffffffee
	.word	4294967278                      # 0xffffffee
	.word	4294967279                      # 0xffffffef
	.word	4294967279                      # 0xffffffef
	.word	4294967280                      # 0xfffffff0
	.word	4294967280                      # 0xfffffff0
.LCPI3_5:
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	19                              # 0x13
	.word	20                              # 0x14
.LCPI3_6:
	.word	4294967273                      # 0xffffffe9
	.word	4294967273                      # 0xffffffe9
	.word	4294967274                      # 0xffffffea
	.word	4294967274                      # 0xffffffea
	.word	4294967275                      # 0xffffffeb
	.word	4294967275                      # 0xffffffeb
	.word	4294967276                      # 0xffffffec
	.word	4294967276                      # 0xffffffec
.LCPI3_7:
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	23                              # 0x17
	.word	24                              # 0x18
.LCPI3_8:
	.word	4294967269                      # 0xffffffe5
	.word	4294967269                      # 0xffffffe5
	.word	4294967270                      # 0xffffffe6
	.word	4294967270                      # 0xffffffe6
	.word	4294967271                      # 0xffffffe7
	.word	4294967271                      # 0xffffffe7
	.word	4294967272                      # 0xffffffe8
	.word	4294967272                      # 0xffffffe8
.LCPI3_9:
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	27                              # 0x1b
	.word	28                              # 0x1c
.LCPI3_11:
	.word	4294967265                      # 0xffffffe1
	.word	4294967265                      # 0xffffffe1
	.word	4294967266                      # 0xffffffe2
	.word	4294967266                      # 0xffffffe2
	.word	4294967267                      # 0xffffffe3
	.word	4294967267                      # 0xffffffe3
	.word	4294967268                      # 0xffffffe4
	.word	4294967268                      # 0xffffffe4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI3_10:
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.text
	.p2align	5
	.type	init_error_limit,@function
init_error_limit:                       # @init_error_limit
# %bb.0:                                # %for.body20.lr.ph
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 8
	ld.d	$fp, $a0, 608
	ld.d	$a3, $a1, 0
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2044
	jirl	$ra, $a3, 0
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	xvld	$xr0, $a1, %pc_lo12(.LCPI3_0)
	pcalau12i	$a1, %pc_hi20(.LCPI3_1)
	xvld	$xr1, $a1, %pc_lo12(.LCPI3_1)
	xvst	$xr0, $a0, 992
	pcalau12i	$a1, %pc_hi20(.LCPI3_2)
	xvld	$xr0, $a1, %pc_lo12(.LCPI3_2)
	xvst	$xr1, $a0, 1024
	pcalau12i	$a1, %pc_hi20(.LCPI3_3)
	xvld	$xr1, $a1, %pc_lo12(.LCPI3_3)
	xvst	$xr0, $a0, 960
	pcalau12i	$a1, %pc_hi20(.LCPI3_4)
	xvld	$xr0, $a1, %pc_lo12(.LCPI3_4)
	xvst	$xr1, $a0, 1056
	pcalau12i	$a1, %pc_hi20(.LCPI3_5)
	xvld	$xr1, $a1, %pc_lo12(.LCPI3_5)
	xvst	$xr0, $a0, 928
	pcalau12i	$a1, %pc_hi20(.LCPI3_6)
	xvld	$xr0, $a1, %pc_lo12(.LCPI3_6)
	xvst	$xr1, $a0, 1088
	pcalau12i	$a1, %pc_hi20(.LCPI3_7)
	xvld	$xr1, $a1, %pc_lo12(.LCPI3_7)
	xvst	$xr0, $a0, 896
	pcalau12i	$a1, %pc_hi20(.LCPI3_8)
	xvld	$xr0, $a1, %pc_lo12(.LCPI3_8)
	xvst	$xr1, $a0, 1120
	pcalau12i	$a1, %pc_hi20(.LCPI3_9)
	xvld	$xr1, $a1, %pc_lo12(.LCPI3_9)
	xvst	$xr0, $a0, 864
	pcalau12i	$a1, %pc_hi20(.LCPI3_10)
	vld	$vr0, $a1, %pc_lo12(.LCPI3_10)
	xvst	$xr1, $a0, 1152
	addi.d	$a1, $a0, 1020
	st.d	$a1, $fp, 80
	vst	$vr0, $a0, 1184
	ori	$a1, $zero, 30
	lu32i.d	$a1, 31
	pcalau12i	$a2, %pc_hi20(.LCPI3_11)
	xvld	$xr0, $a2, %pc_lo12(.LCPI3_11)
	st.d	$a1, $a0, 1200
	ori	$a1, $zero, 31
	st.w	$a1, $a0, 1208
	xvst	$xr0, $a0, 832
	ori	$a1, $zero, 1212
	ori	$a2, $zero, 828
	ori	$a3, $zero, 32
	addi.w	$a4, $zero, -32
	lu32i.d	$a4, 0
	addi.w	$a5, $zero, -4
	.p2align	4, , 16
.LBB3_1:                                # %for.body20
                                        # =>This Inner Loop Header: Depth=1
	stx.w	$a3, $a0, $a1
	stx.w	$a4, $a0, $a2
	addi.d	$a2, $a2, -4
	addi.d	$a1, $a1, 4
	bne	$a2, $a5, .LBB3_1
# %bb.2:                                # %for.end29
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	init_error_limit, .Lfunc_end3-init_error_limit
                                        # -- End function
	.p2align	5                               # -- Begin function prescan_quantize
	.type	prescan_quantize,@function
prescan_quantize:                       # @prescan_quantize
# %bb.0:                                # %entry
	ori	$a2, $zero, 1
	blt	$a3, $a2, .LBB4_6
# %bb.1:                                # %entry
	ld.w	$a2, $a0, 128
	beqz	$a2, .LBB4_6
# %bb.2:                                # %for.body.preheader
	ld.d	$a0, $a0, 608
	ld.d	$a0, $a0, 48
	move	$a4, $zero
	.p2align	4, , 16
.LBB4_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	slli.d	$a5, $a4, 3
	ldx.d	$a5, $a1, $a5
	move	$a6, $a2
	.p2align	4, , 16
.LBB4_4:                                # %for.body5
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a7, $a5, 0
	ld.bu	$t0, $a5, 1
	andi	$a7, $a7, 248
	ldx.d	$a7, $a0, $a7
	ld.bu	$t1, $a5, 2
	slli.d	$t0, $t0, 4
	andi	$t0, $t0, 4032
	add.d	$a7, $a7, $t0
	srli.d	$t0, $t1, 2
	andi	$t0, $t0, 62
	ldx.hu	$t1, $a7, $t0
	addi.d	$t2, $t1, 1
	srli.d	$t3, $t2, 16
	masknez	$t2, $t2, $t3
	maskeqz	$t1, $t1, $t3
	or	$t1, $t1, $t2
	stx.h	$t1, $a7, $t0
	addi.w	$a6, $a6, -1
	addi.d	$a5, $a5, 3
	bnez	$a6, .LBB4_4
# %bb.5:                                # %for.cond3.for.inc23_crit_edge
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a4, $a4, 1
	bne	$a4, $a3, .LBB4_3
.LBB4_6:                                # %for.end25
	ret
.Lfunc_end4:
	.size	prescan_quantize, .Lfunc_end4-prescan_quantize
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function finish_pass1
.LCPI5_0:
	.word	0                               # 0x0
	.word	31                              # 0x1f
	.word	0                               # 0x0
	.word	63                              # 0x3f
.LCPI5_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI5_2:
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	2                               # 0x2
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	3                               # 0x3
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	0                               # 0x0
.LCPI5_3:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.p2align	5
	.type	finish_pass1,@function
finish_pass1:                           # @finish_pass1
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
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	move	$s0, $a0
	ld.d	$a2, $a0, 608
	ld.d	$a0, $a0, 8
	ld.d	$a1, $a2, 32
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.w	$s3, $a2, 40
	ld.d	$a3, $a0, 0
	st.d	$a1, $s0, 152
	ori	$a0, $zero, 40
	mul.d	$a2, $s3, $a0
	ori	$a1, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a3, 0
	move	$fp, $a0
	ori	$a0, $zero, 0
	lu32i.d	$a0, 31
	st.d	$a0, $fp, 16
	ld.d	$a0, $s0, 608
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	ld.d	$a0, $a0, 48
	vst	$vr0, $fp, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(update_box)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	ori	$s2, $zero, 2
	blt	$s3, $s2, .LBB5_18
# %bb.1:                                # %while.body.lr.ph.i.i
	ori	$s5, $zero, 1
	ori	$s4, $zero, 1
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_2:                                # %sw.bb44.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	add.d	$a0, $a4, $a0
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	st.w	$a0, $a1, 20
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 16
.LBB5_3:                                # %sw.epilog.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.d	$a0, $s0, 608
	ld.d	$a0, $a0, 48
	pcaddu18i	$ra, %call36(update_box)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 608
	ld.d	$a0, $a0, 48
	move	$a1, $s1
	pcaddu18i	$ra, %call36(update_box)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 1
	beq	$s4, $s3, .LBB5_17
.LBB5_4:                                # %while.body.i.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_13 Depth 2
                                        #     Child Loop BB5_6 Depth 2
	move	$a1, $zero
	move	$a2, $zero
	slli.d	$a0, $s4, 1
	bgeu	$s3, $a0, .LBB5_11
# %bb.5:                                # %for.body.i51.i.i.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$a0, $s4
	move	$a3, $fp
	.p2align	4, , 16
.LBB5_6:                                # %for.body.i51.i.i
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 24
	slt	$a5, $a2, $a4
	masknez	$a2, $a2, $a5
	maskeqz	$a4, $a4, $a5
	or	$a2, $a4, $a2
	masknez	$a1, $a1, $a5
	maskeqz	$a4, $a3, $a5
	or	$a1, $a4, $a1
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 40
	bnez	$a0, .LBB5_6
.LBB5_7:                                # %if.end.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	beqz	$a1, .LBB5_16
# %bb.8:                                # %if.end5.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	ld.w	$a0, $a1, 20
	slli.d	$a2, $s4, 5
	alsl.d	$a2, $s4, $a2, 3
	add.d	$s1, $fp, $a2
	st.w	$a0, $s1, 20
	vld	$vr0, $a1, 0
	vstx	$vr0, $fp, $a2
	ld.w	$a4, $a1, 16
	vpickve2gr.w	$a2, $vr0, 0
	vpickve2gr.w	$a3, $vr0, 1
	sub.d	$a5, $a3, $a2
	slli.w	$a7, $a5, 4
	vpickve2gr.w	$a5, $vr0, 2
	vpickve2gr.w	$a6, $vr0, 3
	sub.d	$t0, $a6, $a5
	slli.d	$t1, $t0, 3
	alsl.w	$t0, $t0, $t1, 2
	sub.d	$t1, $a0, $a4
	slli.w	$t1, $t1, 3
	slt	$t2, $t0, $a7
	xori	$t3, $t2, 1
	masknez	$t0, $t0, $t2
	maskeqz	$a7, $a7, $t2
	or	$a7, $a7, $t0
	slt	$a7, $a7, $t1
	masknez	$t0, $t3, $a7
	maskeqz	$a7, $s2, $a7
	or	$a7, $a7, $t0
	st.w	$a4, $s1, 16
	beq	$a7, $s2, .LBB5_2
# %bb.9:                                # %if.end5.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	bne	$a7, $s5, .LBB5_15
# %bb.10:                               # %sw.bb36.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	add.d	$a0, $a5, $a6
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	st.w	$a0, $a1, 12
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 8
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_11:                               # %for.body.i.i.i.preheader
                                        #   in Loop: Header=BB5_4 Depth=1
	move	$a0, $s4
	move	$a3, $fp
	b	.LBB5_13
	.p2align	4, , 16
.LBB5_12:                               # %for.inc.i.i.i
                                        #   in Loop: Header=BB5_13 Depth=2
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 40
	beqz	$a0, .LBB5_7
.LBB5_13:                               # %for.body.i.i.i
                                        #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 32
	bge	$a2, $a4, .LBB5_12
# %bb.14:                               # %land.lhs.true.i.i.i
                                        #   in Loop: Header=BB5_13 Depth=2
	ld.d	$a5, $a3, 24
	slt	$a5, $zero, $a5
	masknez	$a2, $a2, $a5
	maskeqz	$a4, $a4, $a5
	or	$a2, $a4, $a2
	masknez	$a1, $a1, $a5
	maskeqz	$a4, $a3, $a5
	or	$a1, $a4, $a1
	b	.LBB5_12
	.p2align	4, , 16
.LBB5_15:                               # %sw.bb.i.i
                                        #   in Loop: Header=BB5_4 Depth=1
	add.d	$a0, $a2, $a3
	bstrpick.d	$a2, $a0, 31, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	st.w	$a0, $a1, 4
	addi.d	$a0, $a0, 1
	st.w	$a0, $s1, 0
	b	.LBB5_3
.LBB5_16:                               # %while.end.loopexit.split.loop.exit.i.i
	move	$s3, $s4
.LBB5_17:                               # %median_cut.exit.i
	addi.w	$a0, $s3, 0
	ori	$a1, $zero, 1
	move	$a2, $s3
	blt	$a0, $a1, .LBB5_38
.LBB5_18:                               # %for.body.lr.ph.i
	move	$t0, $zero
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	addi.w	$a0, $a2, 0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI5_1)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_1)
	ori	$a2, $zero, 7
	xvrepli.b	$xr1, 0
	vrepli.w	$vr2, 36
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	b	.LBB5_20
	.p2align	4, , 16
.LBB5_19:                               # %compute_color.exit.i
                                        #   in Loop: Header=BB5_20 Depth=1
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $s0, 152
	ld.d	$a0, $a0, 0
	srai.d	$a1, $s2, 1
	add.d	$a3, $s1, $a1
	div.d	$a3, $a3, $s2
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	stx.b	$a3, $a0, $t0
	ld.d	$a0, $s0, 152
	ld.d	$a0, $a0, 8
	add.d	$a3, $ra, $a1
	div.d	$a3, $a3, $s2
	stx.b	$a3, $a0, $t0
	ld.d	$a0, $s0, 152
	ld.d	$a0, $a0, 16
	add.d	$a1, $s8, $a1
	div.d	$a1, $a1, $s2
	stx.b	$a1, $a0, $t0
	addi.d	$t0, $t0, 1
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	beq	$t0, $a0, .LBB5_37
.LBB5_20:                               # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_24 Depth 2
                                        #       Child Loop BB5_26 Depth 3
                                        #         Child Loop BB5_29 Depth 4
                                        #         Child Loop BB5_33 Depth 4
	slli.d	$a1, $t0, 5
	alsl.d	$a6, $t0, $a1, 3
	add.d	$a5, $fp, $a6
	ld.w	$a3, $a5, 8
	ld.w	$a7, $a5, 12
	blt	$a7, $a3, .LBB5_35
# %bb.21:                               # %for.cond9.preheader.lr.ph.split.i.i
                                        #   in Loop: Header=BB5_20 Depth=1
	ld.w	$a4, $a5, 16
	ld.w	$a1, $a5, 20
	blt	$a1, $a4, .LBB5_36
# %bb.22:                               # %for.cond9.preheader.preheader.i.i
                                        #   in Loop: Header=BB5_20 Depth=1
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$t0, $s0, 608
	move	$s8, $zero
	move	$ra, $zero
	move	$s1, $zero
	move	$s2, $zero
	ld.w	$t1, $a5, 4
	ld.d	$a5, $t0, 48
	ldx.w	$a6, $fp, $a6
	addi.w	$a7, $a7, 1
	addi.w	$t0, $t1, 1
	sub.w	$t1, $a1, $a4
	bstrpick.d	$t2, $t1, 31, 0
	addi.d	$t2, $t2, 1
	bstrpick.d	$t5, $t2, 32, 3
	slli.d	$t3, $t5, 3
	alsl.d	$t4, $t5, $a4, 3
	slli.d	$t5, $t5, 4
	vreplgr2vr.w	$vr3, $a4
	vadd.w	$vr3, $vr3, $vr0
	slli.d	$t6, $a3, 6
	alsl.d	$t6, $a4, $t6, 1
	addi.d	$t7, $a1, 1
	b	.LBB5_24
	.p2align	4, , 16
.LBB5_23:                               # %for.cond9.for.inc37_crit_edge.split.i.i
                                        #   in Loop: Header=BB5_24 Depth=2
	addi.d	$a6, $a6, 1
	addi.w	$a0, $a6, 0
	beq	$t0, $a0, .LBB5_19
.LBB5_24:                               # %for.cond9.preheader.i.i
                                        #   Parent Loop BB5_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_26 Depth 3
                                        #         Child Loop BB5_29 Depth 4
                                        #         Child Loop BB5_33 Depth 4
	slli.d	$a1, $a6, 3
	ldx.d	$fp, $a5, $a1
	alsl.d	$t8, $a4, $fp, 1
	addi.w	$s3, $a1, 4
	xvreplgr2vr.d	$xr4, $s3
	add.d	$a1, $fp, $t6
	addi.d	$s4, $a1, 8
	move	$s5, $a3
	b	.LBB5_26
	.p2align	4, , 16
.LBB5_25:                               # %for.cond16.for.inc34_crit_edge.i.i
                                        #   in Loop: Header=BB5_26 Depth=3
	addi.d	$s5, $s5, 1
	addi.w	$a0, $s5, 0
	addi.d	$s4, $s4, 64
	beq	$a7, $a0, .LBB5_23
.LBB5_26:                               # %for.body11.i.i
                                        #   Parent Loop BB5_20 Depth=1
                                        #     Parent Loop BB5_24 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_29 Depth 4
                                        #         Child Loop BB5_33 Depth 4
	slli.d	$a1, $s5, 6
	add.d	$s6, $t8, $a1
	slli.d	$a1, $s5, 2
	addi.w	$s7, $a1, 2
	bgeu	$t1, $a2, .LBB5_28
# %bb.27:                               #   in Loop: Header=BB5_26 Depth=3
	move	$s0, $a4
	b	.LBB5_31
	.p2align	4, , 16
.LBB5_28:                               # %vector.ph
                                        #   in Loop: Header=BB5_26 Depth=3
	add.d	$s6, $s6, $t5
	xvori.b	$xr10, $xr1, 0
	xvinsgr2vr.d	$xr10, $s8, 0
	xvori.b	$xr8, $xr1, 0
	xvinsgr2vr.d	$xr8, $ra, 0
	xvori.b	$xr6, $xr1, 0
	xvinsgr2vr.d	$xr6, $s1, 0
	xvori.b	$xr5, $xr1, 0
	xvinsgr2vr.d	$xr5, $s2, 0
	xvreplgr2vr.d	$xr13, $s7
	move	$s1, $t3
	move	$s2, $s4
	xvori.b	$xr12, $xr1, 0
	xvori.b	$xr11, $xr1, 0
	xvori.b	$xr9, $xr1, 0
	xvori.b	$xr7, $xr1, 0
	vori.b	$vr14, $vr3, 0
	.p2align	4, , 16
.LBB5_29:                               # %vector.body
                                        #   Parent Loop BB5_20 Depth=1
                                        #     Parent Loop BB5_24 Depth=2
                                        #       Parent Loop BB5_26 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a1, $s2, -8
	ld.d	$fp, $s2, 0
	pcalau12i	$s0, %pc_hi20(.LCPI5_2)
	xvld	$xr16, $s0, %pc_lo12(.LCPI5_2)
	vinsgr2vr.d	$vr18, $a1, 0
	vinsgr2vr.d	$vr19, $fp, 0
	vseqi.h	$vr15, $vr18, 0
	xvpermi.d	$xr15, $xr15, 68
	xvori.b	$xr17, $xr16, 0
	xvshuf.h	$xr17, $xr0, $xr15
	xvslli.d	$xr15, $xr17, 48
	xvsrai.d	$xr15, $xr15, 48
	vseqi.h	$vr17, $vr19, 0
	xvpermi.d	$xr17, $xr17, 68
	xvshuf.h	$xr16, $xr0, $xr17
	xvslli.d	$xr16, $xr16, 48
	xvsrai.d	$xr16, $xr16, 48
	vpickve2gr.h	$a1, $vr18, 0
	xvreplgr2vr.h	$xr20, $a1
	xvpermi.q	$xr20, $xr1, 18
	xvori.b	$xr17, $xr1, 0
	xvextrins.h	$xr17, $xr20, 0
	vpickve2gr.h	$a1, $vr18, 1
	xvreplgr2vr.h	$xr20, $a1
	xvpermi.q	$xr20, $xr17, 18
	xvextrins.h	$xr17, $xr20, 68
	vpickve2gr.h	$a1, $vr18, 2
	xvreplgr2vr.h	$xr20, $a1
	xvpermi.q	$xr20, $xr17, 48
	xvextrins.h	$xr17, $xr20, 0
	vpickve2gr.h	$a1, $vr18, 3
	xvreplgr2vr.h	$xr18, $a1
	xvpermi.q	$xr18, $xr17, 48
	xvextrins.h	$xr17, $xr18, 68
	vpickve2gr.h	$a1, $vr19, 0
	xvreplgr2vr.h	$xr18, $a1
	xvpermi.q	$xr18, $xr1, 18
	xvori.b	$xr20, $xr1, 0
	xvextrins.h	$xr20, $xr18, 0
	vpickve2gr.h	$a1, $vr19, 1
	xvreplgr2vr.h	$xr18, $a1
	xvpermi.q	$xr18, $xr20, 18
	xvextrins.h	$xr20, $xr18, 68
	vpickve2gr.h	$a1, $vr19, 2
	xvreplgr2vr.h	$xr18, $a1
	xvpermi.q	$xr18, $xr20, 48
	xvextrins.h	$xr20, $xr18, 0
	vpickve2gr.h	$a1, $vr19, 3
	xvreplgr2vr.h	$xr18, $a1
	xvpermi.q	$xr18, $xr20, 48
	xvextrins.h	$xr20, $xr18, 68
	xvadd.d	$xr5, $xr5, $xr17
	xvadd.d	$xr7, $xr7, $xr20
	xvmul.d	$xr18, $xr4, $xr17
	xvmul.d	$xr19, $xr4, $xr20
	xvmul.d	$xr21, $xr13, $xr17
	xvmul.d	$xr22, $xr13, $xr20
	vslli.w	$vr23, $vr14, 3
	vbitseti.w	$vr24, $vr23, 2
	vadd.w	$vr23, $vr23, $vr2
	vpickve2gr.w	$a1, $vr24, 0
	xvinsgr2vr.d	$xr25, $a1, 0
	vpickve2gr.w	$a1, $vr24, 1
	xvinsgr2vr.d	$xr25, $a1, 1
	vpickve2gr.w	$a1, $vr24, 2
	xvinsgr2vr.d	$xr25, $a1, 2
	vpickve2gr.w	$a1, $vr24, 3
	xvinsgr2vr.d	$xr25, $a1, 3
	vpickve2gr.w	$a1, $vr23, 0
	xvinsgr2vr.d	$xr24, $a1, 0
	vpickve2gr.w	$a1, $vr23, 1
	xvinsgr2vr.d	$xr24, $a1, 1
	vpickve2gr.w	$a1, $vr23, 2
	xvinsgr2vr.d	$xr24, $a1, 2
	vpickve2gr.w	$a1, $vr23, 3
	xvinsgr2vr.d	$xr24, $a1, 3
	xvmul.d	$xr17, $xr17, $xr25
	xvmul.d	$xr20, $xr20, $xr24
	xvbitsel.v	$xr18, $xr18, $xr1, $xr15
	xvadd.d	$xr6, $xr6, $xr18
	xvbitsel.v	$xr18, $xr19, $xr1, $xr16
	xvadd.d	$xr9, $xr9, $xr18
	xvbitsel.v	$xr18, $xr21, $xr1, $xr15
	xvadd.d	$xr8, $xr8, $xr18
	xvbitsel.v	$xr18, $xr22, $xr1, $xr16
	xvadd.d	$xr11, $xr11, $xr18
	xvbitsel.v	$xr15, $xr17, $xr1, $xr15
	xvadd.d	$xr10, $xr10, $xr15
	xvbitsel.v	$xr15, $xr20, $xr1, $xr16
	xvadd.d	$xr12, $xr12, $xr15
	vaddi.wu	$vr14, $vr14, 8
	addi.d	$s1, $s1, -8
	addi.d	$s2, $s2, 16
	bnez	$s1, .LBB5_29
# %bb.30:                               # %middle.block
                                        #   in Loop: Header=BB5_26 Depth=3
	pcalau12i	$a1, %pc_hi20(.LCPI5_3)
	xvld	$xr13, $a1, %pc_lo12(.LCPI5_3)
	xvadd.d	$xr10, $xr12, $xr10
	xvpermi.d	$xr12, $xr10, 78
	xvori.b	$xr14, $xr13, 0
	xvshuf.d	$xr14, $xr0, $xr12
	xvadd.d	$xr10, $xr10, $xr14
	xvpermi.d	$xr12, $xr10, 68
	xvrepl128vei.d	$xr12, $xr12, 1
	xvadd.d	$xr10, $xr10, $xr12
	xvpickve2gr.d	$s8, $xr10, 0
	xvadd.d	$xr8, $xr11, $xr8
	xvpermi.d	$xr10, $xr8, 78
	xvori.b	$xr11, $xr13, 0
	xvshuf.d	$xr11, $xr0, $xr10
	xvadd.d	$xr8, $xr8, $xr11
	xvpermi.d	$xr10, $xr8, 68
	xvrepl128vei.d	$xr10, $xr10, 1
	xvadd.d	$xr8, $xr8, $xr10
	xvpickve2gr.d	$ra, $xr8, 0
	xvadd.d	$xr6, $xr9, $xr6
	xvpermi.d	$xr8, $xr6, 78
	xvori.b	$xr9, $xr13, 0
	xvshuf.d	$xr9, $xr0, $xr8
	xvadd.d	$xr6, $xr6, $xr9
	xvpermi.d	$xr8, $xr6, 68
	xvrepl128vei.d	$xr8, $xr8, 1
	xvadd.d	$xr6, $xr6, $xr8
	xvpickve2gr.d	$s1, $xr6, 0
	xvadd.d	$xr5, $xr7, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf.d	$xr13, $xr0, $xr6
	xvadd.d	$xr5, $xr5, $xr13
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.d	$xr6, $xr6, 1
	xvadd.d	$xr5, $xr5, $xr6
	xvpickve2gr.d	$s2, $xr5, 0
	move	$s0, $t4
	beq	$t2, $t3, .LBB5_25
.LBB5_31:                               # %for.body18.i.i.preheader
                                        #   in Loop: Header=BB5_26 Depth=3
	sub.d	$a1, $t7, $s0
	slli.d	$fp, $s0, 3
	addi.w	$s0, $fp, 4
	b	.LBB5_33
	.p2align	4, , 16
.LBB5_32:                               # %for.inc.i.i
                                        #   in Loop: Header=BB5_33 Depth=4
	addi.d	$s6, $s6, 2
	addi.w	$a1, $a1, -1
	addi.w	$s0, $s0, 8
	beqz	$a1, .LBB5_25
.LBB5_33:                               # %for.body18.i.i
                                        #   Parent Loop BB5_20 Depth=1
                                        #     Parent Loop BB5_24 Depth=2
                                        #       Parent Loop BB5_26 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.hu	$fp, $s6, 0
	beqz	$fp, .LBB5_32
# %bb.34:                               # %if.then.i.i
                                        #   in Loop: Header=BB5_33 Depth=4
	add.d	$s2, $s2, $fp
	mul.d	$a0, $fp, $s3
	add.d	$s1, $a0, $s1
	mul.d	$a0, $fp, $s7
	add.d	$ra, $a0, $ra
	mul.d	$a0, $fp, $s0
	add.d	$s8, $a0, $s8
	b	.LBB5_32
	.p2align	4, , 16
.LBB5_35:                               # %for.cond9.preheader.us.i.i
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB5_35
	.p2align	4, , 16
.LBB5_36:                               # %for.cond9.preheader.us69.i.i
                                        # =>This Inner Loop Header: Depth=1
	b	.LBB5_36
.LBB5_37:
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
.LBB5_38:                               # %select_colors.exit
	ld.d	$a0, $s0, 0
	st.w	$a2, $s0, 148
	st.w	$a2, $a0, 44
	ld.d	$a1, $s0, 0
	ld.d	$a2, $a1, 8
	ori	$a1, $zero, 95
	st.w	$a1, $a0, 40
	ori	$a1, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s0
	jirl	$ra, $a2, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.w	$fp, $a0, 56
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
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
.Lfunc_end5:
	.size	finish_pass1, .Lfunc_end5-finish_pass1
                                        # -- End function
	.p2align	5                               # -- Begin function pass2_fs_dither
	.type	pass2_fs_dither,@function
pass2_fs_dither:                        # @pass2_fs_dither
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	ori	$a4, $zero, 1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	blt	$a3, $a4, .LBB6_14
# %bb.1:                                # %for.body.lr.ph
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 128
	ld.d	$a6, $a0, 608
	alsl.d	$a0, $fp, $fp, 1
	addi.d	$a0, $a0, 3
	bstrpick.d	$a5, $a0, 31, 0
	beqz	$fp, .LBB6_11
# %bb.2:                                # %for.body.preheader
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	move	$a1, $zero
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 152
	ld.d	$t0, $a6, 48
	ld.d	$t1, $a2, 408
	ld.d	$t2, $a6, 80
	ld.d	$t3, $a0, 0
	ld.d	$t4, $a0, 8
	ld.d	$t5, $a0, 16
	addi.d	$a0, $fp, -1
	alsl.wu	$a2, $a0, $a0, 1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	st.d	$t3, $sp, 96                    # 8-byte Folded Spill
	st.d	$t5, $sp, 88                    # 8-byte Folded Spill
	st.d	$t4, $sp, 80                    # 8-byte Folded Spill
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_3:                                # %for.cond19.for.end_crit_edge
                                        #   in Loop: Header=BB6_4 Depth=1
	st.h	$s0, $s2, -2
	st.h	$a7, $s2, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.h	$t8, $s2, 2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	beq	$a1, $a3, .LBB6_14
.LBB6_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_9 Depth 2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	slli.d	$a0, $a1, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$a2, $a1, $a0
	ld.w	$a1, $a6, 72
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	ldx.d	$s3, $a3, $a0
	beqz	$a1, .LBB6_6
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a0, $a6, 64
	move	$a5, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	add.d	$s3, $s3, $a1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	alsl.d	$a4, $a1, $a0, 1
	addi.w	$t6, $zero, -3
	addi.w	$t7, $zero, -1
	b	.LBB6_7
	.p2align	4, , 16
.LBB6_6:                                # %if.else
                                        #   in Loop: Header=BB6_4 Depth=1
	ld.d	$a4, $a6, 64
	ori	$t6, $zero, 3
	ori	$a5, $zero, 1
	ori	$t7, $zero, 1
.LBB6_7:                                # %if.end
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$a1, $zero
	move	$a0, $zero
	move	$a3, $zero
	move	$s1, $zero
	move	$ra, $zero
	move	$s4, $zero
	move	$s0, $zero
	move	$a7, $zero
	move	$t8, $zero
	st.w	$a5, $a6, 72
	addi.d	$s5, $a2, 1
	addi.d	$s8, $a4, 2
	slli.d	$a6, $t6, 1
	st.d	$t6, $sp, 136                   # 8-byte Folded Spill
	st.d	$t7, $sp, 128                   # 8-byte Folded Spill
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	b	.LBB6_9
	.p2align	4, , 16
.LBB6_8:                                # %if.end81
                                        #   in Loop: Header=BB6_9 Depth=2
	addi.d	$a0, $a1, -1
	st.b	$a0, $s3, 0
	ldx.bu	$a1, $t3, $a0
	ldx.bu	$a2, $t4, $a0
	ldx.bu	$a0, $t5, $a0
	sub.d	$s1, $s1, $a1
	sub.d	$a2, $s7, $a2
	sub.d	$a5, $s6, $a0
	alsl.d	$a0, $s1, $s1, 1
	add.d	$a0, $a0, $s0
	st.h	$a0, $s8, -2
	alsl.d	$a0, $s1, $s1, 2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$s0, $a0, $a1
	slli.d	$a0, $s1, 3
	sub.d	$a1, $a0, $s1
	alsl.d	$a0, $a2, $a2, 1
	add.d	$a0, $a0, $a7
	st.h	$a0, $s8, 0
	alsl.d	$a0, $a2, $a2, 2
	add.d	$a7, $a0, $ra
	slli.d	$a0, $a2, 3
	sub.d	$a0, $a0, $a2
	alsl.d	$a3, $a5, $a5, 1
	add.d	$a3, $a3, $t8
	st.h	$a3, $s8, 2
	alsl.d	$a3, $a5, $a5, 2
	add.d	$t8, $a3, $s4
	slli.d	$a3, $a5, 3
	sub.d	$a3, $a3, $a5
	add.d	$s3, $s3, $t7
	addi.w	$fp, $fp, -1
	add.d	$s5, $s5, $t6
	move	$s8, $s2
	move	$ra, $a2
	move	$s4, $a5
	beqz	$fp, .LBB6_3
.LBB6_9:                                # %for.body21
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	add.d	$s2, $s8, $a6
	ld.h	$a2, $s2, -2
	add.d	$a1, $a1, $a2
	ldx.h	$a2, $s8, $a6
	addi.w	$a1, $a1, 8
	srai.d	$a1, $a1, 4
	ld.h	$a4, $s2, 2
	add.d	$a0, $a0, $a2
	addi.w	$a0, $a0, 8
	srai.d	$a0, $a0, 4
	add.d	$a2, $a3, $a4
	addi.w	$a2, $a2, 8
	srai.d	$a2, $a2, 4
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $t2, $a1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $t2, $a0
	slli.d	$a2, $a2, 2
	ld.bu	$a3, $s5, -1
	ldx.w	$a2, $t2, $a2
	ld.bu	$a4, $s5, 0
	ld.bu	$a5, $s5, 1
	add.w	$a1, $a1, $a3
	ldx.bu	$s1, $t1, $a1
	add.w	$a0, $a0, $a4
	add.w	$a1, $a2, $a5
	ldx.bu	$s7, $t1, $a0
	andi	$a0, $s1, 248
	ldx.d	$a0, $t0, $a0
	ldx.bu	$s6, $t1, $a1
	srli.d	$a2, $s7, 2
	slli.d	$a1, $a2, 6
	add.d	$a0, $a0, $a1
	srli.d	$a3, $s6, 3
	slli.d	$a1, $a3, 1
	ldx.hu	$a1, $a0, $a1
	bnez	$a1, .LBB6_8
# %bb.10:                               # %if.then77
                                        #   in Loop: Header=BB6_9 Depth=2
	srli.d	$a1, $s1, 3
	alsl.d	$a0, $a3, $a0, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$s4, $sp, 160                   # 8-byte Folded Spill
	move	$s4, $t0
	st.d	$s0, $sp, 176                   # 8-byte Folded Spill
	move	$s0, $t2
	st.d	$a7, $sp, 168                   # 8-byte Folded Spill
	st.d	$t8, $sp, 184                   # 8-byte Folded Spill
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fill_inverse_cmap)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 96                    # 8-byte Folded Reload
	move	$t2, $s0
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	move	$t0, $s4
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.hu	$a1, $a0, 0
	b	.LBB6_8
.LBB6_11:                               # %for.body.lr.ph.split.us
	ld.w	$a0, $a6, 72
	ld.d	$a1, $a6, 64
	.p2align	4, , 16
.LBB6_12:                               # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	sltui	$a0, $a0, 1
	masknez	$a2, $a5, $a0
	alsl.d	$a4, $a2, $a1, 1
	slli.d	$a2, $a2, 1
	stx.w	$zero, $a1, $a2
	addi.w	$a3, $a3, -1
	st.h	$zero, $a4, 4
	bnez	$a3, .LBB6_12
# %bb.13:                               # %for.cond.for.end134_crit_edge.split.us
	st.w	$a0, $a6, 72
.LBB6_14:                               # %for.end134
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end6:
	.size	pass2_fs_dither, .Lfunc_end6-pass2_fs_dither
                                        # -- End function
	.p2align	5                               # -- Begin function pass2_no_dither
	.type	pass2_no_dither,@function
pass2_no_dither:                        # @pass2_no_dither
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
	ori	$a4, $zero, 1
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	blt	$a3, $a4, .LBB7_8
# %bb.1:                                # %entry
	move	$s2, $a0
	ld.w	$s3, $a0, 128
	beqz	$s3, .LBB7_8
# %bb.2:                                # %for.body.preheader
	move	$fp, $a3
	move	$s1, $a1
	ld.d	$a0, $s2, 608
	ld.d	$s4, $a0, 48
	move	$s5, $zero
	b	.LBB7_4
	.p2align	4, , 16
.LBB7_3:                                # %for.cond5.for.inc26_crit_edge
                                        #   in Loop: Header=BB7_4 Depth=1
	addi.d	$s5, $s5, 1
	beq	$s5, $fp, .LBB7_8
.LBB7_4:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_6 Depth 2
	slli.d	$a0, $s5, 3
	ldx.d	$s6, $s1, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.d	$s8, $a1, $a0
	move	$s7, $s3
	b	.LBB7_6
	.p2align	4, , 16
.LBB7_5:                                # %if.end
                                        #   in Loop: Header=BB7_6 Depth=2
	addi.d	$a0, $a1, -1
	st.b	$a0, $s8, 0
	addi.d	$s8, $s8, 1
	addi.w	$s7, $s7, -1
	addi.d	$s6, $s6, 3
	beqz	$s7, .LBB7_3
.LBB7_6:                                # %for.body7
                                        #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s6, 0
	ld.bu	$a1, $s6, 1
	ld.bu	$a3, $s6, 2
	andi	$a2, $a0, 248
	ldx.d	$a4, $s4, $a2
	srli.d	$a2, $a1, 2
	srli.d	$a3, $a3, 3
	slli.d	$a1, $a2, 6
	add.d	$a4, $a4, $a1
	slli.d	$a1, $a3, 1
	ldx.hu	$a1, $a4, $a1
	bnez	$a1, .LBB7_5
# %bb.7:                                # %if.then
                                        #   in Loop: Header=BB7_6 Depth=2
	srli.d	$a1, $a0, 3
	alsl.d	$s0, $a3, $a4, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fill_inverse_cmap)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s0, 0
	b	.LBB7_5
.LBB7_8:                                # %for.end27
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
.Lfunc_end7:
	.size	pass2_no_dither, .Lfunc_end7-pass2_no_dither
                                        # -- End function
	.p2align	5                               # -- Begin function finish_pass2
	.type	finish_pass2,@function
finish_pass2:                           # @finish_pass2
# %bb.0:                                # %entry
	ret
.Lfunc_end8:
	.size	finish_pass2, .Lfunc_end8-finish_pass2
                                        # -- End function
	.p2align	5                               # -- Begin function update_box
	.type	update_box,@function
update_box:                             # @update_box
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	ld.w	$a7, $a1, 0
	ld.w	$a5, $a1, 4
	ld.w	$t1, $a1, 8
	ld.w	$a6, $a1, 12
	ld.w	$a2, $a1, 16
	ld.w	$a4, $a1, 20
	bge	$a7, $a5, .LBB9_11
# %bb.1:                                # %for.cond.preheader
	blt	$a6, $t1, .LBB9_11
# %bb.2:                                # %for.cond.preheader
	blt	$a4, $a2, .LBB9_11
# %bb.3:                                # %for.cond10.preheader.preheader
	addi.w	$a3, $a6, 1
	slt	$t0, $a7, $a5
	masknez	$t2, $a7, $t0
	maskeqz	$t0, $a5, $t0
	or	$t0, $t0, $t2
	addi.w	$t2, $t0, 1
	sub.d	$t0, $a4, $a2
	addi.d	$t3, $t0, 1
	move	$t0, $a7
.LBB9_4:                                # %for.cond10.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
                                        #       Child Loop BB9_6 Depth 3
	slli.d	$t4, $t0, 3
	ldx.d	$t4, $a0, $t4
	alsl.d	$t4, $a2, $t4, 1
	move	$t5, $t1
.LBB9_5:                                # %for.body12
                                        #   Parent Loop BB9_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_6 Depth 3
	slli.d	$t6, $t5, 6
	add.d	$t6, $t4, $t6
	move	$t7, $t3
	.p2align	4, , 16
.LBB9_6:                                # %for.body19
                                        #   Parent Loop BB9_4 Depth=1
                                        #     Parent Loop BB9_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$t8, $t6, 0
	bnez	$t8, .LBB9_10
# %bb.7:                                # %for.inc
                                        #   in Loop: Header=BB9_6 Depth=3
	addi.w	$t7, $t7, -1
	addi.d	$t6, $t6, 2
	bnez	$t7, .LBB9_6
# %bb.8:                                # %for.cond17.for.inc24_crit_edge
                                        #   in Loop: Header=BB9_5 Depth=2
	addi.d	$t5, $t5, 1
	addi.w	$t6, $t5, 0
	bne	$a3, $t6, .LBB9_5
# %bb.9:                                # %for.cond10.for.inc27_crit_edge.split
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$t0, $t0, 1
	addi.w	$t4, $t0, 0
	bne	$t2, $t4, .LBB9_4
	b	.LBB9_11
.LBB9_10:                               # %if.then22
	st.w	$t0, $a1, 0
	move	$a7, $t0
.LBB9_11:                               # %have_c0min
	addi.w	$a3, $a7, 0
	bge	$a3, $a5, .LBB9_22
# %bb.12:                               # %for.cond34.preheader
	blt	$a6, $t1, .LBB9_22
# %bb.13:                               # %for.cond34.preheader
	blt	$a4, $a2, .LBB9_22
# %bb.14:                               # %for.cond38.preheader.preheader
	addi.w	$t0, $a6, 1
	addi.w	$t2, $a7, 0
	sub.d	$t3, $a4, $a2
	addi.d	$t3, $t3, 1
	move	$t5, $a5
.LBB9_15:                               # %for.cond38.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
                                        #       Child Loop BB9_17 Depth 3
	move	$t4, $t5
	slli.d	$t5, $t5, 3
	ldx.d	$t5, $a0, $t5
	alsl.d	$t5, $a2, $t5, 1
	move	$t6, $t1
.LBB9_16:                               # %for.body41
                                        #   Parent Loop BB9_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_17 Depth 3
	slli.d	$t7, $t6, 6
	add.d	$t7, $t5, $t7
	move	$t8, $t3
	.p2align	4, , 16
.LBB9_17:                               # %for.body51
                                        #   Parent Loop BB9_15 Depth=1
                                        #     Parent Loop BB9_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$fp, $t7, 0
	bnez	$fp, .LBB9_21
# %bb.18:                               # %for.inc59
                                        #   in Loop: Header=BB9_17 Depth=3
	addi.w	$t8, $t8, -1
	addi.d	$t7, $t7, 2
	bnez	$t8, .LBB9_17
# %bb.19:                               # %for.cond48.for.inc62_crit_edge
                                        #   in Loop: Header=BB9_16 Depth=2
	addi.d	$t6, $t6, 1
	addi.w	$t7, $t6, 0
	bne	$t0, $t7, .LBB9_16
# %bb.20:                               # %for.cond38.for.inc65_crit_edge.split
                                        #   in Loop: Header=BB9_15 Depth=1
	addi.d	$t5, $t4, -1
	blt	$t2, $t4, .LBB9_15
	b	.LBB9_22
.LBB9_21:                               # %if.then56
	st.w	$t4, $a1, 4
	move	$a5, $t4
.LBB9_22:                               # %have_c0max
	addi.w	$t2, $a5, 0
	bge	$t1, $a6, .LBB9_33
# %bb.23:                               # %for.cond71.preheader
	addi.w	$t0, $a7, 0
	blt	$t2, $t0, .LBB9_33
# %bb.24:                               # %for.cond71.preheader
	blt	$a4, $a2, .LBB9_33
# %bb.25:                               # %for.cond75.preheader.preheader
	addi.w	$t3, $a5, 1
	slt	$t4, $a6, $t1
	masknez	$t5, $a6, $t4
	maskeqz	$t4, $t1, $t4
	or	$t4, $t4, $t5
	addi.w	$t5, $t4, 1
	sub.d	$t4, $a4, $a2
	addi.d	$t6, $t4, 1
	move	$t4, $t1
.LBB9_26:                               # %for.cond75.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_27 Depth 2
                                        #       Child Loop BB9_28 Depth 3
	slli.d	$t7, $t4, 6
	move	$t8, $t0
.LBB9_27:                               # %for.body78
                                        #   Parent Loop BB9_26 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_28 Depth 3
	slli.d	$fp, $t8, 3
	ldx.d	$fp, $a0, $fp
	add.d	$fp, $fp, $t7
	alsl.d	$fp, $a2, $fp, 1
	move	$s0, $t6
	.p2align	4, , 16
.LBB9_28:                               # %for.body88
                                        #   Parent Loop BB9_26 Depth=1
                                        #     Parent Loop BB9_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$s1, $fp, 0
	bnez	$s1, .LBB9_32
# %bb.29:                               # %for.inc96
                                        #   in Loop: Header=BB9_28 Depth=3
	addi.w	$s0, $s0, -1
	addi.d	$fp, $fp, 2
	bnez	$s0, .LBB9_28
# %bb.30:                               # %for.cond85.for.inc99_crit_edge
                                        #   in Loop: Header=BB9_27 Depth=2
	addi.d	$t8, $t8, 1
	addi.w	$fp, $t8, 0
	bne	$t3, $fp, .LBB9_27
# %bb.31:                               # %for.cond75.for.inc102_crit_edge.split
                                        #   in Loop: Header=BB9_26 Depth=1
	addi.d	$t4, $t4, 1
	addi.w	$t7, $t4, 0
	bne	$t5, $t7, .LBB9_26
	b	.LBB9_33
.LBB9_32:                               # %if.then93
	st.w	$t4, $a1, 8
	move	$t1, $t4
.LBB9_33:                               # %have_c1min
	addi.w	$t0, $t1, 0
	bge	$t0, $a6, .LBB9_44
# %bb.34:                               # %for.cond109.preheader
	addi.w	$t3, $a7, 0
	blt	$t2, $t3, .LBB9_44
# %bb.35:                               # %for.cond109.preheader
	blt	$a4, $a2, .LBB9_44
# %bb.36:                               # %for.cond113.preheader.preheader
	addi.w	$t4, $a5, 1
	addi.w	$t5, $t1, 0
	sub.d	$t6, $a4, $a2
	addi.d	$t6, $t6, 1
	move	$t8, $a6
.LBB9_37:                               # %for.cond113.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_38 Depth 2
                                        #       Child Loop BB9_39 Depth 3
	move	$t7, $t8
	slli.d	$t8, $t8, 6
	move	$fp, $t3
.LBB9_38:                               # %for.body116
                                        #   Parent Loop BB9_37 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_39 Depth 3
	slli.d	$s0, $fp, 3
	ldx.d	$s0, $a0, $s0
	add.d	$s0, $s0, $t8
	alsl.d	$s0, $a2, $s0, 1
	move	$s1, $t6
	.p2align	4, , 16
.LBB9_39:                               # %for.body126
                                        #   Parent Loop BB9_37 Depth=1
                                        #     Parent Loop BB9_38 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$s2, $s0, 0
	bnez	$s2, .LBB9_43
# %bb.40:                               # %for.inc134
                                        #   in Loop: Header=BB9_39 Depth=3
	addi.w	$s1, $s1, -1
	addi.d	$s0, $s0, 2
	bnez	$s1, .LBB9_39
# %bb.41:                               # %for.cond123.for.inc137_crit_edge
                                        #   in Loop: Header=BB9_38 Depth=2
	addi.d	$fp, $fp, 1
	addi.w	$s0, $fp, 0
	bne	$t4, $s0, .LBB9_38
# %bb.42:                               # %for.cond113.for.inc140_crit_edge.split
                                        #   in Loop: Header=BB9_37 Depth=1
	addi.d	$t8, $t7, -1
	blt	$t5, $t7, .LBB9_37
	b	.LBB9_44
.LBB9_43:                               # %if.then131
	st.w	$t7, $a1, 12
	move	$a6, $t7
.LBB9_44:                               # %have_c1max
	sub.d	$t4, $a6, $t1
	bge	$a2, $a4, .LBB9_55
# %bb.45:                               # %for.cond147.preheader
	addi.w	$t3, $a7, 0
	blt	$t2, $t3, .LBB9_55
# %bb.46:                               # %for.cond147.preheader
	addi.w	$t6, $t1, 0
	addi.w	$t5, $a6, 0
	blt	$t5, $t6, .LBB9_55
# %bb.47:                               # %for.cond151.preheader.preheader
	addi.w	$t5, $a5, 1
	slt	$t7, $a4, $a2
	masknez	$t8, $a4, $t7
	maskeqz	$t7, $a2, $t7
	or	$t7, $t7, $t8
	addi.w	$t7, $t7, 1
	addi.d	$t8, $t4, 1
	slli.d	$fp, $t6, 6
	move	$t6, $a2
.LBB9_48:                               # %for.cond151.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_49 Depth 2
                                        #       Child Loop BB9_50 Depth 3
	move	$s0, $t3
.LBB9_49:                               # %for.body154
                                        #   Parent Loop BB9_48 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_50 Depth 3
	slli.d	$s1, $s0, 3
	ldx.d	$s1, $a0, $s1
	add.d	$s1, $s1, $fp
	alsl.d	$s1, $t6, $s1, 1
	move	$s2, $t8
	.p2align	4, , 16
.LBB9_50:                               # %for.body164
                                        #   Parent Loop BB9_48 Depth=1
                                        #     Parent Loop BB9_49 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$s3, $s1, 0
	bnez	$s3, .LBB9_54
# %bb.51:                               # %for.inc171
                                        #   in Loop: Header=BB9_50 Depth=3
	addi.w	$s2, $s2, -1
	addi.d	$s1, $s1, 64
	bnez	$s2, .LBB9_50
# %bb.52:                               # %for.cond161.for.inc174_crit_edge
                                        #   in Loop: Header=BB9_49 Depth=2
	addi.d	$s0, $s0, 1
	addi.w	$s1, $s0, 0
	bne	$t5, $s1, .LBB9_49
# %bb.53:                               # %for.cond151.for.inc177_crit_edge.split
                                        #   in Loop: Header=BB9_48 Depth=1
	addi.d	$t6, $t6, 1
	addi.w	$s0, $t6, 0
	bne	$t7, $s0, .LBB9_48
	b	.LBB9_55
.LBB9_54:                               # %if.then168
	st.w	$t6, $a1, 16
	move	$a2, $t6
.LBB9_55:                               # %have_c2min
	addi.w	$t3, $a2, 0
	bge	$t3, $a4, .LBB9_66
# %bb.56:                               # %for.cond184.preheader
	addi.w	$t5, $a7, 0
	blt	$t2, $t5, .LBB9_66
# %bb.57:                               # %for.cond184.preheader
	addi.w	$t7, $t1, 0
	addi.w	$t1, $a6, 0
	blt	$t1, $t7, .LBB9_66
# %bb.58:                               # %for.cond188.preheader.preheader
	addi.w	$t1, $a5, 1
	addi.d	$t6, $t4, 1
	slli.d	$t7, $t7, 6
	move	$fp, $a4
.LBB9_59:                               # %for.cond188.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_60 Depth 2
                                        #       Child Loop BB9_61 Depth 3
	move	$t8, $fp
	move	$fp, $t5
.LBB9_60:                               # %for.body191
                                        #   Parent Loop BB9_59 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_61 Depth 3
	slli.d	$s0, $fp, 3
	ldx.d	$s0, $a0, $s0
	add.d	$s0, $s0, $t7
	alsl.d	$s0, $t8, $s0, 1
	move	$s1, $t6
	.p2align	4, , 16
.LBB9_61:                               # %for.body201
                                        #   Parent Loop BB9_59 Depth=1
                                        #     Parent Loop BB9_60 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$s2, $s0, 0
	bnez	$s2, .LBB9_65
# %bb.62:                               # %for.inc208
                                        #   in Loop: Header=BB9_61 Depth=3
	addi.w	$s1, $s1, -1
	addi.d	$s0, $s0, 64
	bnez	$s1, .LBB9_61
# %bb.63:                               # %for.cond198.for.inc212_crit_edge
                                        #   in Loop: Header=BB9_60 Depth=2
	addi.d	$fp, $fp, 1
	addi.w	$s0, $fp, 0
	bne	$t1, $s0, .LBB9_60
# %bb.64:                               # %for.cond188.for.inc215_crit_edge.split
                                        #   in Loop: Header=BB9_59 Depth=1
	addi.d	$fp, $t8, -1
	blt	$t3, $t8, .LBB9_59
	b	.LBB9_66
.LBB9_65:                               # %if.then205
	st.w	$t8, $a1, 20
	move	$a4, $t8
.LBB9_66:                               # %have_c2max
	sub.d	$a7, $a5, $a7
	slli.d	$t1, $a7, 4
	slli.d	$a7, $t4, 3
	alsl.d	$t4, $t4, $a7, 2
	sub.w	$a7, $a4, $a2
	slli.d	$t5, $a7, 3
	mulw.d.w	$t1, $t1, $t1
	mulw.d.w	$t4, $t4, $t4
	add.d	$t1, $t4, $t1
	mulw.d.w	$t4, $t5, $t5
	add.d	$t1, $t1, $t4
	st.d	$t1, $a1, 24
	move	$fp, $zero
	blt	$t2, $a3, .LBB9_68
# %bb.67:                               # %for.cond236.preheader.lr.ph
	addi.w	$t1, $a6, 0
	bge	$t1, $t0, .LBB9_69
.LBB9_68:                               # %for.end265
	st.d	$fp, $a1, 32
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB9_69:                               # %for.cond236.preheader.preheader
	addi.w	$a6, $a6, 1
	addi.w	$a5, $a5, 1
	bstrpick.d	$t1, $a7, 31, 0
	addi.d	$t1, $t1, 1
	bstrpick.d	$t5, $t1, 32, 2
	slli.d	$t2, $t5, 2
	slli.d	$t4, $t5, 3
	alsl.w	$t5, $t5, $a2, 2
	slli.d	$t6, $t0, 6
	alsl.d	$t6, $t3, $t6, 1
	addi.d	$t6, $t6, 4
	addi.d	$t7, $a4, 1
	addi.w	$a4, $a4, 0
	ori	$t8, $zero, 3
	vrepli.b	$vr0, 0
	vrepli.b	$vr1, -1
	vrepli.d	$vr2, 1
	b	.LBB9_71
	.p2align	4, , 16
.LBB9_70:                               # %for.cond236.for.inc263_crit_edge
                                        #   in Loop: Header=BB9_71 Depth=1
	addi.d	$a3, $a3, 1
	addi.w	$s0, $a3, 0
	beq	$a5, $s0, .LBB9_68
.LBB9_71:                               # %for.cond236.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_74 Depth 2
                                        #       Child Loop BB9_77 Depth 3
                                        #       Child Loop BB9_80 Depth 3
	blt	$a4, $t3, .LBB9_70
# %bb.72:                               # %for.body239.preheader
                                        #   in Loop: Header=BB9_71 Depth=1
	slli.d	$s0, $a3, 3
	ldx.d	$s1, $a0, $s0
	alsl.d	$s0, $t3, $s1, 1
	add.d	$s1, $s1, $t6
	move	$s2, $t0
	b	.LBB9_74
	.p2align	4, , 16
.LBB9_73:                               # %for.cond246.for.inc260_crit_edge
                                        #   in Loop: Header=BB9_74 Depth=2
	addi.d	$s2, $s2, 1
	addi.w	$s3, $s2, 0
	addi.d	$s1, $s1, 64
	beq	$a6, $s3, .LBB9_70
.LBB9_74:                               # %for.body239
                                        #   Parent Loop BB9_71 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_77 Depth 3
                                        #       Child Loop BB9_80 Depth 3
	slli.d	$s3, $s2, 6
	add.d	$s3, $s0, $s3
	bgeu	$a7, $t8, .LBB9_76
# %bb.75:                               #   in Loop: Header=BB9_74 Depth=2
	move	$s4, $a2
	b	.LBB9_79
	.p2align	4, , 16
.LBB9_76:                               # %vector.ph
                                        #   in Loop: Header=BB9_74 Depth=2
	add.d	$s3, $s3, $t4
	vori.b	$vr3, $vr0, 0
	vinsgr2vr.d	$vr3, $fp, 0
	move	$fp, $t2
	move	$s4, $s1
	vori.b	$vr4, $vr0, 0
	.p2align	4, , 16
.LBB9_77:                               # %vector.body
                                        #   Parent Loop BB9_71 Depth=1
                                        #     Parent Loop BB9_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s5, $s4, -4
	ld.w	$s6, $s4, 0
	vinsgr2vr.w	$vr5, $s5, 0
	vinsgr2vr.w	$vr6, $s6, 0
	vseqi.h	$vr5, $vr5, 0
	vxor.v	$vr5, $vr5, $vr1
	vilvl.h	$vr5, $vr5, $vr5
	vilvl.w	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr2
	vseqi.h	$vr6, $vr6, 0
	vxor.v	$vr6, $vr6, $vr1
	vilvl.h	$vr6, $vr6, $vr6
	vilvl.w	$vr6, $vr6, $vr6
	vand.v	$vr6, $vr6, $vr2
	vadd.d	$vr3, $vr3, $vr5
	vadd.d	$vr4, $vr4, $vr6
	addi.d	$fp, $fp, -4
	addi.d	$s4, $s4, 8
	bnez	$fp, .LBB9_77
# %bb.78:                               # %middle.block
                                        #   in Loop: Header=BB9_74 Depth=2
	vadd.d	$vr3, $vr4, $vr3
	vreplvei.d	$vr4, $vr3, 1
	vadd.d	$vr3, $vr3, $vr4
	vpickve2gr.d	$fp, $vr3, 0
	move	$s4, $t5
	beq	$t1, $t2, .LBB9_73
.LBB9_79:                               # %for.body249.preheader
                                        #   in Loop: Header=BB9_74 Depth=2
	sub.d	$s4, $t7, $s4
	.p2align	4, , 16
.LBB9_80:                               # %for.body249
                                        #   Parent Loop BB9_71 Depth=1
                                        #     Parent Loop BB9_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$s5, $s3, 0
	sltu	$s5, $zero, $s5
	add.d	$fp, $fp, $s5
	addi.w	$s4, $s4, -1
	addi.d	$s3, $s3, 2
	bnez	$s4, .LBB9_80
	b	.LBB9_73
.Lfunc_end9:
	.size	update_box, .Lfunc_end9-update_box
                                        # -- End function
	.p2align	5                               # -- Begin function fill_inverse_cmap
	.type	fill_inverse_cmap,@function
fill_inverse_cmap:                      # @fill_inverse_cmap
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1936                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1928                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1920                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1912                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1904                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1896                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1888                 # 8-byte Folded Spill
	fst.d	$fs7, $sp, 1880                 # 8-byte Folded Spill
	addi.d	$sp, $sp, -736
	ld.d	$a4, $a0, 608
	move	$a5, $a1
	ld.d	$a1, $a4, 48
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a4, $a5, 3
	srli.d	$a5, $a4, 5
	ori	$a1, $zero, 4
	ori	$s8, $zero, 4
	bstrins.d	$s8, $a5, 7, 5
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	slli.d	$a5, $a2, 2
	srli.d	$a2, $a5, 5
	ori	$a6, $zero, 2
	bstrins.d	$a6, $a2, 7, 5
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a2, $a3, 3
	srli.d	$t0, $a2, 5
	ld.w	$t2, $a0, 148
	ori	$a7, $zero, 4
	bstrins.d	$a7, $t0, 7, 5
	ori	$t1, $zero, 1
	lu12i.w	$s3, 524287
	st.d	$s8, $sp, 176                   # 8-byte Folded Spill
	blt	$t2, $t1, .LBB10_3
# %bb.1:                                # %for.body.lr.ph.i
	ori	$t3, $a4, 28
	addi.d	$a4, $t3, -1
	addi.w	$t7, $zero, -5
	lu32i.d	$t7, 0
	and	$a4, $a4, $t7
	add.d	$a4, $s8, $a4
	addi.d	$a4, $a4, 1
	srli.d	$t4, $a4, 1
	ori	$t5, $a5, 30
	addi.d	$a3, $t5, -1
	addi.w	$a4, $zero, -3
	lu32i.d	$a4, 0
	and	$a3, $a3, $a4
	add.d	$a3, $a6, $a3
	addi.d	$a3, $a3, 1
	srli.d	$t6, $a3, 1
	ld.d	$a3, $a0, 152
	ori	$t1, $a2, 28
	addi.d	$a2, $t1, -1
	and	$a2, $a2, $t7
	ld.d	$fp, $a3, 0
	ld.d	$s0, $a3, 8
	ld.d	$s1, $a3, 16
	add.d	$a2, $a7, $a2
	addi.d	$a2, $a2, 1
	srli.d	$t8, $a2, 1
	bgeu	$t2, $a1, .LBB10_76
# %bb.2:
	move	$s2, $zero
	move	$a5, $s3
	ori	$a1, $s3, 4095
	b	.LBB10_83
.LBB10_3:
	move	$t3, $zero
.LBB10_4:                               # %find_nearby_colors.exit
	ori	$a1, $s3, 4095
	xvreplgr2vr.d	$xr0, $a1
	xvst	$xr0, $sp, 568
	xvst	$xr0, $sp, 600
	xvst	$xr0, $sp, 632
	xvst	$xr0, $sp, 664
	xvst	$xr0, $sp, 696
	xvst	$xr0, $sp, 728
	xvst	$xr0, $sp, 760
	xvst	$xr0, $sp, 792
	xvst	$xr0, $sp, 824
	xvst	$xr0, $sp, 856
	xvst	$xr0, $sp, 888
	xvst	$xr0, $sp, 920
	xvst	$xr0, $sp, 952
	xvst	$xr0, $sp, 984
	xvst	$xr0, $sp, 1016
	xvst	$xr0, $sp, 1048
	xvst	$xr0, $sp, 1080
	xvst	$xr0, $sp, 1112
	xvst	$xr0, $sp, 1144
	xvst	$xr0, $sp, 1176
	xvst	$xr0, $sp, 1208
	xvst	$xr0, $sp, 1240
	xvst	$xr0, $sp, 1272
	xvst	$xr0, $sp, 1304
	xvst	$xr0, $sp, 1336
	xvst	$xr0, $sp, 1368
	xvst	$xr0, $sp, 1400
	xvst	$xr0, $sp, 1432
	xvst	$xr0, $sp, 1464
	xvst	$xr0, $sp, 1496
	xvst	$xr0, $sp, 1528
	xvst	$xr0, $sp, 1560
	blt	$t3, $t1, .LBB10_73
# %bb.5:                                # %for.body3.lr.ph.i
	ld.d	$a0, $a0, 152
	move	$t0, $zero
	ld.d	$t1, $a0, 8
	ld.d	$t2, $a0, 16
	addi.w	$a2, $zero, -4
	ori	$t8, $zero, 0
	lu32i.d	$t8, 1
	b	.LBB10_7
	.p2align	4, , 16
.LBB10_6:                               # %for.inc68.i
                                        #   in Loop: Header=BB10_7 Depth=1
	addi.d	$t0, $t0, 1
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	beq	$t0, $t3, .LBB10_73
.LBB10_7:                               # %for.body3.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
	addi.d	$a1, $sp, 312
	ldx.bu	$fp, $t0, $a1
	ld.d	$a1, $a0, 0
	ldx.bu	$a1, $a1, $fp
	ldx.bu	$a3, $t1, $fp
	sub.d	$a1, $s8, $a1
	slli.w	$a1, $a1, 1
	mulw.d.w	$a4, $a1, $a1
	sub.d	$a3, $a6, $a3
	alsl.w	$t4, $a3, $a3, 1
	ldx.bu	$t5, $t2, $fp
	alsl.d	$a3, $a3, $a3, 1
	mulw.d.w	$a3, $a3, $a3
	add.d	$a3, $a3, $a4
	sub.w	$a4, $a7, $t5
	mulw.d.w	$t5, $a4, $a4
	add.d	$s0, $a3, $t5
	slli.d	$a1, $a1, 5
	addi.d	$s1, $a1, 256
	slli.d	$a1, $t4, 4
	alsl.d	$a1, $t4, $a1, 3
	addi.d	$s2, $a1, 144
	slli.d	$a3, $a4, 4
	addi.d	$s3, $a3, 64
	addi.d	$s4, $a3, 192
	addi.d	$s5, $a3, 320
	addi.d	$s6, $a1, 432
	addi.d	$s7, $a1, 720
	addi.d	$s8, $a1, 1008
	addi.d	$ra, $a1, 1296
	addi.d	$a4, $a1, 1584
	addi.d	$t6, $a1, 1872
	addi.d	$t5, $sp, 199
	addi.d	$t4, $sp, 696
	move	$t7, $a2
	b	.LBB10_9
	.p2align	4, , 16
.LBB10_8:                               # %if.end.3.7.i
                                        #   in Loop: Header=BB10_9 Depth=2
	add.d	$s0, $s0, $s1
	addi.d	$s1, $s1, 512
	bstrpick.d	$a1, $t7, 31, 0
	addi.d	$t7, $a1, 1
	and	$a1, $t7, $t8
	addi.d	$t4, $t4, 256
	addi.d	$t5, $t5, 32
	bnez	$a1, .LBB10_6
.LBB10_9:                               # %for.cond40.preheader.i
                                        #   Parent Loop BB10_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $t4, -128
	blt	$s0, $a1, .LBB10_41
# %bb.10:                               # %if.end.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, -120
	add.d	$a1, $s0, $s3
	blt	$a1, $a3, .LBB10_42
.LBB10_11:                              # %if.end.1.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, -112
	add.d	$a1, $a1, $s4
	blt	$a1, $a3, .LBB10_43
.LBB10_12:                              # %if.end.2.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, -104
	add.d	$a1, $a1, $s5
	blt	$a1, $a3, .LBB10_44
.LBB10_13:                              # %if.end.3.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, -96
	add.d	$a1, $s2, $s0
	blt	$a1, $a3, .LBB10_45
.LBB10_14:                              # %if.end.160.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, -88
	add.d	$a3, $a1, $s3
	blt	$a3, $a5, .LBB10_46
.LBB10_15:                              # %if.end.1.1.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, -80
	add.d	$a3, $a3, $s4
	blt	$a3, $a5, .LBB10_47
.LBB10_16:                              # %if.end.2.1.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, -72
	add.d	$a3, $a3, $s5
	blt	$a3, $a5, .LBB10_48
.LBB10_17:                              # %if.end.3.1.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, -64
	add.d	$a1, $s6, $a1
	blt	$a1, $a3, .LBB10_49
.LBB10_18:                              # %if.end.266.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, -56
	add.d	$a3, $a1, $s3
	blt	$a3, $a5, .LBB10_50
.LBB10_19:                              # %if.end.1.2.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, -48
	add.d	$a3, $a3, $s4
	blt	$a3, $a5, .LBB10_51
.LBB10_20:                              # %if.end.2.2.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, -40
	add.d	$a3, $a3, $s5
	blt	$a3, $a5, .LBB10_52
.LBB10_21:                              # %if.end.3.2.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, -32
	add.d	$a1, $s7, $a1
	blt	$a1, $a3, .LBB10_53
.LBB10_22:                              # %if.end.371.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, -24
	add.d	$a3, $a1, $s3
	blt	$a3, $a5, .LBB10_54
.LBB10_23:                              # %if.end.1.3.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, -16
	add.d	$a3, $a3, $s4
	blt	$a3, $a5, .LBB10_55
.LBB10_24:                              # %if.end.2.3.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, -8
	add.d	$a3, $a3, $s5
	blt	$a3, $a5, .LBB10_56
.LBB10_25:                              # %if.end.3.3.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, 0
	add.d	$a1, $s8, $a1
	blt	$a1, $a3, .LBB10_57
.LBB10_26:                              # %if.end.4.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, 8
	add.d	$a3, $a1, $s3
	blt	$a3, $a5, .LBB10_58
.LBB10_27:                              # %if.end.1.4.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, 16
	add.d	$a3, $a3, $s4
	blt	$a3, $a5, .LBB10_59
.LBB10_28:                              # %if.end.2.4.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, 24
	add.d	$a3, $a3, $s5
	blt	$a3, $a5, .LBB10_60
.LBB10_29:                              # %if.end.3.4.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, 32
	add.d	$a1, $ra, $a1
	blt	$a1, $a3, .LBB10_61
.LBB10_30:                              # %if.end.5.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, 40
	add.d	$a3, $a1, $s3
	blt	$a3, $a5, .LBB10_62
.LBB10_31:                              # %if.end.1.5.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, 48
	add.d	$a3, $a3, $s4
	blt	$a3, $a5, .LBB10_63
.LBB10_32:                              # %if.end.2.5.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, 56
	add.d	$a3, $a3, $s5
	blt	$a3, $a5, .LBB10_64
.LBB10_33:                              # %if.end.3.5.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, 64
	add.d	$a1, $a4, $a1
	blt	$a1, $a3, .LBB10_65
.LBB10_34:                              # %if.end.6.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, 72
	add.d	$a3, $a1, $s3
	blt	$a3, $a5, .LBB10_66
.LBB10_35:                              # %if.end.1.6.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, 80
	add.d	$a3, $a3, $s4
	blt	$a3, $a5, .LBB10_67
.LBB10_36:                              # %if.end.2.6.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a5, $t4, 88
	add.d	$a3, $a3, $s5
	blt	$a3, $a5, .LBB10_68
.LBB10_37:                              # %if.end.3.6.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, 96
	add.d	$a1, $t6, $a1
	blt	$a1, $a3, .LBB10_69
.LBB10_38:                              # %if.end.7.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, 104
	add.d	$a1, $a1, $s3
	blt	$a1, $a3, .LBB10_70
.LBB10_39:                              # %if.end.1.7.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, 112
	add.d	$a1, $a1, $s4
	blt	$a1, $a3, .LBB10_71
.LBB10_40:                              # %if.end.2.7.i
                                        #   in Loop: Header=BB10_9 Depth=2
	ld.d	$a3, $t4, 120
	add.d	$a1, $a1, $s5
	bge	$a1, $a3, .LBB10_8
	b	.LBB10_72
	.p2align	4, , 16
.LBB10_41:                              # %if.then.i32
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$s0, $t4, -128
	st.b	$fp, $t5, -15
	ld.d	$a3, $t4, -120
	add.d	$a1, $s0, $s3
	bge	$a1, $a3, .LBB10_11
.LBB10_42:                              # %if.then.1.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, -120
	st.b	$fp, $t5, -14
	ld.d	$a3, $t4, -112
	add.d	$a1, $a1, $s4
	bge	$a1, $a3, .LBB10_12
.LBB10_43:                              # %if.then.2.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, -112
	st.b	$fp, $t5, -13
	ld.d	$a3, $t4, -104
	add.d	$a1, $a1, $s5
	bge	$a1, $a3, .LBB10_13
.LBB10_44:                              # %if.then.3.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, -104
	st.b	$fp, $t5, -12
	ld.d	$a3, $t4, -96
	add.d	$a1, $s2, $s0
	bge	$a1, $a3, .LBB10_14
.LBB10_45:                              # %if.then.155.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, -96
	st.b	$fp, $t5, -11
	ld.d	$a5, $t4, -88
	add.d	$a3, $a1, $s3
	bge	$a3, $a5, .LBB10_15
.LBB10_46:                              # %if.then.1.1.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, -88
	st.b	$fp, $t5, -10
	ld.d	$a5, $t4, -80
	add.d	$a3, $a3, $s4
	bge	$a3, $a5, .LBB10_16
.LBB10_47:                              # %if.then.2.1.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, -80
	st.b	$fp, $t5, -9
	ld.d	$a5, $t4, -72
	add.d	$a3, $a3, $s5
	bge	$a3, $a5, .LBB10_17
.LBB10_48:                              # %if.then.3.1.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, -72
	st.b	$fp, $t5, -8
	ld.d	$a3, $t4, -64
	add.d	$a1, $s6, $a1
	bge	$a1, $a3, .LBB10_18
.LBB10_49:                              # %if.then.262.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, -64
	st.b	$fp, $t5, -7
	ld.d	$a5, $t4, -56
	add.d	$a3, $a1, $s3
	bge	$a3, $a5, .LBB10_19
.LBB10_50:                              # %if.then.1.2.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, -56
	st.b	$fp, $t5, -6
	ld.d	$a5, $t4, -48
	add.d	$a3, $a3, $s4
	bge	$a3, $a5, .LBB10_20
.LBB10_51:                              # %if.then.2.2.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, -48
	st.b	$fp, $t5, -5
	ld.d	$a5, $t4, -40
	add.d	$a3, $a3, $s5
	bge	$a3, $a5, .LBB10_21
.LBB10_52:                              # %if.then.3.2.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, -40
	st.b	$fp, $t5, -4
	ld.d	$a3, $t4, -32
	add.d	$a1, $s7, $a1
	bge	$a1, $a3, .LBB10_22
.LBB10_53:                              # %if.then.368.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, -32
	st.b	$fp, $t5, -3
	ld.d	$a5, $t4, -24
	add.d	$a3, $a1, $s3
	bge	$a3, $a5, .LBB10_23
.LBB10_54:                              # %if.then.1.3.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, -24
	st.b	$fp, $t5, -2
	ld.d	$a5, $t4, -16
	add.d	$a3, $a3, $s4
	bge	$a3, $a5, .LBB10_24
.LBB10_55:                              # %if.then.2.3.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, -16
	st.b	$fp, $t5, -1
	ld.d	$a5, $t4, -8
	add.d	$a3, $a3, $s5
	bge	$a3, $a5, .LBB10_25
.LBB10_56:                              # %if.then.3.3.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, -8
	st.b	$fp, $t5, 0
	ld.d	$a3, $t4, 0
	add.d	$a1, $s8, $a1
	bge	$a1, $a3, .LBB10_26
.LBB10_57:                              # %if.then.4.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, 0
	st.b	$fp, $t5, 1
	ld.d	$a5, $t4, 8
	add.d	$a3, $a1, $s3
	bge	$a3, $a5, .LBB10_27
.LBB10_58:                              # %if.then.1.4.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, 8
	st.b	$fp, $t5, 2
	ld.d	$a5, $t4, 16
	add.d	$a3, $a3, $s4
	bge	$a3, $a5, .LBB10_28
.LBB10_59:                              # %if.then.2.4.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, 16
	st.b	$fp, $t5, 3
	ld.d	$a5, $t4, 24
	add.d	$a3, $a3, $s5
	bge	$a3, $a5, .LBB10_29
.LBB10_60:                              # %if.then.3.4.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, 24
	st.b	$fp, $t5, 4
	ld.d	$a3, $t4, 32
	add.d	$a1, $ra, $a1
	bge	$a1, $a3, .LBB10_30
.LBB10_61:                              # %if.then.5.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, 32
	st.b	$fp, $t5, 5
	ld.d	$a5, $t4, 40
	add.d	$a3, $a1, $s3
	bge	$a3, $a5, .LBB10_31
.LBB10_62:                              # %if.then.1.5.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, 40
	st.b	$fp, $t5, 6
	ld.d	$a5, $t4, 48
	add.d	$a3, $a3, $s4
	bge	$a3, $a5, .LBB10_32
.LBB10_63:                              # %if.then.2.5.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, 48
	st.b	$fp, $t5, 7
	ld.d	$a5, $t4, 56
	add.d	$a3, $a3, $s5
	bge	$a3, $a5, .LBB10_33
.LBB10_64:                              # %if.then.3.5.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, 56
	st.b	$fp, $t5, 8
	ld.d	$a3, $t4, 64
	add.d	$a1, $a4, $a1
	bge	$a1, $a3, .LBB10_34
.LBB10_65:                              # %if.then.6.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, 64
	st.b	$fp, $t5, 9
	ld.d	$a5, $t4, 72
	add.d	$a3, $a1, $s3
	bge	$a3, $a5, .LBB10_35
.LBB10_66:                              # %if.then.1.6.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, 72
	st.b	$fp, $t5, 10
	ld.d	$a5, $t4, 80
	add.d	$a3, $a3, $s4
	bge	$a3, $a5, .LBB10_36
.LBB10_67:                              # %if.then.2.6.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, 80
	st.b	$fp, $t5, 11
	ld.d	$a5, $t4, 88
	add.d	$a3, $a3, $s5
	bge	$a3, $a5, .LBB10_37
.LBB10_68:                              # %if.then.3.6.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a3, $t4, 88
	st.b	$fp, $t5, 12
	ld.d	$a3, $t4, 96
	add.d	$a1, $t6, $a1
	bge	$a1, $a3, .LBB10_38
.LBB10_69:                              # %if.then.7.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, 96
	st.b	$fp, $t5, 13
	ld.d	$a3, $t4, 104
	add.d	$a1, $a1, $s3
	bge	$a1, $a3, .LBB10_39
.LBB10_70:                              # %if.then.1.7.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, 104
	st.b	$fp, $t5, 14
	ld.d	$a3, $t4, 112
	add.d	$a1, $a1, $s4
	bge	$a1, $a3, .LBB10_40
.LBB10_71:                              # %if.then.2.7.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, 112
	st.b	$fp, $t5, 15
	ld.d	$a3, $t4, 120
	add.d	$a1, $a1, $s5
	bge	$a1, $a3, .LBB10_8
.LBB10_72:                              # %if.then.3.7.i
                                        #   in Loop: Header=BB10_9 Depth=2
	st.d	$a1, $t4, 120
	st.b	$fp, $t5, 16
	b	.LBB10_8
.LBB10_73:                              # %find_best_colors.exit
	move	$a0, $zero
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	andi	$a4, $a1, 56
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	andi	$a1, $a1, 28
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	andi	$a2, $a2, 28
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	alsl.d	$a2, $a2, $a3, 3
	addi.d	$a3, $sp, 184
	slli.d	$a4, $a4, 6
	ori	$a5, $zero, 32
	.p2align	4, , 16
.LBB10_74:                              # %for.cond15.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a6, $a2, $a0
	ld.bu	$a7, $a3, 0
	alsl.d	$a6, $a1, $a6, 1
	addi.d	$a7, $a7, 1
	stx.h	$a7, $a6, $a4
	ld.bu	$a7, $a3, 1
	add.d	$a6, $a6, $a4
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 2
	ld.bu	$a7, $a3, 2
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 4
	ld.bu	$a7, $a3, 3
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 6
	ld.bu	$a7, $a3, 4
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 64
	ld.bu	$a7, $a3, 5
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 66
	ld.bu	$a7, $a3, 6
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 68
	ld.bu	$a7, $a3, 7
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 70
	ld.bu	$a7, $a3, 8
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 128
	ld.bu	$a7, $a3, 9
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 130
	ld.bu	$a7, $a3, 10
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 132
	ld.bu	$a7, $a3, 11
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 134
	ld.bu	$a7, $a3, 12
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 192
	ld.bu	$a7, $a3, 13
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 194
	ld.bu	$a7, $a3, 14
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 196
	ld.bu	$a7, $a3, 15
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 198
	ld.bu	$a7, $a3, 16
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 256
	ld.bu	$a7, $a3, 17
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 258
	ld.bu	$a7, $a3, 18
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 260
	ld.bu	$a7, $a3, 19
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 262
	ld.bu	$a7, $a3, 20
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 320
	ld.bu	$a7, $a3, 21
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 322
	ld.bu	$a7, $a3, 22
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 324
	ld.bu	$a7, $a3, 23
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 326
	ld.bu	$a7, $a3, 24
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 384
	ld.bu	$a7, $a3, 25
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 386
	ld.bu	$a7, $a3, 26
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 388
	ld.bu	$a7, $a3, 27
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 390
	ld.bu	$a7, $a3, 28
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 448
	ld.bu	$a7, $a3, 29
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 450
	ld.bu	$a7, $a3, 30
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 452
	ld.bu	$a7, $a3, 31
	addi.d	$a7, $a7, 1
	st.h	$a7, $a6, 454
	addi.d	$a0, $a0, 8
	addi.d	$a3, $a3, 32
	bne	$a0, $a5, .LBB10_74
# %bb.75:                               # %for.end35
	addi.d	$sp, $sp, 736
	fld.d	$fs7, $sp, 1880                 # 8-byte Folded Reload
	fld.d	$fs6, $sp, 1888                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1896                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1904                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1912                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1920                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1928                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1936                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB10_76:                              # %vector.ph
	bstrpick.d	$a1, $t2, 30, 2
	slli.d	$s2, $a1, 2
	vinsgr2vr.w	$vr0, $s8, 0
	vinsgr2vr.w	$vr0, $s8, 1
	vinsgr2vr.w	$vr1, $t3, 0
	vinsgr2vr.w	$vr1, $t3, 1
	vinsgr2vr.w	$vr2, $t4, 0
	vinsgr2vr.w	$vr2, $t4, 1
	vst	$vr2, $sp, 80                   # 16-byte Folded Spill
	vinsgr2vr.w	$vr3, $a6, 0
	vinsgr2vr.w	$vr3, $a6, 1
	vinsgr2vr.w	$vr4, $t5, 0
	vinsgr2vr.w	$vr4, $t5, 1
	vinsgr2vr.w	$vr2, $t6, 0
	vinsgr2vr.w	$vr2, $t6, 1
	vst	$vr2, $sp, 64                   # 16-byte Folded Spill
	vinsgr2vr.w	$vr6, $a7, 0
	vinsgr2vr.w	$vr6, $a7, 1
	vinsgr2vr.w	$vr7, $t1, 0
	vinsgr2vr.w	$vr7, $t1, 1
	vinsgr2vr.w	$vr2, $t8, 0
	vinsgr2vr.w	$vr2, $t8, 1
	vst	$vr2, $sp, 48                   # 16-byte Folded Spill
	move	$a1, $s3
	addi.d	$s3, $fp, 2
	addi.d	$s4, $sp, 584
	addi.d	$s5, $s0, 2
	addi.d	$s6, $s1, 2
	move	$a5, $a1
	ori	$a1, $a1, 4095
	vreplgr2vr.d	$vr9, $a1
	vrepli.b	$vr10, 0
	vrepli.w	$vr15, 3
	move	$s7, $s2
	vori.b	$vr12, $vr9, 0
	.p2align	4, , 16
.LBB10_77:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a1, $s3, -2
	ld.h	$a2, $s3, 0
	vinsgr2vr.h	$vr2, $a1, 0
	vinsgr2vr.h	$vr5, $a2, 0
	vilvl.b	$vr2, $vr10, $vr2
	vilvl.h	$vr13, $vr10, $vr2
	vilvl.b	$vr2, $vr10, $vr5
	vilvl.h	$vr14, $vr10, $vr2
	vslt.wu	$vr17, $vr13, $vr0
	vshuf4i.w	$vr2, $vr17, 16
	vst	$vr17, $sp, 160                 # 16-byte Folded Spill
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vslt.wu	$vr16, $vr14, $vr0
	vshuf4i.w	$vr5, $vr16, 16
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vsle.wu	$vr8, $vr13, $vr1
	vsle.wu	$vr11, $vr14, $vr1
	vor.v	$vr8, $vr17, $vr8
	vst	$vr8, $sp, 144                  # 16-byte Folded Spill
	vshuf4i.w	$vr8, $vr8, 16
	vslli.d	$vr8, $vr8, 32
	vsrai.d	$vr8, $vr8, 32
	vor.v	$vr11, $vr16, $vr11
	vst	$vr11, $sp, 128                 # 16-byte Folded Spill
	vshuf4i.w	$vr11, $vr11, 16
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vsub.w	$vr20, $vr13, $vr1
	vsub.w	$vr21, $vr14, $vr1
	vslli.w	$vr20, $vr20, 1
	vslli.w	$vr21, $vr21, 1
	vilvl.w	$vr20, $vr10, $vr20
	vilvl.w	$vr21, $vr10, $vr21
	vmul.d	$vr20, $vr20, $vr20
	vmul.d	$vr21, $vr21, $vr21
	vsub.w	$vr22, $vr13, $vr0
	vsub.w	$vr23, $vr14, $vr0
	vslli.w	$vr22, $vr22, 1
	vslli.w	$vr23, $vr23, 1
	vshuf4i.w	$vr22, $vr22, 16
	vslli.d	$vr22, $vr22, 32
	vsrai.d	$vr22, $vr22, 32
	vshuf4i.w	$vr23, $vr23, 16
	vslli.d	$vr23, $vr23, 32
	vsrai.d	$vr23, $vr23, 32
	ld.h	$a1, $s5, -2
	vmul.d	$vr22, $vr22, $vr22
	vmul.d	$vr23, $vr23, $vr23
	vbitsel.v	$vr8, $vr20, $vr10, $vr8
	vinsgr2vr.h	$vr24, $a1, 0
	ld.h	$a1, $s5, 0
	vbitsel.v	$vr2, $vr8, $vr22, $vr2
	vst	$vr2, $sp, 112                  # 16-byte Folded Spill
	vbitsel.v	$vr2, $vr21, $vr10, $vr11
	vbitsel.v	$vr2, $vr2, $vr23, $vr5
	vst	$vr2, $sp, 96                   # 16-byte Folded Spill
	vinsgr2vr.h	$vr2, $a1, 0
	vilvl.b	$vr5, $vr10, $vr24
	vilvl.h	$vr21, $vr10, $vr5
	vilvl.b	$vr2, $vr10, $vr2
	vilvl.h	$vr22, $vr10, $vr2
	vslt.wu	$vr23, $vr21, $vr3
	vshuf4i.w	$vr2, $vr23, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vslt.wu	$vr24, $vr22, $vr3
	vshuf4i.w	$vr5, $vr24, 16
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr8, $vr5, 32
	vsle.wu	$vr5, $vr21, $vr4
	vsle.wu	$vr11, $vr22, $vr4
	vor.v	$vr25, $vr23, $vr5
	vshuf4i.w	$vr5, $vr25, 16
	vslli.d	$vr5, $vr5, 32
	vsrai.d	$vr5, $vr5, 32
	vor.v	$vr26, $vr24, $vr11
	vshuf4i.w	$vr11, $vr26, 16
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vsub.w	$vr27, $vr21, $vr4
	vsub.w	$vr28, $vr22, $vr4
	vmul.w	$vr27, $vr27, $vr15
	vmul.w	$vr28, $vr28, $vr15
	vilvl.w	$vr27, $vr10, $vr27
	vilvl.w	$vr28, $vr10, $vr28
	vmul.d	$vr27, $vr27, $vr27
	vmul.d	$vr28, $vr28, $vr28
	vsub.w	$vr29, $vr21, $vr3
	vsub.w	$vr30, $vr22, $vr3
	vmul.w	$vr29, $vr29, $vr15
	vmul.w	$vr30, $vr30, $vr15
	vshuf4i.w	$vr29, $vr29, 16
	vslli.d	$vr29, $vr29, 32
	vsrai.d	$vr29, $vr29, 32
	vshuf4i.w	$vr30, $vr30, 16
	vslli.d	$vr30, $vr30, 32
	vsrai.d	$vr30, $vr30, 32
	ld.h	$a1, $s6, -2
	vmul.d	$vr29, $vr29, $vr29
	vmul.d	$vr30, $vr30, $vr30
	vbitsel.v	$vr5, $vr27, $vr10, $vr5
	vinsgr2vr.h	$vr27, $a1, 0
	ld.h	$a1, $s6, 0
	vbitsel.v	$vr5, $vr5, $vr29, $vr2
	vbitsel.v	$vr2, $vr28, $vr10, $vr11
	vbitsel.v	$vr8, $vr2, $vr30, $vr8
	vinsgr2vr.h	$vr2, $a1, 0
	vilvl.b	$vr11, $vr10, $vr27
	vilvl.h	$vr27, $vr10, $vr11
	vilvl.b	$vr2, $vr10, $vr2
	vilvl.h	$vr28, $vr10, $vr2
	vslt.wu	$vr29, $vr27, $vr6
	vshuf4i.w	$vr2, $vr29, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr11, $vr2, 32
	vslt.wu	$vr30, $vr28, $vr6
	vshuf4i.w	$vr2, $vr30, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr19, $vr2, 32
	vsle.wu	$vr2, $vr27, $vr7
	vsle.wu	$vr17, $vr28, $vr7
	vor.v	$vr31, $vr29, $vr2
	vshuf4i.w	$vr2, $vr31, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr18, $vr2, 32
	vor.v	$vr2, $vr30, $vr17
	vsub.w	$vr17, $vr27, $vr7
	vilvl.w	$vr17, $vr10, $vr17
	vmul.d	$vr17, $vr17, $vr17
	vbitsel.v	$vr17, $vr17, $vr10, $vr18
	vsub.w	$vr18, $vr27, $vr6
	vshuf4i.w	$vr18, $vr18, 16
	vslli.d	$vr18, $vr18, 32
	vsrai.d	$vr18, $vr18, 32
	vmul.d	$vr18, $vr18, $vr18
	vbitsel.v	$vr11, $vr17, $vr18, $vr11
	vshuf4i.w	$vr17, $vr2, 16
	vslli.d	$vr17, $vr17, 32
	vsrai.d	$vr17, $vr17, 32
	vsub.w	$vr18, $vr28, $vr7
	vilvl.w	$vr18, $vr10, $vr18
	vmul.d	$vr18, $vr18, $vr18
	vbitsel.v	$vr17, $vr18, $vr10, $vr17
	vsub.w	$vr18, $vr28, $vr6
	vshuf4i.w	$vr18, $vr18, 16
	vslli.d	$vr18, $vr18, 32
	vsrai.d	$vr18, $vr18, 32
	vmul.d	$vr18, $vr18, $vr18
	vbitsel.v	$vr17, $vr17, $vr18, $vr19
	vld	$vr19, $sp, 80                  # 16-byte Folded Reload
	vslt.wu	$vr18, $vr19, $vr13
	vbitsel.v	$vr18, $vr1, $vr0, $vr18
	vld	$vr20, $sp, 144                 # 16-byte Folded Reload
	vbitsel.v	$vr18, $vr0, $vr18, $vr20
	vld	$vr20, $sp, 160                 # 16-byte Folded Reload
	vbitsel.v	$vr18, $vr18, $vr1, $vr20
	vslt.wu	$vr19, $vr19, $vr14
	vbitsel.v	$vr19, $vr1, $vr0, $vr19
	vld	$vr20, $sp, 128                 # 16-byte Folded Reload
	vbitsel.v	$vr19, $vr0, $vr19, $vr20
	vbitsel.v	$vr16, $vr19, $vr1, $vr16
	vsub.w	$vr13, $vr13, $vr18
	vsub.w	$vr14, $vr14, $vr16
	vld	$vr18, $sp, 64                  # 16-byte Folded Reload
	vslt.wu	$vr16, $vr18, $vr21
	vbitsel.v	$vr16, $vr4, $vr3, $vr16
	vbitsel.v	$vr16, $vr3, $vr16, $vr25
	vbitsel.v	$vr16, $vr16, $vr4, $vr23
	vslt.wu	$vr18, $vr18, $vr22
	vbitsel.v	$vr18, $vr4, $vr3, $vr18
	vbitsel.v	$vr18, $vr3, $vr18, $vr26
	vbitsel.v	$vr18, $vr18, $vr4, $vr24
	vld	$vr19, $sp, 112                 # 16-byte Folded Reload
	vadd.d	$vr5, $vr5, $vr19
	vld	$vr19, $sp, 96                  # 16-byte Folded Reload
	vadd.d	$vr8, $vr8, $vr19
	vsub.w	$vr16, $vr21, $vr16
	vsub.w	$vr18, $vr22, $vr18
	vslli.w	$vr13, $vr13, 1
	vshuf4i.w	$vr13, $vr13, 16
	vslli.d	$vr13, $vr13, 32
	vsrai.d	$vr13, $vr13, 32
	vmul.w	$vr16, $vr16, $vr15
	vshuf4i.w	$vr16, $vr16, 16
	vslli.d	$vr16, $vr16, 32
	vsrai.d	$vr16, $vr16, 32
	vmul.d	$vr16, $vr16, $vr16
	vmadd.d	$vr16, $vr13, $vr13
	vslli.w	$vr13, $vr14, 1
	vshuf4i.w	$vr13, $vr13, 16
	vslli.d	$vr13, $vr13, 32
	vsrai.d	$vr13, $vr13, 32
	vmul.w	$vr14, $vr18, $vr15
	vshuf4i.w	$vr14, $vr14, 16
	vslli.d	$vr14, $vr14, 32
	vsrai.d	$vr14, $vr14, 32
	vmul.d	$vr14, $vr14, $vr14
	vmadd.d	$vr14, $vr13, $vr13
	vld	$vr18, $sp, 48                  # 16-byte Folded Reload
	vslt.wu	$vr13, $vr18, $vr27
	vbitsel.v	$vr13, $vr7, $vr6, $vr13
	vbitsel.v	$vr13, $vr6, $vr13, $vr31
	vbitsel.v	$vr13, $vr13, $vr7, $vr29
	vslt.wu	$vr18, $vr18, $vr28
	vbitsel.v	$vr18, $vr7, $vr6, $vr18
	vbitsel.v	$vr2, $vr6, $vr18, $vr2
	vbitsel.v	$vr2, $vr2, $vr7, $vr30
	vadd.d	$vr5, $vr11, $vr5
	vadd.d	$vr8, $vr17, $vr8
	vsub.w	$vr11, $vr27, $vr13
	vsub.w	$vr2, $vr28, $vr2
	vshuf4i.w	$vr11, $vr11, 16
	vslli.d	$vr11, $vr11, 32
	vsrai.d	$vr11, $vr11, 32
	vmadd.d	$vr16, $vr11, $vr11
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vmadd.d	$vr14, $vr2, $vr2
	vst	$vr5, $s4, -16
	vst	$vr8, $s4, 0
	vmin.d	$vr9, $vr16, $vr9
	vmin.d	$vr12, $vr14, $vr12
	addi.d	$s7, $s7, -4
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 32
	addi.d	$s5, $s5, 4
	addi.d	$s6, $s6, 4
	bnez	$s7, .LBB10_77
# %bb.78:                               # %middle.block
	vmin.d	$vr0, $vr9, $vr12
	vreplvei.d	$vr1, $vr0, 1
	vmin.d	$vr0, $vr0, $vr1
	vpickve2gr.d	$a1, $vr0, 0
	bne	$s2, $t2, .LBB10_83
.LBB10_79:                              # %for.body152.i.preheader
	move	$a2, $zero
	move	$t3, $zero
	addi.d	$a3, $sp, 568
	addi.d	$a4, $sp, 312
	ori	$t1, $zero, 1
	move	$s3, $a5
	b	.LBB10_81
	.p2align	4, , 16
.LBB10_80:                              # %for.inc163.i
                                        #   in Loop: Header=BB10_81 Depth=1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 8
	beq	$t2, $a2, .LBB10_4
.LBB10_81:                              # %for.body152.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t0, $a3, 0
	blt	$a1, $t0, .LBB10_80
# %bb.82:                               # %if.then157.i
                                        #   in Loop: Header=BB10_81 Depth=1
	addi.w	$t0, $t3, 1
	stx.b	$a2, $t3, $a4
	move	$t3, $t0
	b	.LBB10_80
.LBB10_83:                              # %for.body.i.preheader
	sub.d	$a2, $t2, $s2
	addi.d	$a3, $sp, 568
	alsl.d	$a3, $s2, $a3, 3
	add.d	$a4, $s1, $s2
	add.d	$s0, $s0, $s2
	add.d	$fp, $fp, $s2
	addi.w	$s1, $s8, 0
	addi.w	$s2, $a6, 0
	addi.w	$s3, $a7, 0
	b	.LBB10_86
	.p2align	4, , 16
.LBB10_84:                              # %if.then100.i
                                        #   in Loop: Header=BB10_86 Depth=1
	sub.d	$t7, $ra, $a7
	mulw.d.w	$t7, $t7, $t7
	add.d	$s5, $t7, $s5
	move	$t7, $t1
.LBB10_85:                              # %if.end142.i
                                        #   in Loop: Header=BB10_86 Depth=1
	sub.d	$t0, $s4, $s6
	slli.d	$t0, $t0, 1
	mulw.d.w	$t0, $t0, $t0
	sub.d	$s4, $s7, $s8
	alsl.d	$s4, $s4, $s4, 1
	mulw.d.w	$s4, $s4, $s4
	add.d	$t0, $s4, $t0
	sub.d	$t7, $ra, $t7
	mulw.d.w	$t7, $t7, $t7
	add.d	$t0, $t0, $t7
	st.d	$s5, $a3, 0
	slt	$t7, $t0, $a1
	maskeqz	$t0, $t0, $t7
	masknez	$a1, $a1, $t7
	or	$a1, $t0, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 1
	addi.d	$s0, $s0, 1
	addi.d	$fp, $fp, 1
	ld.d	$s8, $sp, 176                   # 8-byte Folded Reload
	beqz	$a2, .LBB10_79
.LBB10_86:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$s4, $fp, 0
	bgeu	$s4, $s1, .LBB10_88
# %bb.87:                               # %if.then.i
                                        #   in Loop: Header=BB10_86 Depth=1
	sub.d	$t7, $s4, $s8
	slli.d	$t7, $t7, 1
	mulw.d.w	$s5, $t7, $t7
	move	$s6, $t3
	ld.bu	$s7, $s0, 0
	bgeu	$s7, $s2, .LBB10_90
	b	.LBB10_93
	.p2align	4, , 16
.LBB10_88:                              # %if.else.i
                                        #   in Loop: Header=BB10_86 Depth=1
	addi.w	$t7, $t3, 0
	bgeu	$t7, $s4, .LBB10_92
# %bb.89:                               # %if.then19.i
                                        #   in Loop: Header=BB10_86 Depth=1
	sub.d	$t7, $s4, $t3
	slli.d	$t7, $t7, 1
	bstrpick.d	$t7, $t7, 31, 1
	slli.d	$t7, $t7, 1
	mul.d	$s5, $t7, $t7
	move	$s6, $s8
	ld.bu	$s7, $s0, 0
	bltu	$s7, $s2, .LBB10_93
.LBB10_90:                              # %if.else61.i
                                        #   in Loop: Header=BB10_86 Depth=1
	addi.w	$t7, $t5, 0
	bgeu	$t7, $s7, .LBB10_94
# %bb.91:                               # %if.then64.i
                                        #   in Loop: Header=BB10_86 Depth=1
	sub.d	$t7, $s7, $t5
	alsl.d	$t7, $t7, $t7, 1
	mulw.d.w	$t7, $t7, $t7
	add.d	$s5, $t7, $s5
	move	$s8, $a6
	ld.bu	$ra, $a4, 0
	bltu	$ra, $s3, .LBB10_84
	b	.LBB10_95
	.p2align	4, , 16
.LBB10_92:                              # %if.else28.i
                                        #   in Loop: Header=BB10_86 Depth=1
	move	$s5, $zero
	addi.w	$t7, $t4, 0
	sltu	$t7, $t7, $s4
	masknez	$s6, $t3, $t7
	maskeqz	$t7, $s8, $t7
	or	$s6, $t7, $s6
	ld.bu	$s7, $s0, 0
	bgeu	$s7, $s2, .LBB10_90
.LBB10_93:                              # %if.then50.i
                                        #   in Loop: Header=BB10_86 Depth=1
	sub.d	$t7, $s7, $a6
	alsl.d	$t7, $t7, $t7, 1
	mulw.d.w	$t7, $t7, $t7
	add.d	$s5, $t7, $s5
	move	$s8, $t5
	ld.bu	$ra, $a4, 0
	bltu	$ra, $s3, .LBB10_84
	b	.LBB10_95
	.p2align	4, , 16
.LBB10_94:                              # %if.else75.i
                                        #   in Loop: Header=BB10_86 Depth=1
	addi.w	$t7, $t6, 0
	sltu	$t7, $t7, $s7
	masknez	$s8, $t5, $t7
	maskeqz	$t7, $a6, $t7
	or	$s8, $t7, $s8
	ld.bu	$ra, $a4, 0
	bltu	$ra, $s3, .LBB10_84
.LBB10_95:                              # %if.else111.i
                                        #   in Loop: Header=BB10_86 Depth=1
	addi.w	$t7, $t1, 0
	bgeu	$t7, $ra, .LBB10_97
# %bb.96:                               # %if.then114.i
                                        #   in Loop: Header=BB10_86 Depth=1
	sub.d	$t7, $ra, $t1
	mulw.d.w	$t7, $t7, $t7
	add.d	$s5, $t7, $s5
	move	$t7, $a7
	b	.LBB10_85
	.p2align	4, , 16
.LBB10_97:                              # %if.else125.i
                                        #   in Loop: Header=BB10_86 Depth=1
	addi.w	$t7, $t8, 0
	sltu	$t7, $t7, $ra
	masknez	$t0, $t1, $t7
	maskeqz	$t7, $a7, $t7
	or	$t7, $t7, $t0
	b	.LBB10_85
.Lfunc_end10:
	.size	fill_inverse_cmap, .Lfunc_end10-fill_inverse_cmap
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start_pass_2_quant
	.addrsig_sym new_color_map_2_quant
	.addrsig_sym prescan_quantize
	.addrsig_sym finish_pass1
	.addrsig_sym pass2_fs_dither
	.addrsig_sym pass2_no_dither
	.addrsig_sym finish_pass2
