	.file	"rmatmult3.c"
	.text
	.globl	rmatmult3                       # -- Begin function rmatmult3
	.p2align	5
	.type	rmatmult3,@function
rmatmult3:                              # @rmatmult3
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -1120
	st.d	$ra, $sp, 1112                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1104                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1096                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1088                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1080                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1072                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1064                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1056                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1048                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1040                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1032                  # 8-byte Folded Spill
	ld.w	$t1, $a0, 16
	ld.w	$a4, $a0, 28
	st.d	$a3, $sp, 1024                  # 8-byte Folded Spill
	st.d	$a2, $sp, 656                   # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	bge	$t1, $a4, .LBB0_53
# %bb.1:                                # %for.cond141.preheader.lr.ph
	move	$a3, $a1
	ld.w	$a1, $a0, 12
	ld.w	$a2, $a0, 24
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 648                   # 8-byte Folded Spill
	bge	$a1, $a2, .LBB0_53
# %bb.2:                                # %for.cond141.preheader.us.preheader
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	ld.w	$a7, $a0, 8
	ld.w	$a4, $a0, 20
	st.d	$a4, $sp, 688                   # 8-byte Folded Spill
	ld.w	$t4, $a0, 68
	ld.w	$t5, $a0, 72
	ld.d	$a0, $a3, 0
	st.d	$a0, $sp, 1016                  # 8-byte Folded Spill
	ld.d	$a0, $a3, 8
	st.d	$a0, $sp, 680                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 16
	st.d	$a0, $sp, 1008                  # 8-byte Folded Spill
	ld.d	$a0, $a3, 24
	st.d	$a0, $sp, 1000                  # 8-byte Folded Spill
	ld.d	$a0, $a3, 32
	st.d	$a0, $sp, 992                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 40
	st.d	$a0, $sp, 984                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 48
	st.d	$a0, $sp, 976                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 56
	st.d	$a0, $sp, 968                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 64
	st.d	$a0, $sp, 960                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 72
	st.d	$a0, $sp, 952                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 80
	st.d	$a0, $sp, 944                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 88
	st.d	$a0, $sp, 936                   # 8-byte Folded Spill
	ld.d	$a0, $a3, 96
	st.d	$a0, $sp, 928                   # 8-byte Folded Spill
	ld.d	$s4, $a3, 104
	ld.d	$s5, $a3, 112
	ld.d	$s6, $a3, 120
	ld.d	$s7, $a3, 128
	ld.d	$s8, $a3, 136
	ld.d	$ra, $a3, 144
	ld.d	$a0, $a3, 152
	st.d	$a0, $sp, 920                   # 8-byte Folded Spill
	mul.d	$a0, $t1, $t5
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $t4
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$t7, $a3, 160
	ld.d	$t8, $a3, 168
	ld.d	$fp, $a3, 176
	ld.d	$s0, $a3, 184
	ld.d	$s1, $a3, 192
	ld.d	$s2, $a3, 200
	ld.d	$s3, $a3, 208
	nor	$a0, $a7, $zero
	add.d	$a0, $a0, $a4
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	slli.d	$a0, $a7, 3
	ld.d	$a5, $sp, 656                   # 8-byte Folded Reload
	sub.d	$a1, $a5, $a0
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 640                   # 8-byte Folded Spill
	slli.d	$a1, $t5, 3
	slli.d	$a2, $t4, 3
	addi.d	$t0, $a5, -8
	sub.d	$a3, $a1, $a2
	add.d	$a3, $t0, $a3
	st.d	$a3, $sp, 432                   # 8-byte Folded Spill
	add.d	$a3, $t4, $a7
	slli.d	$a3, $a3, 3
	sub.d	$a3, $a5, $a3
	addi.d	$a3, $a3, 8
	st.d	$a3, $sp, 464                   # 8-byte Folded Spill
	sub.d	$a3, $a5, $a1
	sub.d	$a1, $a2, $a1
	add.d	$a1, $t0, $a1
	st.d	$a1, $sp, 424                   # 8-byte Folded Spill
	add.d	$a1, $t5, $a7
	slli.d	$a4, $a1, 3
	sub.d	$a4, $a5, $a4
	addi.d	$a4, $a4, 8
	st.d	$a4, $sp, 456                   # 8-byte Folded Spill
	sub.d	$a6, $a3, $a2
	sub.d	$t2, $a5, $a2
	alsl.d	$a4, $t5, $a5, 3
	sub.d	$t3, $a4, $a2
	alsl.d	$a2, $t5, $a2, 3
	sub.d	$t6, $a5, $a2
	add.d	$a1, $a1, $t4
	slli.d	$a1, $a1, 3
	sub.d	$a2, $a5, $a1
	ld.d	$a1, $sp, 1024                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1016                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 680                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1008                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 1000                  # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 992                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 984                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 976                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 968                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 960                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 952                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 944                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 936                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 928                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 912                   # 8-byte Folded Spill
	sub.d	$a1, $s4, $a0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 904                   # 8-byte Folded Spill
	sub.d	$a1, $s5, $a0
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 896                   # 8-byte Folded Spill
	sub.d	$a1, $s6, $a0
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 888                   # 8-byte Folded Spill
	sub.d	$a1, $s7, $a0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 880                   # 8-byte Folded Spill
	sub.d	$a1, $s8, $a0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	st.d	$ra, $sp, 872                   # 8-byte Folded Spill
	sub.d	$a1, $ra, $a0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 920                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	st.d	$t7, $sp, 864                   # 8-byte Folded Spill
	sub.d	$a1, $t7, $a0
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	st.d	$t8, $sp, 856                   # 8-byte Folded Spill
	sub.d	$a1, $t8, $a0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 848                   # 8-byte Folded Spill
	sub.d	$a1, $fp, $a0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 840                   # 8-byte Folded Spill
	sub.d	$a1, $s0, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	sub.d	$a1, $s1, $a0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 832                   # 8-byte Folded Spill
	sub.d	$a1, $s2, $a0
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	ld.d	$t7, $sp, 688                   # 8-byte Folded Reload
	sub.d	$a1, $t7, $a7
	st.d	$s3, $sp, 824                   # 8-byte Folded Spill
	sub.d	$a0, $s3, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $sp, 664                   # 8-byte Folded Spill
	bstrins.d	$a1, $zero, 1, 0
	addi.d	$a0, $a6, -8
	st.d	$a0, $sp, 776                   # 8-byte Folded Spill
	st.d	$a6, $sp, 808                   # 8-byte Folded Spill
	addi.d	$a0, $a6, 8
	st.d	$a0, $sp, 768                   # 8-byte Folded Spill
	addi.d	$a0, $a3, -8
	st.d	$a0, $sp, 624                   # 8-byte Folded Spill
	addi.d	$a0, $a3, 8
	st.d	$a0, $sp, 608                   # 8-byte Folded Spill
	st.d	$a3, $sp, 816                   # 8-byte Folded Spill
	alsl.d	$a0, $t4, $a3, 3
	addi.d	$a3, $a0, -8
	st.d	$a3, $sp, 592                   # 8-byte Folded Spill
	st.d	$a0, $sp, 600                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 584                   # 8-byte Folded Spill
	addi.d	$a0, $t2, -8
	st.d	$a0, $sp, 616                   # 8-byte Folded Spill
	st.d	$t2, $sp, 800                   # 8-byte Folded Spill
	addi.d	$a0, $t2, 8
	st.d	$a0, $sp, 576                   # 8-byte Folded Spill
	addi.d	$a0, $a5, 8
	st.d	$a0, $sp, 568                   # 8-byte Folded Spill
	alsl.d	$a0, $t4, $a5, 3
	addi.d	$a3, $a0, -8
	st.d	$a3, $sp, 552                   # 8-byte Folded Spill
	st.d	$a0, $sp, 560                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 544                   # 8-byte Folded Spill
	addi.d	$a0, $t3, -8
	st.d	$a0, $sp, 536                   # 8-byte Folded Spill
	st.d	$t3, $sp, 784                   # 8-byte Folded Spill
	addi.d	$a0, $t3, 8
	st.d	$a0, $sp, 528                   # 8-byte Folded Spill
	addi.d	$a0, $a4, -8
	st.d	$a0, $sp, 520                   # 8-byte Folded Spill
	addi.d	$a0, $a4, 8
	st.d	$a0, $sp, 512                   # 8-byte Folded Spill
	st.d	$a4, $sp, 792                   # 8-byte Folded Spill
	alsl.d	$a0, $t4, $a4, 3
	addi.d	$a3, $a0, -8
	st.d	$a3, $sp, 496                   # 8-byte Folded Spill
	st.d	$a0, $sp, 504                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 488                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a7
	alsl.d	$a3, $t4, $t0, 3
	st.d	$a3, $sp, 344                   # 8-byte Folded Spill
	alsl.d	$a3, $t5, $a3, 3
	st.d	$a3, $sp, 336                   # 8-byte Folded Spill
	add.d	$a3, $t7, $t5
	st.d	$a3, $sp, 328                   # 8-byte Folded Spill
	add.d	$a3, $a3, $t4
	st.d	$a3, $sp, 320                   # 8-byte Folded Spill
	st.d	$t5, $sp, 48                    # 8-byte Folded Spill
	st.d	$t0, $sp, 632                   # 8-byte Folded Spill
	alsl.d	$a3, $t5, $t0, 3
	st.d	$a3, $sp, 312                   # 8-byte Folded Spill
	st.d	$t4, $sp, 696                   # 8-byte Folded Spill
	add.d	$a3, $t7, $t4
	st.d	$a3, $sp, 304                   # 8-byte Folded Spill
	addi.d	$a3, $t6, 8
	st.d	$a3, $sp, 296                   # 8-byte Folded Spill
	addi.d	$a3, $a2, 8
	st.d	$a3, $sp, 288                   # 8-byte Folded Spill
	st.d	$t6, $sp, 416                   # 8-byte Folded Spill
	addi.d	$a3, $t6, -8
	st.d	$a3, $sp, 280                   # 8-byte Folded Spill
	st.d	$a2, $sp, 408                   # 8-byte Folded Spill
	addi.d	$a2, $a2, -8
	st.d	$a2, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	add.d	$a2, $a0, $a2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a7, $sp, 760                   # 8-byte Folded Spill
	st.d	$a1, $sp, 352                   # 8-byte Folded Spill
	add.d	$a1, $a1, $a7
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.cond141.for.inc287_crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	addi.w	$t1, $t1, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.w	$a0, $a0, $a2
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	beq	$t1, $a2, .LBB0_53
.LBB0_4:                                # %for.cond141.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_8 Depth 3
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 760                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 688                   # 8-byte Folded Reload
	bge	$a2, $a3, .LBB0_3
