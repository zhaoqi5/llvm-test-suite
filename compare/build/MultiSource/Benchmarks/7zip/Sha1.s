	.file	"Sha1.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN7NCrypto5NSha112CContextBase4InitEv
.LCPI0_0:
	.word	1732584193                      # 0x67452301
	.word	4023233417                      # 0xefcdab89
	.word	2562383102                      # 0x98badcfe
	.word	271733878                       # 0x10325476
	.text
	.globl	_ZN7NCrypto5NSha112CContextBase4InitEv
	.p2align	2
	.type	_ZN7NCrypto5NSha112CContextBase4InitEv,@function
_ZN7NCrypto5NSha112CContextBase4InitEv: # @_ZN7NCrypto5NSha112CContextBase4InitEv
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI0_0)
	vst	$vr0, $a0, 0
	lu12i.w	$a1, -246482
	ori	$a1, $a1, 496
	lu32i.d	$a1, 0
	st.w	$a1, $a0, 16
	st.d	$zero, $a0, 24
	ret
.Lfunc_end0:
	.size	_ZN7NCrypto5NSha112CContextBase4InitEv, .Lfunc_end0-_ZN7NCrypto5NSha112CContextBase4InitEv
                                        # -- End function
	.globl	_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b # -- Begin function _ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b
	.p2align	2
	.type	_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b,@function
