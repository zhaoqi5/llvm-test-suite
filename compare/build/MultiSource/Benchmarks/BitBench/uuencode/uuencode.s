	.file	"uuencode.c"
	.text
	.globl	encode_char                     # -- Begin function encode_char
	.p2align	5
	.type	encode_char,@function
encode_char:                            # @encode_char
# %bb.0:                                # %entry
	andi	$a0, $a0, 63
	addi.d	$a0, $a0, 32
	ret
.Lfunc_end0:
	.size	encode_char, .Lfunc_end0-encode_char
                                        # -- End function
	.globl	encode_line                     # -- Begin function encode_line
	.p2align	5
	.type	encode_line,@function
encode_line:                            # @encode_line
# %bb.0:                                # %entry
	andi	$a4, $a2, 63
	addi.d	$a5, $a4, 32
	ori	$a4, $zero, 1
	st.b	$a5, $a3, 0
	blt	$a2, $a4, .LBB1_16
# %bb.1:                                # %for.body.preheader
	addi.d	$sp, $sp, -144
	fst.d	$fs0, $sp, 136                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 128                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 120                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 112                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 104                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 96                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 88                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 80                   # 8-byte Folded Spill
	bstrpick.d	$a4, $a2, 31, 0
	lu12i.w	$a5, -349526
	ori	$a5, $a5, 2731
	mul.d	$a6, $a2, $a5
	lu32i.d	$a5, 0
	mul.d	$a4, $a4, $a5
	srli.d	$a4, $a4, 33
	addi.w	$a5, $a6, -1
	sltu	$a6, $a4, $a5
	masknez	$a5, $a5, $a6
	maskeqz	$a4, $a4, $a6
	or	$a6, $a4, $a5
	ori	$a5, $zero, 32
	ori	$a4, $zero, 1
	bltu	$a6, $a5, .LBB1_7
# %bb.2:                                # %vector.memcheck
	addi.d	$a7, $a3, 1
	add.d	$a5, $a0, $a1
	alsl.d	$t0, $a6, $a6, 1
	add.d	$t0, $a5, $t0
	addi.d	$t0, $t0, 3
	bgeu	$a7, $t0, .LBB1_4
# %bb.3:                                # %vector.memcheck
	alsl.d	$a7, $a6, $a3, 2
	addi.d	$a7, $a7, 5
	bltu	$a5, $a7, .LBB1_7
