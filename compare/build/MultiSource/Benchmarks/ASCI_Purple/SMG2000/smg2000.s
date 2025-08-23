	.file	"smg2000.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function main
.LCPI0_0:
	.dword	4                               # 0x4
	.dword	5                               # 0x5
	.dword	6                               # 0x6
	.dword	7                               # 0x7
.LCPI0_1:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	2                               # 0x2
	.dword	3                               # 0x3
.LCPI0_2:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_3:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_4:
	.dword	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -416
	st.d	$ra, $sp, 408                   # 8-byte Folded Spill
	st.d	$fp, $sp, 400                   # 8-byte Folded Spill
	st.d	$s0, $sp, 392                   # 8-byte Folded Spill
	st.d	$s1, $sp, 384                   # 8-byte Folded Spill
	st.d	$s2, $sp, 376                   # 8-byte Folded Spill
	st.d	$s3, $sp, 368                   # 8-byte Folded Spill
	st.d	$s4, $sp, 360                   # 8-byte Folded Spill
	st.d	$s5, $sp, 352                   # 8-byte Folded Spill
	st.d	$s6, $sp, 344                   # 8-byte Folded Spill
	st.d	$s7, $sp, 336                   # 8-byte Folded Spill
	st.d	$s8, $sp, 328                   # 8-byte Folded Spill
	st.w	$a0, $sp, 324
	st.d	$a1, $sp, 312
	st.d	$zero, $sp, 304
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 288
	addi.d	$a0, $sp, 324
	addi.d	$a1, $sp, 312
	pcaddu18i	$ra, %call36(hypre_MPI_Init)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 228
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_size)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 224
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_MPI_Comm_rank)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 228
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -17
	lu32i.d	$a0, 0
	ld.w	$a1, $sp, 324
	st.d	$a0, $sp, 212
	ori	$a0, $zero, 32
	ori	$a2, $zero, 2
	st.w	$a0, $sp, 220
	move	$s2, $zero
	blt	$a1, $a2, .LBB0_24
# %bb.1:                                # %while.body.preheader
	ori	$s8, $zero, 10
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	vldi	$vr0, -912
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	ori	$s7, $zero, 45
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$s0, $zero, 1
	ori	$s3, $zero, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$s4, $zero, 10
	ori	$fp, $zero, 10
	ori	$s5, $zero, 1
	b	.LBB0_4
.LBB0_2:                                # %if.then
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s6, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 16
	move	$fp, $a0
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	move	$s4, $a0
	addi.w	$s5, $s5, 4
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	.p2align	4, , 16
.LBB0_3:                                # %if.end125
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a0, $sp, 324
	bge	$s5, $a0, .LBB0_27
.LBB0_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 312
	slli.d	$a1, $s5, 3
	ldx.d	$s1, $a0, $a1
	ld.bu	$a1, $s1, 0
	alsl.d	$s6, $s5, $a0, 3
	bne	$a1, $s7, .LBB0_17
# %bb.5:                                # %sub_1
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s1, 1
	ori	$a1, $zero, 110
	bne	$a0, $a1, .LBB0_7
# %bb.6:                                # %while.body.tail
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s1, 2
	beqz	$a0, .LBB0_2
.LBB0_7:                                # %sub_1413
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s1, 1
	ori	$a1, $zero, 80
	bne	$a0, $a1, .LBB0_9
# %bb.8:                                # %if.else.tail
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s1, 2
	beqz	$a0, .LBB0_19
.LBB0_9:                                # %sub_1417
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s1, 1
	ori	$a1, $zero, 98
	bne	$a0, $a1, .LBB0_11
# %bb.10:                               # %if.else38.tail
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s1, 2
	beqz	$a0, .LBB0_20
.LBB0_11:                               # %sub_1421
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s1, 1
	ori	$a1, $zero, 99
	bne	$a0, $a1, .LBB0_13
# %bb.12:                               # %if.else57.tail
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s1, 2
	beqz	$a0, .LBB0_21
.LBB0_13:                               # %sub_1425
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s1, 1
	ori	$a1, $zero, 118
	bne	$a0, $a1, .LBB0_15
# %bb.14:                               # %if.else76.tail
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s1, 2
	beqz	$a0, .LBB0_22
.LBB0_15:                               # %sub_1429
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s1, 1
	ori	$a1, $zero, 100
	bne	$a0, $a1, .LBB0_17
# %bb.16:                               # %if.else91.tail
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.bu	$a0, $s1, 2
	beqz	$a0, .LBB0_23
	.p2align	4, , 16
.LBB0_17:                               # %if.else102
                                        #   in Loop: Header=BB0_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_25
# %bb.18:                               # %if.then107
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s6, 8
	addi.w	$s5, $s5, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	b	.LBB0_3
.LBB0_19:                               # %if.then24
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s6, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 16
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.w	$s5, $s5, 4
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	b	.LBB0_3
.LBB0_20:                               # %if.then43
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s6, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 16
	move	$s0, $a0
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 24
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.w	$s5, $s5, 4
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB0_3
.LBB0_21:                               # %if.then62
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s6, 8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 16
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 24
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	addi.w	$s5, $s5, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtod)
	jirl	$ra, $ra, 0
                                        # kill: def $f0_64 killed $f0_64 def $vr0
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	b	.LBB0_3
.LBB0_22:                               # %if.then81
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s6, 8
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s6, 16
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s5, $s5, 3
	ori	$a2, $zero, 10
	move	$a0, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	b	.LBB0_3
.LBB0_23:                               # %if.then96
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s6, 8
	addi.w	$s5, $s5, 2
	ori	$a2, $zero, 10
	move	$a1, $zero
	pcaddu18i	$ra, %call36(strtol)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB0_3
.LBB0_24:
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$fp, $zero, 10
	vldi	$vr0, -912
	vst	$vr0, $sp, 96                   # 16-byte Folded Spill
	ori	$s4, $zero, 10
	ori	$s8, $zero, 10
	ori	$s3, $zero, 1
	ori	$s0, $zero, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	vst	$vr0, $sp, 80                   # 16-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	b	.LBB0_27
.LBB0_25:                               # %while.end
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 224
	or	$a1, $a0, $a1
	beqz	$a1, .LBB0_186
# %bb.26:                               # %if.end144
	beqz	$a0, .LBB0_187
.LBB0_27:                               # %if.end147
	ld.w	$a0, $sp, 228
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	mul.w	$s5, $a1, $s7
	mul.w	$a1, $s5, $s3
	bne	$a1, $a0, .LBB0_185
# %bb.28:                               # %if.end152
	ld.w	$a0, $sp, 224
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	addi.w	$s1, $a1, 0
	addi.w	$s2, $s2, 0
	bnez	$a0, .LBB0_30