_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b: # @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -400
	st.d	$fp, $sp, 392                   # 8-byte Folded Spill
	st.d	$s0, $sp, 384                   # 8-byte Folded Spill
	st.d	$s1, $sp, 376                   # 8-byte Folded Spill
	st.d	$s2, $sp, 368                   # 8-byte Folded Spill
	st.d	$s3, $sp, 360                   # 8-byte Folded Spill
	st.d	$s4, $sp, 352                   # 8-byte Folded Spill
	st.d	$s5, $sp, 344                   # 8-byte Folded Spill
	st.d	$s6, $sp, 336                   # 8-byte Folded Spill
	st.d	$s7, $sp, 328                   # 8-byte Folded Spill
	ld.w	$a5, $a0, 4
	ld.w	$a6, $a0, 12
	ld.w	$a7, $a0, 8
	ld.w	$a4, $a0, 0
	ld.w	$t0, $a0, 16
	andn	$t1, $a6, $a5
	and	$t2, $a7, $a5
	or	$t1, $t2, $t1
	xvld	$xr0, $a1, 0
	rotri.w	$t2, $a4, 27
	add.d	$t0, $t2, $t0
	add.d	$t0, $t0, $t1
	xvpickve2gr.w	$t1, $xr0, 0
	add.d	$t0, $t0, $t1
	rotri.w	$t1, $a5, 2
	andn	$a5, $a7, $a4
	and	$t2, $t1, $a4
	or	$a5, $t2, $a5
	add.d	$a5, $a6, $a5
	xvpickve2gr.w	$a6, $xr0, 1
	add.d	$a6, $a5, $a6
	rotri.w	$t2, $a4, 2
	xvpickve2gr.w	$a5, $xr0, 2
	add.d	$a7, $a7, $a5
	xvpickve2gr.w	$a5, $xr0, 3
	add.d	$t3, $t1, $a5
	xvpickve2gr.w	$a5, $xr0, 4
	add.d	$t4, $t2, $a5
	lu12i.w	$a5, 370727
	ori	$a5, $a5, 2457
	add.d	$t0, $t0, $a5
	rotri.w	$t5, $t0, 27
	add.d	$a6, $a6, $t5
	add.d	$a6, $a6, $a5
	andn	$t1, $t1, $t0
	and	$t5, $t2, $t0
	or	$t1, $t5, $t1
	rotri.w	$t5, $a6, 27
	add.d	$a7, $a7, $t1
	add.d	$a7, $a7, $t5
	add.d	$a7, $a7, $a5
	rotri.w	$t0, $t0, 2
	andn	$t1, $t2, $a6
	and	$t2, $t0, $a6
	or	$t1, $t2, $t1
	rotri.w	$t2, $a7, 27
	add.d	$t1, $t3, $t1
	add.d	$t1, $t1, $t2
	add.d	$t1, $t1, $a5
	rotri.w	$a6, $a6, 2
	andn	$t2, $t0, $a7
	and	$t3, $a6, $a7
	or	$t2, $t3, $t2
	rotri.w	$t3, $t1, 27
	add.d	$t2, $t4, $t2
	add.d	$t2, $t2, $t3
	add.d	$t2, $t2, $a5
	rotri.w	$a7, $a7, 2
	andn	$t3, $a6, $t1
	and	$t4, $a7, $t1
	or	$t3, $t4, $t3
	rotri.w	$t4, $t2, 27
	add.d	$t0, $t4, $t0
	add.d	$t0, $t0, $t3
	xvpickve2gr.w	$t3, $xr0, 5
	add.d	$t0, $t0, $t3
	add.d	$t0, $t0, $a5
	rotri.w	$t1, $t1, 2
	andn	$t3, $a7, $t2
	and	$t4, $t1, $t2
	or	$t3, $t4, $t3
	rotri.w	$t4, $t0, 27
	add.d	$a6, $a6, $t3
	xvpickve2gr.w	$t3, $xr0, 6
	add.d	$a6, $a6, $t3
	add.d	$a6, $a6, $t4
	add.d	$a6, $a6, $a5
	rotri.w	$t2, $t2, 2
	andn	$t3, $t1, $t0
	and	$t4, $t2, $t0
	or	$t3, $t4, $t3
	xvst	$xr0, $sp, 8
	rotri.w	$t4, $a6, 27
	xvpickve2gr.w	$t5, $xr0, 7
	add.d	$a7, $a7, $t5
	add.d	$a7, $a7, $t3
	add.d	$a7, $a7, $t4
	add.d	$a7, $a7, $a5
	rotri.w	$t0, $t0, 2
	andn	$t3, $t2, $a6
	xvld	$xr0, $a1, 32
	and	$t4, $t0, $a6
	or	$t3, $t4, $t3
	rotri.w	$t4, $a7, 27
	xvpickve2gr.w	$t5, $xr0, 0
	add.d	$t1, $t1, $t5
	rotri.w	$a6, $a6, 2
	andn	$t5, $t0, $a7
	and	$t6, $a6, $a7
	or	$t5, $t6, $t5
	xvpickve2gr.w	$t6, $xr0, 1
	add.d	$t2, $t2, $t6
	rotri.w	$a7, $a7, 2
	add.d	$t1, $t1, $t3
	add.d	$t1, $t1, $t4
	add.d	$t1, $t1, $a5
	rotri.w	$t3, $t1, 27
	add.d	$t2, $t2, $t5
	add.d	$t2, $t2, $t3
	add.d	$t2, $t2, $a5
	rotri.w	$t3, $t1, 2
	andn	$t4, $a7, $t2
	and	$t5, $t3, $t2
	or	$t4, $t5, $t4
	add.d	$t4, $a6, $t4
	xvpickve2gr.w	$t5, $xr0, 4
	add.d	$t5, $a7, $t5
	andn	$a6, $a6, $t1
	and	$a7, $a7, $t1
	or	$a6, $a7, $a6
	rotri.w	$a7, $t2, 27
	add.d	$a7, $a7, $t0
	add.d	$a6, $a7, $a6
	xvpickve2gr.w	$a7, $xr0, 2
	add.d	$a6, $a6, $a7
	add.d	$a6, $a6, $a5
	rotri.w	$a7, $a6, 27
	xvpickve2gr.w	$t0, $xr0, 3
	add.d	$t0, $t4, $t0
	add.d	$a7, $t0, $a7
	add.d	$a7, $a7, $a5
	rotri.w	$t0, $t2, 2
	andn	$t1, $t3, $a6
	and	$t2, $t0, $a6
	or	$t1, $t2, $t1
	rotri.w	$t2, $a7, 27
	add.d	$t1, $t5, $t1
	add.d	$t1, $t1, $t2
	add.d	$t1, $t1, $a5
	rotri.w	$a6, $a6, 2
	andn	$t2, $t0, $a7
	and	$t4, $a6, $a7
	or	$t2, $t4, $t2
	rotri.w	$t4, $t1, 27
	xvpickve2gr.w	$t5, $xr0, 5
	add.d	$t3, $t3, $t5
	add.d	$t2, $t3, $t2
	add.d	$t2, $t2, $t4
	add.d	$t2, $t2, $a5
	rotri.w	$a7, $a7, 2
	andn	$t3, $a6, $t1
	and	$t4, $a7, $t1
	or	$t3, $t4, $t3
	rotri.w	$t4, $t2, 27
	xvpickve2gr.w	$t8, $xr0, 6
	add.d	$t0, $t0, $t8
	add.d	$t0, $t0, $t3
	add.d	$t0, $t0, $t4
	add.d	$t0, $t0, $a5
	rotri.w	$t1, $t1, 2
	andn	$t3, $a7, $t2
	and	$t4, $t1, $t2
	or	$t3, $t4, $t3
	xvst	$xr0, $sp, 40
	rotri.w	$t4, $t0, 27
	add.d	$a6, $t4, $a6
	add.d	$a6, $a6, $t3
	xvpickve2gr.w	$t3, $xr0, 7
	add.d	$a6, $a6, $t3
	add.d	$a6, $a6, $a5
	rotri.w	$t2, $t2, 2
	andn	$t4, $t1, $t0
	and	$t7, $t2, $t0
	ld.w	$fp, $sp, 8
	ld.w	$t6, $sp, 40
	ld.w	$s1, $sp, 16
	or	$t4, $t7, $t4
	xor	$t5, $t5, $fp
	xor	$t5, $t5, $t6
	xor	$t5, $t5, $s1
	rotri.w	$t5, $t5, 31
	rotri.w	$t7, $a6, 27
	add.d	$a7, $a7, $t4
	add.d	$a7, $a7, $t7
	add.d	$a7, $a7, $t5
	add.d	$a7, $a7, $a5
	rotri.w	$t4, $t0, 2
	andn	$t0, $t2, $a6
	and	$fp, $t4, $a6
	ld.w	$s0, $sp, 12
	ld.w	$t7, $sp, 44
	ld.w	$s2, $sp, 20
	or	$t0, $fp, $t0
	xor	$t8, $t8, $s0
	xor	$t8, $t8, $t7
	xor	$t8, $t8, $s2
	rotri.w	$fp, $t8, 31
	rotri.w	$t8, $a7, 27
	add.d	$t0, $t1, $t0
	add.d	$t0, $t0, $fp
	add.d	$t1, $t0, $t8
	rotri.w	$t0, $a6, 2
	andn	$a6, $t4, $a7
	and	$t8, $t0, $a7
	ld.w	$s3, $sp, 48
	ld.w	$s0, $sp, 24
	or	$a6, $t8, $a6
	st.w	$t5, $sp, 72
	add.d	$s4, $t1, $a5
	xor	$t1, $s3, $s0
	xor	$t1, $t1, $t3
	xor	$t1, $t1, $s1
	rotri.w	$t8, $t1, 31
	rotri.w	$t1, $s4, 27
	add.d	$a6, $t2, $a6
	add.d	$a6, $a6, $t8
	add.d	$a6, $a6, $t1
	rotri.w	$a7, $a7, 2
	andn	$t1, $t0, $s4
	and	$t2, $a7, $s4
	or	$t2, $t2, $t1
	ld.w	$t3, $sp, 52
	ld.w	$s1, $sp, 28
	st.w	$fp, $sp, 76
	st.w	$t8, $sp, 80
	add.d	$t1, $a6, $a5
	xor	$a6, $t3, $s1
	xor	$a6, $a6, $t5
	xor	$a6, $a6, $s2
	rotri.w	$s3, $a6, 31
	st.w	$s3, $sp, 84
	rotri.w	$a6, $t1, 27
	add.d	$t2, $t4, $t2
	add.d	$t2, $t2, $s3
	add.d	$a6, $t2, $a6
	add.d	$a6, $a6, $a5
	rotri.w	$a5, $s4, 2
	ori	$t2, $zero, 15
	addi.d	$t3, $sp, 56
	lu12i.w	$t4, 454046
	ori	$t4, $t4, 2977
	ori	$t5, $zero, 35
	.p2align	4, , 16