.LBB1_4:                                # %vector.ph
	move	$a5, $zero
	addi.w	$a4, $a6, 1
	andi	$a6, $a4, 31
	sltui	$a7, $a6, 1
	masknez	$a6, $a6, $a7
	ori	$t0, $zero, 32
	maskeqz	$a7, $t0, $a7
	or	$a6, $a7, $a6
	sub.d	$a6, $a4, $a6
	alsl.d	$a4, $a6, $a6, 1
	add.d	$a7, $a4, $a1
	sub.w	$a2, $a2, $a4
	slli.d	$a4, $a6, 2
	addi.d	$a4, $a4, 1
	xvrepli.b	$xr0, 32
	xvst	$xr0, $sp, 48                   # 32-byte Folded Spill
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	alsl.d	$t0, $a5, $a5, 1
	add.d	$t2, $t0, $a1
	ldx.b	$t1, $a0, $t2
	add.d	$t0, $a0, $t2
	ld.b	$t3, $t0, 3
	ld.b	$t4, $t0, 6
	vinsgr2vr.b	$vr1, $t1, 0
	ld.b	$t1, $t0, 9
	xvreplgr2vr.b	$xr2, $t3
	ld.b	$t3, $t0, 12
	xvreplgr2vr.b	$xr3, $t4
	ld.b	$t4, $t0, 15
	xvreplgr2vr.b	$xr4, $t1
	ld.b	$t1, $t0, 18
	xvreplgr2vr.b	$xr5, $t3
	ld.b	$t3, $t0, 21
	xvreplgr2vr.b	$xr6, $t4
	ld.b	$t4, $t0, 24
	xvreplgr2vr.b	$xr7, $t1
	ld.b	$t1, $t0, 27
	xvreplgr2vr.b	$xr8, $t3
	ld.b	$t3, $t0, 30
	xvreplgr2vr.b	$xr9, $t4
	ld.b	$t4, $t0, 33
	xvreplgr2vr.b	$xr10, $t1
	ld.b	$t1, $t0, 36
	xvreplgr2vr.b	$xr11, $t3
	ld.b	$t3, $t0, 39
	xvreplgr2vr.b	$xr12, $t4
	ld.b	$t4, $t0, 42
	xvreplgr2vr.b	$xr13, $t1
	ld.b	$t1, $t0, 45
	xvreplgr2vr.b	$xr14, $t3
	ld.b	$t3, $t0, 48
	xvreplgr2vr.b	$xr15, $t4
	ld.b	$t4, $t0, 51
	xvreplgr2vr.b	$xr16, $t1
	ld.b	$t1, $t0, 54
	xvreplgr2vr.b	$xr17, $t3
	ld.b	$t3, $t0, 57
	xvreplgr2vr.b	$xr18, $t4
	ld.b	$t4, $t0, 60
	xvreplgr2vr.b	$xr19, $t1
	ld.b	$t1, $t0, 63
	xvreplgr2vr.b	$xr20, $t3
	ld.b	$t3, $t0, 66
	xvreplgr2vr.b	$xr21, $t4
	ld.b	$t4, $t0, 69
	xvreplgr2vr.b	$xr22, $t1
	ld.b	$t1, $t0, 72
	xvreplgr2vr.b	$xr23, $t3
	ld.b	$t3, $t0, 75
	xvreplgr2vr.b	$xr24, $t4
	ld.b	$t4, $t0, 78
	xvreplgr2vr.b	$xr25, $t1
	ld.b	$t1, $t0, 81
	xvreplgr2vr.b	$xr26, $t3
	ld.b	$t3, $t0, 84
	xvreplgr2vr.b	$xr27, $t4
	ld.b	$t4, $t0, 87
	xvreplgr2vr.b	$xr28, $t1
	xvreplgr2vr.b	$xr29, $t3
	ld.b	$t1, $t0, 90
	xvreplgr2vr.b	$xr30, $t4
	ld.b	$t3, $t0, 93
	xvpermi.q	$xr2, $xr1, 18
	xvextrins.b	$xr1, $xr2, 17
	xvpermi.q	$xr3, $xr1, 18
	xvextrins.b	$xr1, $xr3, 34
	xvpermi.q	$xr4, $xr1, 18
	xvextrins.b	$xr1, $xr4, 51
	xvpermi.q	$xr5, $xr1, 18
	xvextrins.b	$xr1, $xr5, 68
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 85
	xvpermi.q	$xr7, $xr1, 18
	xvextrins.b	$xr1, $xr7, 102
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 119
	xvpermi.q	$xr9, $xr1, 18
	xvextrins.b	$xr1, $xr9, 136
	xvpermi.q	$xr10, $xr1, 18
	xvextrins.b	$xr1, $xr10, 153
	xvpermi.q	$xr11, $xr1, 18
	xvextrins.b	$xr1, $xr11, 170
	xvpermi.q	$xr12, $xr1, 18
	xvextrins.b	$xr1, $xr12, 187
	xvpermi.q	$xr13, $xr1, 18
	xvextrins.b	$xr1, $xr13, 204
	xvpermi.q	$xr14, $xr1, 18
	xvextrins.b	$xr1, $xr14, 221
	xvpermi.q	$xr15, $xr1, 18
	xvextrins.b	$xr1, $xr15, 238
	xvpermi.q	$xr16, $xr1, 18
	xvextrins.b	$xr1, $xr16, 255
	xvpermi.q	$xr17, $xr1, 48
	xvextrins.b	$xr1, $xr17, 0
	xvpermi.q	$xr18, $xr1, 48
	xvextrins.b	$xr1, $xr18, 17
	xvpermi.q	$xr19, $xr1, 48
	xvextrins.b	$xr1, $xr19, 34
	xvpermi.q	$xr20, $xr1, 48
	xvextrins.b	$xr1, $xr20, 51
	xvpermi.q	$xr21, $xr1, 48
	xvextrins.b	$xr1, $xr21, 68
	xvpermi.q	$xr22, $xr1, 48
	xvextrins.b	$xr1, $xr22, 85
	xvpermi.q	$xr23, $xr1, 48
	xvextrins.b	$xr1, $xr23, 102
	xvpermi.q	$xr24, $xr1, 48
	xvextrins.b	$xr1, $xr24, 119
	xvpermi.q	$xr25, $xr1, 48
	xvextrins.b	$xr1, $xr25, 136
	xvpermi.q	$xr26, $xr1, 48
	xvextrins.b	$xr1, $xr26, 153
	xvpermi.q	$xr27, $xr1, 48
	xvextrins.b	$xr1, $xr27, 170
	xvpermi.q	$xr28, $xr1, 48
	xvextrins.b	$xr1, $xr28, 187
	xvpermi.q	$xr29, $xr1, 48
	xvextrins.b	$xr1, $xr29, 204
	xvpermi.q	$xr30, $xr1, 48
	xvextrins.b	$xr1, $xr30, 221
	xvreplgr2vr.b	$xr2, $t1
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 238
	xvreplgr2vr.b	$xr2, $t3
	xvpermi.q	$xr2, $xr1, 48
	xvextrins.b	$xr1, $xr2, 255
	xvsrli.b	$xr1, $xr1, 2
	xvld	$xr0, $sp, 48                   # 32-byte Folded Reload
	xvadd.b	$xr2, $xr1, $xr0
	alsl.d	$t1, $a5, $a3, 2
	xvstelm.b	$xr2, $t1, 1, 0
	xvstelm.b	$xr2, $t1, 5, 1
	xvstelm.b	$xr2, $t1, 9, 2
	xvstelm.b	$xr2, $t1, 13, 3
	xvstelm.b	$xr2, $t1, 17, 4
	xvstelm.b	$xr2, $t1, 21, 5
	xvstelm.b	$xr2, $t1, 25, 6
	xvstelm.b	$xr2, $t1, 29, 7
	xvstelm.b	$xr2, $t1, 33, 8
	xvstelm.b	$xr2, $t1, 37, 9
	xvstelm.b	$xr2, $t1, 41, 10
	xvstelm.b	$xr2, $t1, 45, 11
	xvstelm.b	$xr2, $t1, 49, 12
	xvstelm.b	$xr2, $t1, 53, 13
	xvstelm.b	$xr2, $t1, 57, 14
	xvstelm.b	$xr2, $t1, 61, 15
	ldx.b	$t2, $a0, $t2
	xvstelm.b	$xr2, $t1, 65, 16
	ld.b	$t3, $t0, 3
	xvstelm.b	$xr2, $t1, 69, 17
	vinsgr2vr.b	$vr1, $t2, 0
	ld.b	$t2, $t0, 6
	xvreplgr2vr.b	$xr4, $t3
	ld.b	$t3, $t0, 9
	xvstelm.b	$xr2, $t1, 73, 18
	xvreplgr2vr.b	$xr6, $t2
	ld.b	$t2, $t0, 12
	xvreplgr2vr.b	$xr7, $t3
	ld.b	$t3, $t0, 15
	xvstelm.b	$xr2, $t1, 77, 19
	xvreplgr2vr.b	$xr8, $t2
	ld.b	$t2, $t0, 18
	xvreplgr2vr.b	$xr9, $t3
	ld.b	$t3, $t0, 21
	xvstelm.b	$xr2, $t1, 81, 20
	xvreplgr2vr.b	$xr10, $t2
	ld.b	$t2, $t0, 24
	xvreplgr2vr.b	$xr12, $t3
	ld.b	$t3, $t0, 27
	xvstelm.b	$xr2, $t1, 85, 21
	xvreplgr2vr.b	$xr13, $t2
	ld.b	$t2, $t0, 30
	xvreplgr2vr.b	$xr14, $t3
	ld.b	$t3, $t0, 33
	xvstelm.b	$xr2, $t1, 89, 22
	xvreplgr2vr.b	$xr16, $t2
	ld.b	$t2, $t0, 36
	xvreplgr2vr.b	$xr17, $t3
	ld.b	$t3, $t0, 39
	xvstelm.b	$xr2, $t1, 93, 23
	xvreplgr2vr.b	$xr18, $t2
	ld.b	$t2, $t0, 42
	xvreplgr2vr.b	$xr19, $t3
	ld.b	$t3, $t0, 45
	xvstelm.b	$xr2, $t1, 97, 24
	xvreplgr2vr.b	$xr21, $t2
	ld.b	$t2, $t0, 48
	xvreplgr2vr.b	$xr22, $t3
	ld.b	$t3, $t0, 51
	xvstelm.b	$xr2, $t1, 101, 25
	xvreplgr2vr.b	$xr23, $t2
	ld.b	$t2, $t0, 54
	xvreplgr2vr.b	$xr24, $t3
	ld.b	$t3, $t0, 57
	xvstelm.b	$xr2, $t1, 105, 26
	xvreplgr2vr.b	$xr25, $t2
	ld.b	$t2, $t0, 60
	xvreplgr2vr.b	$xr26, $t3
	ld.b	$t3, $t0, 63
	xvstelm.b	$xr2, $t1, 109, 27
	xvreplgr2vr.b	$xr27, $t2
	ld.b	$t2, $t0, 66
	xvreplgr2vr.b	$xr28, $t3
	ld.b	$t3, $t0, 69
	xvstelm.b	$xr2, $t1, 113, 28
	xvreplgr2vr.b	$xr29, $t2
	ld.b	$t2, $t0, 72
	xvreplgr2vr.b	$xr30, $t3
	ld.b	$t3, $t0, 75
	xvstelm.b	$xr2, $t1, 117, 29
	xvreplgr2vr.b	$xr31, $t2
	ld.b	$t2, $t0, 78
	xvreplgr2vr.b	$xr20, $t3
	ld.b	$t3, $t0, 81
	xvstelm.b	$xr2, $t1, 121, 30
	xvreplgr2vr.b	$xr15, $t2
	ld.b	$t2, $t0, 84
	xvreplgr2vr.b	$xr11, $t3
	ld.b	$t4, $t0, 87
	xvstelm.b	$xr2, $t1, 125, 31
	xvreplgr2vr.b	$xr5, $t2
	ld.b	$t3, $t0, 90
	xvreplgr2vr.b	$xr3, $t4
	ld.b	$t2, $t0, 93
	xvpermi.q	$xr4, $xr1, 18
	xvextrins.b	$xr1, $xr4, 17
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 34
	xvpermi.q	$xr7, $xr1, 18
	xvextrins.b	$xr1, $xr7, 51
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 68
	xvpermi.q	$xr9, $xr1, 18
	xvextrins.b	$xr1, $xr9, 85
	xvpermi.q	$xr10, $xr1, 18
	xvextrins.b	$xr1, $xr10, 102
	xvpermi.q	$xr12, $xr1, 18
	xvextrins.b	$xr1, $xr12, 119
	xvpermi.q	$xr13, $xr1, 18
	xvextrins.b	$xr1, $xr13, 136
	xvpermi.q	$xr14, $xr1, 18
	xvextrins.b	$xr1, $xr14, 153
	xvpermi.q	$xr16, $xr1, 18
	xvextrins.b	$xr1, $xr16, 170
	xvpermi.q	$xr17, $xr1, 18
	xvextrins.b	$xr1, $xr17, 187
	xvpermi.q	$xr18, $xr1, 18
	xvextrins.b	$xr1, $xr18, 204
	xvpermi.q	$xr19, $xr1, 18
	xvextrins.b	$xr1, $xr19, 221
	xvpermi.q	$xr21, $xr1, 18
	xvextrins.b	$xr1, $xr21, 238
	xvpermi.q	$xr22, $xr1, 18
	xvextrins.b	$xr1, $xr22, 255
	xvpermi.q	$xr23, $xr1, 48
	xvextrins.b	$xr1, $xr23, 0
	xvpermi.q	$xr24, $xr1, 48
	xvextrins.b	$xr1, $xr24, 17
	xvpermi.q	$xr25, $xr1, 48
	xvextrins.b	$xr1, $xr25, 34
	xvpermi.q	$xr26, $xr1, 48
	xvextrins.b	$xr1, $xr26, 51
	xvpermi.q	$xr27, $xr1, 48
	xvextrins.b	$xr1, $xr27, 68
	xvpermi.q	$xr28, $xr1, 48
	xvextrins.b	$xr1, $xr28, 85
	xvpermi.q	$xr29, $xr1, 48
	xvextrins.b	$xr1, $xr29, 102
	xvpermi.q	$xr30, $xr1, 48
	xvextrins.b	$xr1, $xr30, 119
	xvpermi.q	$xr31, $xr1, 48
	xvextrins.b	$xr1, $xr31, 136
	xvreplgr2vr.b	$xr7, $t3
	ld.b	$t3, $t0, 1
	xvreplgr2vr.b	$xr4, $t2
	ld.b	$t2, $t0, 4
	xvpermi.q	$xr20, $xr1, 48
	vinsgr2vr.b	$vr2, $t3, 0
	ld.b	$t3, $t0, 7
	xvreplgr2vr.b	$xr6, $t2
	ld.b	$t2, $t0, 10
	xvextrins.b	$xr1, $xr20, 153
	xvreplgr2vr.b	$xr8, $t3
	ld.b	$t3, $t0, 13
	xvreplgr2vr.b	$xr9, $t2
	ld.b	$t2, $t0, 16
	xvpermi.q	$xr15, $xr1, 48
	xvreplgr2vr.b	$xr10, $t3
	ld.b	$t3, $t0, 19
	xvreplgr2vr.b	$xr12, $t2
	ld.b	$t2, $t0, 22
	xvextrins.b	$xr1, $xr15, 170
	xvreplgr2vr.b	$xr13, $t3
	ld.b	$t3, $t0, 25
	xvreplgr2vr.b	$xr14, $t2
	ld.b	$t2, $t0, 28
	xvpermi.q	$xr11, $xr1, 48
	xvreplgr2vr.b	$xr15, $t3
	ld.b	$t3, $t0, 31
	xvreplgr2vr.b	$xr16, $t2
	ld.b	$t2, $t0, 34
	xvextrins.b	$xr1, $xr11, 187
	xvreplgr2vr.b	$xr11, $t3
	ld.b	$t3, $t0, 37
	xvreplgr2vr.b	$xr17, $t2
	ld.b	$t2, $t0, 40
	xvpermi.q	$xr5, $xr1, 48
	xvreplgr2vr.b	$xr18, $t3
	ld.b	$t3, $t0, 43
	xvreplgr2vr.b	$xr19, $t2
	ld.b	$t2, $t0, 46
	xvextrins.b	$xr1, $xr5, 204
	xvreplgr2vr.b	$xr5, $t3
	ld.b	$t3, $t0, 49
	xvreplgr2vr.b	$xr20, $t2
	ld.b	$t2, $t0, 52
	xvpermi.q	$xr3, $xr1, 48
	xvreplgr2vr.b	$xr21, $t3
	ld.b	$t3, $t0, 55
	xvreplgr2vr.b	$xr22, $t2
	ld.b	$t2, $t0, 58
	xvextrins.b	$xr1, $xr3, 221
	xvreplgr2vr.b	$xr3, $t3
	ld.b	$t3, $t0, 61
	xvreplgr2vr.b	$xr23, $t2
	ld.b	$t2, $t0, 64
	xvpermi.q	$xr7, $xr1, 48
	xvreplgr2vr.b	$xr24, $t3
	ld.b	$t3, $t0, 67
	xvreplgr2vr.b	$xr25, $t2
	ld.b	$t2, $t0, 70
	xvextrins.b	$xr1, $xr7, 238
	xvreplgr2vr.b	$xr7, $t3
	ld.b	$t3, $t0, 73
	xvreplgr2vr.b	$xr26, $t2
	ld.b	$t2, $t0, 76
	xvpermi.q	$xr4, $xr1, 48
	xvreplgr2vr.b	$xr27, $t3
	ld.b	$t3, $t0, 79
	xvreplgr2vr.b	$xr28, $t2
	ld.b	$t2, $t0, 82
	xvextrins.b	$xr1, $xr4, 255
	xvreplgr2vr.b	$xr4, $t3
	ld.b	$t3, $t0, 85
	xvreplgr2vr.b	$xr29, $t2
	ld.b	$t4, $t0, 88
	xvslli.b	$xr1, $xr1, 4
	xvreplgr2vr.b	$xr30, $t3
	ld.b	$t2, $t0, 91
	xvreplgr2vr.b	$xr31, $t4
	ld.b	$t3, $t0, 94
	xvpermi.q	$xr6, $xr2, 18
	xvextrins.b	$xr2, $xr6, 17
	xvpermi.q	$xr8, $xr2, 18
	xvextrins.b	$xr2, $xr8, 34
	xvpermi.q	$xr9, $xr2, 18
	xvextrins.b	$xr2, $xr9, 51
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 68
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 85
	xvpermi.q	$xr13, $xr2, 18
	xvextrins.b	$xr2, $xr13, 102
	xvpermi.q	$xr14, $xr2, 18
	xvextrins.b	$xr2, $xr14, 119
	xvpermi.q	$xr15, $xr2, 18
	xvextrins.b	$xr2, $xr15, 136
	xvpermi.q	$xr16, $xr2, 18
	xvextrins.b	$xr2, $xr16, 153
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 170
	xvpermi.q	$xr17, $xr2, 18
	xvextrins.b	$xr2, $xr17, 187
	xvpermi.q	$xr18, $xr2, 18
	xvextrins.b	$xr2, $xr18, 204
	xvpermi.q	$xr19, $xr2, 18
	xvextrins.b	$xr2, $xr19, 221
	xvpermi.q	$xr5, $xr2, 18
	xvextrins.b	$xr2, $xr5, 238
	xvpermi.q	$xr20, $xr2, 18
	xvextrins.b	$xr2, $xr20, 255
	xvpermi.q	$xr21, $xr2, 48
	xvextrins.b	$xr2, $xr21, 0
	xvpermi.q	$xr22, $xr2, 48
	xvextrins.b	$xr2, $xr22, 17
	xvpermi.q	$xr3, $xr2, 48
	xvextrins.b	$xr2, $xr3, 34
	xvpermi.q	$xr23, $xr2, 48
	xvextrins.b	$xr2, $xr23, 51
	xvpermi.q	$xr24, $xr2, 48
	xvextrins.b	$xr2, $xr24, 68
	xvpermi.q	$xr25, $xr2, 48
	xvextrins.b	$xr2, $xr25, 85
	xvpermi.q	$xr7, $xr2, 48
	xvextrins.b	$xr2, $xr7, 102
	xvpermi.q	$xr26, $xr2, 48
	xvextrins.b	$xr2, $xr26, 119
	xvpermi.q	$xr27, $xr2, 48
	xvextrins.b	$xr2, $xr27, 136
	xvpermi.q	$xr28, $xr2, 48
	xvextrins.b	$xr2, $xr28, 153
	xvpermi.q	$xr4, $xr2, 48
	xvextrins.b	$xr2, $xr4, 170
	xvpermi.q	$xr29, $xr2, 48
	xvextrins.b	$xr2, $xr29, 187
	xvpermi.q	$xr30, $xr2, 48
	xvextrins.b	$xr2, $xr30, 204
	xvpermi.q	$xr31, $xr2, 48
	xvextrins.b	$xr2, $xr31, 221
	xvreplgr2vr.b	$xr3, $t2
	xvpermi.q	$xr3, $xr2, 48
	xvextrins.b	$xr2, $xr3, 238
	xvreplgr2vr.b	$xr3, $t3
	xvpermi.q	$xr3, $xr2, 48
	xvextrins.b	$xr2, $xr3, 255
	xvsrai.b	$xr2, $xr2, 4
	xvor.v	$xr1, $xr2, $xr1
	xvandi.b	$xr1, $xr1, 63
	xvadd.b	$xr2, $xr1, $xr0
	xvstelm.b	$xr2, $t1, 2, 0
	xvstelm.b	$xr2, $t1, 6, 1
	xvstelm.b	$xr2, $t1, 10, 2
	xvstelm.b	$xr2, $t1, 14, 3
	xvstelm.b	$xr2, $t1, 18, 4
	xvstelm.b	$xr2, $t1, 22, 5
	xvstelm.b	$xr2, $t1, 26, 6
	xvstelm.b	$xr2, $t1, 30, 7
	xvstelm.b	$xr2, $t1, 34, 8
	xvstelm.b	$xr2, $t1, 38, 9
	xvstelm.b	$xr2, $t1, 42, 10
	xvstelm.b	$xr2, $t1, 46, 11
	xvstelm.b	$xr2, $t1, 50, 12
	xvstelm.b	$xr2, $t1, 54, 13
	xvstelm.b	$xr2, $t1, 58, 14
	xvstelm.b	$xr2, $t1, 62, 15
	ld.b	$t2, $t0, 1
	xvstelm.b	$xr2, $t1, 66, 16
	ld.b	$t3, $t0, 4
	xvstelm.b	$xr2, $t1, 70, 17
	vinsgr2vr.b	$vr1, $t2, 0
	ld.b	$t2, $t0, 7
	xvreplgr2vr.b	$xr3, $t3
	ld.b	$t3, $t0, 10
	xvstelm.b	$xr2, $t1, 74, 18
	xvreplgr2vr.b	$xr4, $t2
	ld.b	$t2, $t0, 13
	xvreplgr2vr.b	$xr5, $t3
	ld.b	$t3, $t0, 16
	xvstelm.b	$xr2, $t1, 78, 19
	xvreplgr2vr.b	$xr6, $t2
	ld.b	$t2, $t0, 19
	xvreplgr2vr.b	$xr7, $t3
	ld.b	$t3, $t0, 22
	xvstelm.b	$xr2, $t1, 82, 20
	xvreplgr2vr.b	$xr8, $t2
	ld.b	$t2, $t0, 25
	xvreplgr2vr.b	$xr9, $t3
	ld.b	$t3, $t0, 28
	xvstelm.b	$xr2, $t1, 86, 21
	xvreplgr2vr.b	$xr12, $t2
	ld.b	$t2, $t0, 31
	xvreplgr2vr.b	$xr13, $t3
	ld.b	$t3, $t0, 34
	xvstelm.b	$xr2, $t1, 90, 22
	xvreplgr2vr.b	$xr14, $t2
	ld.b	$t2, $t0, 37
	xvreplgr2vr.b	$xr16, $t3
	ld.b	$t3, $t0, 40
	xvstelm.b	$xr2, $t1, 94, 23
	xvreplgr2vr.b	$xr18, $t2
	ld.b	$t2, $t0, 43
	xvreplgr2vr.b	$xr20, $t3
	ld.b	$t3, $t0, 46
	xvstelm.b	$xr2, $t1, 98, 24
	xvreplgr2vr.b	$xr21, $t2
	ld.b	$t2, $t0, 49
	xvreplgr2vr.b	$xr22, $t3
	ld.b	$t3, $t0, 52
	xvstelm.b	$xr2, $t1, 102, 25
	xvreplgr2vr.b	$xr23, $t2
	ld.b	$t2, $t0, 55
	xvreplgr2vr.b	$xr24, $t3
	ld.b	$t3, $t0, 58
	xvstelm.b	$xr2, $t1, 106, 26
	xvreplgr2vr.b	$xr25, $t2
	ld.b	$t2, $t0, 61
	xvreplgr2vr.b	$xr26, $t3
	ld.b	$t3, $t0, 64
	xvstelm.b	$xr2, $t1, 110, 27
	xvreplgr2vr.b	$xr27, $t2
	ld.b	$t2, $t0, 67
	xvreplgr2vr.b	$xr29, $t3
	ld.b	$t3, $t0, 70
	xvstelm.b	$xr2, $t1, 114, 28
	xvreplgr2vr.b	$xr30, $t2
	ld.b	$t2, $t0, 73
	xvreplgr2vr.b	$xr31, $t3
	ld.b	$t3, $t0, 76
	xvstelm.b	$xr2, $t1, 118, 29
	xvreplgr2vr.b	$xr28, $t2
	ld.b	$t2, $t0, 79
	xvreplgr2vr.b	$xr17, $t3
	ld.b	$t3, $t0, 82
	xvstelm.b	$xr2, $t1, 122, 30
	xvreplgr2vr.b	$xr10, $t2
	ld.b	$t2, $t0, 85
	xvreplgr2vr.b	$xr11, $t3
	ld.b	$t4, $t0, 88
	xvstelm.b	$xr2, $t1, 126, 31
	xvreplgr2vr.b	$xr15, $t2
	ld.b	$t3, $t0, 91
	xvreplgr2vr.b	$xr19, $t4
	ld.b	$t2, $t0, 94
	xvpermi.q	$xr3, $xr1, 18
	xvextrins.b	$xr1, $xr3, 17
	xvpermi.q	$xr4, $xr1, 18
	xvextrins.b	$xr1, $xr4, 34
	xvpermi.q	$xr5, $xr1, 18
	xvextrins.b	$xr1, $xr5, 51
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 68
	xvpermi.q	$xr7, $xr1, 18
	xvextrins.b	$xr1, $xr7, 85
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 102
	xvpermi.q	$xr9, $xr1, 18
	xvextrins.b	$xr1, $xr9, 119
	xvpermi.q	$xr12, $xr1, 18
	xvextrins.b	$xr1, $xr12, 136
	xvpermi.q	$xr13, $xr1, 18
	xvextrins.b	$xr1, $xr13, 153
	xvpermi.q	$xr14, $xr1, 18
	xvextrins.b	$xr1, $xr14, 170
	xvpermi.q	$xr16, $xr1, 18
	xvextrins.b	$xr1, $xr16, 187
	xvpermi.q	$xr18, $xr1, 18
	xvextrins.b	$xr1, $xr18, 204
	xvpermi.q	$xr20, $xr1, 18
	xvextrins.b	$xr1, $xr20, 221
	xvpermi.q	$xr21, $xr1, 18
	xvextrins.b	$xr1, $xr21, 238
	xvpermi.q	$xr22, $xr1, 18
	xvextrins.b	$xr1, $xr22, 255
	xvpermi.q	$xr23, $xr1, 48
	xvextrins.b	$xr1, $xr23, 0
	xvpermi.q	$xr24, $xr1, 48
	xvextrins.b	$xr1, $xr24, 17
	xvpermi.q	$xr25, $xr1, 48
	xvextrins.b	$xr1, $xr25, 34
	xvpermi.q	$xr26, $xr1, 48
	xvextrins.b	$xr1, $xr26, 51
	xvpermi.q	$xr27, $xr1, 48
	xvextrins.b	$xr1, $xr27, 68
	xvpermi.q	$xr29, $xr1, 48
	xvextrins.b	$xr1, $xr29, 85
	xvpermi.q	$xr30, $xr1, 48
	xvextrins.b	$xr1, $xr30, 102
	xvpermi.q	$xr31, $xr1, 48
	xvextrins.b	$xr1, $xr31, 119
	xvpermi.q	$xr28, $xr1, 48
	xvreplgr2vr.b	$xr23, $t3
	ld.b	$t3, $t0, 2
	xvextrins.b	$xr1, $xr28, 136
	xvreplgr2vr.b	$xr27, $t2
	ld.b	$t2, $t0, 5
	vinsgr2vr.b	$vr2, $t3, 0
	ld.b	$t3, $t0, 8
	xvpermi.q	$xr17, $xr1, 48
	xvreplgr2vr.b	$xr29, $t2
	ld.b	$t2, $t0, 11
	xvreplgr2vr.b	$xr31, $t3
	ld.b	$t3, $t0, 14
	xvextrins.b	$xr1, $xr17, 153
	xvreplgr2vr.b	$xr4, $t2
	ld.b	$t2, $t0, 17
	xvreplgr2vr.b	$xr0, $t3
	xvst	$xr0, $sp, 16                   # 32-byte Folded Spill
	ld.b	$t3, $t0, 20
	xvpermi.q	$xr10, $xr1, 48
	xvreplgr2vr.b	$xr5, $t2
	ld.b	$t2, $t0, 23
	xvreplgr2vr.b	$xr6, $t3
	ld.b	$t3, $t0, 26
	xvextrins.b	$xr1, $xr10, 170
	xvreplgr2vr.b	$xr7, $t2
	ld.b	$t2, $t0, 29
	xvreplgr2vr.b	$xr8, $t3
	ld.b	$t3, $t0, 32
	xvpermi.q	$xr11, $xr1, 48
	xvreplgr2vr.b	$xr9, $t2
	ld.b	$t2, $t0, 35
	xvreplgr2vr.b	$xr10, $t3
	ld.b	$t3, $t0, 38
	xvextrins.b	$xr1, $xr11, 187
	xvreplgr2vr.b	$xr11, $t2
	ld.b	$t2, $t0, 41
	xvreplgr2vr.b	$xr12, $t3
	ld.b	$t3, $t0, 44
	xvpermi.q	$xr15, $xr1, 48
	xvreplgr2vr.b	$xr13, $t2
	ld.b	$t2, $t0, 47
	xvreplgr2vr.b	$xr14, $t3
	ld.b	$t3, $t0, 50
	xvextrins.b	$xr1, $xr15, 204
	xvreplgr2vr.b	$xr15, $t2
	ld.b	$t2, $t0, 53
	xvreplgr2vr.b	$xr16, $t3
	ld.b	$t3, $t0, 56
	xvpermi.q	$xr19, $xr1, 48
	xvreplgr2vr.b	$xr17, $t2
	ld.b	$t2, $t0, 59
	xvreplgr2vr.b	$xr18, $t3
	ld.b	$t3, $t0, 62
	xvextrins.b	$xr1, $xr19, 221
	xvreplgr2vr.b	$xr19, $t2
	ld.b	$t2, $t0, 65
	xvreplgr2vr.b	$xr20, $t3
	ld.b	$t3, $t0, 68
	xvpermi.q	$xr23, $xr1, 48
	xvreplgr2vr.b	$xr21, $t2
	ld.b	$t2, $t0, 71
	xvreplgr2vr.b	$xr22, $t3
	ld.b	$t3, $t0, 74
	xvextrins.b	$xr1, $xr23, 238
	xvreplgr2vr.b	$xr23, $t2
	ld.b	$t2, $t0, 77
	xvreplgr2vr.b	$xr24, $t3
	ld.b	$t3, $t0, 80
	xvpermi.q	$xr27, $xr1, 48
	xvreplgr2vr.b	$xr25, $t2
	ld.b	$t2, $t0, 83
	xvreplgr2vr.b	$xr26, $t3
	ld.b	$t3, $t0, 86
	xvextrins.b	$xr1, $xr27, 255
	xvreplgr2vr.b	$xr27, $t2
	ld.b	$t4, $t0, 89
	xvreplgr2vr.b	$xr28, $t3
	ld.b	$t2, $t0, 92
	xvpermi.q	$xr29, $xr2, 18
	xvextrins.b	$xr2, $xr29, 17
	xvpermi.q	$xr31, $xr2, 18
	xvreplgr2vr.b	$xr29, $t4
	ld.b	$t3, $t0, 2
	xvreplgr2vr.b	$xr30, $t2
	ld.b	$t2, $t0, 5
	xvextrins.b	$xr2, $xr31, 34
	vinsgr2vr.b	$vr31, $t3, 0
	ld.b	$t3, $t0, 8
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 11
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 17
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 14
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 34
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 17
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 51
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 20
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 68
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 23
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 85
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 26
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 102
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 29
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 119
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 32
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 136
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 35
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 153
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 38
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 170
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 41
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 187
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 44
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 204
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 47
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 221
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 50
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 238
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 53
	xvpermi.q	$xr0, $xr31, 18
	xvextrins.b	$xr31, $xr0, 255
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 56
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 0
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 59
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 17
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 62
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 34
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 65
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 51
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 68
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 68
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 71
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 85
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 74
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 102
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 77
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 119
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 80
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 136
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 83
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 153
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 86
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 170
	xvreplgr2vr.b	$xr0, $t2
	ld.b	$t2, $t0, 89
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 187
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t3, $t0, 92
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 204
	xvreplgr2vr.b	$xr0, $t2
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 221
	xvreplgr2vr.b	$xr0, $t3
	ld.b	$t2, $t0, 95
	ld.b	$t0, $t0, 95
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 238
	xvreplgr2vr.b	$xr0, $t2
	xvpermi.q	$xr0, $xr31, 48
	xvextrins.b	$xr31, $xr0, 255
	xvandi.b	$xr0, $xr31, 63
	xvld	$xr3, $sp, 48                   # 32-byte Folded Reload
	xvadd.b	$xr31, $xr0, $xr3
	xvpermi.d	$xr0, $xr31, 14
	vpickve2gr.b	$t2, $vr0, 15
	xvreplgr2vr.b	$xr0, $t0
	st.b	$t2, $t1, 128
	xvpermi.q	$xr4, $xr2, 18
	xvextrins.b	$xr2, $xr4, 51
	xvld	$xr4, $sp, 16                   # 32-byte Folded Reload
	xvpermi.q	$xr4, $xr2, 18
	xvextrins.b	$xr2, $xr4, 68
	xvpermi.q	$xr5, $xr2, 18
	xvextrins.b	$xr2, $xr5, 85
	xvpermi.q	$xr6, $xr2, 18
	xvextrins.b	$xr2, $xr6, 102
	xvpermi.q	$xr7, $xr2, 18
	xvextrins.b	$xr2, $xr7, 119
	xvpermi.q	$xr8, $xr2, 18
	xvextrins.b	$xr2, $xr8, 136
	xvpermi.q	$xr9, $xr2, 18
	xvextrins.b	$xr2, $xr9, 153
	xvpermi.q	$xr10, $xr2, 18
	xvextrins.b	$xr2, $xr10, 170
	xvpermi.q	$xr11, $xr2, 18
	xvextrins.b	$xr2, $xr11, 187
	xvpermi.q	$xr12, $xr2, 18
	xvextrins.b	$xr2, $xr12, 204
	xvpermi.q	$xr13, $xr2, 18
	xvextrins.b	$xr2, $xr13, 221
	xvpermi.q	$xr14, $xr2, 18
	xvextrins.b	$xr2, $xr14, 238
	xvpermi.q	$xr15, $xr2, 18
	xvextrins.b	$xr2, $xr15, 255
	xvpermi.q	$xr16, $xr2, 48
	xvextrins.b	$xr2, $xr16, 0
	xvpermi.q	$xr17, $xr2, 48
	xvextrins.b	$xr2, $xr17, 17
	xvpermi.q	$xr18, $xr2, 48
	xvextrins.b	$xr2, $xr18, 34
	xvpermi.q	$xr19, $xr2, 48
	xvextrins.b	$xr2, $xr19, 51
	xvpermi.q	$xr20, $xr2, 48
	xvextrins.b	$xr2, $xr20, 68
	xvpermi.q	$xr21, $xr2, 48
	xvextrins.b	$xr2, $xr21, 85
	xvpermi.q	$xr22, $xr2, 48
	xvextrins.b	$xr2, $xr22, 102
	xvpermi.q	$xr23, $xr2, 48
	xvextrins.b	$xr2, $xr23, 119
	xvpermi.q	$xr24, $xr2, 48
	xvextrins.b	$xr2, $xr24, 136
	xvpermi.q	$xr25, $xr2, 48
	xvextrins.b	$xr2, $xr25, 153
	xvpermi.q	$xr26, $xr2, 48
	xvextrins.b	$xr2, $xr26, 170
	xvpermi.q	$xr27, $xr2, 48
	xvextrins.b	$xr2, $xr27, 187
	xvpermi.q	$xr28, $xr2, 48
	xvextrins.b	$xr2, $xr28, 204
	xvpermi.q	$xr29, $xr2, 48
	xvextrins.b	$xr2, $xr29, 221
	xvpermi.q	$xr30, $xr2, 48
	xvextrins.b	$xr2, $xr30, 238
	xvpermi.q	$xr0, $xr2, 48
	xvextrins.b	$xr2, $xr0, 255
	xvslli.b	$xr0, $xr1, 2
	xvsrai.b	$xr1, $xr2, 6
	xvor.v	$xr0, $xr1, $xr0
	xvandi.b	$xr0, $xr0, 63
	xvadd.b	$xr0, $xr0, $xr3
	xvstelm.b	$xr0, $t1, 3, 0
	xvstelm.b	$xr0, $t1, 7, 1
	xvstelm.b	$xr0, $t1, 11, 2
	xvstelm.b	$xr0, $t1, 15, 3
	xvstelm.b	$xr0, $t1, 19, 4
	xvstelm.b	$xr0, $t1, 23, 5
	xvstelm.b	$xr0, $t1, 27, 6
	xvstelm.b	$xr0, $t1, 31, 7
	xvstelm.b	$xr0, $t1, 35, 8
	xvstelm.b	$xr0, $t1, 39, 9
	xvstelm.b	$xr0, $t1, 43, 10
	xvstelm.b	$xr0, $t1, 47, 11
	xvstelm.b	$xr0, $t1, 51, 12
	xvstelm.b	$xr0, $t1, 55, 13
	xvstelm.b	$xr0, $t1, 59, 14
	xvstelm.b	$xr0, $t1, 63, 15
	xvstelm.b	$xr0, $t1, 67, 16
	xvstelm.b	$xr0, $t1, 71, 17
	xvstelm.b	$xr0, $t1, 75, 18
	xvstelm.b	$xr0, $t1, 79, 19
	xvstelm.b	$xr0, $t1, 83, 20
	xvstelm.b	$xr0, $t1, 87, 21
	xvstelm.b	$xr0, $t1, 91, 22
	xvstelm.b	$xr0, $t1, 95, 23
	xvstelm.b	$xr0, $t1, 99, 24
	xvstelm.b	$xr0, $t1, 103, 25
	xvstelm.b	$xr0, $t1, 107, 26
	xvstelm.b	$xr0, $t1, 111, 27
	xvstelm.b	$xr0, $t1, 115, 28
	xvstelm.b	$xr0, $t1, 119, 29
	xvstelm.b	$xr0, $t1, 123, 30
	xvstelm.b	$xr0, $t1, 127, 31
	xvstelm.b	$xr31, $t1, 4, 0
	xvstelm.b	$xr31, $t1, 8, 1
	xvstelm.b	$xr31, $t1, 12, 2
	xvstelm.b	$xr31, $t1, 16, 3
	xvstelm.b	$xr31, $t1, 20, 4
	xvstelm.b	$xr31, $t1, 24, 5
	xvstelm.b	$xr31, $t1, 28, 6
	xvstelm.b	$xr31, $t1, 32, 7
	xvstelm.b	$xr31, $t1, 36, 8
	xvstelm.b	$xr31, $t1, 40, 9
	xvstelm.b	$xr31, $t1, 44, 10
	xvstelm.b	$xr31, $t1, 48, 11
	xvstelm.b	$xr31, $t1, 52, 12
	xvstelm.b	$xr31, $t1, 56, 13
	xvstelm.b	$xr31, $t1, 60, 14
	xvstelm.b	$xr31, $t1, 64, 15
	xvstelm.b	$xr31, $t1, 68, 16
	xvstelm.b	$xr31, $t1, 72, 17
	xvstelm.b	$xr31, $t1, 76, 18
	xvstelm.b	$xr31, $t1, 80, 19
	xvstelm.b	$xr31, $t1, 84, 20
	xvstelm.b	$xr31, $t1, 88, 21
	xvstelm.b	$xr31, $t1, 92, 22
	xvstelm.b	$xr31, $t1, 96, 23
	xvstelm.b	$xr31, $t1, 100, 24
	xvstelm.b	$xr31, $t1, 104, 25
	xvstelm.b	$xr31, $t1, 108, 26
	xvstelm.b	$xr31, $t1, 112, 27
	xvstelm.b	$xr31, $t1, 116, 28
	xvstelm.b	$xr31, $t1, 120, 29
	addi.d	$a5, $a5, 32
	xvstelm.b	$xr31, $t1, 124, 30
	bne	$a5, $a6, .LBB1_5