# %bb.29:                               # %if.then154
	pcalau12i	$a0, %pc_hi20(.Lstr.11)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.11)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	addi.w	$a1, $fp, 0
	addi.w	$a2, $s4, 0
	addi.w	$a3, $s8, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s7, 0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	addi.w	$a3, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s0, 0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	vld	$vr0, $sp, 96                   # 16-byte Folded Reload
	movfr2gr.d	$a1, $fa0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	movfr2gr.d	$a2, $fa0
	vld	$vr0, $sp, 80                   # 16-byte Folded Reload
	movfr2gr.d	$a3, $fa0
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB0_30:                               # %if.end163
	move	$a0, $zero
	pcaddu18i	$ra, %call36(hypre_MPI_Barrier)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(hypre_InitializeTiming)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	pcaddu18i	$ra, %call36(hypre_BeginTiming)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	st.d	$s1, $sp, 168                   # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	beq	$s1, $a0, .LBB0_35
# %bb.31:                               # %if.end163
	ori	$a0, $zero, 2
	beq	$s1, $a0, .LBB0_34
# %bb.32:                               # %if.end163
	ori	$a0, $zero, 1
	bne	$s1, $a0, .LBB0_36
# %bb.33:                               # %sw.bb
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 2
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	ld.w	$a1, $sp, 224
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $s1, 8
	addi.w	$a0, $s7, 0
	mod.w	$a0, $a1, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	move	$s6, $s0
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_37
.LBB0_34:                               # %sw.bb177
	mul.d	$a0, $s4, $fp
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	mul.d	$s6, $a0, $s0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 0
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 8
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	st.d	$a1, $a0, 0
	ori	$a0, $zero, 2
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 224
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $s1, 16
	st.d	$zero, $a0, 0
	addi.w	$a0, $s7, 0
	div.w	$a0, $a1, $a0
	mul.d	$a2, $a0, $s7
	sub.d	$a1, $a1, $a2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	mod.w	$a0, $a0, $a1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
	b	.LBB0_37
.LBB0_35:                               # %sw.bb202
	mul.d	$a0, $s4, $fp
	mul.d	$a0, $a0, $s8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	mul.d	$a0, $a0, $s0
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	mul.d	$s6, $a0, $a1
	ori	$a0, $zero, 4
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ori	$a0, $zero, 4
	ori	$a1, $zero, 8
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 3
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 0
	addi.w	$s1, $zero, -1
	lu32i.d	$s1, 0
	st.d	$s1, $a0, 0
	st.w	$zero, $a0, 8
	ori	$a0, $zero, 3
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 8
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	st.d	$a1, $a0, 0
	st.w	$zero, $a0, 8
	ori	$a0, $zero, 3
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s2, 16
	st.d	$zero, $a0, 0
	st.w	$s1, $a0, 8
	ori	$a0, $zero, 3
	ori	$a1, $zero, 4
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.w	$zero, $a0, 0
	ld.w	$a1, $sp, 224
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$a0, $s2, 24
	st.d	$zero, $a0, 4
	addi.w	$a0, $s7, 0
	div.w	$a0, $a1, $a0
	mul.d	$a2, $a0, $s7
	sub.d	$a3, $a1, $a2
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 0
	mod.w	$a0, $a0, $a2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	mul.d	$a0, $a0, $s7
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	add.d	$a0, $a3, $a0
	sub.w	$a0, $a1, $a0
	div.w	$a0, $a0, $s5
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_37
.LBB0_36:
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r29
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r26
.LBB0_37:                               # %sw.epilog
	st.d	$s6, $sp, 160                   # 8-byte Folded Spill
	addi.w	$s2, $s6, 0
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$a1, $zero, 8
	move	$a0, $s2
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	blt	$s2, $s1, .LBB0_40
# %bb.38:                               # %for.body.preheader
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_39:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 4
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s5, 0
	ori	$a1, $zero, 4
	move	$a0, $s7
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 0
	addi.d	$s6, $s6, 8
	addi.d	$s2, $s2, -1
	addi.d	$s5, $s5, 8
	bnez	$s2, .LBB0_39
.LBB0_40:                               # %for.cond260.preheader
	move	$s5, $s7
	blt	$s7, $s1, .LBB0_48
# %bb.41:                               # %for.body262.preheader
	ori	$a0, $zero, 8
	bgeu	$s5, $a0, .LBB0_43
# %bb.42:
	move	$a0, $zero
	b	.LBB0_46
.LBB0_43:                               # %vector.ph
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $a0, %pc_lo12(.LCPI0_0)
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	xvld	$xr1, $a0, %pc_lo12(.LCPI0_1)
	bstrpick.d	$a0, $s5, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $sp, 288
	ori	$a2, $zero, 1
	move	$a3, $a0
	.p2align	4, , 16
.LBB0_44:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvslli.d	$xr2, $xr0, 1
	xvslli.d	$xr3, $xr1, 1
	xvpickve2gr.d	$a4, $xr3, 0
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 1
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 2
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 3
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr2, 0
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr2, 1
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr2, 2
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr2, 3
	slli.d	$t3, $t3, 2
	stx.w	$a2, $a4, $a1
	stx.w	$a2, $a5, $a1
	stx.w	$a2, $a6, $a1
	stx.w	$a2, $a7, $a1
	stx.w	$a2, $t0, $a1
	stx.w	$a2, $t1, $a1
	stx.w	$a2, $t2, $a1
	stx.w	$a2, $t3, $a1
	xvbitseti.d	$xr2, $xr2, 0
	xvbitseti.d	$xr3, $xr3, 0
	xvpickve2gr.d	$a4, $xr3, 0
	slli.d	$a4, $a4, 2
	xvpickve2gr.d	$a5, $xr3, 1
	slli.d	$a5, $a5, 2
	xvpickve2gr.d	$a6, $xr3, 2
	slli.d	$a6, $a6, 2
	xvpickve2gr.d	$a7, $xr3, 3
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr2, 0
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr2, 1
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr2, 2
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr2, 3
	slli.d	$t3, $t3, 2
	stx.w	$a2, $a4, $a1
	stx.w	$a2, $a5, $a1
	stx.w	$a2, $a6, $a1
	stx.w	$a2, $a7, $a1
	stx.w	$a2, $t0, $a1
	stx.w	$a2, $t1, $a1
	stx.w	$a2, $t2, $a1
	stx.w	$a2, $t3, $a1
	xvaddi.du	$xr1, $xr1, 8
	addi.d	$a3, $a3, -8
	xvaddi.du	$xr0, $xr0, 8
	bnez	$a3, .LBB0_44
# %bb.45:                               # %middle.block
	beq	$a0, $s5, .LBB0_48