.LBB1_1:                                # %for.body238
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s2, $t3, 0
	xor	$s2, $s2, $fp
	ld.w	$fp, $t3, -24
	xor	$s0, $s2, $s0
	xor	$s2, $a5, $t1
	xor	$s4, $s2, $a7
	xor	$s0, $s0, $fp
	rotri.w	$s2, $s0, 31
	st.w	$s2, $t3, 32
	rotri.w	$s0, $a6, 27
	add.d	$s0, $s0, $s4
	add.d	$t0, $s0, $t0
	add.d	$t0, $t0, $s2
	add.d	$t0, $t0, $t4
	rotri.w	$t1, $t1, 2
	xor	$s0, $t1, $a6
	xor	$s5, $s3, $t6
	ld.w	$t6, $t3, 4
	ld.w	$s4, $t3, -20
	xor	$s0, $s0, $a5
	xor	$t8, $t8, $s1
	xor	$t8, $t8, $t6
	xor	$t8, $t8, $s4
	rotri.w	$s3, $t8, 31
	st.w	$s3, $t3, 36
	rotri.w	$t8, $t0, 27
	add.d	$a7, $a7, $s0
	ld.w	$s0, $t3, 12
	add.d	$a7, $a7, $s3
	add.d	$a7, $a7, $t8
	add.d	$a7, $a7, $t4
	xor	$t8, $s0, $t7
	move	$s0, $t7
	ld.w	$t7, $t3, 8
	rotri.w	$a6, $a6, 2
	xor	$s1, $t1, $a6
	xor	$s1, $s1, $t0
	xor	$s5, $s5, $t7
	xor	$fp, $s5, $fp
	rotri.w	$fp, $fp, 31
	st.w	$fp, $t3, 40
	rotri.w	$s5, $a7, 27
	add.d	$a5, $a5, $s1
	add.d	$a5, $a5, $fp
	add.d	$a5, $a5, $s5
	add.d	$a5, $a5, $t4
	rotri.w	$t0, $t0, 2
	xor	$s1, $t0, $a6
	xor	$s1, $s1, $a7
	xor	$t8, $t8, $s4
	xor	$t8, $t8, $s2
	rotri.w	$t8, $t8, 31
	st.w	$t8, $t3, 44
	rotri.w	$s2, $a5, 27
	add.d	$t1, $t1, $s1
	add.d	$t1, $t1, $t8
	add.d	$t1, $t1, $s2
	add.d	$t1, $t1, $t4
	rotri.w	$a7, $a7, 2
	ld.w	$s2, $t3, 16
	ld.w	$s4, $t3, -16
	ld.w	$s1, $t3, -8
	xor	$s5, $a7, $t0
	xor	$s5, $s5, $a5
	xor	$s2, $s2, $s4
	xor	$s2, $s2, $s1
	xor	$s2, $s2, $s3
	rotri.w	$s3, $s2, 31
	st.w	$s3, $t3, 48
	rotri.w	$s2, $t1, 27
	add.d	$a6, $a6, $s5
	add.d	$a6, $a6, $s3
	add.d	$a6, $a6, $s2
	add.d	$a6, $a6, $t4
	rotri.w	$a5, $a5, 2
	addi.d	$t2, $t2, 5
	addi.d	$t3, $t3, 20
	bltu	$t2, $t5, .LBB1_1