# %bb.6:
	move	$a1, $a7
.LBB1_7:                                # %for.body.preheader109
	add.d	$a0, $a1, $a0
	addi.d	$a1, $a0, 1
	addi.d	$a0, $a4, 4
	ori	$a4, $zero, 2
	.p2align	4, , 16
.LBB1_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	bgeu	$a4, $a2, .LBB1_11
# %bb.9:                                # %if.end126
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.bu	$a5, $a1, -1
	srli.d	$a5, $a5, 2
	addi.d	$a5, $a5, 32
	add.d	$a6, $a3, $a0
	st.b	$a5, $a6, -4
	ld.b	$a5, $a1, -1
	ld.b	$a7, $a1, 0
	slli.d	$a5, $a5, 4
	srli.d	$a7, $a7, 4
	or	$a5, $a7, $a5
	andi	$a5, $a5, 63
	addi.d	$a5, $a5, 32
	st.b	$a5, $a6, -3
	ld.b	$a5, $a1, 0
	ld.b	$a7, $a1, 1
	slli.d	$a5, $a5, 2
	srli.d	$a7, $a7, 6
	or	$a5, $a7, $a5
	andi	$a5, $a5, 63
	addi.d	$a5, $a5, 32
	st.b	$a5, $a6, -2
	ld.bu	$a5, $a1, 1
	andi	$a5, $a5, 63
	addi.d	$a5, $a5, 32
	st.b	$a5, $a6, -1
	addi.w	$a2, $a2, -3
	addi.d	$a1, $a1, 3
	addi.d	$a0, $a0, 4
	bnez	$a2, .LBB1_8