.LBB0_46:                               # %for.body262.preheader886
	addi.d	$a1, $sp, 288
	alsl.d	$a1, $a0, $a1, 3
	addi.d	$a1, $a1, 4
	sub.d	$a0, $s5, $a0
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1
	.p2align	4, , 16
.LBB0_47:                               # %for.body262
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a2, $a1, -4
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 8
	bnez	$a0, .LBB0_47
.LBB0_48:                               # %for.end271
	ori	$a1, $zero, 1
	beq	$s5, $a1, .LBB0_66
# %bb.49:                               # %for.end271
	ori	$a0, $zero, 2
	beq	$s5, $a0, .LBB0_60
# %bb.50:                               # %for.end271
	ori	$a0, $zero, 3
	bne	$s5, $a0, .LBB0_69
# %bb.51:                               # %for.cond349.preheader
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB0_69
# %bb.52:                               # %for.cond352.preheader.lr.ph
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	blt	$a1, $a2, .LBB0_69
# %bb.53:                               # %for.cond352.preheader.us.preheader
	move	$a2, $zero
	move	$a3, $zero
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a7, $a4, $s0
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a4, $a5, $a4
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a5, $a6, $a5
	addi.d	$a6, $a7, 1
	mul.d	$a6, $fp, $a6
	addi.d	$a6, $a6, -18
	mul.d	$a7, $a7, $fp
	addi.d	$a7, $a7, -17
	addi.w	$t0, $s0, 0
	ori	$t1, $zero, 1
	b	.LBB0_55
	.p2align	4, , 16
.LBB0_54:                               # %for.cond352.for.inc419_crit_edge.us
                                        #   in Loop: Header=BB0_55 Depth=1
	addi.w	$a3, $a3, 1
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	beq	$a3, $a0, .LBB0_69
.LBB0_55:                               # %for.cond352.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_57 Depth 2
                                        #       Child Loop BB0_58 Depth 3
	blt	$t0, $t1, .LBB0_54
# %bb.56:                               # %for.cond355.preheader.us.us.preheader
                                        #   in Loop: Header=BB0_55 Depth=1
	move	$t2, $zero
	add.d	$t4, $a3, $a5
	mul.d	$t3, $t4, $s8
	addi.d	$t3, $t3, 32
	addi.d	$t4, $t4, 1
	mul.d	$t4, $t4, $s8
	addi.d	$t4, $t4, 31
	.p2align	4, , 16
.LBB0_57:                               # %for.cond355.preheader.us.us
                                        #   Parent Loop BB0_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_58 Depth 3
	move	$t5, $zero
	add.d	$t7, $t2, $a4
	mul.d	$t6, $t7, $s4
	addi.d	$t7, $t7, 1
	mul.d	$t7, $t7, $s4
	addi.d	$t7, $t7, -1
	ld.d	$t8, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t8, $a2, $t8, 3
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$s1, $a2, $s1, 3
	add.w	$a2, $s0, $a2
	move	$s2, $s0
	.p2align	4, , 16
.LBB0_58:                               # %for.body357.us.us
                                        #   Parent Loop BB0_55 Depth=1
                                        #     Parent Loop BB0_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$s5, $t8, 0
	ld.d	$s6, $s1, 0
	add.d	$s7, $a7, $t5
	st.w	$s7, $s5, 0
	add.d	$s7, $a6, $t5
	st.w	$s7, $s6, 0
	st.w	$t6, $s5, 4
	st.w	$t7, $s6, 4
	st.w	$t3, $s5, 8
	st.w	$t4, $s6, 8
	addi.d	$t8, $t8, 8
	addi.d	$s1, $s1, 8
	addi.w	$s2, $s2, -1
	add.d	$t5, $t5, $fp
	bnez	$s2, .LBB0_58
# %bb.59:                               # %for.cond355.for.inc416_crit_edge.us.us
                                        #   in Loop: Header=BB0_57 Depth=2
	addi.w	$t2, $t2, 1
	bne	$t2, $a1, .LBB0_57
	b	.LBB0_54
.LBB0_60:                               # %for.cond299.preheader
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_69
# %bb.61:                               # %for.cond302.preheader.lr.ph
	addi.w	$a2, $s0, 0
	blt	$a2, $a1, .LBB0_69
# %bb.62:                               # %for.cond302.preheader.us.preheader
	move	$a1, $zero
	move	$a2, $zero
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a5, $a3, $s0
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a3, $a4, $a3
	addi.d	$a4, $a5, 1
	mul.d	$a4, $fp, $a4
	addi.d	$a4, $a4, -18
	mul.d	$a5, $a5, $fp
	addi.d	$a5, $a5, -17
	addi.d	$a6, $s0, -1
	bstrpick.d	$a6, $a6, 31, 0
	addi.d	$a6, $a6, 1
	.p2align	4, , 16
.LBB0_63:                               # %for.cond302.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
	move	$a7, $zero
	add.d	$t1, $a2, $a3
	mul.d	$t0, $t1, $s4
	addi.d	$t1, $t1, 1
	mul.d	$t1, $t1, $s4
	addi.d	$t1, $t1, -1
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	alsl.d	$t2, $a1, $t2, 3
	ld.d	$t3, $sp, 176                   # 8-byte Folded Reload
	alsl.d	$t3, $a1, $t3, 3
	add.w	$a1, $a6, $a1
	move	$t4, $s0
	.p2align	4, , 16
.LBB0_64:                               # %for.body304.us
                                        #   Parent Loop BB0_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t5, $t2, 0
	ld.d	$t6, $t3, 0
	add.d	$t7, $a5, $a7
	st.w	$t7, $t5, 0
	add.d	$t7, $a4, $a7
	st.w	$t7, $t6, 0
	st.w	$t0, $t5, 4
	st.w	$t1, $t6, 4
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 8
	addi.w	$t4, $t4, -1
	add.d	$a7, $a7, $fp
	bnez	$t4, .LBB0_64
# %bb.65:                               # %for.cond302.for.inc345_crit_edge.us
                                        #   in Loop: Header=BB0_63 Depth=1
	addi.w	$a2, $a2, 1
	bne	$a2, $a0, .LBB0_63
	b	.LBB0_69
.LBB0_66:                               # %for.cond273.preheader
	addi.w	$a0, $s0, 0
	blt	$a0, $a1, .LBB0_69
# %bb.67:                               # %for.body275.lr.ph
	move	$a1, $zero
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a3, $a2, $s0
	addi.d	$a2, $a3, 1
	mul.d	$a2, $fp, $a2
	addi.d	$a2, $a2, -18
	mul.d	$a3, $a3, $fp
	addi.d	$a3, $a3, -17
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_68:                               # %for.body275
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	ld.d	$a7, $a5, 0
	add.d	$t0, $a3, $a1
	st.w	$t0, $a6, 0
	add.d	$a6, $a2, $a1
	st.w	$a6, $a7, 0
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, -1
	add.d	$a1, $a1, $fp
	bnez	$a0, .LBB0_68