# %bb.2:                                # %for.body514.preheader
	ld.w	$s4, $sp, 156
	ld.w	$s1, $sp, 104
	ld.w	$s2, $sp, 160
	ld.w	$s6, $sp, 108
	ld.w	$t7, $sp, 164
	ld.w	$t6, $sp, 120
	ld.w	$s3, $sp, 124
	ori	$t2, $zero, 35
	addi.d	$t3, $sp, 184
	lu12i.w	$t4, -462405
	ori	$t4, $t4, 3292
	ori	$t5, $zero, 55
	.p2align	4, , 16
.LBB1_3:                                # %for.body514
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t8, $t3, -48
	xor	$t8, $t8, $s4
	xor	$t8, $t8, $s1
	and	$fp, $a5, $t1
	ld.w	$s4, $t3, -72
	or	$s0, $a5, $t1
	and	$s0, $a7, $s0
	or	$s0, $s0, $fp
	xor	$t8, $t8, $s4
	rotri.w	$fp, $t8, 31
	rotri.w	$t8, $a6, 27
	add.d	$t0, $t8, $t0
	add.d	$t0, $t0, $s0
	add.d	$t0, $t0, $fp
	add.d	$t0, $t0, $t4
	rotri.w	$t1, $t1, 2
	and	$s0, $t1, $a6
	or	$t8, $t1, $a6
	and	$s1, $t8, $a5
	ld.w	$t8, $t3, -44
	ld.w	$s5, $t3, -68
	or	$s1, $s1, $s0
	xor	$s0, $s2, $s6
	xor	$s0, $s0, $t8
	xor	$s0, $s0, $s5
	rotri.w	$s0, $s0, 31
	rotri.w	$s2, $t0, 27
	add.d	$a7, $a7, $s1
	add.d	$a7, $a7, $s0
	add.d	$a7, $a7, $s2
	ld.w	$s1, $t3, -36
	rotri.w	$a6, $a6, 2
	and	$s6, $t0, $a6
	or	$s7, $t0, $a6
	xor	$s2, $s1, $s3
	move	$s1, $s3
	ld.w	$s3, $t3, -40
	and	$s7, $s7, $t1
	or	$s6, $s7, $s6
	add.d	$a7, $a7, $t4
	xor	$t7, $t7, $s3
	xor	$t7, $t7, $s4
	xor	$t7, $t7, $t6
	rotri.w	$s4, $t7, 31
	rotri.w	$t7, $a7, 27
	add.d	$a5, $a5, $s6
	add.d	$a5, $a5, $s4
	add.d	$a5, $a5, $t7
	rotri.w	$t0, $t0, 2
	and	$t7, $a7, $t0
	or	$s6, $a7, $t0
	and	$s6, $s6, $a6
	or	$t7, $s6, $t7
	st.w	$fp, $t3, -16
	st.w	$s0, $t3, -12
	add.d	$a5, $a5, $t4
	xor	$fp, $s2, $fp
	xor	$fp, $fp, $s5
	rotri.w	$s2, $fp, 31
	rotri.w	$fp, $a5, 27
	add.d	$t1, $t1, $t7
	add.d	$t1, $t1, $s2
	add.d	$t1, $t1, $fp
	rotri.w	$a7, $a7, 2
	and	$t7, $a5, $a7
	or	$fp, $a5, $a7
	and	$fp, $fp, $t0
	or	$fp, $fp, $t7
	ld.w	$t7, $t3, -32
	ld.w	$s6, $t3, -56
	st.w	$s4, $t3, -8
	st.w	$s2, $t3, -4
	add.d	$t1, $t1, $t4
	xor	$t7, $t7, $s6
	xor	$t7, $t7, $s0
	xor	$t6, $t7, $t6
	rotri.w	$t7, $t6, 31
	st.w	$t7, $t3, 0
	rotri.w	$t6, $t1, 27
	add.d	$a6, $a6, $t7
	add.d	$a6, $a6, $fp
	add.d	$a6, $a6, $t6
	add.d	$a6, $a6, $t4
	rotri.w	$a5, $a5, 2
	addi.d	$t2, $t2, 5
	addi.d	$t3, $t3, 20
	move	$t6, $t8
	bltu	$t2, $t5, .LBB1_3
# %bb.4:                                # %for.body801.preheader
	ld.w	$s0, $sp, 236
	ld.w	$s1, $sp, 184
	ld.w	$t8, $sp, 240
	ld.w	$fp, $sp, 188
	ld.w	$t7, $sp, 244
	ld.w	$t6, $sp, 200
	ld.w	$s2, $sp, 228
	ld.w	$s3, $sp, 204
	ori	$t2, $zero, 55
	addi.d	$t3, $sp, 264
	lu12i.w	$t4, -219604
	ori	$t4, $t4, 470
	ori	$t5, $zero, 75
	.p2align	4, , 16
