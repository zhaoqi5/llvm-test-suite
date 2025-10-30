	.file	"pr56866.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1648
	sub.d	$sp, $sp, $a0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1632
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 2040
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2652
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 1020
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1106
	ori	$a2, $zero, 510
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 337
	ori	$a2, $zero, 255
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, -484676
	ori	$a0, $a0, 3567
	lu32i.d	$a0, 214375
	lu52i.d	$a0, $a0, 18
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1624
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	lu12i.w	$a0, 4660
	ori	$a0, $a0, 1383
	ori	$a1, $zero, 2648
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	lu12i.w	$a0, 4
	ori	$a0, $a0, 1383
	st.h	$a0, $sp, 1104
	ori	$a0, $zero, 115
	st.b	$a0, $sp, 336
	lu12i.w	$a0, 1
	ori	$a0, $a0, 1624
	add.d	$a0, $sp, $a0
	st.d	$a0, $sp, 72
	ori	$a1, $zero, 2648
	add.d	$a1, $sp, $a1
	st.d	$a1, $sp, 64
	addi.d	$a1, $sp, 1104
	st.d	$a1, $sp, 56
	addi.d	$a1, $sp, 336
	st.d	$a1, $sp, 48
	addi.d	$a1, $sp, 48
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 64
	addi.d	$a4, $sp, 72
	#APP
	#NO_APP
	move	$a1, $zero
	ori	$a2, $zero, 3672
	add.d	$a2, $sp, $a2
	ori	$a3, $zero, 2048
	.p2align	4, , 16
.LBB0_1:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a1, $a0
	add.d	$a4, $a0, $a1
	vld	$vr1, $a4, 16
	vsrli.d	$vr2, $vr0, 8
	vslli.d	$vr0, $vr0, 56
	vor.v	$vr0, $vr0, $vr2
	vsrli.d	$vr2, $vr1, 8
	vslli.d	$vr1, $vr1, 56
	vor.v	$vr1, $vr1, $vr2
	add.d	$a4, $a2, $a1
	vstx	$vr0, $a1, $a2
	addi.d	$a1, $a1, 32
	vst	$vr1, $a4, 16
	bne	$a1, $a3, .LBB0_1
# %bb.2:                                # %vector.body38.preheader
	move	$a0, $zero
	ori	$a1, $zero, 2648
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1624
	ori	$a3, $zero, 1024
	.p2align	4, , 16
.LBB0_3:                                # %vector.body38
                                        # =>This Inner Loop Header: Depth=1
	vldx	$vr0, $a0, $a1
	add.d	$a4, $a1, $a0
	vld	$vr1, $a4, 16
	vsrli.w	$vr2, $vr0, 8
	vslli.w	$vr0, $vr0, 24
	vor.v	$vr0, $vr0, $vr2
	vsrli.w	$vr2, $vr1, 8
	vslli.w	$vr1, $vr1, 24
	vor.v	$vr1, $vr1, $vr2
	add.d	$a4, $a2, $a0
	vstx	$vr0, $a0, $a2
	addi.d	$a0, $a0, 32
	vst	$vr1, $a4, 16
	bne	$a0, $a3, .LBB0_3