.LBB0_69:                               # %sw.epilog422
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	addi.w	$fp, $s4, 0
	addi.d	$a2, $sp, 200
	move	$a0, $zero
	move	$a1, $s5
	pcaddu18i	$ra, %call36(HYPRE_StructGridCreate)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB0_72
# %bb.70:                               # %for.body426.preheader
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_71:                               # %for.body426
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 200
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s1, 0
	pcaddu18i	$ra, %call36(HYPRE_StructGridSetExtents)
	jirl	$ra, $ra, 0
	addi.d	$s1, $s1, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_71
.LBB0_72:                               # %for.end434
	ld.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(HYPRE_StructGridAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$s6, $a0, 1
	addi.d	$a2, $sp, 192
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(HYPRE_StructStencilCreate)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	bltz	$s5, .LBB0_75
# %bb.73:                               # %for.body441.preheader
	move	$fp, $zero
	bstrpick.d	$s0, $s6, 31, 0
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_74:                               # %for.body441
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 192
	ld.d	$a2, $s1, 0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(HYPRE_StructStencilSetElement)
	jirl	$ra, $ra, 0
	addi.w	$fp, $fp, 1
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB0_74
.LBB0_75:                               # %for.end447
	ld.d	$a1, $sp, 200
	ld.d	$a2, $sp, 192
	addi.d	$a3, $sp, 280
	move	$a0, $zero
	pcaddu18i	$ra, %call36(HYPRE_StructMatrixCreate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	ori	$a1, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(HYPRE_StructMatrixSetSymmetric)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 288
	pcaddu18i	$ra, %call36(HYPRE_StructMatrixSetNumGhost)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(HYPRE_StructMatrixInitialize)
	jirl	$ra, $ra, 0
	mul.w	$s0, $s7, $s6
	ori	$a1, $zero, 8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	blt	$s0, $s2, .LBB0_137
# %bb.76:                               # %for.cond460.preheader.lr.ph
	bltz	$s5, .LBB0_137
# %bb.77:                               # %for.cond460.preheader.preheader
	move	$a0, $zero
	vld	$vr5, $sp, 96                   # 16-byte Folded Reload
	fneg.d	$fa0, $fa5
	vld	$vr4, $sp, 64                   # 16-byte Folded Reload
	fneg.d	$fa1, $fa4
	vld	$vr3, $sp, 80                   # 16-byte Folded Reload
	fneg.d	$fa2, $fa3
	fadd.d	$fa4, $fa5, $fa4
	fadd.d	$fa3, $fa4, $fa3
	fadd.d	$fa3, $fa3, $fa3
	fadd.d	$fa4, $fa4, $fa4
	fadd.d	$fa5, $fa5, $fa5
	bstrpick.d	$a1, $s6, 31, 0
	bstrpick.d	$a2, $s6, 31, 4
	slli.d	$a2, $a2, 4
	andi	$a3, $s6, 12
	bstrpick.d	$a4, $s6, 31, 2
	slli.d	$a4, $a4, 2
	addi.d	$a5, $s3, 32
	sub.d	$a6, $zero, $a4
	ori	$a7, $zero, 1
	ori	$t0, $zero, 3
	ori	$t1, $zero, 16
	ori	$t2, $zero, 2
	b	.LBB0_80
	.p2align	4, , 16
.LBB0_78:                               # %for.cond460.for.inc508_crit_edge.split.split.us
                                        #   in Loop: Header=BB0_80 Depth=1
	fst.d	$fa0, $t3, 0
	fst.d	$fa1, $t3, 8
	fst.d	$fa4, $t3, 16
.LBB0_79:                               # %for.cond460.for.inc508_crit_edge
                                        #   in Loop: Header=BB0_80 Depth=1
	add.d	$a0, $a0, $a1
	addi.w	$t3, $a0, 0
	bge	$t3, $s0, .LBB0_137
.LBB0_80:                               # %for.cond460.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_129 Depth 2
                                        #     Child Loop BB0_133 Depth 2
                                        #     Child Loop BB0_136 Depth 2
                                        #     Child Loop BB0_119 Depth 2
                                        #     Child Loop BB0_123 Depth 2
                                        #     Child Loop BB0_126 Depth 2
                                        #     Child Loop BB0_100 Depth 2
                                        #     Child Loop BB0_104 Depth 2
                                        #     Child Loop BB0_107 Depth 2
                                        #     Child Loop BB0_109 Depth 2
                                        #     Child Loop BB0_113 Depth 2
                                        #     Child Loop BB0_116 Depth 2
	alsl.d	$t3, $a0, $fp, 3
	beq	$s5, $a7, .LBB0_87
# %bb.81:                               # %for.cond460.preheader
                                        #   in Loop: Header=BB0_80 Depth=1
	beq	$s5, $t2, .LBB0_85
# %bb.82:                               # %for.cond460.preheader
                                        #   in Loop: Header=BB0_80 Depth=1
	bne	$s5, $t0, .LBB0_89
# %bb.83:                               # %iter.check839
                                        #   in Loop: Header=BB0_80 Depth=1
	bltu	$t0, $s6, .LBB0_95
# %bb.84:                               #   in Loop: Header=BB0_80 Depth=1
	move	$t4, $zero
	b	.LBB0_125
	.p2align	4, , 16
.LBB0_85:                               # %iter.check803
                                        #   in Loop: Header=BB0_80 Depth=1
	bltu	$t0, $s6, .LBB0_91
# %bb.86:                               #   in Loop: Header=BB0_80 Depth=1
	move	$t4, $zero
	b	.LBB0_106
	.p2align	4, , 16
.LBB0_87:                               # %iter.check767
                                        #   in Loop: Header=BB0_80 Depth=1
	bltu	$t0, $s6, .LBB0_93
# %bb.88:                               #   in Loop: Header=BB0_80 Depth=1
	move	$t4, $zero
	b	.LBB0_115
	.p2align	4, , 16
.LBB0_89:                               # %iter.check
                                        #   in Loop: Header=BB0_80 Depth=1
	bltu	$t0, $s6, .LBB0_97
# %bb.90:                               #   in Loop: Header=BB0_80 Depth=1
	move	$t3, $zero
	b	.LBB0_135
.LBB0_91:                               # %vector.main.loop.iter.check805
                                        #   in Loop: Header=BB0_80 Depth=1
	bgeu	$s6, $t1, .LBB0_99
# %bb.92:                               #   in Loop: Header=BB0_80 Depth=1
	move	$t5, $zero
	b	.LBB0_103
.LBB0_93:                               # %vector.main.loop.iter.check769
                                        #   in Loop: Header=BB0_80 Depth=1
	bgeu	$s6, $t1, .LBB0_108
# %bb.94:                               #   in Loop: Header=BB0_80 Depth=1
	move	$t5, $zero
	b	.LBB0_112
.LBB0_95:                               # %vector.main.loop.iter.check841
                                        #   in Loop: Header=BB0_80 Depth=1
	bgeu	$s6, $t1, .LBB0_118
# %bb.96:                               #   in Loop: Header=BB0_80 Depth=1
	move	$t5, $zero
	b	.LBB0_122
.LBB0_97:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_80 Depth=1
	bgeu	$s6, $t1, .LBB0_128
# %bb.98:                               #   in Loop: Header=BB0_80 Depth=1
	move	$t4, $zero
	b	.LBB0_132
.LBB0_99:                               # %vector.body809.preheader
                                        #   in Loop: Header=BB0_80 Depth=1
	pcalau12i	$t4, %pc_hi20(.LCPI0_2)
	xvld	$xr6, $t4, %pc_lo12(.LCPI0_2)
	move	$t4, $a5
	move	$t5, $a2
	.p2align	4, , 16
.LBB0_100:                              # %vector.body809
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.wu	$xr7, $xr6, 8
	xvst	$xr6, $t4, -32
	xvst	$xr7, $t4, 0
	xvaddi.wu	$xr6, $xr6, 16
	addi.d	$t5, $t5, -16
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB0_100
# %bb.101:                              # %middle.block815
                                        #   in Loop: Header=BB0_80 Depth=1
	beq	$a2, $a1, .LBB0_78
# %bb.102:                              # %vec.epilog.iter.check820
                                        #   in Loop: Header=BB0_80 Depth=1
	move	$t4, $a2
	move	$t5, $a2
	beqz	$a3, .LBB0_106
.LBB0_103:                              # %vec.epilog.ph819
                                        #   in Loop: Header=BB0_80 Depth=1
	pcalau12i	$t4, %pc_hi20(.LCPI0_3)
	vld	$vr6, $t4, %pc_lo12(.LCPI0_3)
	vreplgr2vr.w	$vr7, $t5
	vor.v	$vr6, $vr7, $vr6
	add.d	$t4, $a6, $t5
	alsl.d	$t5, $t5, $s3, 2
	.p2align	4, , 16
.LBB0_104:                              # %vec.epilog.vector.body828
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr6, $t5, 0
	vaddi.wu	$vr6, $vr6, 4
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB0_104
# %bb.105:                              # %vec.epilog.middle.block833
                                        #   in Loop: Header=BB0_80 Depth=1
	move	$t4, $a4
	beq	$a4, $a1, .LBB0_78
.LBB0_106:                              # %for.body463.us537.preheader
                                        #   in Loop: Header=BB0_80 Depth=1
	alsl.d	$t5, $t4, $s3, 2
	sub.d	$t6, $a1, $t4
	.p2align	4, , 16
.LBB0_107:                              # %for.body463.us537
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t4, $t5, 0
	addi.d	$t4, $t4, 1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB0_107
	b	.LBB0_78
.LBB0_108:                              # %vector.body773.preheader
                                        #   in Loop: Header=BB0_80 Depth=1
	pcalau12i	$t4, %pc_hi20(.LCPI0_2)
	xvld	$xr6, $t4, %pc_lo12(.LCPI0_2)
	move	$t4, $a5
	move	$t5, $a2
	.p2align	4, , 16
.LBB0_109:                              # %vector.body773
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.wu	$xr7, $xr6, 8
	xvst	$xr6, $t4, -32
	xvst	$xr7, $t4, 0
	xvaddi.wu	$xr6, $xr6, 16
	addi.d	$t5, $t5, -16
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB0_109
# %bb.110:                              # %middle.block779
                                        #   in Loop: Header=BB0_80 Depth=1
	beq	$a2, $a1, .LBB0_117
# %bb.111:                              # %vec.epilog.iter.check784
                                        #   in Loop: Header=BB0_80 Depth=1
	move	$t4, $a2
	move	$t5, $a2
	beqz	$a3, .LBB0_115
.LBB0_112:                              # %vec.epilog.ph783
                                        #   in Loop: Header=BB0_80 Depth=1
	pcalau12i	$t4, %pc_hi20(.LCPI0_3)
	vld	$vr6, $t4, %pc_lo12(.LCPI0_3)
	vreplgr2vr.w	$vr7, $t5
	vor.v	$vr6, $vr7, $vr6
	add.d	$t4, $a6, $t5
	alsl.d	$t5, $t5, $s3, 2
	.p2align	4, , 16
.LBB0_113:                              # %vec.epilog.vector.body792
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr6, $t5, 0
	vaddi.wu	$vr6, $vr6, 4
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB0_113
# %bb.114:                              # %vec.epilog.middle.block797
                                        #   in Loop: Header=BB0_80 Depth=1
	move	$t4, $a4
	beq	$a4, $a1, .LBB0_117
.LBB0_115:                              # %for.body463.us.preheader
                                        #   in Loop: Header=BB0_80 Depth=1
	alsl.d	$t5, $t4, $s3, 2
	sub.d	$t6, $a1, $t4
	.p2align	4, , 16
.LBB0_116:                              # %for.body463.us
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t4, $t5, 0
	addi.d	$t4, $t4, 1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB0_116
.LBB0_117:                              # %for.cond460.for.inc508_crit_edge.split.us
                                        #   in Loop: Header=BB0_80 Depth=1
	fst.d	$fa0, $t3, 0
	fst.d	$fa5, $t3, 8
	b	.LBB0_79
.LBB0_118:                              # %vector.body845.preheader
                                        #   in Loop: Header=BB0_80 Depth=1
	pcalau12i	$t4, %pc_hi20(.LCPI0_2)
	xvld	$xr6, $t4, %pc_lo12(.LCPI0_2)
	move	$t4, $a5
	move	$t5, $a2
	.p2align	4, , 16
.LBB0_119:                              # %vector.body845
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.wu	$xr7, $xr6, 8
	xvst	$xr6, $t4, -32
	xvst	$xr7, $t4, 0
	xvaddi.wu	$xr6, $xr6, 16
	addi.d	$t5, $t5, -16
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB0_119
# %bb.120:                              # %middle.block851
                                        #   in Loop: Header=BB0_80 Depth=1
	beq	$a2, $a1, .LBB0_127
# %bb.121:                              # %vec.epilog.iter.check856
                                        #   in Loop: Header=BB0_80 Depth=1
	move	$t4, $a2
	move	$t5, $a2
	beqz	$a3, .LBB0_125
.LBB0_122:                              # %vec.epilog.ph855
                                        #   in Loop: Header=BB0_80 Depth=1
	pcalau12i	$t4, %pc_hi20(.LCPI0_3)
	vld	$vr6, $t4, %pc_lo12(.LCPI0_3)
	vreplgr2vr.w	$vr7, $t5
	vor.v	$vr6, $vr7, $vr6
	add.d	$t4, $a6, $t5
	alsl.d	$t5, $t5, $s3, 2
	.p2align	4, , 16
.LBB0_123:                              # %vec.epilog.vector.body864
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr6, $t5, 0
	vaddi.wu	$vr6, $vr6, 4
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB0_123
# %bb.124:                              # %vec.epilog.middle.block869
                                        #   in Loop: Header=BB0_80 Depth=1
	move	$t4, $a4
	beq	$a4, $a1, .LBB0_127
.LBB0_125:                              # %for.body463.us545.preheader
                                        #   in Loop: Header=BB0_80 Depth=1
	alsl.d	$t5, $t4, $s3, 2
	sub.d	$t6, $a1, $t4
	.p2align	4, , 16
.LBB0_126:                              # %for.body463.us545
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t4, $t5, 0
	addi.d	$t4, $t4, 1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 4
	bnez	$t6, .LBB0_126
.LBB0_127:                              # %for.cond460.for.inc508_crit_edge.split.split.split.us
                                        #   in Loop: Header=BB0_80 Depth=1
	fst.d	$fa0, $t3, 0
	fst.d	$fa1, $t3, 8
	fst.d	$fa2, $t3, 16
	fst.d	$fa3, $t3, 24
	b	.LBB0_79
.LBB0_128:                              # %vector.body748.preheader
                                        #   in Loop: Header=BB0_80 Depth=1
	pcalau12i	$t3, %pc_hi20(.LCPI0_2)
	xvld	$xr6, $t3, %pc_lo12(.LCPI0_2)
	move	$t3, $a5
	move	$t4, $a2
	.p2align	4, , 16
.LBB0_129:                              # %vector.body748
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvaddi.wu	$xr7, $xr6, 8
	xvst	$xr6, $t3, -32
	xvst	$xr7, $t3, 0
	xvaddi.wu	$xr6, $xr6, 16
	addi.d	$t4, $t4, -16
	addi.d	$t3, $t3, 64
	bnez	$t4, .LBB0_129
# %bb.130:                              # %middle.block753
                                        #   in Loop: Header=BB0_80 Depth=1
	beq	$a2, $a1, .LBB0_79
# %bb.131:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_80 Depth=1
	move	$t3, $a2
	move	$t4, $a2
	beqz	$a3, .LBB0_135
.LBB0_132:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB0_80 Depth=1
	pcalau12i	$t3, %pc_hi20(.LCPI0_3)
	vld	$vr6, $t3, %pc_lo12(.LCPI0_3)
	vreplgr2vr.w	$vr7, $t4
	vor.v	$vr6, $vr7, $vr6
	add.d	$t3, $a6, $t4
	alsl.d	$t4, $t4, $s3, 2
	.p2align	4, , 16
.LBB0_133:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr6, $t4, 0
	vaddi.wu	$vr6, $vr6, 4
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	bnez	$t3, .LBB0_133
# %bb.134:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_80 Depth=1
	move	$t3, $a4
	beq	$a4, $a1, .LBB0_79
.LBB0_135:                              # %for.body463.preheader
                                        #   in Loop: Header=BB0_80 Depth=1
	alsl.d	$t4, $t3, $s3, 2
	sub.d	$t5, $a1, $t3
	.p2align	4, , 16
.LBB0_136:                              # %for.body463
                                        #   Parent Loop BB0_80 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$t3, $t4, 0
	addi.d	$t3, $t3, 1
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 4
	bnez	$t5, .LBB0_136
	b	.LBB0_79
.LBB0_137:                              # %for.cond512.preheader
	addi.w	$s0, $s4, 0
	blt	$s0, $s2, .LBB0_140
# %bb.138:                              # %for.body514.preheader
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_139:                              # %for.body514
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 280
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s2, 0
	move	$a3, $s6
	move	$a4, $s3
	move	$a5, $fp
	pcaddu18i	$ra, %call36(HYPRE_StructMatrixSetBoxValues)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB0_139
.LBB0_140:                              # %for.cond524.preheader
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	addi.w	$s1, $s7, 0
	ori	$s0, $zero, 1
	blt	$s1, $s0, .LBB0_142
# %bb.141:                              # %for.body526.preheader
	slli.d	$a2, $s1, 3
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_142:                              # %for.cond532.preheader
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	blt	$s5, $s0, .LBB0_150
# %bb.143:                              # %for.cond532.preheader
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$s1, $a0, 0
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB0_150
# %bb.144:                              # %for.cond535.preheader.us.preheader
	move	$s4, $zero
	b	.LBB0_146
	.p2align	4, , 16
.LBB0_145:                              # %for.cond535.for.inc570_crit_edge.us
                                        #   in Loop: Header=BB0_146 Depth=1
	addi.d	$s4, $s4, 1
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $s5, .LBB0_150
.LBB0_146:                              # %for.cond535.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_148 Depth 2
	slli.d	$s8, $s4, 2
	addi.d	$a0, $sp, 212
	ldx.w	$s0, $s8, $a0
	move	$s2, $s1
	ld.d	$s6, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	b	.LBB0_148
	.p2align	4, , 16
.LBB0_147:                              # %for.inc567.us
                                        #   in Loop: Header=BB0_148 Depth=2
	addi.d	$s5, $s5, 8
	addi.d	$s2, $s2, -1
	addi.d	$s6, $s6, 8
	beqz	$s2, .LBB0_145
.LBB0_148:                              # %for.body537.us
                                        #   Parent Loop BB0_146 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $s5, 0
	ldx.w	$a0, $a1, $s8
	bne	$a0, $s0, .LBB0_147
# %bb.149:                              # %if.then545.us
                                        #   in Loop: Header=BB0_148 Depth=2
	ld.d	$a2, $s6, 0
	ldx.w	$s7, $a2, $s8
	ld.d	$a0, $sp, 280
	stx.w	$s0, $a2, $s8
	st.w	$s4, $s3, 0
	ori	$a3, $zero, 1
	move	$a4, $s3
	move	$a5, $fp
	pcaddu18i	$ra, %call36(HYPRE_StructMatrixSetBoxValues)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	stx.w	$s7, $a0, $s8
	b	.LBB0_147
.LBB0_150:                              # %for.end572
	ld.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(HYPRE_StructMatrixAssemble)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	ori	$s0, $zero, 8
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	move	$a0, $s6
	pcaddu18i	$ra, %call36(hypre_CAlloc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200
	move	$fp, $a0
	addi.d	$a2, $sp, 272
	move	$a0, $zero
	pcaddu18i	$ra, %call36(HYPRE_StructVectorCreate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(HYPRE_StructVectorInitialize)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s4, $sp, 160                   # 8-byte Folded Reload
	blt	$s6, $a0, .LBB0_158
# %bb.151:                              # %for.body579.preheader
	bgeu	$s6, $s0, .LBB0_153
# %bb.152:
	move	$a1, $zero
	b	.LBB0_156
.LBB0_153:                              # %vector.ph874
	bstrpick.d	$a1, $s6, 30, 3
	slli.d	$a1, $a1, 3
	addi.d	$a2, $fp, 32
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr0, $a3
	move	$a3, $a1
	.p2align	4, , 16
.LBB0_154:                              # %vector.body877
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a2, -32
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB0_154
# %bb.155:                              # %middle.block880
	beq	$a1, $s6, .LBB0_158
.LBB0_156:                              # %for.body579.preheader883
	alsl.d	$a2, $a1, $fp, 3
	sub.d	$a1, $s6, $a1
	lu52i.d	$a3, $zero, 1023
	.p2align	4, , 16
.LBB0_157:                              # %for.body579
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB0_157
.LBB0_158:                              # %for.cond585.preheader
	addi.w	$s0, $s4, 0
	blt	$s0, $a0, .LBB0_161
# %bb.159:                              # %for.body587.preheader
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_160:                              # %for.body587
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 272
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s2, 0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(HYPRE_StructVectorSetBoxValues)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB0_160
.LBB0_161:                              # %for.end595
	ld.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(HYPRE_StructVectorAssemble)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 200
	addi.d	$a2, $sp, 264
	move	$a0, $zero
	pcaddu18i	$ra, %call36(HYPRE_StructVectorCreate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(HYPRE_StructVectorInitialize)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	blt	$s6, $s1, .LBB0_163
# %bb.162:                              # %for.body601.preheader
	slli.d	$a2, $s6, 3
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_163:                              # %for.cond607.preheader
	addi.w	$s0, $s4, 0
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	blt	$s0, $s1, .LBB0_166
# %bb.164:                              # %for.body609.preheader
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 176                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_165:                              # %for.body609
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 264
	ld.d	$a1, $s1, 0
	ld.d	$a2, $s2, 0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(HYPRE_StructVectorSetBoxValues)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, 8
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 8
	bnez	$s0, .LBB0_165
.LBB0_166:                              # %for.end617
	ld.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(HYPRE_StructVectorAssemble)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_EndTiming)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(hypre_PrintTiming)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_FinalizeTiming)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_ClearTiming)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	beqz	$s1, .LBB0_170
# %bb.167:                              # %if.end650
	ori	$s0, $zero, 1
	blt	$s1, $s0, .LBB0_176
# %bb.168:                              # %if.then652
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(hypre_InitializeTiming)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(hypre_BeginTiming)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 256
	move	$a0, $zero
	pcaddu18i	$ra, %call36(HYPRE_StructPCGCreate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	ori	$a1, $zero, 50
	pcaddu18i	$ra, %call36(HYPRE_PCGSetMaxIter)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_4)
	pcaddu18i	$ra, %call36(HYPRE_PCGSetTol)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(HYPRE_PCGSetTwoNorm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(HYPRE_PCGSetRelChange)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(HYPRE_PCGSetLogging)
	jirl	$ra, $ra, 0
	bne	$s1, $s0, .LBB0_171
# %bb.169:                              # %if.then662
	addi.d	$a1, $sp, 248
	move	$a0, $zero
	pcaddu18i	$ra, %call36(HYPRE_StructSMGCreate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	move	$a1, $zero
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetMemoryUse)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetMaxIter)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	movgr2fr.d	$fa0, $zero
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetTol)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetZeroGuess)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetNumPreRelax)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetNumPostRelax)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	move	$a1, $zero
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetLogging)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	ld.d	$a3, $sp, 248
	pcalau12i	$a1, %got_pc_hi20(HYPRE_StructSMGSolve)
	ld.d	$a1, $a1, %got_pc_lo12(HYPRE_StructSMGSolve)
	pcalau12i	$a2, %got_pc_hi20(HYPRE_StructSMGSetup)
	ld.d	$a2, $a2, %got_pc_lo12(HYPRE_StructSMGSetup)
	b	.LBB0_173