.LBB1_5:                                # %for.body801
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$s4, $t3, -48
	xor	$s4, $s4, $s0
	ld.w	$s0, $t3, -72
	xor	$s4, $s4, $s1
	move	$s1, $s3
	xor	$s3, $a5, $t1
	xor	$s3, $s3, $a7
	xor	$s4, $s4, $s0
	xor	$s5, $s2, $s1
	rotri.w	$s2, $s4, 31
	st.w	$s2, $t3, -16
	rotri.w	$s4, $a6, 27
	add.d	$s3, $s4, $s3
	add.d	$t0, $s3, $t0
	add.d	$t0, $t0, $s2
	add.d	$t0, $t0, $t4
	rotri.w	$t1, $t1, 2
	xor	$s3, $t1, $a6
	ld.w	$s4, $t3, -44
	ld.w	$s7, $t3, -68
	xor	$s3, $s3, $a5
	xor	$t8, $t8, $fp
	xor	$t8, $t8, $s4
	xor	$t8, $t8, $s7
	rotri.w	$s6, $t8, 31
	st.w	$s6, $t3, -12
	rotri.w	$t8, $t0, 27
	add.d	$a7, $a7, $s3
	add.d	$a7, $a7, $s6
	add.d	$a7, $a7, $t8
	add.d	$a7, $a7, $t4
	ld.w	$s3, $t3, -40
	rotri.w	$a6, $a6, 2
	xor	$t8, $t1, $a6
	xor	$t8, $t8, $t0
	xor	$t7, $t7, $s3
	xor	$t7, $t7, $s0
	xor	$t7, $t7, $t6
	rotri.w	$s0, $t7, 31
	st.w	$s0, $t3, -8
	rotri.w	$t7, $a7, 27
	add.d	$a5, $a5, $t8
	add.d	$a5, $a5, $s0
	add.d	$a5, $a5, $t7
	add.d	$a5, $a5, $t4
	rotri.w	$t0, $t0, 2
	xor	$t7, $t0, $a6
	xor	$t7, $t7, $a7
	xor	$t8, $s5, $s2
	xor	$t8, $t8, $s7
	rotri.w	$t8, $t8, 31
	st.w	$t8, $t3, -4
	rotri.w	$fp, $a5, 27
	add.d	$t1, $t1, $t7
	add.d	$t1, $t1, $t8
	add.d	$t1, $t1, $fp
	add.d	$t1, $t1, $t4
	ld.w	$t7, $t3, -32
	ld.w	$fp, $t3, -56
	rotri.w	$a7, $a7, 2
	xor	$s5, $a7, $t0
	xor	$s5, $s5, $a5
	xor	$t7, $t7, $fp
	xor	$t7, $t7, $s6
	xor	$t6, $t7, $t6
	rotri.w	$t7, $t6, 31
	st.w	$t7, $t3, 0
	rotri.w	$t6, $t1, 27
	add.d	$a6, $a6, $s5
	add.d	$a6, $a6, $t7
	add.d	$a6, $a6, $t6
	add.d	$a6, $a6, $t4
	rotri.w	$a5, $a5, 2
	addi.d	$t2, $t2, 5
	addi.d	$t3, $t3, 20
	move	$t6, $s4
	bltu	$t2, $t5, .LBB1_5
# %bb.6:                                # %for.end1075
	add.d	$a4, $a6, $a4
	st.w	$a4, $a2, 0
	ld.w	$a4, $a0, 4
	add.d	$a4, $a4, $t1
	st.w	$a4, $a2, 4
	ld.w	$a4, $a0, 8
	add.d	$a4, $a4, $a5
	st.w	$a4, $a2, 8
	ld.w	$a4, $a0, 12
	add.d	$a4, $a4, $a7
	st.w	$a4, $a2, 12
	ld.w	$a0, $a0, 16
	add.d	$a0, $a0, $t0
	st.w	$a0, $a2, 16
	beqz	$a3, .LBB1_8
# %bb.7:                                # %for.body1099.preheader
	xvld	$xr0, $sp, 296
	xvld	$xr1, $sp, 264
	xvst	$xr0, $a1, 32
	xvst	$xr1, $a1, 0
.LBB1_8:                                # %if.end
	ld.d	$s7, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 344                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 352                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 384                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 392                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 400
	ret
.Lfunc_end1:
	.size	_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b, .Lfunc_end1-_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b
                                        # -- End function
	.globl	_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj # -- Begin function _ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj
	.p2align	2
	.type	_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj,@function
_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj: # @_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj
# %bb.0:                                # %entry
	andi	$a5, $a2, 15
	slli.d	$a4, $a5, 2
	lu12i.w	$a6, -524288
	lu32i.d	$a6, 0
	addi.d	$a3, $a5, 1
	ori	$a7, $zero, 14
	stx.w	$a6, $a1, $a4
	beq	$a3, $a7, .LBB2_15
# %bb.1:                                # %iter.check
	ori	$a4, $zero, 13
	sub.d	$a4, $a4, $a5
	ori	$a6, $zero, 4
	bltu	$a4, $a6, .LBB2_13
# %bb.2:                                # %iter.check
	ori	$a6, $zero, 12
	bltu	$a6, $a5, .LBB2_13
# %bb.3:                                # %vector.main.loop.iter.check
	ori	$a6, $zero, 16
	bgeu	$a4, $a6, .LBB2_5
# %bb.4:
	move	$a6, $zero
	b	.LBB2_9
.LBB2_5:                                # %vector.ph
	move	$a6, $a4
	bstrins.d	$a6, $zero, 3, 0
	xvrepli.b	$xr0, 0
	move	$a7, $a3
	move	$t0, $a6
	.p2align	4, , 16
.LBB2_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t1, $a7, 31, 0
	alsl.d	$t2, $t1, $a1, 2
	slli.d	$t1, $t1, 2
	xvstx	$xr0, $a1, $t1
	xvst	$xr0, $t2, 32
	addi.w	$t0, $t0, -16
	addi.w	$a7, $a7, 16
	bnez	$t0, .LBB2_6