# %bb.10:                               # %for.end.loopexit.loopexit
	addi.d	$a0, $a0, -4
	b	.LBB1_15
.LBB1_11:                               # %if.else
	ld.bu	$a4, $a1, -1
	srli.d	$a4, $a4, 2
	addi.d	$a5, $a4, 32
	add.d	$a4, $a3, $a0
	st.b	$a5, $a4, -4
	ld.b	$a5, $a1, -1
	ori	$a6, $zero, 1
	slli.d	$a5, $a5, 4
	bne	$a2, $a6, .LBB1_13
# %bb.12:                               # %if.then54
	andi	$a1, $a5, 48
	addi.d	$a1, $a1, 32
	st.b	$a1, $a4, -3
	ori	$a1, $zero, 61
	b	.LBB1_14
.LBB1_13:                               # %if.then84
	ld.b	$a2, $a1, 0
	srli.d	$a2, $a2, 4
	or	$a2, $a2, $a5
	andi	$a2, $a2, 63
	addi.d	$a2, $a2, 32
	st.b	$a2, $a4, -3
	ld.b	$a1, $a1, 0
	slli.d	$a1, $a1, 2
	andi	$a1, $a1, 60
	addi.d	$a1, $a1, 32
.LBB1_14:                               # %if.end126.thread
	st.b	$a1, $a4, -2
	ori	$a1, $zero, 61
	st.b	$a1, $a4, -1