.LBB0_170:                              # %if.end650.thread
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a0, $a0, %pc_lo12(.L.str.31)
	pcaddu18i	$ra, %call36(hypre_InitializeTiming)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(hypre_BeginTiming)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 256
	addi.d	$s0, $sp, 256
	move	$a0, $zero
	pcaddu18i	$ra, %call36(HYPRE_StructSMGCreate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetMemoryUse)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	ori	$a1, $zero, 50
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetMaxIter)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_4)
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetTol)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	move	$a1, $zero
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetRelChange)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetNumPreRelax)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetNumPostRelax)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetLogging)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	ld.d	$a1, $sp, 280
	ld.d	$a2, $sp, 272
	ld.d	$a3, $sp, 264
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSetup)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_EndTiming)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(hypre_PrintTiming)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_FinalizeTiming)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_ClearTiming)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(hypre_InitializeTiming)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(hypre_BeginTiming)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	ld.d	$a1, $sp, 280
	ld.d	$a2, $sp, 272
	ld.d	$a3, $sp, 264
	pcaddu18i	$ra, %call36(HYPRE_StructSMGSolve)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_EndTiming)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(hypre_PrintTiming)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_FinalizeTiming)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_ClearTiming)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	addi.d	$a1, $sp, 244
	pcaddu18i	$ra, %call36(HYPRE_StructSMGGetNumIterations)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(HYPRE_StructSMGGetFinalRelativeResidualNorm)
	jirl	$ra, $ra, 0
	b	.LBB0_175