# %bb.7:                                # %middle.block
	beq	$a4, $a6, .LBB2_15
# %bb.8:                                # %vec.epilog.iter.check
	andi	$a7, $a4, 12
	beqz	$a7, .LBB2_12
.LBB2_9:                                # %vec.epilog.ph
	move	$a7, $a4
	bstrins.d	$a7, $zero, 1, 0
	add.d	$a3, $a3, $a7
	sub.d	$t0, $a6, $a7
	add.d	$a5, $a6, $a5
	addi.d	$a5, $a5, 1
	vrepli.b	$vr0, 0
	.p2align	4, , 16
.LBB2_10:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a6, $a5, 31, 0
	slli.d	$a6, $a6, 2
	vstx	$vr0, $a1, $a6
	addi.w	$t0, $t0, 4
	addi.w	$a5, $a5, 4
	bnez	$t0, .LBB2_10
# %bb.11:                               # %vec.epilog.middle.block
	bne	$a4, $a7, .LBB2_13
	b	.LBB2_15
.LBB2_12:
	add.d	$a3, $a3, $a6
.LBB2_13:                               # %while.body.preheader
	ori	$a4, $zero, 14
	.p2align	4, , 16
.LBB2_14:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a3, 31, 0
	slli.d	$a5, $a5, 2
	addi.w	$a3, $a3, 1
	stx.w	$zero, $a1, $a5
	bne	$a3, $a4, .LBB2_14
.LBB2_15:                               # %while.end
	ld.d	$a0, $a0, 24
	slli.d	$a0, $a0, 9
	bstrpick.d	$a2, $a2, 31, 0
	slli.d	$a2, $a2, 5
	add.d	$a0, $a0, $a2
	rotri.d	$a0, $a0, 32
	st.d	$a0, $a1, 56
	ret
.Lfunc_end2:
	.size	_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj, .Lfunc_end2-_ZNK7NCrypto5NSha112CContextBase12PrepareBlockEPjj
                                        # -- End function
	.globl	_ZN7NCrypto5NSha18CContext6UpdateEPKhm # -- Begin function _ZN7NCrypto5NSha18CContext6UpdateEPKhm
	.p2align	2
	.type	_ZN7NCrypto5NSha18CContext6UpdateEPKhm,@function
_ZN7NCrypto5NSha18CContext6UpdateEPKhm: # @_ZN7NCrypto5NSha18CContext6UpdateEPKhm
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 32
	beqz	$a2, .LBB3_7
# %bb.1:                                # %while.body.lr.ph
	move	$s0, $a2
	move	$s1, $a1
	addi.d	$s2, $fp, 36
	ori	$s3, $zero, 64
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_2:                                # %if.end
                                        #   in Loop: Header=BB3_4 Depth=1
	ld.bu	$a3, $s1, 0
	ldx.w	$a4, $s2, $a1
	slli.d	$a2, $a2, 3
	xori	$a2, $a2, 24
	sll.w	$a2, $a3, $a2
	or	$a2, $a2, $a4
	addi.w	$a0, $a0, 1
	stx.w	$a2, $s2, $a1
	beq	$a0, $s3, .LBB3_6
# %bb.3:                                # %if.end9
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 1
	beqz	$s0, .LBB3_7
.LBB3_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	andi	$a2, $a0, 3
	bstrpick.d	$a1, $a0, 31, 2
	slli.d	$a1, $a1, 2
	bnez	$a2, .LBB3_2
# %bb.5:                                # %if.then
                                        #   in Loop: Header=BB3_4 Depth=1
	stx.w	$zero, $s2, $a1
	b	.LBB3_2
	.p2align	4, , 16
.LBB3_6:                                # %if.then7
                                        #   in Loop: Header=BB3_4 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 24
	move	$a0, $zero
	addi.d	$a1, $a1, 1
	st.d	$a1, $fp, 24
	addi.d	$s0, $s0, -1
	addi.d	$s1, $s1, 1
	bnez	$s0, .LBB3_4
.LBB3_7:                                # %while.end
	st.w	$a0, $fp, 32
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	_ZN7NCrypto5NSha18CContext6UpdateEPKhm, .Lfunc_end3-_ZN7NCrypto5NSha18CContext6UpdateEPKhm
                                        # -- End function
	.globl	_ZN7NCrypto5NSha18CContext9UpdateRarEPhmb # -- Begin function _ZN7NCrypto5NSha18CContext9UpdateRarEPhmb
	.p2align	2
	.type	_ZN7NCrypto5NSha18CContext9UpdateRarEPhmb,@function
_ZN7NCrypto5NSha18CContext9UpdateRarEPhmb: # @_ZN7NCrypto5NSha18CContext9UpdateRarEPhmb
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
	move	$fp, $a0
	ld.w	$a0, $a0, 32
	beqz	$a2, .LBB4_10
# %bb.1:                                # %while.body.lr.ph
	move	$s0, $a3
	move	$s1, $a2
	move	$s2, $a1
	move	$a1, $zero
	addi.d	$s3, $fp, 36
	ori	$s5, $zero, 64
	addi.w	$s6, $zero, -32
	lu32i.d	$s6, 0
	b	.LBB4_5
