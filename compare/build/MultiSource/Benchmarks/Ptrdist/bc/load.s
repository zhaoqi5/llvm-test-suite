	.file	"load.c"
	.text
	.globl	init_load                       # -- Begin function init_load
	.p2align	5
	.type	init_load,@function
init_load:                              # @init_load
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $zero
	pcaddu18i	$ra, %call36(clear_func)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(load_adr)
	st.d	$zero, $a0, %pc_lo12(load_adr)
	pcalau12i	$a0, %pc_hi20(load_str)
	st.b	$zero, $a0, %pc_lo12(load_str)
	pcalau12i	$a0, %pc_hi20(load_const)
	st.b	$zero, $a0, %pc_lo12(load_const)
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	init_load, .Lfunc_end0-init_load
                                        # -- End function
	.globl	addbyte                         # -- Begin function addbyte
	.p2align	5
	.type	addbyte,@function
addbyte:                                # @addbyte
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(had_error)
	ld.d	$a1, $a1, %got_pc_lo12(had_error)
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB1_6
# %bb.1:                                # %if.end
	pcalau12i	$a1, %pc_hi20(load_adr)
	addi.d	$a2, $a1, %pc_lo12(load_adr)
	ld.w	$a1, $a2, 4
	srai.d	$fp, $a1, 10
	addi.d	$a3, $a1, 1
	ori	$a4, $zero, 16
	st.w	$a3, $a2, 4
	blt	$fp, $a4, .LBB1_3
# %bb.2:                                # %if.then1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(yyerror)
	jr	$t8
.LBB1_3:                                # %if.end2
	pcalau12i	$a3, %got_pc_hi20(functions)
	ld.d	$s0, $a3, %got_pc_lo12(functions)
	ld.w	$a2, $a2, 0
	ld.d	$a3, $s0, 0
	bstrpick.d	$a4, $a1, 62, 53
	ori	$a5, $zero, 168
	mul.d	$s1, $a2, $a5
	add.d	$a2, $a3, $s1
	alsl.d	$a3, $fp, $a2, 3
	ld.d	$a2, $a3, 8
	add.d	$a4, $a1, $a4
	bstrpick.d	$a4, $a4, 31, 10
	slli.d	$a4, $a4, 10
	sub.w	$s2, $a1, $a4
	bnez	$a2, .LBB1_5
# %bb.4:                                # %if.then6
	addi.d	$s4, $a3, 8
	move	$s3, $a0
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s3
	st.d	$a1, $s4, 0
	ld.d	$a1, $s0, 0
	add.d	$a1, $a1, $s1
	alsl.d	$a1, $fp, $a1, 3
	ld.d	$a2, $a1, 8
.LBB1_5:                                # %if.end12
	stx.b	$a0, $a2, $s2
	ld.d	$a0, $s0, 0
	add.d	$a0, $a0, $s1
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
.LBB1_6:                                # %cleanup
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end1:
	.size	addbyte, .Lfunc_end1-addbyte
                                        # -- End function
	.globl	def_label                       # -- Begin function def_label
	.p2align	5
	.type	def_label,@function
def_label:                              # @def_label
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a1, %got_pc_hi20(functions)
	ld.d	$s2, $a1, %got_pc_lo12(functions)
	pcalau12i	$a1, %pc_hi20(load_adr)
	addi.d	$s0, $a1, %pc_lo12(load_adr)
	ld.w	$a1, $s0, 0
	ld.d	$a2, $s2, 0
	ori	$a3, $zero, 168
	mul.d	$s4, $a1, $a3
	add.d	$a1, $a2, $s4
	ld.d	$s1, $a1, 144
	move	$fp, $a0
	srli.d	$s3, $a0, 6
	beqz	$s1, .LBB2_6
# %bb.1:                                # %if.end
	addi.w	$a0, $s3, 0
	ori	$s2, $zero, 1
	blt	$a0, $s2, .LBB2_7
.LBB2_2:                                # %while.body.preheader
	addi.d	$s3, $s3, 1
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                # %if.end22
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.w	$s3, $s3, -1
	move	$s1, $a0
	bge	$s2, $s3, .LBB2_8
.LBB2_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, 512
	bnez	$a0, .LBB2_3
# %bb.5:                                # %if.then17
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a0, $zero, 520
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 512
	st.d	$zero, $a0, 512
	ld.d	$a0, $s1, 512
	b	.LBB2_3
.LBB2_6:                                # %if.then
	addi.d	$s1, $a1, 144
	ori	$a0, $zero, 520
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	ld.d	$a0, $s2, 0
	add.d	$a0, $a0, $s4
	ld.d	$a1, $a0, 144
	st.d	$zero, $a1, 512
	ld.d	$s1, $a0, 144
	addi.w	$a0, $s3, 0
	ori	$s2, $zero, 1
	bge	$a0, $s2, .LBB2_2
.LBB2_7:
	move	$a0, $s1
.LBB2_8:                                # %while.end
	srai.d	$a1, $fp, 63
	srli.d	$a1, $a1, 58
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 60, 6
	ld.w	$a2, $s0, 4
	slli.d	$a1, $a1, 6
	sub.d	$a1, $fp, $a1
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a0, $a1
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	def_label, .Lfunc_end2-def_label
                                        # -- End function
	.globl	long_val                        # -- Begin function long_val
	.p2align	5
	.type	long_val,@function
long_val:                               # @long_val
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s1, $a0, 0
	ld.bu	$s0, $s1, 0
	ori	$a0, $zero, 45
	bne	$s0, $a0, .LBB3_2
# %bb.1:                                # %if.then
	addi.d	$a0, $s1, 1
	st.d	$a0, $fp, 0
	ld.bu	$s2, $s1, 1
	move	$s1, $a0
	b	.LBB3_3