.LBB0_171:                              # %if.else672
	ori	$a0, $zero, 2
	bne	$s1, $a0, .LBB0_174
# %bb.172:                              # %if.then674
	ld.d	$a0, $sp, 256
	st.d	$zero, $sp, 248
	pcalau12i	$a1, %got_pc_hi20(HYPRE_StructDiagScale)
	ld.d	$a1, $a1, %got_pc_lo12(HYPRE_StructDiagScale)
	pcalau12i	$a2, %got_pc_hi20(HYPRE_StructDiagScaleSetup)
	ld.d	$a2, $a2, %got_pc_lo12(HYPRE_StructDiagScaleSetup)
	move	$a3, $zero
.LBB0_173:                              # %if.end677
	pcaddu18i	$ra, %call36(HYPRE_PCGSetPrecond)
	jirl	$ra, $ra, 0
.LBB0_174:                              # %if.end677
	ld.d	$a0, $sp, 256
	ld.d	$a1, $sp, 280
	ld.d	$a2, $sp, 272
	ld.d	$a3, $sp, 264
	pcaddu18i	$ra, %call36(HYPRE_PCGSetup)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_EndTiming)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(hypre_PrintTiming)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_FinalizeTiming)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_ClearTiming)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a0, $a0, %pc_lo12(.L.str.36)
	pcaddu18i	$ra, %call36(hypre_InitializeTiming)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcaddu18i	$ra, %call36(hypre_BeginTiming)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	ld.d	$a1, $sp, 280
	ld.d	$a2, $sp, 272
	ld.d	$a3, $sp, 264
	pcaddu18i	$ra, %call36(HYPRE_PCGSolve)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_EndTiming)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	move	$a1, $zero
	pcaddu18i	$ra, %call36(hypre_PrintTiming)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(hypre_FinalizeTiming)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_ClearTiming)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	addi.d	$a1, $sp, 244
	pcaddu18i	$ra, %call36(HYPRE_PCGGetNumIterations)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	addi.d	$a1, $sp, 232
	pcaddu18i	$ra, %call36(HYPRE_PCGGetFinalRelativeResidualNorm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 256
	pcaddu18i	$ra, %call36(HYPRE_StructPCGDestroy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	addi.d	$s0, $sp, 248
	bne	$s1, $a0, .LBB0_176
.LBB0_175:                              # %if.end697.sink.split
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(HYPRE_StructSMGDestroy)
	jirl	$ra, $ra, 0
.LBB0_176:                              # %if.end697
	ld.w	$a0, $sp, 224
	bnez	$a0, .LBB0_178
# %bb.177:                              # %if.then699
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 244
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a0, $a0, %pc_lo12(.L.str.37)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 232
	pcalau12i	$a0, %pc_hi20(.L.str.38)
	addi.d	$a0, $a0, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB0_178:                              # %if.end704
	ld.d	$a0, $sp, 200
	addi.w	$fp, $s4, 0
	pcaddu18i	$ra, %call36(HYPRE_StructGridDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(HYPRE_StructStencilDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(HYPRE_StructMatrixDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 272
	pcaddu18i	$ra, %call36(HYPRE_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264
	pcaddu18i	$ra, %call36(HYPRE_StructVectorDestroy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB0_181
# %bb.179:                              # %for.body712.preheader
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_180:                              # %for.body712
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 0
	ld.d	$a0, $s1, 0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s1, 0
	addi.d	$s1, $s1, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_180
.LBB0_181:                              # %for.end723
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	bltz	$s5, .LBB0_184
# %bb.182:                              # %for.body727.preheader
	bstrpick.d	$fp, $s6, 31, 0
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_183:                              # %for.body727
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	st.d	$zero, $s0, 0
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB0_183
.LBB0_184:                              # %for.end734
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(hypre_Free)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(hypre_MPI_Finalize)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$s8, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 392                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 400                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 408                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 416
	ret
.LBB0_185:                              # %if.then150
	pcalau12i	$a0, %pc_hi20(.Lstr.12)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.12)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_186:                              # %if.then127
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.1)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.1)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.2)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.2)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.3)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.3)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.4)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.4)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.5)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.5)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.6)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.6)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.7)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.7)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.8)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.8)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.9)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.9)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.Lstr.10)
	addi.d	$a0, $a0, %pc_lo12(.Lstr.10)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 10
	pcaddu18i	$ra, %call36(putchar)
	jirl	$ra, $ra, 0