.LBB4_2:                                # %for.body.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.w	$a0, $fp, 36
	add.d	$a1, $s2, $s6
	st.w	$a0, $a1, -31
	ld.w	$a0, $fp, 40
	st.w	$a0, $a1, -27
	ld.w	$a0, $fp, 44
	st.w	$a0, $a1, -23
	ld.w	$a0, $fp, 48
	st.w	$a0, $a1, -19
	ld.w	$a0, $fp, 52
	st.w	$a0, $a1, -15
	ld.w	$a0, $fp, 56
	st.w	$a0, $a1, -11
	ld.w	$a0, $fp, 60
	st.w	$a0, $a1, -7
	ld.w	$a0, $fp, 64
	st.w	$a0, $a1, -3
	ld.w	$a0, $fp, 68
	st.w	$a0, $a1, 1
	ld.w	$a0, $fp, 72
	st.w	$a0, $a1, 5
	ld.w	$a0, $fp, 76
	st.w	$a0, $a1, 9
	ld.w	$a0, $fp, 80
	st.w	$a0, $a1, 13
	ld.w	$a0, $fp, 84
	st.w	$a0, $a1, 17
	ld.w	$a0, $fp, 88
	st.w	$a0, $a1, 21
	ld.w	$a0, $fp, 92
	st.w	$a0, $a1, 25
	ld.w	$a2, $fp, 96
	move	$a0, $zero
	st.w	$a2, $a1, 29
.LBB4_3:                                # %if.end45
                                        #   in Loop: Header=BB4_5 Depth=1
	move	$a1, $s0
.LBB4_4:                                # %if.end45
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$s1, $s1, -1
	addi.d	$s2, $s2, 1
	beqz	$s1, .LBB4_10
.LBB4_5:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	andi	$a3, $a0, 3
	bstrpick.d	$a2, $a0, 31, 2
	slli.d	$a2, $a2, 2
	bnez	$a3, .LBB4_7
# %bb.6:                                # %if.then
                                        #   in Loop: Header=BB4_5 Depth=1
	stx.w	$zero, $s3, $a2
.LBB4_7:                                # %if.end
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.bu	$a4, $s2, 0
	ldx.w	$a5, $s3, $a2
	slli.d	$a3, $a3, 3
	xori	$a3, $a3, 24
	sll.w	$a3, $a4, $a3
	or	$a3, $a3, $a5
	addi.w	$a0, $a0, 1
	stx.w	$a3, $s3, $a2
	bne	$a0, $s5, .LBB4_4
# %bb.8:                                # %if.then7
                                        #   in Loop: Header=BB4_5 Depth=1
	andi	$s4, $a1, 1
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $fp
	move	$a3, $s4
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 24
	bnez	$s4, .LBB4_2
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	move	$a0, $zero
	b	.LBB4_3
.LBB4_10:                               # %while.end
	st.w	$a0, $fp, 32
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
.Lfunc_end4:
	.size	_ZN7NCrypto5NSha18CContext9UpdateRarEPhmb, .Lfunc_end4-_ZN7NCrypto5NSha18CContext9UpdateRarEPhmb
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN7NCrypto5NSha18CContext5FinalEPh
.LCPI5_0:
	.word	1732584193                      # 0x67452301
	.word	4023233417                      # 0xefcdab89
	.word	2562383102                      # 0x98badcfe
	.word	271733878                       # 0x10325476
	.text
	.globl	_ZN7NCrypto5NSha18CContext5FinalEPh
	.p2align	2
	.type	_ZN7NCrypto5NSha18CContext5FinalEPh,@function
_ZN7NCrypto5NSha18CContext5FinalEPh:    # @_ZN7NCrypto5NSha18CContext5FinalEPh
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
	move	$fp, $a0
	ld.wu	$s2, $a0, 32
	move	$s0, $a1
	andi	$a1, $s2, 3
	srli.d	$a0, $s2, 2
	bstrpick.d	$a2, $s2, 31, 2
	alsl.d	$a2, $a2, $fp, 2
	addi.d	$a3, $a2, 36
	beqz	$a1, .LBB5_2
# %bb.1:                                # %entry.if.end_crit_edge
	ld.w	$a2, $a3, 0
	b	.LBB5_3
.LBB5_2:                                # %if.then
	move	$a2, $zero
	st.w	$zero, $a3, 0
.LBB5_3:                                # %if.end
	ld.d	$s3, $fp, 24
	slli.d	$a1, $a1, 3
	xori	$a1, $a1, 24
	ori	$a3, $zero, 128
	sll.w	$a1, $a3, $a1
	addi.d	$s1, $fp, 36
	slli.d	$a3, $a0, 2
	or	$a1, $a2, $a1
	addi.d	$a0, $a0, 1
	ori	$s4, $zero, 14
	stx.w	$a1, $s1, $a3
	bne	$a0, $s4, .LBB5_6