# %bb.5:                                # %for.cond144.preheader.us.us.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	st.d	$zero, $sp, 720                 # 8-byte Folded Spill
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a2, $a3, $a2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 480                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a2, $a0
	st.d	$a0, $sp, 472                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_6:                                # %for.cond144.preheader.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_8 Depth 3
	st.d	$a1, $sp, 704                   # 8-byte Folded Spill
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 656                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 672                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 632                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 608                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 600                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 592                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 584                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 576                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 568                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 520                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 496                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 488                   # 8-byte Folded Reload
	ori	$t4, $zero, 12
	move	$s5, $t5
	bgeu	$a2, $t4, .LBB0_10
.LBB0_7:                                # %for.body146.us.us.preheader
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 728                   # 8-byte Folded Reload
	add.w	$t4, $a2, $t1
	ld.d	$a2, $sp, 688                   # 8-byte Folded Reload
	sub.d	$t1, $a2, $t1
	.p2align	4, , 16
.LBB0_8:                                # %for.body146.us.us
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a2, $t4, 3
	ld.d	$t7, $sp, 1016                  # 8-byte Folded Reload
	fldx.d	$fa0, $t7, $a2
	ld.d	$a3, $sp, 776                   # 8-byte Folded Reload
	fldx.d	$fa1, $a3, $a2
	fldx.d	$fa2, $t6, $a2
	ld.d	$t7, $sp, 808                   # 8-byte Folded Reload
	fldx.d	$fa3, $t7, $a2
	ld.d	$t7, $sp, 1008                  # 8-byte Folded Reload
	fldx.d	$fa4, $t7, $a2
	ld.d	$t7, $sp, 768                   # 8-byte Folded Reload
	fldx.d	$fa5, $t7, $a2
	fmul.d	$fa2, $fa2, $fa3
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	ld.d	$t7, $sp, 1000                  # 8-byte Folded Reload
	fldx.d	$fa1, $t7, $a2
	fldx.d	$fa2, $s1, $a2
	ld.d	$t7, $sp, 992                   # 8-byte Folded Reload
	fldx.d	$fa3, $t7, $a2
	ld.d	$t7, $sp, 816                   # 8-byte Folded Reload
	fldx.d	$fa4, $t7, $a2
	ld.d	$t7, $sp, 984                   # 8-byte Folded Reload
	fldx.d	$fa5, $t7, $a2
	fldx.d	$fa6, $ra, $a2
	ld.d	$t7, $sp, 976                   # 8-byte Folded Reload
	fldx.d	$fa7, $t7, $a2
	fldx.d	$ft0, $a5, $a2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	ld.d	$t7, $sp, 968                   # 8-byte Folded Reload
	fldx.d	$fa1, $t7, $a2
	fldx.d	$fa2, $a6, $a2
	ld.d	$t7, $sp, 960                   # 8-byte Folded Reload
	fldx.d	$fa3, $t7, $a2
	fldx.d	$fa4, $s6, $a2
	ld.d	$t7, $sp, 952                   # 8-byte Folded Reload
	fldx.d	$fa5, $t7, $a2
	fldx.d	$fa6, $s8, $a2
	ld.d	$t7, $sp, 944                   # 8-byte Folded Reload
	fldx.d	$fa7, $t7, $a2
	ld.d	$t7, $sp, 800                   # 8-byte Folded Reload
	fldx.d	$ft0, $t7, $a2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	ld.d	$t7, $sp, 936                   # 8-byte Folded Reload
	fldx.d	$fa1, $t7, $a2
	fldx.d	$fa2, $a0, $a2
	ld.d	$t7, $sp, 928                   # 8-byte Folded Reload
	fldx.d	$fa3, $t7, $a2
	fldx.d	$fa4, $t8, $a2
	ld.d	$t7, $sp, 912                   # 8-byte Folded Reload
	fldx.d	$fa5, $t7, $a2
	fldx.d	$fa6, $t5, $a2
	ld.d	$t5, $sp, 904                   # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $a2
	fldx.d	$ft0, $fp, $a2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	ld.d	$t5, $sp, 896                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $a2
	fldx.d	$fa2, $s0, $a2
	ld.d	$t5, $sp, 888                   # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $a2
	fldx.d	$fa4, $a4, $a2
	ld.d	$t5, $sp, 880                   # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $a2
	fldx.d	$fa6, $a1, $a2
	ld.d	$t5, $sp, 872                   # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $a2
	fldx.d	$ft0, $s2, $a2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	ld.d	$t5, $sp, 920                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $a2
	ld.d	$t5, $sp, 784                   # 8-byte Folded Reload
	fldx.d	$fa2, $t5, $a2
	ld.d	$t5, $sp, 864                   # 8-byte Folded Reload
	fldx.d	$fa3, $t5, $a2
	fldx.d	$fa4, $t0, $a2
	ld.d	$t5, $sp, 856                   # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $a2
	fldx.d	$fa6, $s3, $a2
	ld.d	$t5, $sp, 848                   # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $a2
	ld.d	$t5, $sp, 792                   # 8-byte Folded Reload
	fldx.d	$ft0, $t5, $a2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	ld.d	$t5, $sp, 840                   # 8-byte Folded Reload
	fldx.d	$fa1, $t5, $a2
	fldx.d	$fa2, $a7, $a2
	fldx.d	$fa3, $s7, $a2
	fldx.d	$fa4, $t2, $a2
	ld.d	$t5, $sp, 832                   # 8-byte Folded Reload
	fldx.d	$fa5, $t5, $a2
	fldx.d	$fa6, $s4, $a2
	ld.d	$t5, $sp, 824                   # 8-byte Folded Reload
	fldx.d	$fa7, $t5, $a2
	fldx.d	$ft0, $t3, $a2
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fmadd.d	$fa0, $fa3, $fa4, $fa0
	fmadd.d	$fa0, $fa5, $fa6, $fa0
	fmadd.d	$fa0, $fa7, $ft0, $fa0
	ld.d	$t5, $sp, 1024                  # 8-byte Folded Reload
	fstx.d	$fa0, $t5, $a2
	move	$t5, $s5
	addi.d	$t1, $t1, -1
	addi.w	$t4, $t4, 1
	bnez	$t1, .LBB0_8