.LBB3_2:
	move	$s2, $s0
.LBB3_3:                                # %if.end
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ext.w.b	$a1, $s2
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	bnez	$a1, .LBB3_5
# %bb.4:
	move	$a1, $zero
	b	.LBB3_7
.LBB3_5:                                # %while.body.preheader
	move	$a1, $zero
	addi.d	$a2, $s1, 1
	.p2align	4, , 16
.LBB3_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $fp, 0
	ld.b	$a3, $a2, 0
	slli.d	$a4, $a1, 3
	ld.b	$a5, $a2, -1
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a0, $a3
	alsl.d	$a1, $a1, $a4, 1
	add.d	$a1, $a1, $a5
	addi.w	$a1, $a1, -48
	andi	$a3, $a3, 2048
	addi.d	$a2, $a2, 1
	bnez	$a3, .LBB3_6
.LBB3_7:                                # %while.end
	addi.d	$a0, $s0, -45
	sltui	$a0, $a0, 1
	sub.w	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	long_val, .Lfunc_end3-long_val
                                        # -- End function
	.globl	load_code                       # -- Begin function load_code
	.p2align	5
	.type	load_code,@function
load_code:                              # @load_code
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
	ld.bu	$s1, $a0, 0
	beqz	$s1, .LBB4_193
# %bb.1:                                # %entry
	move	$s0, $a0
	pcalau12i	$a0, %got_pc_hi20(had_error)
	ld.d	$s2, $a0, %got_pc_lo12(had_error)
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB4_193
# %bb.2:                                # %if.end.preheader
	pcalau12i	$s3, %pc_hi20(load_str)
	pcalau12i	$s7, %pc_hi20(load_const)
	pcalau12i	$a0, %pc_hi20(load_adr)
	addi.d	$s6, $a0, %pc_lo12(load_adr)
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(functions)
	ld.d	$s8, $a0, %got_pc_lo12(functions)
	pcalau12i	$a0, %pc_hi20(.LJTI4_0)
	addi.d	$a0, $a0, %pc_lo12(.LJTI4_0)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_3:                                # %if.end
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_144 Depth 2
                                        #     Child Loop BB4_150 Depth 2
                                        #     Child Loop BB4_130 Depth 2
                                        #     Child Loop BB4_135 Depth 2
                                        #       Child Loop BB4_140 Depth 3
                                        #     Child Loop BB4_161 Depth 2
                                        #       Child Loop BB4_169 Depth 3
                                        #     Child Loop BB4_118 Depth 2
                                        #     Child Loop BB4_177 Depth 2
                                        #     Child Loop BB4_65 Depth 2
                                        #     Child Loop BB4_47 Depth 2
	ld.bu	$a0, $s3, %pc_lo12(load_str)
	beqz	$a0, .LBB4_8
# %bb.4:                                # %if.then3
                                        #   in Loop: Header=BB4_3 Depth=1
	andi	$a0, $s1, 255
	ori	$a1, $zero, 34
	bne	$a0, $a1, .LBB4_6
# %bb.5:                                # %if.then7
                                        #   in Loop: Header=BB4_3 Depth=1
	st.b	$zero, $s3, %pc_lo12(load_str)
	ld.bu	$s1, $s0, 0
.LBB4_6:                                # %if.end.i
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	addi.d	$s5, $s0, 1
	srai.d	$s4, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	blt	$s4, $a0, .LBB4_17
.LBB4_7:                                # %if.then1.i
                                        #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	ld.bu	$s1, $s5, 0
	bnez	$s1, .LBB4_185
	b	.LBB4_193
	.p2align	4, , 16
.LBB4_8:                                # %if.else
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$a0, $s7, %pc_lo12(load_const)
	beqz	$a0, .LBB4_22
# %bb.9:                                # %if.then11
                                        #   in Loop: Header=BB4_3 Depth=1
	andi	$a0, $s1, 255
	ori	$a1, $zero, 58
	ori	$a2, $zero, 46
	beq	$a0, $a1, .LBB4_30
# %bb.10:                               # %if.then11
                                        #   in Loop: Header=BB4_3 Depth=1
	beq	$a0, $a2, .LBB4_26
# %bb.11:                               # %if.then11
                                        #   in Loop: Header=BB4_3 Depth=1
	ori	$a1, $zero, 10
	beq	$a0, $a1, .LBB4_184
# %bb.12:                               # %if.else31
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 4
	ext.w.b	$a1, $s1
	addi.d	$s5, $s0, 1
	srai.d	$s0, $a0, 10
	addi.d	$a2, $a0, 1
	st.w	$a2, $s6, 4
	bstrpick.d	$a2, $a0, 62, 53
	add.d	$a2, $a0, $a2
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$fp, $a0, $a2
	ori	$a0, $zero, 65
	blt	$a1, $a0, .LBB4_34
# %bb.13:                               # %if.end.i71
                                        #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 16
	bge	$s0, $a0, .LBB4_7
# %bb.14:                               # %if.end2.i76
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s4, $a0, $a2
	add.d	$a0, $a1, $s4
	alsl.d	$a1, $s0, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_16
# %bb.15:                               # %if.then6.i87
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	alsl.d	$a0, $s0, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_16:                               # %if.end12.i82
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a1, $s1, -55
	b	.LBB4_38
	.p2align	4, , 16
.LBB4_17:                               # %if.end2.i
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s0, $a0, $a2
	add.d	$a0, $a1, $s0
	alsl.d	$a1, $s4, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_19
# %bb.18:                               # %if.then6.i
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s0
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_19:                               # %if.end12.i
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $fp, 62, 53
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $fp, $a1
	stx.b	$s1, $a0, $a1