.LBB1_15:                               # %for.end.loopexit
	bstrpick.d	$a4, $a0, 31, 0
	fld.d	$fs7, $sp, 80                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 88                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 96                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 104                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 112                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 120                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 128                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 136                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
.LBB1_16:                               # %for.end
	ori	$a0, $zero, 10
	stx.h	$a0, $a3, $a4
	ret
.Lfunc_end1:
	.size	encode_line, .Lfunc_end1-encode_line
                                        # -- End function
	.globl	encode                          # -- Begin function encode
	.p2align	5
	.type	encode,@function
encode:                                 # @encode
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	ori	$a3, $zero, 1
	move	$fp, $a2
	blt	$a1, $a3, .LBB2_6
# %bb.1:                                # %while.body.preheader
	move	$s0, $a1
	move	$s1, $a0
	move	$s2, $zero
	ori	$s3, $zero, 45
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                # %if.then
                                        #   in Loop: Header=BB2_4 Depth=1
	ori	$a2, $zero, 45
	addi.d	$a3, $sp, 17
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	addi.w	$s2, $s2, 45
.LBB2_3:                                # %if.end
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a1, $sp, 17
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$fp, $fp, $a0
	bge	$s2, $s0, .LBB2_6
.LBB2_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	sub.w	$a2, $s0, $s2
	bge	$a2, $s3, .LBB2_2
# %bb.5:                                # %if.else
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.d	$a3, $sp, 17
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	move	$s2, $s0
	b	.LBB2_3
.LBB2_6:                                # %while.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	add.d	$a3, $fp, $a0
	stx.w	$a2, $fp, $a0
	st.h	$a1, $a3, 4
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end2:
	.size	encode, .Lfunc_end2-encode
                                        # -- End function
	.globl	do_encode                       # -- Begin function do_encode
	.p2align	5
	.type	do_encode,@function
do_encode:                              # @do_encode
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	pcalau12i	$a4, %pc_hi20(.L.str.1)
	addi.d	$a4, $a4, %pc_lo12(.L.str.1)
	ld.w	$a5, $a4, 7
	ld.d	$a4, $a4, 0
	move	$s0, $a2
	move	$fp, $a1
	move	$s1, $a0
	st.w	$a5, $a1, 7
	st.d	$a4, $a1, 0
	move	$a0, $a1
	move	$a1, $a3
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ld.h	$a2, $a1, 0
	ld.b	$a1, $a1, 2
	add.d	$a3, $fp, $a0
	stx.h	$a2, $fp, $a0
	st.b	$a1, $a3, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	add.d	$s2, $fp, $a0
	blt	$s0, $a1, .LBB3_6
# %bb.1:                                # %while.body.i.preheader
	move	$s3, $zero
	ori	$s4, $zero, 45
	b	.LBB3_4
	.p2align	4, , 16
.LBB3_2:                                # %if.then.i
                                        #   in Loop: Header=BB3_4 Depth=1
	ori	$a2, $zero, 45
	addi.d	$a3, $sp, 9
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	addi.w	$s3, $s3, 45
.LBB3_3:                                # %if.end.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a1, $sp, 9
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s2, $s2, $a0
	bge	$s3, $s0, .LBB3_6
.LBB3_4:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	sub.w	$a2, $s0, $s3
	bge	$a2, $s4, .LBB3_2
# %bb.5:                                # %if.else.i
                                        #   in Loop: Header=BB3_4 Depth=1
	addi.d	$a3, $sp, 9
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(encode_line)
	jirl	$ra, $ra, 0
	move	$s3, $s0
	b	.LBB3_3
.LBB3_6:                                # %encode.exit
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	add.d	$a3, $s2, $a0
	stx.w	$a2, $s2, $a0
	st.h	$a1, $a3, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.Lfunc_end3:
	.size	do_encode, .Lfunc_end3-do_encode
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 272                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 264                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 216                  # 8-byte Folded Spill
	move	$s3, $a1
	move	$s2, $a0
	lu12i.w	$a0, 244
	ori	$s1, $a0, 576
	move	$a0, $s1
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	lu12i.w	$a0, 488
	ori	$a0, $a0, 1152
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	move	$fp, $a0
	blt	$s2, $a1, .LBB4_3
# %bb.1:                                # %if.then
	ld.d	$a0, $s3, 8
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(fopen)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_28
# %bb.2:                                # %if.then4
	ld.d	$a0, $s3, 8
	pcaddu18i	$ra, %call36(perror)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_3:                                # %if.else
	pcalau12i	$a0, %got_pc_hi20(stdin)
	ld.d	$a0, $a0, %got_pc_lo12(stdin)
	ld.d	$a3, $a0, 0
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB4_29
.LBB4_4:                                # %if.end10
	ori	$a1, $zero, 1
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(fread)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	addi.d	$a0, $sp, 136
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	addi.w	$s4, $s8, 0
	blez	$s4, .LBB4_30
# %bb.5:                                # %for.body.us.preheader
	move	$a2, $zero
	addi.d	$a0, $s0, 1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.w	$a1, $a0, 7
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $a0, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$a1, $a0, 0
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 7
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.h	$a1, $a0, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ld.b	$a0, $a0, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$s3, $zero, 44
	ori	$s7, $zero, 10
	addi.d	$s5, $sp, 152
	lu12i.w	$a0, -349526
	ori	$a0, $a0, 2731
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 349525
	ori	$a0, $a0, 1365
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$s6, $zero, 2
	xvrepli.b	$xr0, 32
	xvst	$xr0, $sp, 96                   # 32-byte Folded Spill
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %do_encode.exit.loopexit.us
                                        #   in Loop: Header=BB4_7 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.w	$a2, $a1, 0
	ld.h	$a1, $a1, 4
	add.d	$a3, $s2, $a0
	stx.w	$a2, $s2, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.h	$a1, $a3, 4
	ori	$a0, $zero, 1000
	beq	$a2, $a0, .LBB4_32
.LBB4_7:                                # %for.body.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_13 Depth 2
                                        #       Child Loop BB4_20 Depth 3
                                        #       Child Loop BB4_23 Depth 3
                                        #       Child Loop BB4_15 Depth 3
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $fp, 7
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	stx.d	$a2, $fp, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.w	$a0, $a1, 7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	stx.h	$a2, $fp, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.b	$a0, $a1, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	add.d	$s2, $fp, $a0
	b	.LBB4_13
.LBB4_8:                                # %if.then54.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	andi	$a0, $a4, 48
	ori	$a3, $zero, 61
.LBB4_9:                                # %if.end126.thread.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	addi.d	$a0, $a0, 32
	st.b	$a0, $a2, -3
	st.b	$a3, $a2, -2
	ori	$a0, $zero, 61
	st.b	$a0, $a2, -1
.LBB4_10:                               # %for.end.loopexit.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	bstrpick.d	$a1, $a1, 31, 0
.LBB4_11:                               # %encode_line.exit.us
                                        #   in Loop: Header=BB4_13 Depth=2
	stx.h	$s7, $a1, $s5
	move	$s1, $s8
.LBB4_12:                               # %if.end.i.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	addi.d	$a1, $sp, 152
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strcat)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s1, 0
	add.d	$s2, $s2, $a0
	bge	$a1, $s4, .LBB4_6
.LBB4_13:                               # %while.body.i.i.us
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_20 Depth 3
                                        #       Child Loop BB4_23 Depth 3
                                        #       Child Loop BB4_15 Depth 3
	sub.w	$a0, $s8, $s1
	bge	$s3, $a0, .LBB4_17
# %bb.14:                               # %if.then.i.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	ori	$a0, $zero, 77
	st.b	$a0, $sp, 152
	bstrpick.d	$a0, $s1, 31, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$a1, $sp, 156
	addi.d	$a2, $zero, -45
	.p2align	4, , 16