.LBB0_9:                                # %for.cond144.for.inc284_crit_edge.us.us
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a1, $sp, 704                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	ld.d	$a0, $sp, 720                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 720                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 696                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 712                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a2
	st.d	$a0, $sp, 712                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 728                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 728                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 648                   # 8-byte Folded Reload
	bne	$a1, $a2, .LBB0_6
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_10:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 696                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 720                   # 8-byte Folded Reload
	mul.d	$a2, $a2, $t1
	ld.d	$t1, $sp, 480                   # 8-byte Folded Reload
	add.w	$a3, $t1, $a2
	ld.d	$t1, $sp, 472                   # 8-byte Folded Reload
	add.w	$a2, $a2, $t1
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	blt	$a2, $a3, .LBB0_7
# %bb.11:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 440                   # 8-byte Folded Reload
	srli.d	$a2, $a2, 32
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.12:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 1024                  # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	st.d	$a2, $sp, 752                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 688                   # 8-byte Folded Reload
	add.d	$t7, $a2, $a3
	ld.d	$a2, $sp, 400                   # 8-byte Folded Reload
	alsl.d	$t4, $t7, $a2, 3
	ld.d	$a2, $sp, 1016                  # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 392                   # 8-byte Folded Reload
	st.d	$t7, $sp, 736                   # 8-byte Folded Spill
	alsl.d	$t1, $t7, $t1, 3
	ld.d	$t7, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t7, $t1
	st.d	$t4, $sp, 744                   # 8-byte Folded Spill
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.13:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 320                   # 8-byte Folded Reload
	add.d	$t1, $t1, $a3
	ld.d	$t4, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t1, $t1, $t4, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.14:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	alsl.d	$t7, $a3, $a2, 3
	ld.d	$a2, $sp, 328                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$t4, $sp, 640                   # 8-byte Folded Reload
	alsl.d	$t4, $a2, $t4, 3
	ld.d	$t1, $sp, 752                   # 8-byte Folded Reload
	sltu	$t4, $t1, $t4
	ld.d	$t1, $sp, 744                   # 8-byte Folded Reload
	sltu	$t1, $t7, $t1
	and	$t4, $t4, $t1
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$t4, .LBB0_7
# %bb.15:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$t1, $sp, 432                   # 8-byte Folded Reload
	alsl.d	$t1, $a3, $t1, 3
	ld.d	$t4, $sp, 464                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $t4, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$a2, $t4, $a2
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$t1, $t1, $t4
	and	$a2, $a2, $t1
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.16:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 344                   # 8-byte Folded Reload
	alsl.d	$t1, $a3, $a2, 3
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a3
	ld.d	$t4, $sp, 640                   # 8-byte Folded Reload
	st.d	$a2, $sp, 448                   # 8-byte Folded Spill
	alsl.d	$t4, $a2, $t4, 3
	ld.d	$a2, $sp, 752                   # 8-byte Folded Reload
	sltu	$t4, $a2, $t4
	ld.d	$a2, $sp, 744                   # 8-byte Folded Reload
	sltu	$t1, $t1, $a2
	and	$t4, $t4, $t1
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$t4, .LBB0_7
# %bb.17:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	alsl.d	$t1, $a3, $t8, 3
	ld.d	$t4, $sp, 640                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t4, $a2, $t4, 3
	ld.d	$a2, $sp, 752                   # 8-byte Folded Reload
	sltu	$t4, $a2, $t4
	ld.d	$a2, $sp, 744                   # 8-byte Folded Reload
	sltu	$t1, $t1, $a2
	and	$t4, $t4, $t1
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$t4, .LBB0_7
# %bb.18:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	alsl.d	$t1, $a3, $s8, 3
	ld.d	$t4, $sp, 464                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t4, $a2, $t4, 3
	ld.d	$a2, $sp, 752                   # 8-byte Folded Reload
	sltu	$t4, $a2, $t4
	ld.d	$a2, $sp, 744                   # 8-byte Folded Reload
	sltu	$t1, $t1, $a2
	and	$t4, $t4, $t1
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$t4, .LBB0_7
# %bb.19:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$t1, $sp, 424                   # 8-byte Folded Reload
	alsl.d	$t1, $a3, $t1, 3
	ld.d	$t4, $sp, 456                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 448                   # 8-byte Folded Reload
	alsl.d	$a2, $a2, $t4, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$a2, $t4, $a2
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$t1, $t1, $t4
	and	$a2, $a2, $t1
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.20:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	alsl.d	$a2, $a3, $s1, 3
	ld.d	$t1, $sp, 456                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.21:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 296                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.22:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 416                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 408                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.23:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 280                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.24:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 680                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 384                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.25:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 1008                  # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 376                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.26:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 1000                  # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 368                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.27:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 992                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.28:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 984                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.29:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 976                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.30:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 968                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.31:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 960                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.32:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 952                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.33:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 944                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.34:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 936                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.35:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 928                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.36:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 912                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.37:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 904                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.38:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 896                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.39:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 888                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.40:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 880                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.41:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 872                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.42:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 920                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.43:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 864                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.44:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 856                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.45:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 848                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.46:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 840                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.47:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 672                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.48:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 832                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $t4, $t1, 3
	ld.d	$t4, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $t4, $t1
	ld.d	$t4, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $t4
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.49:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$a2, $sp, 824                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 3
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 736                   # 8-byte Folded Reload
	alsl.d	$t1, $a3, $t1, 3
	ld.d	$a3, $sp, 752                   # 8-byte Folded Reload
	sltu	$t1, $a3, $t1
	ld.d	$a3, $sp, 744                   # 8-byte Folded Reload
	sltu	$a2, $a2, $a3
	and	$a2, $t1, $a2
	ld.d	$t1, $sp, 760                   # 8-byte Folded Reload
	bnez	$a2, .LBB0_7