.LBB4_20:                               # %if.end174
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s0
.LBB4_21:                               # %if.end174
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
	ld.bu	$s1, $s5, 0
	bnez	$s1, .LBB4_185
	b	.LBB4_193
.LBB4_22:                               # %if.else46
                                        #   in Loop: Header=BB4_3 Depth=1
	andi	$a0, $s1, 255
	addi.d	$a0, $a0, -10
	ori	$a1, $zero, 105
	bltu	$a1, $a0, .LBB4_76
# %bb.23:                               # %if.else46
                                        #   in Loop: Header=BB4_3 Depth=1
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB4_24:                               # %if.end.i572
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	srai.d	$s5, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	blt	$s5, $a0, .LBB4_39
# %bb.25:                               # %if.then1.i595
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	b	.LBB4_42
.LBB4_26:                               # %if.end.i46
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	addi.d	$s5, $s0, 1
	srai.d	$s1, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	bge	$s1, $a0, .LBB4_7
# %bb.27:                               # %if.end2.i51
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s0, $a0, $a2
	add.d	$a0, $a1, $s0
	alsl.d	$a1, $s1, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_29
# %bb.28:                               # %if.then6.i62
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s4, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s0
	alsl.d	$a0, $s1, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_29:                               # %if.end12.i57
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $fp, 62, 53
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $fp, $a1
	ori	$a2, $zero, 46
	stx.b	$a2, $a0, $a1
	b	.LBB4_20
.LBB4_30:                               # %if.end.i21
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	st.b	$zero, $s7, %pc_lo12(load_const)
	addi.d	$s5, $s0, 1
	ld.bu	$s0, $s0, 0
	srai.d	$s4, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	bge	$s4, $a0, .LBB4_7
# %bb.31:                               # %if.end2.i26
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s1, $a0, $a2
	add.d	$a0, $a1, $s1
	alsl.d	$a1, $s4, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_33
# %bb.32:                               # %if.then6.i37
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s1
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_33:                               # %if.end12.i32
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $fp, 62, 53
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $fp, $a1
	stx.b	$s0, $a0, $a1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s1
	b	.LBB4_21
.LBB4_34:                               # %if.end.i96
                                        #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 16
	bge	$s0, $a0, .LBB4_7
# %bb.35:                               # %if.end2.i101
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s4, $a0, $a2
	add.d	$a0, $a1, $s4
	alsl.d	$a1, $s0, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_37
# %bb.36:                               # %if.then6.i113
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	alsl.d	$a0, $s0, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_37:                               # %if.end12.i107
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a1, $s1, -48
.LBB4_38:                               # %if.end174
                                        #   in Loop: Header=BB4_3 Depth=1
	stx.b	$a1, $a0, $fp
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	b	.LBB4_21
.LBB4_39:                               # %if.end2.i577
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s4, $a0, $a2
	add.d	$a0, $a1, $s4
	alsl.d	$a1, $s5, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_41
# %bb.40:                               # %if.then6.i589
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_41:                               # %if.end12.i583
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $fp, 62, 53
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $fp, $a1
	stx.b	$s1, $a0, $a1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
.LBB4_42:                               # %addbyte.exit596
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s1, $s0, 1
	ld.bu	$fp, $s1, 0
	move	$s5, $fp
	ori	$a0, $zero, 45
	bne	$fp, $a0, .LBB4_44
# %bb.43:                               # %if.then.i618
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$s5, $s0, 2
	addi.d	$s1, $s0, 2
.LBB4_44:                               # %if.end.i598
                                        #   in Loop: Header=BB4_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ext.w.b	$a1, $s5
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	bnez	$a1, .LBB4_46
# %bb.45:                               #   in Loop: Header=BB4_3 Depth=1
	move	$a1, $zero
	move	$s0, $s1
	b	.LBB4_48
.LBB4_46:                               # %while.body.i604.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB4_47:                               # %while.body.i604
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $s1, 1
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 1
	addi.d	$s0, $s1, 1
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	ext.w.b	$a4, $s5
	add.d	$a1, $a1, $a4
	addi.w	$a1, $a1, -48
	andi	$a3, $a3, 2048
	andi	$s5, $a2, 255
	move	$s1, $s0
	bnez	$a3, .LBB4_47
.LBB4_48:                               # %long_val.exit621
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $fp, -45
	sltui	$a0, $a0, 1
	sub.w	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s1, $a0, $a1
	ori	$a0, $zero, 127
	blt	$a0, $s1, .LBB4_52
.LBB4_49:                               # %if.then155
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB4_184
# %bb.50:                               # %if.end.i623
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	srai.d	$s5, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	blt	$s5, $a0, .LBB4_79
.LBB4_51:                               # %if.then1.i236
                                        #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	b	.LBB4_78
.LBB4_52:                               # %if.else157
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB4_184
# %bb.53:                               # %if.end.i649
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	srai.d	$s5, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	blt	$s5, $a0, .LBB4_93
# %bb.54:                               # %if.then1.i672
                                        #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	b	.LBB4_49
.LBB4_55:                               # %if.end.i136
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	srai.d	$s5, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	blt	$s5, $a0, .LBB4_57
# %bb.56:                               # %if.then1.i159
                                        #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	b	.LBB4_60
.LBB4_57:                               # %if.end2.i141
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s4, $a0, $a2
	add.d	$a0, $a1, $s4
	alsl.d	$a1, $s5, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_59
# %bb.58:                               # %if.then6.i153
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_59:                               # %if.end12.i147
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $fp, 62, 53
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $fp, $a1
	stx.b	$s1, $a0, $a1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
.LBB4_60:                               # %addbyte.exit160
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s1, $s0, 1
	ld.bu	$fp, $s1, 0
	move	$s5, $fp
	ori	$a0, $zero, 45
	bne	$fp, $a0, .LBB4_62