.LBB4_15:                               # %if.end126.i38.us
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $a0, -2
	srli.d	$a4, $a3, 2
	ld.b	$a5, $a0, -1
	addi.d	$a4, $a4, 32
	st.b	$a4, $a1, -3
	slli.d	$a3, $a3, 4
	srli.d	$a4, $a5, 4
	or	$a3, $a4, $a3
	andi	$a3, $a3, 63
	ld.b	$a4, $a0, 0
	addi.d	$a3, $a3, 32
	st.b	$a3, $a1, -2
	slli.d	$a3, $a5, 2
	srli.d	$a5, $a4, 6
	or	$a3, $a5, $a3
	andi	$a3, $a3, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a1, -1
	andi	$a3, $a4, 63
	addi.d	$a3, $a3, 32
	st.b	$a3, $a1, 0
	addi.w	$a2, $a2, 3
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 3
	bnez	$a2, .LBB4_15
# %bb.16:                               # %encode_line.exit58.us
                                        #   in Loop: Header=BB4_13 Depth=2
	st.h	$s7, $sp, 213
	addi.w	$s1, $s1, 45
	b	.LBB4_12
	.p2align	4, , 16
.LBB4_17:                               # %if.else.i.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	andi	$a1, $a0, 63
	addi.d	$a2, $a1, 32
	ori	$a1, $zero, 1
	st.b	$a2, $sp, 152
	blt	$a0, $a1, .LBB4_11
# %bb.18:                               # %for.body.preheader.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	addi.w	$a1, $s1, 0
	bstrpick.d	$a2, $a0, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	mul.d	$a2, $a2, $a3
	srli.d	$a2, $a2, 33
	sub.d	$a3, $s1, $s8
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	mul.d	$a3, $a3, $a4
	addi.w	$a3, $a3, -1
	sltu	$a4, $a2, $a3
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a4, $a2, $a3
	ori	$a2, $zero, 1
	ori	$a6, $zero, 32
	bltu	$a4, $a6, .LBB4_22
# %bb.19:                               # %vector.ph
                                        #   in Loop: Header=BB4_13 Depth=2
	move	$a3, $zero
	addi.w	$a2, $a4, 1
	andi	$a4, $a2, 31
	sltui	$a5, $a4, 1
	masknez	$a4, $a4, $a5
	maskeqz	$a5, $a6, $a5
	or	$a4, $a5, $a4
	sub.d	$a4, $a2, $a4
	alsl.d	$a6, $a4, $a4, 1
	add.d	$a5, $a6, $a1
	slli.d	$a2, $a4, 2
	addi.d	$a2, $a2, 1
	sub.w	$a0, $a0, $a6
	xvld	$xr29, $sp, 96                  # 32-byte Folded Reload
	.p2align	4, , 16