# %bb.50:                               # %vector.ph
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$t1, $sp, 352                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 712                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_51:                               # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli.d	$a2, $t4, 3
	ld.d	$t7, $sp, 1016                  # 8-byte Folded Reload
	xvldx	$xr0, $t7, $a2
	ld.d	$a3, $sp, 776                   # 8-byte Folded Reload
	xvldx	$xr1, $a3, $a2
	xvldx	$xr2, $t6, $a2
	ld.d	$t7, $sp, 808                   # 8-byte Folded Reload
	xvldx	$xr3, $t7, $a2
	ld.d	$t7, $sp, 1008                  # 8-byte Folded Reload
	xvldx	$xr4, $t7, $a2
	ld.d	$t7, $sp, 768                   # 8-byte Folded Reload
	xvldx	$xr5, $t7, $a2
	xvfmul.d	$xr2, $xr2, $xr3
	xvfmadd.d	$xr0, $xr0, $xr1, $xr2
	xvfmadd.d	$xr0, $xr4, $xr5, $xr0
	ld.d	$t7, $sp, 1000                  # 8-byte Folded Reload
	xvldx	$xr1, $t7, $a2
	xvldx	$xr2, $s1, $a2
	ld.d	$t7, $sp, 992                   # 8-byte Folded Reload
	xvldx	$xr3, $t7, $a2
	ld.d	$t7, $sp, 816                   # 8-byte Folded Reload
	xvldx	$xr4, $t7, $a2
	ld.d	$t7, $sp, 984                   # 8-byte Folded Reload
	xvldx	$xr5, $t7, $a2
	xvldx	$xr6, $ra, $a2
	ld.d	$t7, $sp, 976                   # 8-byte Folded Reload
	xvldx	$xr7, $t7, $a2
	xvldx	$xr8, $a5, $a2
	xvfmadd.d	$xr0, $xr1, $xr2, $xr0
	xvfmadd.d	$xr0, $xr3, $xr4, $xr0
	xvfmadd.d	$xr0, $xr5, $xr6, $xr0
	xvfmadd.d	$xr0, $xr7, $xr8, $xr0
	ld.d	$t7, $sp, 968                   # 8-byte Folded Reload
	xvldx	$xr1, $t7, $a2
	xvldx	$xr2, $a6, $a2
	ld.d	$t7, $sp, 960                   # 8-byte Folded Reload
	xvldx	$xr3, $t7, $a2
	xvldx	$xr4, $s6, $a2
	ld.d	$t7, $sp, 952                   # 8-byte Folded Reload
	xvldx	$xr5, $t7, $a2
	xvldx	$xr6, $s8, $a2
	ld.d	$t7, $sp, 944                   # 8-byte Folded Reload
	xvldx	$xr7, $t7, $a2
	ld.d	$t7, $sp, 800                   # 8-byte Folded Reload
	xvldx	$xr8, $t7, $a2
	xvfmadd.d	$xr0, $xr1, $xr2, $xr0
	xvfmadd.d	$xr0, $xr3, $xr4, $xr0
	xvfmadd.d	$xr0, $xr5, $xr6, $xr0
	xvfmadd.d	$xr0, $xr7, $xr8, $xr0
	ld.d	$t7, $sp, 936                   # 8-byte Folded Reload
	xvldx	$xr1, $t7, $a2
	xvldx	$xr2, $a0, $a2
	ld.d	$t7, $sp, 928                   # 8-byte Folded Reload
	xvldx	$xr3, $t7, $a2
	xvldx	$xr4, $t8, $a2
	ld.d	$t7, $sp, 912                   # 8-byte Folded Reload
	xvldx	$xr5, $t7, $a2
	xvldx	$xr6, $t5, $a2
	ld.d	$t5, $sp, 904                   # 8-byte Folded Reload
	xvldx	$xr7, $t5, $a2
	xvldx	$xr8, $fp, $a2
	xvfmadd.d	$xr0, $xr1, $xr2, $xr0
	xvfmadd.d	$xr0, $xr3, $xr4, $xr0
	xvfmadd.d	$xr0, $xr5, $xr6, $xr0
	xvfmadd.d	$xr0, $xr7, $xr8, $xr0
	ld.d	$t5, $sp, 896                   # 8-byte Folded Reload
	xvldx	$xr1, $t5, $a2
	xvldx	$xr2, $s0, $a2
	ld.d	$t5, $sp, 888                   # 8-byte Folded Reload
	xvldx	$xr3, $t5, $a2
	xvldx	$xr4, $a4, $a2
	ld.d	$t5, $sp, 880                   # 8-byte Folded Reload
	xvldx	$xr5, $t5, $a2
	xvldx	$xr6, $a1, $a2
	ld.d	$t5, $sp, 872                   # 8-byte Folded Reload
	xvldx	$xr7, $t5, $a2
	xvldx	$xr8, $s2, $a2
	xvfmadd.d	$xr0, $xr1, $xr2, $xr0
	xvfmadd.d	$xr0, $xr3, $xr4, $xr0
	xvfmadd.d	$xr0, $xr5, $xr6, $xr0
	xvfmadd.d	$xr0, $xr7, $xr8, $xr0
	ld.d	$t5, $sp, 920                   # 8-byte Folded Reload
	xvldx	$xr1, $t5, $a2
	ld.d	$t5, $sp, 784                   # 8-byte Folded Reload
	xvldx	$xr2, $t5, $a2
	ld.d	$t5, $sp, 864                   # 8-byte Folded Reload
	xvldx	$xr3, $t5, $a2
	xvldx	$xr4, $t0, $a2
	ld.d	$t5, $sp, 856                   # 8-byte Folded Reload
	xvldx	$xr5, $t5, $a2
	xvldx	$xr6, $s3, $a2
	ld.d	$t5, $sp, 848                   # 8-byte Folded Reload
	xvldx	$xr7, $t5, $a2
	ld.d	$t5, $sp, 792                   # 8-byte Folded Reload
	xvldx	$xr8, $t5, $a2
	xvfmadd.d	$xr0, $xr1, $xr2, $xr0
	xvfmadd.d	$xr0, $xr3, $xr4, $xr0
	xvfmadd.d	$xr0, $xr5, $xr6, $xr0
	xvfmadd.d	$xr0, $xr7, $xr8, $xr0
	ld.d	$t5, $sp, 840                   # 8-byte Folded Reload
	xvldx	$xr1, $t5, $a2
	xvldx	$xr2, $a7, $a2
	xvldx	$xr3, $s7, $a2
	xvldx	$xr4, $t2, $a2
	ld.d	$t5, $sp, 832                   # 8-byte Folded Reload
	xvldx	$xr5, $t5, $a2
	xvldx	$xr6, $s4, $a2
	ld.d	$t5, $sp, 824                   # 8-byte Folded Reload
	xvldx	$xr7, $t5, $a2
	xvldx	$xr8, $t3, $a2
	xvfmadd.d	$xr0, $xr1, $xr2, $xr0
	xvfmadd.d	$xr0, $xr3, $xr4, $xr0
	xvfmadd.d	$xr0, $xr5, $xr6, $xr0
	xvfmadd.d	$xr0, $xr7, $xr8, $xr0
	ld.d	$t5, $sp, 1024                  # 8-byte Folded Reload
	xvstx	$xr0, $t5, $a2
	move	$t5, $s5
	addi.d	$t1, $t1, -4
	addi.w	$t4, $t4, 4
	bnez	$t1, .LBB0_51