# %bb.61:                               # %if.then.i182
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$s5, $s0, 2
	addi.d	$s1, $s0, 2
.LBB4_62:                               # %if.end.i162
                                        #   in Loop: Header=BB4_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ext.w.b	$a1, $s5
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	bnez	$a1, .LBB4_64
# %bb.63:                               #   in Loop: Header=BB4_3 Depth=1
	move	$a1, $zero
	move	$s0, $s1
	b	.LBB4_66
.LBB4_64:                               # %while.body.i168.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a1, $zero
	.p2align	4, , 16
.LBB4_65:                               # %while.body.i168
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $s1, 1
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $a3, 1
	addi.d	$s0, $s1, 1
	slli.d	$a3, $a2, 1
	ldx.hu	$a3, $a0, $a3
	ext.w.b	$a4, $s5
	add.d	$a1, $a1, $a4
	addi.w	$a1, $a1, -48
	andi	$a3, $a3, 2048
	andi	$s5, $a2, 255
	move	$s1, $s0
	bnez	$a3, .LBB4_65
.LBB4_66:                               # %long_val.exit185
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $fp, -45
	sltui	$a0, $a0, 1
	sub.w	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	lu12i.w	$a0, 16
	bge	$fp, $a0, .LBB4_194
# %bb.67:                               # %if.end58
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB4_184
# %bb.68:                               # %if.end.i187
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$s1, $s6, 4
	srai.d	$s5, $s1, 10
	addi.d	$a0, $s1, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	blt	$s5, $a0, .LBB4_96
# %bb.69:                               # %if.then1.i210
                                        #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB4_184
	b	.LBB4_99
.LBB4_70:                               # %sw.bb110
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$a0, $a0, $a2
	ori	$a2, $zero, 1
	stx.b	$a2, $a1, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $s6, 0
	b	.LBB4_184
.LBB4_71:                               # %if.end.i494
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	srai.d	$s4, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	blt	$s4, $a0, .LBB4_103
# %bb.72:                               # %if.then1.i517
                                        #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	addi.d	$s0, $s0, 1
	bnez	$a0, .LBB4_184
	b	.LBB4_106
.LBB4_73:                               # %sw.bb165
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$a0, $s0, 1
	addi.d	$s0, $s0, 1
	ori	$a1, $zero, 114
	beq	$a0, $a1, .LBB4_157
# %bb.74:                               # %sw.bb165
                                        #   in Loop: Header=BB4_3 Depth=1
	ori	$a1, $zero, 105
	bne	$a0, $a1, .LBB4_184
# %bb.75:                               # %sw.bb168
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a0, $zero
	pcaddu18i	$ra, %call36(clear_func)
	jirl	$ra, $ra, 0
	st.d	$zero, $s6, 0
	st.b	$zero, $s3, %pc_lo12(load_str)
	st.b	$zero, $s7, %pc_lo12(load_const)
	b	.LBB4_184
.LBB4_76:                               # %if.end.i701
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	srai.d	$s5, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	blt	$s5, $a0, .LBB4_79
# %bb.77:                               # %if.then1.i724
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
.LBB4_78:                               # %sw.epilog171
                                        #   in Loop: Header=BB4_3 Depth=1
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	b	.LBB4_184
.LBB4_79:                               # %if.end2.i706
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s4, $a0, $a2
	add.d	$a0, $a1, $s4
	alsl.d	$a1, $s5, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_81
# %bb.80:                               # %if.then6.i718
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_81:                               # %if.end12.i712
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $fp, 62, 53
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $fp, $a1
	stx.b	$s1, $a0, $a1
.LBB4_82:                               # %sw.epilog171
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
.LBB4_83:                               # %sw.epilog171
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
	b	.LBB4_184
.LBB4_84:                               # %sw.bb
                                        #   in Loop: Header=BB4_3 Depth=1
	ori	$a0, $zero, 1
	st.b	$a0, $s3, %pc_lo12(load_str)
	b	.LBB4_184
.LBB4_85:                               # %if.end.i314
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	srai.d	$s4, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	blt	$s4, $a0, .LBB4_110
# %bb.86:                               # %if.then1.i337
                                        #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	b	.LBB4_113
.LBB4_87:                               # %sw.bb63
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$s4, $s0, 1
	ori	$a0, $zero, 45
	bne	$s4, $a0, .LBB4_126
# %bb.88:                               # %if.then.i259
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$s5, $s0, 2
	addi.d	$fp, $s0, 2
	b	.LBB4_127
.LBB4_89:                               # %sw.bb48
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$fp, $s0, 1
	ori	$a0, $zero, 45
	bne	$fp, $a0, .LBB4_141
# %bb.90:                               # %if.then.i
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$s5, $s0, 2
	addi.d	$s0, $s0, 2
	b	.LBB4_142
.LBB4_91:                               # %if.end.i546
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	srai.d	$s4, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	blt	$s4, $a0, .LBB4_152
# %bb.92:                               # %if.then1.i569
                                        #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	st.b	$a2, $s7, %pc_lo12(load_const)
	b	.LBB4_184
.LBB4_93:                               # %if.end2.i654
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s4, $a0, $a2
	add.d	$a0, $a1, $s4
	alsl.d	$a1, $s5, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_95
# %bb.94:                               # %if.then6.i666
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_95:                               # %if.end12.i660
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $s1, 31, 8
	bstrpick.d	$a2, $fp, 62, 53
	add.d	$a2, $fp, $a2
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a2, $fp, $a2
	ori	$a1, $a1, 128
	stx.b	$a1, $a0, $a2
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
	b	.LBB4_49
.LBB4_96:                               # %if.end2.i192
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s4, $a0, $a2
	add.d	$a0, $a1, $s4
	alsl.d	$a1, $s5, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_98