.LBB4_20:                               # %vector.body
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	alsl.d	$a6, $a3, $a3, 1
	add.d	$a6, $a6, $a1
	ldx.b	$a7, $s0, $a6
	add.d	$a6, $s0, $a6
	ld.b	$t0, $a6, 3
	ld.b	$t1, $a6, 6
	vinsgr2vr.b	$vr0, $a7, 0
	ld.b	$a7, $a6, 9
	xvreplgr2vr.b	$xr1, $t0
	ld.b	$t0, $a6, 12
	xvreplgr2vr.b	$xr2, $t1
	ld.b	$t1, $a6, 15
	xvreplgr2vr.b	$xr3, $a7
	ld.b	$a7, $a6, 18
	xvreplgr2vr.b	$xr4, $t0
	ld.b	$t0, $a6, 21
	xvreplgr2vr.b	$xr5, $t1
	ld.b	$t1, $a6, 24
	xvreplgr2vr.b	$xr6, $a7
	ld.b	$a7, $a6, 27
	xvreplgr2vr.b	$xr7, $t0
	ld.b	$t0, $a6, 30
	xvreplgr2vr.b	$xr8, $t1
	ld.b	$t1, $a6, 33
	xvreplgr2vr.b	$xr9, $a7
	ld.b	$a7, $a6, 36
	xvreplgr2vr.b	$xr10, $t0
	ld.b	$t0, $a6, 39
	xvreplgr2vr.b	$xr11, $t1
	ld.b	$t1, $a6, 42
	xvreplgr2vr.b	$xr12, $a7
	ld.b	$a7, $a6, 45
	xvreplgr2vr.b	$xr13, $t0
	ld.b	$t0, $a6, 48
	xvreplgr2vr.b	$xr14, $t1
	ld.b	$t1, $a6, 51
	xvreplgr2vr.b	$xr15, $a7
	ld.b	$a7, $a6, 54
	xvreplgr2vr.b	$xr16, $t0
	ld.b	$t0, $a6, 57
	xvreplgr2vr.b	$xr17, $t1
	ld.b	$t1, $a6, 60
	xvreplgr2vr.b	$xr18, $a7
	ld.b	$a7, $a6, 63
	xvreplgr2vr.b	$xr19, $t0
	ld.b	$t0, $a6, 66
	xvreplgr2vr.b	$xr20, $t1
	ld.b	$t1, $a6, 69
	xvreplgr2vr.b	$xr21, $a7
	ld.b	$a7, $a6, 72
	xvreplgr2vr.b	$xr22, $t0
	ld.b	$t0, $a6, 75
	xvreplgr2vr.b	$xr23, $t1
	ld.b	$t1, $a6, 78
	xvreplgr2vr.b	$xr24, $a7
	ld.b	$t2, $a6, 81
	xvreplgr2vr.b	$xr25, $t0
	ld.b	$t3, $a6, 84
	xvreplgr2vr.b	$xr26, $t1
	ld.b	$a7, $a6, 87
	xvreplgr2vr.b	$xr27, $t2
	ld.b	$t0, $a6, 90
	xvreplgr2vr.b	$xr28, $t3
	ld.b	$t1, $a6, 93
	xvpermi.q	$xr1, $xr0, 18
	xvextrins.b	$xr0, $xr1, 17
	xvpermi.q	$xr2, $xr0, 18
	xvextrins.b	$xr0, $xr2, 34
	xvpermi.q	$xr3, $xr0, 18
	xvextrins.b	$xr0, $xr3, 51
	xvpermi.q	$xr4, $xr0, 18
	xvextrins.b	$xr0, $xr4, 68
	xvpermi.q	$xr5, $xr0, 18
	xvextrins.b	$xr0, $xr5, 85
	xvpermi.q	$xr6, $xr0, 18
	xvextrins.b	$xr0, $xr6, 102
	xvpermi.q	$xr7, $xr0, 18
	xvextrins.b	$xr0, $xr7, 119
	xvpermi.q	$xr8, $xr0, 18
	xvextrins.b	$xr0, $xr8, 136
	xvpermi.q	$xr9, $xr0, 18
	xvextrins.b	$xr0, $xr9, 153
	xvpermi.q	$xr10, $xr0, 18
	xvextrins.b	$xr0, $xr10, 170
	xvpermi.q	$xr11, $xr0, 18
	xvextrins.b	$xr0, $xr11, 187
	xvpermi.q	$xr12, $xr0, 18
	xvextrins.b	$xr0, $xr12, 204
	xvpermi.q	$xr13, $xr0, 18
	xvextrins.b	$xr0, $xr13, 221
	xvpermi.q	$xr14, $xr0, 18
	xvextrins.b	$xr0, $xr14, 238
	xvpermi.q	$xr15, $xr0, 18
	xvextrins.b	$xr0, $xr15, 255
	xvpermi.q	$xr16, $xr0, 48
	xvextrins.b	$xr0, $xr16, 0
	xvpermi.q	$xr17, $xr0, 48
	xvextrins.b	$xr0, $xr17, 17
	xvpermi.q	$xr18, $xr0, 48
	xvextrins.b	$xr0, $xr18, 34
	xvpermi.q	$xr19, $xr0, 48
	xvextrins.b	$xr0, $xr19, 51
	xvpermi.q	$xr20, $xr0, 48
	xvextrins.b	$xr0, $xr20, 68
	xvpermi.q	$xr21, $xr0, 48
	xvextrins.b	$xr0, $xr21, 85
	xvpermi.q	$xr22, $xr0, 48
	xvextrins.b	$xr0, $xr22, 102
	xvpermi.q	$xr23, $xr0, 48
	xvextrins.b	$xr0, $xr23, 119
	xvpermi.q	$xr24, $xr0, 48
	xvextrins.b	$xr0, $xr24, 136
	xvpermi.q	$xr25, $xr0, 48
	xvextrins.b	$xr0, $xr25, 153
	xvpermi.q	$xr26, $xr0, 48
	xvextrins.b	$xr0, $xr26, 170
	xvpermi.q	$xr27, $xr0, 48
	xvextrins.b	$xr0, $xr27, 187
	xvpermi.q	$xr28, $xr0, 48
	xvextrins.b	$xr0, $xr28, 204
	xvreplgr2vr.b	$xr1, $a7
	xvpermi.q	$xr1, $xr0, 48
	xvextrins.b	$xr0, $xr1, 221
	xvreplgr2vr.b	$xr1, $t0
	xvpermi.q	$xr1, $xr0, 48
	xvextrins.b	$xr0, $xr1, 238
	xvreplgr2vr.b	$xr1, $t1
	xvpermi.q	$xr1, $xr0, 48
	xvextrins.b	$xr0, $xr1, 255
	xvsrli.b	$xr1, $xr0, 2
	xvadd.b	$xr25, $xr1, $xr29
	alsl.d	$a7, $a3, $s5, 2
	xvstelm.b	$xr25, $a7, 1, 0
	xvstelm.b	$xr25, $a7, 5, 1
	xvstelm.b	$xr25, $a7, 9, 2
	xvstelm.b	$xr25, $a7, 13, 3
	xvstelm.b	$xr25, $a7, 17, 4
	xvstelm.b	$xr25, $a7, 21, 5
	xvstelm.b	$xr25, $a7, 25, 6
	xvstelm.b	$xr25, $a7, 29, 7
	xvstelm.b	$xr25, $a7, 33, 8
	xvstelm.b	$xr25, $a7, 37, 9
	xvstelm.b	$xr25, $a7, 41, 10
	xvstelm.b	$xr25, $a7, 45, 11
	xvstelm.b	$xr25, $a7, 49, 12
	xvstelm.b	$xr25, $a7, 53, 13
	xvstelm.b	$xr25, $a7, 57, 14
	xvstelm.b	$xr25, $a7, 61, 15
	ld.b	$t0, $a6, 1
	xvstelm.b	$xr25, $a7, 65, 16
	xvstelm.b	$xr25, $a7, 69, 17
	ld.b	$t1, $a6, 4
	vinsgr2vr.b	$vr1, $t0, 0
	ld.b	$t0, $a6, 7
	xvstelm.b	$xr25, $a7, 73, 18
	xvreplgr2vr.b	$xr27, $t1
	ld.b	$t1, $a6, 10
	xvreplgr2vr.b	$xr28, $t0
	ld.b	$t0, $a6, 13
	xvstelm.b	$xr25, $a7, 77, 19
	xvreplgr2vr.b	$xr30, $t1
	ld.b	$t1, $a6, 16
	xvreplgr2vr.b	$xr2, $t0
	ld.b	$t0, $a6, 19
	xvstelm.b	$xr25, $a7, 81, 20
	xvreplgr2vr.b	$xr3, $t1
	ld.b	$t1, $a6, 22
	xvreplgr2vr.b	$xr4, $t0
	ld.b	$t0, $a6, 25
	xvstelm.b	$xr25, $a7, 85, 21
	xvreplgr2vr.b	$xr5, $t1
	ld.b	$t1, $a6, 28
	xvreplgr2vr.b	$xr6, $t0
	ld.b	$t0, $a6, 31
	xvstelm.b	$xr25, $a7, 89, 22
	xvreplgr2vr.b	$xr7, $t1
	ld.b	$t1, $a6, 34
	xvreplgr2vr.b	$xr8, $t0
	ld.b	$t0, $a6, 37
	xvstelm.b	$xr25, $a7, 93, 23
	xvreplgr2vr.b	$xr9, $t1
	ld.b	$t1, $a6, 40
	xvreplgr2vr.b	$xr10, $t0
	ld.b	$t0, $a6, 43
	xvstelm.b	$xr25, $a7, 97, 24
	xvreplgr2vr.b	$xr11, $t1
	ld.b	$t1, $a6, 46
	xvreplgr2vr.b	$xr12, $t0
	ld.b	$t0, $a6, 49
	xvstelm.b	$xr25, $a7, 101, 25
	xvreplgr2vr.b	$xr13, $t1
	ld.b	$t1, $a6, 52
	xvreplgr2vr.b	$xr14, $t0
	ld.b	$t0, $a6, 55
	xvstelm.b	$xr25, $a7, 105, 26
	xvreplgr2vr.b	$xr15, $t1
	ld.b	$t1, $a6, 58
	xvreplgr2vr.b	$xr16, $t0
	ld.b	$t0, $a6, 61
	xvstelm.b	$xr25, $a7, 109, 27
	xvreplgr2vr.b	$xr17, $t1
	ld.b	$t1, $a6, 64
	xvreplgr2vr.b	$xr18, $t0
	ld.b	$t0, $a6, 67
	xvstelm.b	$xr25, $a7, 113, 28
	xvreplgr2vr.b	$xr19, $t1
	ld.b	$t1, $a6, 70
	xvreplgr2vr.b	$xr20, $t0
	ld.b	$t0, $a6, 73
	xvstelm.b	$xr25, $a7, 117, 29
	xvreplgr2vr.b	$xr21, $t1
	ld.b	$t1, $a6, 76
	xvreplgr2vr.b	$xr22, $t0
	ld.b	$t0, $a6, 79
	xvstelm.b	$xr25, $a7, 121, 30
	xvreplgr2vr.b	$xr23, $t1
	ld.b	$t1, $a6, 82
	xvreplgr2vr.b	$xr24, $t0
	ld.b	$t0, $a6, 85
	xvstelm.b	$xr25, $a7, 125, 31
	xvreplgr2vr.b	$xr25, $t1
	ld.b	$t1, $a6, 88
	xvreplgr2vr.b	$xr26, $t0
	ld.b	$t0, $a6, 91
	xvpermi.q	$xr27, $xr1, 18
	xvextrins.b	$xr1, $xr27, 17
	xvpermi.q	$xr28, $xr1, 18
	xvextrins.b	$xr1, $xr28, 34
	xvreplgr2vr.b	$xr27, $t1
	ld.b	$t1, $a6, 2
	xvpermi.q	$xr30, $xr1, 18
	xvreplgr2vr.b	$xr29, $t0
	ld.b	$t0, $a6, 5
	vinsgr2vr.b	$vr28, $t1, 0
	ld.b	$t1, $a6, 8
	xvextrins.b	$xr1, $xr30, 51
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 11
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 14
	xvpermi.q	$xr30, $xr28, 18
	xvextrins.b	$xr28, $xr30, 17
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 17
	xvpermi.q	$xr31, $xr28, 18
	xvextrins.b	$xr28, $xr31, 34
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 20
	xvpermi.q	$xr30, $xr28, 18
	xvextrins.b	$xr28, $xr30, 51
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 23
	xvpermi.q	$xr31, $xr28, 18
	xvextrins.b	$xr28, $xr31, 68
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 26
	xvpermi.q	$xr30, $xr28, 18
	xvextrins.b	$xr28, $xr30, 85
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 29
	xvpermi.q	$xr31, $xr28, 18
	xvextrins.b	$xr28, $xr31, 102
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 32
	xvpermi.q	$xr30, $xr28, 18
	xvextrins.b	$xr28, $xr30, 119
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 35
	xvpermi.q	$xr31, $xr28, 18
	xvextrins.b	$xr28, $xr31, 136
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 38
	xvpermi.q	$xr30, $xr28, 18
	xvextrins.b	$xr28, $xr30, 153
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 41
	xvpermi.q	$xr31, $xr28, 18
	xvextrins.b	$xr28, $xr31, 170
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 44
	xvpermi.q	$xr30, $xr28, 18
	xvextrins.b	$xr28, $xr30, 187
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 47
	xvpermi.q	$xr31, $xr28, 18
	xvextrins.b	$xr28, $xr31, 204
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 50
	xvpermi.q	$xr30, $xr28, 18
	xvextrins.b	$xr28, $xr30, 221
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 53
	xvpermi.q	$xr31, $xr28, 18
	xvextrins.b	$xr28, $xr31, 238
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 56
	xvpermi.q	$xr30, $xr28, 18
	xvextrins.b	$xr28, $xr30, 255
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 59
	xvpermi.q	$xr31, $xr28, 48
	xvextrins.b	$xr28, $xr31, 0
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 62
	xvpermi.q	$xr30, $xr28, 48
	xvextrins.b	$xr28, $xr30, 17
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 65
	xvpermi.q	$xr31, $xr28, 48
	xvextrins.b	$xr28, $xr31, 34
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 68
	xvpermi.q	$xr30, $xr28, 48
	xvextrins.b	$xr28, $xr30, 51
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 71
	xvpermi.q	$xr31, $xr28, 48
	xvextrins.b	$xr28, $xr31, 68
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 74
	xvpermi.q	$xr30, $xr28, 48
	xvextrins.b	$xr28, $xr30, 85
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 77
	xvpermi.q	$xr31, $xr28, 48
	xvextrins.b	$xr28, $xr31, 102
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 80
	xvpermi.q	$xr30, $xr28, 48
	xvextrins.b	$xr28, $xr30, 119
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 83
	xvpermi.q	$xr31, $xr28, 48
	xvextrins.b	$xr28, $xr31, 136
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 86
	xvpermi.q	$xr30, $xr28, 48
	xvextrins.b	$xr28, $xr30, 153
	xvreplgr2vr.b	$xr30, $t0
	ld.b	$t0, $a6, 89
	xvpermi.q	$xr31, $xr28, 48
	xvextrins.b	$xr28, $xr31, 170
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t1, $a6, 92
	xvpermi.q	$xr30, $xr28, 48
	xvextrins.b	$xr28, $xr30, 187
	xvreplgr2vr.b	$xr30, $t0
	xvpermi.q	$xr31, $xr28, 48
	xvextrins.b	$xr28, $xr31, 204
	xvreplgr2vr.b	$xr31, $t1
	ld.b	$t0, $a6, 94
	ld.b	$a6, $a6, 95
	xvpermi.q	$xr30, $xr28, 48
	xvextrins.b	$xr28, $xr30, 221
	xvpermi.q	$xr31, $xr28, 48
	xvextrins.b	$xr28, $xr31, 238
	xvreplgr2vr.b	$xr30, $a6
	xvpermi.q	$xr30, $xr28, 48
	xvextrins.b	$xr28, $xr30, 255
	xvandi.b	$xr30, $xr28, 63
	xvld	$xr31, $sp, 96                  # 32-byte Folded Reload
	xvadd.b	$xr30, $xr30, $xr31
	xvpermi.d	$xr31, $xr30, 14
	vpickve2gr.b	$a6, $vr31, 15
	xvreplgr2vr.b	$xr31, $t0
	st.b	$a6, $a7, 128
	xvpermi.q	$xr2, $xr1, 18
	xvextrins.b	$xr1, $xr2, 68
	xvpermi.q	$xr3, $xr1, 18
	xvextrins.b	$xr1, $xr3, 85
	xvpermi.q	$xr4, $xr1, 18
	xvextrins.b	$xr1, $xr4, 102
	xvpermi.q	$xr5, $xr1, 18
	xvextrins.b	$xr1, $xr5, 119
	xvpermi.q	$xr6, $xr1, 18
	xvextrins.b	$xr1, $xr6, 136
	xvpermi.q	$xr7, $xr1, 18
	xvextrins.b	$xr1, $xr7, 153
	xvpermi.q	$xr8, $xr1, 18
	xvextrins.b	$xr1, $xr8, 170
	xvpermi.q	$xr9, $xr1, 18
	xvextrins.b	$xr1, $xr9, 187
	xvpermi.q	$xr10, $xr1, 18
	xvextrins.b	$xr1, $xr10, 204
	xvpermi.q	$xr11, $xr1, 18
	xvextrins.b	$xr1, $xr11, 221
	xvpermi.q	$xr12, $xr1, 18
	xvextrins.b	$xr1, $xr12, 238
	xvpermi.q	$xr13, $xr1, 18
	xvextrins.b	$xr1, $xr13, 255
	xvpermi.q	$xr14, $xr1, 48
	xvextrins.b	$xr1, $xr14, 0
	xvpermi.q	$xr15, $xr1, 48
	xvextrins.b	$xr1, $xr15, 17
	xvpermi.q	$xr16, $xr1, 48
	xvextrins.b	$xr1, $xr16, 34
	xvpermi.q	$xr17, $xr1, 48
	xvextrins.b	$xr1, $xr17, 51
	xvpermi.q	$xr18, $xr1, 48
	xvextrins.b	$xr1, $xr18, 68
	xvpermi.q	$xr19, $xr1, 48
	xvextrins.b	$xr1, $xr19, 85
	xvpermi.q	$xr20, $xr1, 48
	xvextrins.b	$xr1, $xr20, 102
	xvpermi.q	$xr21, $xr1, 48
	xvextrins.b	$xr1, $xr21, 119
	xvpermi.q	$xr22, $xr1, 48
	xvextrins.b	$xr1, $xr22, 136
	xvpermi.q	$xr23, $xr1, 48
	xvextrins.b	$xr1, $xr23, 153
	xvpermi.q	$xr24, $xr1, 48
	xvextrins.b	$xr1, $xr24, 170
	xvpermi.q	$xr25, $xr1, 48
	xvextrins.b	$xr1, $xr25, 187
	xvpermi.q	$xr26, $xr1, 48
	xvextrins.b	$xr1, $xr26, 204
	xvpermi.q	$xr27, $xr1, 48
	xvextrins.b	$xr1, $xr27, 221
	xvpermi.q	$xr29, $xr1, 48
	xvextrins.b	$xr1, $xr29, 238
	xvld	$xr29, $sp, 96                  # 32-byte Folded Reload
	xvslli.b	$xr0, $xr0, 4
	xvpermi.q	$xr31, $xr1, 48
	xvextrins.b	$xr1, $xr31, 255
	xvsrai.b	$xr2, $xr1, 4
	xvor.v	$xr0, $xr2, $xr0
	xvandi.b	$xr0, $xr0, 63
	xvadd.b	$xr0, $xr0, $xr29
	xvstelm.b	$xr0, $a7, 2, 0
	xvstelm.b	$xr0, $a7, 6, 1
	xvstelm.b	$xr0, $a7, 10, 2
	xvstelm.b	$xr0, $a7, 14, 3
	xvstelm.b	$xr0, $a7, 18, 4
	xvstelm.b	$xr0, $a7, 22, 5
	xvstelm.b	$xr0, $a7, 26, 6
	xvstelm.b	$xr0, $a7, 30, 7
	xvstelm.b	$xr0, $a7, 34, 8
	xvstelm.b	$xr0, $a7, 38, 9
	xvstelm.b	$xr0, $a7, 42, 10
	xvstelm.b	$xr0, $a7, 46, 11
	xvstelm.b	$xr0, $a7, 50, 12
	xvstelm.b	$xr0, $a7, 54, 13
	xvstelm.b	$xr0, $a7, 58, 14
	xvstelm.b	$xr0, $a7, 62, 15
	xvstelm.b	$xr0, $a7, 66, 16
	xvstelm.b	$xr0, $a7, 70, 17
	xvstelm.b	$xr0, $a7, 74, 18
	xvstelm.b	$xr0, $a7, 78, 19
	xvstelm.b	$xr0, $a7, 82, 20
	xvstelm.b	$xr0, $a7, 86, 21
	xvstelm.b	$xr0, $a7, 90, 22
	xvstelm.b	$xr0, $a7, 94, 23
	xvstelm.b	$xr0, $a7, 98, 24
	xvstelm.b	$xr0, $a7, 102, 25
	xvstelm.b	$xr0, $a7, 106, 26
	xvstelm.b	$xr0, $a7, 110, 27
	xvstelm.b	$xr0, $a7, 114, 28
	xvstelm.b	$xr0, $a7, 118, 29
	xvstelm.b	$xr0, $a7, 122, 30
	xvstelm.b	$xr0, $a7, 126, 31
	xvslli.b	$xr0, $xr1, 2
	xvsrai.b	$xr1, $xr28, 6
	xvor.v	$xr0, $xr1, $xr0
	xvandi.b	$xr0, $xr0, 63
	xvadd.b	$xr0, $xr0, $xr29
	xvstelm.b	$xr0, $a7, 3, 0
	xvstelm.b	$xr0, $a7, 7, 1
	xvstelm.b	$xr0, $a7, 11, 2
	xvstelm.b	$xr0, $a7, 15, 3
	xvstelm.b	$xr0, $a7, 19, 4
	xvstelm.b	$xr0, $a7, 23, 5
	xvstelm.b	$xr0, $a7, 27, 6
	xvstelm.b	$xr0, $a7, 31, 7
	xvstelm.b	$xr0, $a7, 35, 8
	xvstelm.b	$xr0, $a7, 39, 9
	xvstelm.b	$xr0, $a7, 43, 10
	xvstelm.b	$xr0, $a7, 47, 11
	xvstelm.b	$xr0, $a7, 51, 12
	xvstelm.b	$xr0, $a7, 55, 13
	xvstelm.b	$xr0, $a7, 59, 14
	xvstelm.b	$xr0, $a7, 63, 15
	xvstelm.b	$xr0, $a7, 67, 16
	xvstelm.b	$xr0, $a7, 71, 17
	xvstelm.b	$xr0, $a7, 75, 18
	xvstelm.b	$xr0, $a7, 79, 19
	xvstelm.b	$xr0, $a7, 83, 20
	xvstelm.b	$xr0, $a7, 87, 21
	xvstelm.b	$xr0, $a7, 91, 22
	xvstelm.b	$xr0, $a7, 95, 23
	xvstelm.b	$xr0, $a7, 99, 24
	xvstelm.b	$xr0, $a7, 103, 25
	xvstelm.b	$xr0, $a7, 107, 26
	xvstelm.b	$xr0, $a7, 111, 27
	xvstelm.b	$xr0, $a7, 115, 28
	xvstelm.b	$xr0, $a7, 119, 29
	xvstelm.b	$xr0, $a7, 123, 30
	xvstelm.b	$xr0, $a7, 127, 31
	xvstelm.b	$xr30, $a7, 4, 0
	xvstelm.b	$xr30, $a7, 8, 1
	xvstelm.b	$xr30, $a7, 12, 2
	xvstelm.b	$xr30, $a7, 16, 3
	xvstelm.b	$xr30, $a7, 20, 4
	xvstelm.b	$xr30, $a7, 24, 5
	xvstelm.b	$xr30, $a7, 28, 6
	xvstelm.b	$xr30, $a7, 32, 7
	xvstelm.b	$xr30, $a7, 36, 8
	xvstelm.b	$xr30, $a7, 40, 9
	xvstelm.b	$xr30, $a7, 44, 10
	xvstelm.b	$xr30, $a7, 48, 11
	xvstelm.b	$xr30, $a7, 52, 12
	xvstelm.b	$xr30, $a7, 56, 13
	xvstelm.b	$xr30, $a7, 60, 14
	xvstelm.b	$xr30, $a7, 64, 15
	xvstelm.b	$xr30, $a7, 68, 16
	xvstelm.b	$xr30, $a7, 72, 17
	xvstelm.b	$xr30, $a7, 76, 18
	xvstelm.b	$xr30, $a7, 80, 19
	xvstelm.b	$xr30, $a7, 84, 20
	xvstelm.b	$xr30, $a7, 88, 21
	xvstelm.b	$xr30, $a7, 92, 22
	xvstelm.b	$xr30, $a7, 96, 23
	xvstelm.b	$xr30, $a7, 100, 24
	xvstelm.b	$xr30, $a7, 104, 25
	xvstelm.b	$xr30, $a7, 108, 26
	xvstelm.b	$xr30, $a7, 112, 27
	xvstelm.b	$xr30, $a7, 116, 28
	xvstelm.b	$xr30, $a7, 120, 29
	addi.d	$a3, $a3, 32
	xvstelm.b	$xr30, $a7, 124, 30
	bne	$a3, $a4, .LBB4_20