# %bb.4:                                # %vector.body45
	vld	$vr0, $sp, 1104
	vld	$vr1, $sp, 1120
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vsrli.h	$vr2, $vr1, 9
	vslli.h	$vr1, $vr1, 7
	vor.v	$vr1, $vr1, $vr2
	vld	$vr2, $sp, 1136
	vst	$vr0, $sp, 592
	vst	$vr1, $sp, 608
	vld	$vr0, $sp, 1152
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1168
	vst	$vr1, $sp, 624
	vst	$vr0, $sp, 640
	vld	$vr0, $sp, 1184
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1200
	vst	$vr1, $sp, 656
	vst	$vr0, $sp, 672
	vld	$vr0, $sp, 1216
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1232
	vst	$vr1, $sp, 688
	vst	$vr0, $sp, 704
	vld	$vr0, $sp, 1248
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1264
	vst	$vr1, $sp, 720
	vst	$vr0, $sp, 736
	vld	$vr0, $sp, 1280
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1296
	vst	$vr1, $sp, 752
	vst	$vr0, $sp, 768
	vld	$vr0, $sp, 1312
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1328
	vst	$vr1, $sp, 784
	vst	$vr0, $sp, 800
	vld	$vr0, $sp, 1344
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1360
	vst	$vr1, $sp, 816
	vst	$vr0, $sp, 832
	vld	$vr0, $sp, 1376
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1392
	vst	$vr1, $sp, 848
	vst	$vr0, $sp, 864
	vld	$vr0, $sp, 1408
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1424
	vst	$vr1, $sp, 880
	vst	$vr0, $sp, 896
	vld	$vr0, $sp, 1440
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1456
	vst	$vr1, $sp, 912
	vst	$vr0, $sp, 928
	vld	$vr0, $sp, 1472
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1488
	vst	$vr1, $sp, 944
	vst	$vr0, $sp, 960
	vld	$vr0, $sp, 1504
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1520
	vst	$vr1, $sp, 976
	vst	$vr0, $sp, 992
	vld	$vr0, $sp, 1536
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1552
	vst	$vr1, $sp, 1008
	vst	$vr0, $sp, 1024
	vld	$vr0, $sp, 1568
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 1584
	vst	$vr1, $sp, 1040
	vst	$vr0, $sp, 1056
	vld	$vr0, $sp, 1600
	vsrli.h	$vr1, $vr2, 9
	vslli.h	$vr2, $vr2, 7
	vor.v	$vr1, $vr2, $vr1
	vsrli.h	$vr2, $vr0, 9
	vslli.h	$vr0, $vr0, 7
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 336
	vst	$vr1, $sp, 1072
	vst	$vr0, $sp, 1088
	vld	$vr0, $sp, 352
	vsrli.b	$vr1, $vr2, 5
	vslli.b	$vr2, $vr2, 3
	vor.v	$vr1, $vr2, $vr1
	vsrli.b	$vr2, $vr0, 5
	vslli.b	$vr0, $vr0, 3
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 368
	vst	$vr1, $sp, 80
	vst	$vr0, $sp, 96
	vld	$vr0, $sp, 384
	vsrli.b	$vr1, $vr2, 5
	vslli.b	$vr2, $vr2, 3
	vor.v	$vr1, $vr2, $vr1
	vsrli.b	$vr2, $vr0, 5
	vslli.b	$vr0, $vr0, 3
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 400
	vst	$vr1, $sp, 112
	vst	$vr0, $sp, 128
	vld	$vr0, $sp, 416
	vsrli.b	$vr1, $vr2, 5
	vslli.b	$vr2, $vr2, 3
	vor.v	$vr1, $vr2, $vr1
	vsrli.b	$vr2, $vr0, 5
	vslli.b	$vr0, $vr0, 3
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 432
	vst	$vr1, $sp, 144
	vst	$vr0, $sp, 160
	vld	$vr0, $sp, 448
	vsrli.b	$vr1, $vr2, 5
	vslli.b	$vr2, $vr2, 3
	vor.v	$vr1, $vr2, $vr1
	vsrli.b	$vr2, $vr0, 5
	vslli.b	$vr0, $vr0, 3
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 464
	vst	$vr1, $sp, 176
	vst	$vr0, $sp, 192
	vld	$vr0, $sp, 480
	vsrli.b	$vr1, $vr2, 5
	vslli.b	$vr2, $vr2, 3
	vor.v	$vr1, $vr2, $vr1
	vsrli.b	$vr2, $vr0, 5
	vslli.b	$vr0, $vr0, 3
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 496
	vst	$vr1, $sp, 208
	vst	$vr0, $sp, 224
	vld	$vr0, $sp, 512
	vsrli.b	$vr1, $vr2, 5
	vslli.b	$vr2, $vr2, 3
	vor.v	$vr1, $vr2, $vr1
	vsrli.b	$vr2, $vr0, 5
	vslli.b	$vr0, $vr0, 3
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 528
	vst	$vr1, $sp, 240
	vst	$vr0, $sp, 256
	vld	$vr0, $sp, 544
	vsrli.b	$vr1, $vr2, 5
	vslli.b	$vr2, $vr2, 3
	vor.v	$vr1, $vr2, $vr1
	vsrli.b	$vr2, $vr0, 5
	vslli.b	$vr0, $vr0, 3
	vor.v	$vr0, $vr0, $vr2
	vld	$vr2, $sp, 560
	vst	$vr1, $sp, 272
	vst	$vr0, $sp, 288
	vld	$vr0, $sp, 576
	vsrli.b	$vr1, $vr2, 5
	vslli.b	$vr2, $vr2, 3
	vor.v	$vr1, $vr2, $vr1
	vsrli.b	$vr2, $vr0, 5
	vslli.b	$vr0, $vr0, 3
	vor.v	$vr0, $vr0, $vr2
	vst	$vr1, $sp, 304
	vst	$vr0, $sp, 320
	ori	$a0, $zero, 3672
	add.d	$a0, $sp, $a0
	st.d	$a0, $sp, 40
	addi.d	$a0, $sp, 1624
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 592
	st.d	$a0, $sp, 24
	addi.d	$a0, $sp, 80
	st.d	$a0, $sp, 16
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 24
	addi.d	$a2, $sp, 32
	addi.d	$a3, $sp, 40
	#APP
	#NO_APP
	ori	$a0, $zero, 3672
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	lu12i.w	$a1, 424090
	ori	$a1, $a1, 3021
	lu32i.d	$a1, 74565
	lu52i.d	$a1, $a1, -272
	bne	$a0, $a1, .LBB0_13
# %bb.5:                                # %vector.body45
	ori	$a0, $zero, 3680
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	bnez	$a0, .LBB0_13
# %bb.6:                                # %if.end
	ld.w	$a0, $sp, 1624
	lu12i.w	$a1, 421906
	ori	$a1, $a1, 837
	bne	$a0, $a1, .LBB0_13
# %bb.7:                                # %if.end
	ld.w	$a0, $sp, 1628
	bnez	$a0, .LBB0_13
# %bb.8:                                # %if.end82
	ld.hu	$a0, $sp, 592
	lu12i.w	$a1, 11
	ori	$a1, $a1, 930
	bne	$a0, $a1, .LBB0_13
# %bb.9:                                # %if.end82
	ld.hu	$a0, $sp, 594
	bnez	$a0, .LBB0_13
# %bb.10:                               # %if.end92
	ld.bu	$a0, $sp, 80
	ori	$a1, $zero, 155
	bne	$a0, $a1, .LBB0_13
# %bb.11:                               # %if.end92
	ld.bu	$a0, $sp, 81
	bnez	$a0, .LBB0_13
# %bb.12:                               # %if.end102
	move	$a0, $zero
	lu12i.w	$a1, 1
	ori	$a1, $a1, 1648
	add.d	$sp, $sp, $a1
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB0_13:                               # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