# %bb.97:                               # %if.then6.i204
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_98:                               # %if.end12.i198
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $s1, 62, 53
	add.d	$a1, $s1, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $s1, $a1
	stx.b	$fp, $a0, $a1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB4_184
.LBB4_99:                               # %if.end.i213
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$s1, $s6, 4
	srai.d	$s5, $s1, 10
	addi.d	$a0, $s1, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	bge	$s5, $a0, .LBB4_51
# %bb.100:                              # %if.end2.i218
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s4, $a0, $a2
	add.d	$a0, $a1, $s4
	alsl.d	$a1, $s5, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_102
# %bb.101:                              # %if.then6.i230
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_102:                              # %if.end12.i224
                                        #   in Loop: Header=BB4_3 Depth=1
	slli.w	$a1, $fp, 24
	srai.d	$a1, $a1, 31
	bstrpick.d	$a2, $s1, 62, 53
	add.d	$a2, $s1, $a2
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a2, $s1, $a2
	stx.b	$a1, $a0, $a2
	b	.LBB4_82
.LBB4_103:                              # %if.end2.i499
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s1, $a0, $a2
	add.d	$a0, $a1, $s1
	alsl.d	$a1, $s4, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_105
# %bb.104:                              # %if.then6.i511
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s5, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s1
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_105:                              # %if.end12.i505
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $fp, 62, 53
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $fp, $a1
	ori	$a2, $zero, 99
	stx.b	$a2, $a0, $a1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s1
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
	ld.w	$a0, $s2, 0
	addi.d	$s0, $s0, 1
	bnez	$a0, .LBB4_184
.LBB4_106:                              # %if.end.i520
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$s1, $s6, 4
	ld.bu	$fp, $s0, 0
	srai.d	$s5, $s1, 10
	addi.d	$a0, $s1, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	bge	$s5, $a0, .LBB4_51
# %bb.107:                              # %if.end2.i525
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s4, $a0, $a2
	add.d	$a0, $a1, $s4
	alsl.d	$a1, $s5, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_109
# %bb.108:                              # %if.then6.i537
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_109:                              # %if.end12.i531
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $s1, 62, 53
	add.d	$a1, $s1, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $s1, $a1
	stx.b	$fp, $a0, $a1
	b	.LBB4_82
.LBB4_110:                              # %if.end2.i319
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s1, $a0, $a2
	add.d	$a0, $a1, $s1
	alsl.d	$a1, $s4, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_112
# %bb.111:                              # %if.then6.i331
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s5, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s1
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_112:                              # %if.end12.i325
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $fp, 62, 53
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $fp, $a1
	ori	$a2, $zero, 67
	stx.b	$a2, $a0, $a1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s1
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
.LBB4_113:                              # %addbyte.exit338
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s1, $s0, 1
	ld.bu	$fp, $s1, 0
	move	$s5, $fp
	ori	$a0, $zero, 45
	bne	$fp, $a0, .LBB4_115
# %bb.114:                              # %if.then.i360
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$s5, $s0, 2
	addi.d	$s1, $s0, 2
.LBB4_115:                              # %if.end.i340
                                        #   in Loop: Header=BB4_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ext.w.b	$a1, $s5
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	bnez	$a1, .LBB4_117
# %bb.116:                              #   in Loop: Header=BB4_3 Depth=1
	move	$a1, $zero
	b	.LBB4_119
.LBB4_117:                              # %while.body.i346.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a1, $zero
	move	$a2, $s1
	.p2align	4, , 16
.LBB4_118:                              # %while.body.i346
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a3, $a2, 1
	slli.d	$a4, $a1, 3
	alsl.d	$a1, $a1, $a4, 1
	addi.d	$s1, $a2, 1
	slli.d	$a2, $a3, 1
	ldx.hu	$a2, $a0, $a2
	ext.w.b	$a4, $s5
	add.d	$a1, $a1, $a4
	addi.w	$a1, $a1, -48
	andi	$a4, $a2, 2048
	andi	$s5, $a3, 255
	move	$a2, $s1
	bnez	$a4, .LBB4_118
.LBB4_119:                              # %long_val.exit363
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $fp, -45
	sltui	$a0, $a0, 1
	sub.w	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	ori	$a0, $zero, 127
	blt	$a0, $s0, .LBB4_123
.LBB4_120:                              # %if.then119
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB4_174
# %bb.121:                              # %if.end.i365
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	srai.d	$s5, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	blt	$s5, $a0, .LBB4_171
# %bb.122:                              # %if.then1.i388
                                        #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	b	.LBB4_174
.LBB4_123:                              # %if.else122
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB4_174
# %bb.124:                              # %if.end.i391
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	srai.d	$s5, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	blt	$s5, $a0, .LBB4_190
# %bb.125:                              # %if.then1.i414
                                        #   in Loop: Header=BB4_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	b	.LBB4_120
.LBB4_126:                              #   in Loop: Header=BB4_3 Depth=1
	addi.d	$fp, $s0, 1
	move	$s5, $s4
.LBB4_127:                              # %if.end.i239
                                        #   in Loop: Header=BB4_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ext.w.b	$a1, $s5
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a1, $a1, 2048
	bnez	$a1, .LBB4_129
# %bb.128:                              #   in Loop: Header=BB4_3 Depth=1
	move	$a1, $zero
	b	.LBB4_131
.LBB4_129:                              # %while.body.i245.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a1, $zero
	move	$a2, $fp
	.p2align	4, , 16