# %bb.21:                               #   in Loop: Header=BB4_13 Depth=2
	move	$a1, $a5
.LBB4_22:                               # %for.body.i.us.preheader
                                        #   in Loop: Header=BB4_13 Depth=2
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.d	$a3, $a3, $a1
	addi.d	$a1, $a2, 4
	.p2align	4, , 16
.LBB4_23:                               # %for.body.i.us
                                        #   Parent Loop BB4_7 Depth=1
                                        #     Parent Loop BB4_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$s6, $a0, .LBB4_26
# %bb.24:                               # %if.end126.i.us
                                        #   in Loop: Header=BB4_23 Depth=3
	ld.bu	$a2, $a3, -1
	srli.d	$a4, $a2, 2
	addi.d	$a4, $a4, 32
	ld.b	$a5, $a3, 0
	add.d	$a6, $s5, $a1
	st.b	$a4, $a6, -4
	slli.d	$a2, $a2, 4
	srli.d	$a4, $a5, 4
	or	$a2, $a4, $a2
	andi	$a2, $a2, 63
	ld.b	$a4, $a3, 1
	addi.d	$a2, $a2, 32
	st.b	$a2, $a6, -3
	slli.d	$a2, $a5, 2
	srli.d	$a5, $a4, 6
	or	$a2, $a5, $a2
	andi	$a2, $a2, 63
	addi.d	$a2, $a2, 32
	st.b	$a2, $a6, -2
	andi	$a2, $a4, 63
	addi.d	$a2, $a2, 32
	st.b	$a2, $a6, -1
	addi.w	$a0, $a0, -3
	addi.d	$a3, $a3, 3
	addi.d	$a1, $a1, 4
	bnez	$a0, .LBB4_23
# %bb.25:                               # %for.end.loopexit.i.us.loopexit
                                        #   in Loop: Header=BB4_13 Depth=2
	addi.d	$a1, $a1, -4
	b	.LBB4_10
.LBB4_26:                               # %if.else.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	ld.bu	$a4, $a3, -1
	srli.d	$a2, $a4, 2
	addi.d	$a5, $a2, 32
	add.d	$a2, $s5, $a1
	st.b	$a5, $a2, -4
	slli.d	$a4, $a4, 4
	ori	$a5, $zero, 1
	beq	$a0, $a5, .LBB4_8
# %bb.27:                               # %if.then84.i.us
                                        #   in Loop: Header=BB4_13 Depth=2
	ld.b	$a3, $a3, 0
	srli.d	$a0, $a3, 4
	or	$a0, $a0, $a4
	andi	$a0, $a0, 63
	slli.d	$a3, $a3, 2
	andi	$a3, $a3, 60
	addi.d	$a3, $a3, 32
	b	.LBB4_9
.LBB4_28:                               # %if.end
	move	$a3, $a0
	addi.w	$s2, $s2, -1
	ori	$a0, $zero, 1
	beq	$s2, $a0, .LBB4_4
.LBB4_29:                               # %if.then8
	pcalau12i	$a0, %pc_hi20(.Lstr)
	addi.d	$a0, $a0, %pc_lo12(.Lstr)
	pcaddu18i	$ra, %call36(puts)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB4_30:                               # %for.body.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.w	$a1, $a0, 7
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ld.d	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	ld.d	$s3, $a0, 0
	ld.w	$s4, $a0, 7
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	ld.h	$s5, $a0, 0
	ld.b	$s6, $a0, 2
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.w	$s7, $a0, 0
	ld.h	$s8, $a0, 4
	ori	$s1, $zero, 1000
	.p2align	4, , 16
.LBB4_31:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $fp, 7
	st.d	$s2, $fp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	stx.d	$s3, $fp, $a0
	st.w	$s4, $a1, 7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $fp, $a0
	stx.h	$s5, $fp, $a0
	st.b	$s6, $a1, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$s0, $fp, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a1, $s0, $a0
	stx.w	$s7, $s0, $a0
	addi.w	$s1, $s1, -1
	st.h	$s8, $a1, 4
	bnez	$s1, .LBB4_31
.LBB4_32:                               # %for.end
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	addi.d	$a0, $sp, 152
	move	$a1, $zero
	pcaddu18i	$ra, %call36(gettimeofday)
	jirl	$ra, $ra, 0
	addi.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" \nend"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.1:
	.asciz	"begin 640 "
	.size	.L.str.1, 11

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	" \n"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"r"
	.size	.L.str.3, 2

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.5:
	.asciz	"uuencode.c"
	.size	.L.str.5, 11

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"%d\n"
	.size	.L.str.6, 4

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Usage: uuencode [infile]"
	.size	.Lstr, 25

	.section	".note.GNU-stack","",@progbits
	.addrsig