# %bb.52:                               # %middle.block
                                        #   in Loop: Header=BB0_6 Depth=2
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 352                   # 8-byte Folded Reload
	bne	$a2, $t4, .LBB0_7
	b	.LBB0_9
.LBB0_53:                               # %for.end289
	ld.d	$s8, $sp, 1032                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1040                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1048                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1056                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1064                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1072                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1080                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1088                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1096                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1104                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1112                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1120
	ret
.Lfunc_end0:
	.size	rmatmult3, .Lfunc_end0-rmatmult3
                                        # -- End function
	.type	kmin,@object                    # @kmin
	.comm	kmin,4,4
	.type	kmax,@object                    # @kmax
	.comm	kmax,4,4
	.type	jmin,@object                    # @jmin
	.comm	jmin,4,4
	.type	jmax,@object                    # @jmax
	.comm	jmax,4,4
	.type	imin,@object                    # @imin
	.comm	imin,4,4
	.type	imax,@object                    # @imax
	.comm	imax,4,4
	.type	kp,@object                      # @kp
	.comm	kp,4,4
	.type	jp,@object                      # @jp
	.comm	jp,4,4
	.type	i_lb,@object                    # @i_lb
	.comm	i_lb,4,4
	.type	i_ub,@object                    # @i_ub
	.comm	i_ub,4,4
	.type	x_size,@object                  # @x_size
	.comm	x_size,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