.LBB4_130:                              # %while.body.i245
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a3, $a2, 1
	slli.d	$a4, $a1, 3
	alsl.d	$a1, $a1, $a4, 1
	addi.d	$fp, $a2, 1
	slli.d	$a2, $a3, 1
	ldx.hu	$a2, $a0, $a2
	ext.w.b	$a4, $s5
	add.d	$a1, $a1, $a4
	addi.w	$a1, $a1, -48
	andi	$a4, $a2, 2048
	andi	$s5, $a3, 255
	move	$a2, $fp
	bnez	$a4, .LBB4_130
.LBB4_131:                              # %long_val.exit262
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $s4, -45
	sltui	$a0, $a0, 1
	sub.w	$a2, $zero, $a1
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s4, $a0, $a1
	ext.w.b	$a0, $s4
	pcaddu18i	$ra, %call36(clear_func)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $fp, 0
	addi.d	$s0, $fp, 1
	ori	$a1, $zero, 168
	mul.d	$s5, $s4, $a1
	ori	$a1, $zero, 46
	beq	$a0, $a1, .LBB4_161
# %bb.132:                              # %while.body72.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	ori	$a1, $zero, 46
	b	.LBB4_135
	.p2align	4, , 16
.LBB4_133:                              #   in Loop: Header=BB4_135 Depth=2
	move	$a3, $zero
.LBB4_134:                              # %long_val.exit287
                                        #   in Loop: Header=BB4_135 Depth=2
	move	$fp, $s0
	addi.d	$a0, $a0, -45
	ld.d	$a1, $s8, 0
	sltui	$a2, $a0, 1
	sub.d	$a4, $zero, $a3
	masknez	$a3, $a3, $a2
	add.d	$a0, $a1, $s5
	ld.d	$a0, $a0, 152
	maskeqz	$a1, $a4, $a2
	or	$a1, $a1, $a3
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(nextarg)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	add.d	$a1, $a1, $s5
	st.d	$a0, $a1, 152
	ld.bu	$a0, $s0, 0
	addi.d	$s0, $s0, 1
	ori	$a1, $zero, 46
	beq	$a0, $a1, .LBB4_161
.LBB4_135:                              # %while.body72
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_140 Depth 3
	ld.bu	$a0, $fp, 1
	beq	$a0, $a1, .LBB4_158
# %bb.136:                              # %if.end78
                                        #   in Loop: Header=BB4_135 Depth=2
	move	$a1, $a0
	ori	$a2, $zero, 45
	bne	$a0, $a2, .LBB4_138
# %bb.137:                              # %if.then.i284
                                        #   in Loop: Header=BB4_135 Depth=2
	ld.bu	$a1, $fp, 2
	addi.d	$s0, $fp, 2
.LBB4_138:                              # %if.end.i264
                                        #   in Loop: Header=BB4_135 Depth=2
	ld.d	$a2, $s1, 0
	ext.w.b	$a3, $a1
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a2, $a3
	andi	$a3, $a3, 2048
	beqz	$a3, .LBB4_133
# %bb.139:                              # %while.body.i270.preheader
                                        #   in Loop: Header=BB4_135 Depth=2
	move	$a3, $zero
	move	$a4, $s0
	.p2align	4, , 16
.LBB4_140:                              # %while.body.i270
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a5, $a4, 1
	slli.d	$a6, $a3, 3
	alsl.d	$a3, $a3, $a6, 1
	addi.d	$s0, $a4, 1
	slli.d	$a4, $a5, 1
	ldx.hu	$a4, $a2, $a4
	andi	$a1, $a1, 255
	add.d	$a1, $a3, $a1
	addi.w	$a3, $a1, -48
	andi	$a6, $a4, 2048
	andi	$a1, $a5, 255
	move	$a4, $s0
	bnez	$a6, .LBB4_140
	b	.LBB4_134
.LBB4_141:                              #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s0, $s0, 1
	move	$s5, $fp
.LBB4_142:                              # %if.end.i121
                                        #   in Loop: Header=BB4_3 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ext.w.b	$a1, $s5
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a0, $a1
	move	$s1, $zero
	andi	$a1, $a1, 2048
	beqz	$a1, .LBB4_145
# %bb.143:                              # %while.body.i.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a1, $s0
	.p2align	4, , 16
.LBB4_144:                              # %while.body.i
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a2, $a1, 1
	slli.d	$a3, $s1, 3
	alsl.d	$a3, $s1, $a3, 1
	addi.d	$s0, $a1, 1
	slli.d	$a1, $a2, 1
	ldx.hu	$a1, $a0, $a1
	ext.w.b	$a4, $s5
	add.d	$a3, $a3, $a4
	addi.w	$s1, $a3, -48
	andi	$a3, $a1, 2048
	andi	$s5, $a2, 255
	move	$a1, $s0
	bnez	$a3, .LBB4_144
.LBB4_145:                              # %long_val.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s5, $a0, $a2
	add.d	$a0, $a1, $s5
	ld.d	$s4, $a0, 144
	bnez	$s4, .LBB4_147
# %bb.146:                              # %if.then.i133
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s4, $a0, 144
	ori	$a0, $zero, 520
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 0
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s5
	ld.d	$a1, $a0, 144
	st.d	$zero, $a1, 512
	ld.d	$s4, $a0, 144
.LBB4_147:                              # %if.end.i130
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $fp, -45
	sltui	$a0, $a0, 1
	sub.w	$a1, $zero, $s1
	masknez	$a2, $s1, $a0
	maskeqz	$a0, $a1, $a0
	or	$fp, $a0, $a2
	srai.d	$a0, $fp, 6
	ori	$s5, $zero, 1
	blt	$a0, $s5, .LBB4_155
# %bb.148:                              # %while.body.i132.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s1, $a0, 1
	b	.LBB4_150
	.p2align	4, , 16