.LBB5_4:                                # %while.end
	slli.d	$a0, $s3, 9
	alsl.d	$a0, $s2, $a0, 3
	rotri.d	$a0, $a0, 32
	st.d	$a0, $fp, 92
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	revb.2w	$a0, $a0
	st.w	$a0, $s0, 0
	ld.w	$a0, $fp, 4
	revb.2w	$a0, $a0
	st.w	$a0, $s0, 4
	ld.w	$a0, $fp, 8
	revb.2w	$a0, $a0
	st.w	$a0, $s0, 8
	ld.w	$a0, $fp, 12
	revb.2w	$a0, $a0
	st.w	$a0, $s0, 12
	ld.w	$a0, $fp, 16
	pcalau12i	$a1, %pc_hi20(.LCPI5_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI5_0)
	revb.2w	$a0, $a0
	st.w	$a0, $s0, 16
	vst	$vr0, $fp, 0
	lu12i.w	$a0, -246482
	ori	$a0, $a0, 496
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 16
	st.d	$zero, $fp, 24
	st.w	$zero, $fp, 32
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
	.p2align	4, , 16
.LBB5_5:                                # %if.end12
                                        #   in Loop: Header=BB5_6 Depth=1
	slli.d	$a1, $s5, 2
	addi.d	$a0, $s5, 1
	stx.w	$zero, $s1, $a1
	beq	$a0, $s4, .LBB5_4
.LBB5_6:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	andi	$s5, $a0, 15
	bnez	$s5, .LBB5_5
# %bb.7:                                # %if.then11
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 24
	b	.LBB5_5
.Lfunc_end5:
	.size	_ZN7NCrypto5NSha18CContext5FinalEPh, .Lfunc_end5-_ZN7NCrypto5NSha18CContext5FinalEPh
                                        # -- End function
	.globl	_ZN7NCrypto5NSha110CContext326UpdateEPKjm # -- Begin function _ZN7NCrypto5NSha110CContext326UpdateEPKjm
	.p2align	2
	.type	_ZN7NCrypto5NSha110CContext326UpdateEPKjm,@function
_ZN7NCrypto5NSha110CContext326UpdateEPKjm: # @_ZN7NCrypto5NSha110CContext326UpdateEPKjm
# %bb.0:                                # %entry
	beqz	$a2, .LBB6_6
# %bb.1:                                # %while.body.lr.ph
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	addi.d	$s2, $a0, 36
	ori	$s3, $zero, 16
	b	.LBB6_3
	.p2align	4, , 16
.LBB6_2:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=1
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 4
	beqz	$fp, .LBB6_5
.LBB6_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $s1, 32
	ld.w	$a1, $s0, 0
	addi.w	$a2, $a0, 1
	st.w	$a2, $s1, 32
	slli.d	$a0, $a0, 2
	stx.w	$a1, $s2, $a0
	bne	$a2, $s3, .LBB6_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB6_3 Depth=1
	st.w	$zero, $s1, 32
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $s1, 24
	b	.LBB6_2
.LBB6_5:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB6_6:                                # %while.end
	ret
.Lfunc_end6:
	.size	_ZN7NCrypto5NSha110CContext326UpdateEPKjm, .Lfunc_end6-_ZN7NCrypto5NSha110CContext326UpdateEPKjm
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN7NCrypto5NSha110CContext325FinalEPj
.LCPI7_0:
	.word	1732584193                      # 0x67452301
	.word	4023233417                      # 0xefcdab89
	.word	2562383102                      # 0x98badcfe
	.word	271733878                       # 0x10325476
	.text
	.globl	_ZN7NCrypto5NSha110CContext325FinalEPj
	.p2align	2
	.type	_ZN7NCrypto5NSha110CContext325FinalEPj,@function
_ZN7NCrypto5NSha110CContext325FinalEPj: # @_ZN7NCrypto5NSha110CContext325FinalEPj
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
	move	$fp, $a0
	ld.wu	$s2, $a0, 32
	move	$s0, $a1
	ld.d	$s3, $a0, 24
	addi.d	$s1, $a0, 36
	slli.d	$a1, $s2, 2
	lu12i.w	$a2, -524288
	lu32i.d	$a2, 0
	addi.w	$a0, $s2, 1
	ori	$s4, $zero, 14
	stx.w	$a2, $s1, $a1
	bne	$a0, $s4, .LBB7_3
.LBB7_1:                                # %while.end
	slli.d	$a0, $s3, 9
	slli.d	$a1, $s2, 5
	add.d	$a0, $a1, $a0
	rotri.d	$a0, $a0, 32
	st.d	$a0, $fp, 92
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.LCPI7_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI7_0)
	vst	$vr0, $fp, 0
	lu12i.w	$a0, -246482
	ori	$a0, $a0, 496
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 16
	st.d	$zero, $fp, 24
	st.w	$zero, $fp, 32
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
	.p2align	4, , 16
.LBB7_2:                                # %if.end
                                        #   in Loop: Header=BB7_3 Depth=1
	slli.d	$a1, $s5, 2
	addi.d	$a0, $s5, 1
	stx.w	$zero, $s1, $a1
	beq	$a0, $s4, .LBB7_1
.LBB7_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	andi	$s5, $a0, 15
	bnez	$s5, .LBB7_2
# %bb.4:                                # %if.then
                                        #   in Loop: Header=BB7_3 Depth=1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $fp
	move	$a3, $zero
	pcaddu18i	$ra, %call36(_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	addi.d	$a0, $a0, 1
	st.d	$a0, $fp, 24
	b	.LBB7_2
.Lfunc_end7:
	.size	_ZN7NCrypto5NSha110CContext325FinalEPj, .Lfunc_end7-_ZN7NCrypto5NSha110CContext325FinalEPj
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