.LBB0_187:                              # %if.then146
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"-solver"
	.size	.L.str.6, 8

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"-help"
	.size	.L.str.7, 6

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Usage: %s [<options>]\n"
	.size	.L.str.9, 23

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"  (nx, ny, nz)    = (%d, %d, %d)\n"
	.size	.L.str.23, 34

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"  (Px, Py, Pz)    = (%d, %d, %d)\n"
	.size	.L.str.24, 34

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"  (bx, by, bz)    = (%d, %d, %d)\n"
	.size	.L.str.25, 34

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"  (cx, cy, cz)    = (%f, %f, %f)\n"
	.size	.L.str.26, 34

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"  (n_pre, n_post) = (%d, %d)\n"
	.size	.L.str.27, 30

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"  dim             = %d\n"
	.size	.L.str.28, 24

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"  solver ID       = %d\n"
	.size	.L.str.29, 24

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Struct Interface"
	.size	.L.str.30, 17

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"SMG Setup"
	.size	.L.str.31, 10

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Setup phase times"
	.size	.L.str.32, 18

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"SMG Solve"
	.size	.L.str.33, 10

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Solve phase times"
	.size	.L.str.34, 18

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"PCG Setup"
	.size	.L.str.35, 10

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"PCG Solve"
	.size	.L.str.36, 10

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Iterations = %d\n"
	.size	.L.str.37, 17

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Final Relative Residual Norm = %e\n"
	.size	.L.str.38, 35

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"  -n <nx> <ny> <nz>    : problem size per block"
	.size	.Lstr, 48

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"  -P <Px> <Py> <Pz>    : processor topology"
	.size	.Lstr.1, 44

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"  -b <bx> <by> <bz>    : blocking per processor"
	.size	.Lstr.2, 48

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"  -c <cx> <cy> <cz>    : diffusion coefficients"
	.size	.Lstr.3, 48

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"  -v <n_pre> <n_post>  : number of pre and post relaxations"
	.size	.Lstr.4, 60

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"  -d <dim>             : problem dimension (2 or 3)"
	.size	.Lstr.5, 52

	.type	.Lstr.6,@object                 # @str.6