.LBB4_149:                              # %if.end22.i
                                        #   in Loop: Header=BB4_150 Depth=2
	addi.w	$s1, $s1, -1
	move	$s4, $a0
	bge	$s5, $s1, .LBB4_156
.LBB4_150:                              # %while.body.i132
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $s4, 512
	bnez	$a0, .LBB4_149
# %bb.151:                              # %if.then17.i
                                        #   in Loop: Header=BB4_150 Depth=2
	ori	$a0, $zero, 520
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 512
	st.d	$zero, $a0, 512
	ld.d	$a0, $s4, 512
	b	.LBB4_149
.LBB4_152:                              # %if.end2.i551
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s1, $a0, $a2
	add.d	$a0, $a1, $s1
	alsl.d	$a1, $s4, $a0, 3
	ld.d	$a0, $a1, 8
	ori	$a2, $zero, 1
	bnez	$a0, .LBB4_154
# %bb.153:                              # %if.then6.i563
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s5, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	ori	$a2, $zero, 1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s1
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_154:                              # %if.end12.i557
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $fp, 62, 53
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $fp, $a1
	ori	$a3, $zero, 75
	stx.b	$a3, $a0, $a1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s1
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
	st.b	$a2, $s7, %pc_lo12(load_const)
	b	.LBB4_184
.LBB4_155:                              #   in Loop: Header=BB4_3 Depth=1
	move	$a0, $s4
.LBB4_156:                              # %def_label.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	srli.d	$a1, $fp, 58
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 60, 6
	ld.w	$a2, $s6, 4
	slli.d	$a1, $a1, 6
	sub.d	$a1, $fp, $a1
	slli.d	$a1, $a1, 3
	stx.d	$a2, $a0, $a1
	b	.LBB4_184
.LBB4_157:                              # %sw.bb169
                                        #   in Loop: Header=BB4_3 Depth=1
	pcaddu18i	$ra, %call36(execute)
	jirl	$ra, $ra, 0
	b	.LBB4_184
.LBB4_158:                              # %if.then76
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s0, $fp, 2
	b	.LBB4_161
	.p2align	4, , 16
.LBB4_159:                              #   in Loop: Header=BB4_161 Depth=2
	move	$a3, $zero
.LBB4_160:                              # %long_val.exit312
                                        #   in Loop: Header=BB4_161 Depth=2
	addi.d	$a0, $a0, -45
	ld.d	$a1, $s8, 0
	sltui	$a2, $a0, 1
	sub.d	$a4, $zero, $a3
	masknez	$a3, $a3, $a2
	add.d	$a0, $a1, $s5
	ld.d	$a0, $a0, 160
	maskeqz	$a1, $a4, $a2
	or	$a1, $a1, $a3
	ext.w.b	$a1, $a1
	pcaddu18i	$ra, %call36(nextarg)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s8, 0
	add.d	$a1, $a1, $s5
	st.d	$a0, $a1, 160
.LBB4_161:                              # %while.cond87
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_169 Depth 3
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 44
	beq	$a0, $a1, .LBB4_165
# %bb.162:                              # %while.cond87
                                        #   in Loop: Header=BB4_161 Depth=2
	ori	$a1, $zero, 91
	beq	$a0, $a1, .LBB4_170
# %bb.163:                              # %if.end97
                                        #   in Loop: Header=BB4_161 Depth=2
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB4_166
.LBB4_164:                              # %if.then.i309
                                        #   in Loop: Header=BB4_161 Depth=2
	ld.bu	$a1, $s0, 1
	addi.d	$s0, $s0, 1
	b	.LBB4_167
	.p2align	4, , 16
.LBB4_165:                              # %if.then95
                                        #   in Loop: Header=BB4_161 Depth=2
	ld.bu	$a0, $s0, 1
	addi.d	$s0, $s0, 1
	ori	$a1, $zero, 45
	beq	$a0, $a1, .LBB4_164
.LBB4_166:                              #   in Loop: Header=BB4_161 Depth=2
	move	$a1, $a0
.LBB4_167:                              # %if.end.i289
                                        #   in Loop: Header=BB4_161 Depth=2
	ld.d	$a2, $s1, 0
	ext.w.b	$a3, $a1
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a2, $a3
	andi	$a3, $a3, 2048
	beqz	$a3, .LBB4_159
# %bb.168:                              # %while.body.i295.preheader
                                        #   in Loop: Header=BB4_161 Depth=2
	move	$a3, $zero
	move	$a4, $s0
	.p2align	4, , 16
.LBB4_169:                              # %while.body.i295
                                        #   Parent Loop BB4_3 Depth=1
                                        #     Parent Loop BB4_161 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a5, $a4, 1
	slli.d	$a6, $a3, 3
	alsl.d	$a3, $a3, $a6, 1
	addi.d	$s0, $a4, 1
	slli.d	$a4, $a5, 1
	ldx.hu	$a4, $a2, $a4
	andi	$a1, $a1, 255
	add.d	$a1, $a3, $a1
	addi.w	$a3, $a1, -48
	andi	$a6, $a4, 2048
	andi	$a1, $a5, 255
	move	$a4, $s0
	bnez	$a6, .LBB4_169
	b	.LBB4_160
.LBB4_170:                              # %while.end108
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $s6, 0
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.w	$s4, $s6, 0
	st.w	$zero, $s6, 4
	b	.LBB4_184
.LBB4_171:                              # %if.end2.i422
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s4, $a0, $a2
	add.d	$a0, $a1, $s4
	alsl.d	$a1, $s5, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_173
# %bb.172:                              # %if.then6.i434
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_173:                              # %if.end12.i428
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $fp, 62, 53
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $fp, $a1
	stx.b	$s0, $a0, $a1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
.LBB4_174:                              # %if.end128
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.bu	$a0, $s1, 0
	addi.d	$a0, $a0, -44
	sltui	$a0, $a0, 1
	ldx.bu	$fp, $s1, $a0
	add.d	$s0, $s1, $a0
	b	.LBB4_177
.LBB4_175:                              # %if.then1.i466
                                        #   in Loop: Header=BB4_177 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(yyerror)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB4_176:                              # %addbyte.exit467
                                        #   in Loop: Header=BB4_177 Depth=2
	addi.d	$s0, $s0, 1
	ld.bu	$fp, $s0, 0
.LBB4_177:                              # %if.end128
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ori	$a0, $zero, 58
	beq	$fp, $a0, .LBB4_183
# %bb.178:                              # %while.body139
                                        #   in Loop: Header=BB4_177 Depth=2
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB4_176
# %bb.179:                              # %if.end.i443
                                        #   in Loop: Header=BB4_177 Depth=2
	ld.w	$s1, $s6, 4
	srai.d	$s5, $s1, 10
	addi.d	$a0, $s1, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	bge	$s5, $a0, .LBB4_175
# %bb.180:                              # %if.end2.i448
                                        #   in Loop: Header=BB4_177 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s4, $a0, $a2
	add.d	$a0, $a1, $s4
	alsl.d	$a1, $s5, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_182
# %bb.181:                              # %if.then6.i460
                                        #   in Loop: Header=BB4_177 Depth=2
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_182:                              # %if.end12.i454
                                        #   in Loop: Header=BB4_177 Depth=2
	bstrpick.d	$a1, $s1, 62, 53
	add.d	$a1, $s1, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $s1, $a1
	stx.b	$fp, $a0, $a1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
	b	.LBB4_176
.LBB4_183:                              # %while.end142
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s2, 0
	beqz	$a0, .LBB4_186
.LBB4_184:                              # %sw.epilog171
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s5, $s0, 1
	ld.bu	$s1, $s5, 0
	beqz	$s1, .LBB4_193
	.p2align	4, , 16
.LBB4_185:                              # %if.end174
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s2, 0
	move	$s0, $s5
	beqz	$a0, .LBB4_3
	b	.LBB4_193
.LBB4_186:                              # %if.end.i469
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$fp, $s6, 4
	srai.d	$s4, $fp, 10
	addi.d	$a0, $fp, 1
	st.w	$a0, $s6, 4
	ori	$a0, $zero, 16
	bge	$s4, $a0, .LBB4_51
# %bb.187:                              # %if.end2.i474
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s1, $a0, $a2
	add.d	$a0, $a1, $s1
	alsl.d	$a1, $s4, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_189
# %bb.188:                              # %if.then6.i485
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s5, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s1
	alsl.d	$a0, $s4, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_189:                              # %if.end12.i480
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $fp, 62, 53
	add.d	$a1, $fp, $a1
	bstrpick.d	$a1, $a1, 31, 10
	slli.d	$a1, $a1, 10
	sub.w	$a1, $fp, $a1
	ori	$a2, $zero, 58
	stx.b	$a2, $a0, $a1
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s1
	b	.LBB4_83
.LBB4_190:                              # %if.end2.i396
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.w	$a0, $s6, 0
	ld.d	$a1, $s8, 0
	ori	$a2, $zero, 168
	mul.d	$s4, $a0, $a2
	add.d	$a0, $a1, $s4
	alsl.d	$a1, $s5, $a0, 3
	ld.d	$a0, $a1, 8
	bnez	$a0, .LBB4_192
# %bb.191:                              # %if.then6.i408
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s7, $a1, 8
	ori	$a0, $zero, 1024
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 0
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a0, $a0, 8
.LBB4_192:                              # %if.end12.i402
                                        #   in Loop: Header=BB4_3 Depth=1
	bstrpick.d	$a1, $s0, 31, 8
	bstrpick.d	$a2, $fp, 62, 53
	add.d	$a2, $fp, $a2
	bstrpick.d	$a2, $a2, 31, 10
	slli.d	$a2, $a2, 10
	sub.w	$a2, $fp, $a2
	ori	$a1, $a1, 128
	stx.b	$a1, $a0, $a2
	ld.d	$a0, $s8, 0
	add.d	$a0, $a0, $s4
	ld.w	$a1, $a0, 136
	addi.d	$a1, $a1, 1
	st.w	$a1, $a0, 136
	b	.LBB4_120
.LBB4_193:                              # %cleanup
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
.LBB4_194:                              # %if.then56
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	load_code, .Lfunc_end4-load_code
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_184-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_84-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_73-.LJTI4_0
	.word	.LBB4_24-.LJTI4_0
	.word	.LBB4_55-.LJTI4_0
	.word	.LBB4_85-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_87-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_55-.LJTI4_0
	.word	.LBB4_91-.LJTI4_0
	.word	.LBB4_24-.LJTI4_0
	.word	.LBB4_24-.LJTI4_0
	.word	.LBB4_89-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_24-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_55-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_70-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_71-.LJTI4_0
	.word	.LBB4_24-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_24-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_24-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_76-.LJTI4_0
	.word	.LBB4_24-.LJTI4_0
                                        # -- End function
	.type	load_adr,@object                # @load_adr
	.bss
	.globl	load_adr
	.p2align	3, 0x0
load_adr:
	.space	8
	.size	load_adr, 8

	.type	load_str,@object                # @load_str
	.globl	load_str
load_str:
	.byte	0                               # 0x0
	.size	load_str, 1

	.type	load_const,@object              # @load_const
	.globl	load_const
load_const:
	.byte	0                               # 0x0
	.size	load_const, 1

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Function too big."
	.size	.L.str, 18

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Program too big.\n"
	.size	.L.str.1, 18

	.section	".note.GNU-stack","",@progbits
	.addrsig