.Lstr.6:
	.asciz	"  -solver <ID>         : solver ID (default = 0)"
	.size	.Lstr.6, 49

	.type	.Lstr.7,@object                 # @str.7
.Lstr.7:
	.asciz	"                         0 - SMG"
	.size	.Lstr.7, 33

	.type	.Lstr.8,@object                 # @str.8
.Lstr.8:
	.asciz	"                         1 - CG with SMG precond"
	.size	.Lstr.8, 49

	.type	.Lstr.9,@object                 # @str.9
.Lstr.9:
	.asciz	"                         2 - CG with diagonal scaling"
	.size	.Lstr.9, 54

	.type	.Lstr.10,@object                # @str.10
.Lstr.10:
	.asciz	"                         3 - CG"
	.size	.Lstr.10, 32

	.type	.Lstr.11,@object                # @str.11
.Lstr.11:
	.asciz	"Running with these driver parameters:"
	.size	.Lstr.11, 38

	.type	.Lstr.12,@object                # @str.12
.Lstr.12:
	.asciz	"Error: Invalid number of processors or processor topology "
	.size	.Lstr.12, 59

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym HYPRE_StructSMGSetup
	.addrsig_sym HYPRE_StructSMGSolve
	.addrsig_sym HYPRE_StructDiagScale
	.addrsig_sym HYPRE_StructDiagScaleSetup
