	.file	"boxBlurKernel.c"
	.text
	.globl	boxBlurKernel                   # -- Begin function boxBlurKernel
	.p2align	5
	.type	boxBlurKernel,@function
boxBlurKernel:                          # @boxBlurKernel
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -608
	st.d	$ra, $sp, 600                   # 8-byte Folded Spill
	st.d	$fp, $sp, 592                   # 8-byte Folded Spill
	st.d	$s0, $sp, 584                   # 8-byte Folded Spill
	st.d	$s1, $sp, 576                   # 8-byte Folded Spill
	st.d	$s2, $sp, 568                   # 8-byte Folded Spill
	st.d	$s3, $sp, 560                   # 8-byte Folded Spill
	st.d	$s4, $sp, 552                   # 8-byte Folded Spill
	st.d	$s5, $sp, 544                   # 8-byte Folded Spill
	st.d	$s6, $sp, 536                   # 8-byte Folded Spill
	st.d	$s7, $sp, 528                   # 8-byte Folded Spill
	st.d	$s8, $sp, 520                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 512                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 504                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 496                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 488                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 480                  # 8-byte Folded Spill
	ori	$a4, $zero, 9
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	blt	$a0, $a4, .LBB0_10
# %bb.1:                                # %entry
	blt	$a1, $a4, .LBB0_10
# %bb.2:                                # %for.cond1.preheader.us.preheader
	bstrpick.d	$a2, $a1, 31, 0
	addi.d	$a0, $a0, -4
	addi.d	$a4, $a1, -4
	bstrpick.d	$a6, $a0, 31, 0
	lu12i.w	$a5, 3
	bstrpick.d	$a4, $a4, 31, 0
	lu12i.w	$t7, 2
	alsl.d	$a0, $a2, $a3, 4
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	addi.d	$t1, $a0, 16
	slli.d	$a0, $a6, 2
	addi.d	$a0, $a0, -4
	mul.d	$a0, $a0, $a2
	add.d	$a0, $a3, $a0
	alsl.d	$a0, $a4, $a0, 2
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	slli.d	$a3, $a6, 12
	ld.d	$t6, $sp, 304                   # 8-byte Folded Reload
	add.d	$a3, $t6, $a3
	alsl.d	$a3, $a4, $a3, 2
	ori	$a6, $t7, 12
	add.d	$a3, $a3, $a6
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a4, $a4, -4
	sltu	$a3, $t1, $a3
	sltu	$a0, $t6, $a0
	and	$a0, $a3, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $a4
	bstrins.d	$a0, $zero, 2, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a3, $zero, 4
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	bstrins.d	$a4, $a3, 2, 0
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$t5, 7
	ori	$a0, $t5, 28
	add.d	$a0, $t6, $a0
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	lu12i.w	$a4, 6
	ori	$a0, $a4, 28
	add.d	$t2, $t6, $a0
	lu12i.w	$fp, 5
	ori	$a0, $fp, 28
	add.d	$s2, $t6, $a0
	ori	$a0, $a5, 28
	add.d	$s4, $t6, $a0
	ori	$a0, $t7, 28
	add.d	$s6, $t6, $a0
	slli.d	$a0, $a2, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $a4, 16
	add.d	$s7, $t6, $a0
	ori	$a0, $fp, 16
	add.d	$ra, $t6, $a0
	ori	$a0, $a4, 24
	add.d	$a0, $t6, $a0
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ori	$a0, $fp, 24
	add.d	$a0, $t6, $a0
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ori	$a0, $a5, 16
	add.d	$a0, $t6, $a0
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ori	$a0, $a5, 24
	add.d	$a0, $t6, $a0
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ori	$a0, $t7, 24
	add.d	$a0, $t6, $a0
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ori	$a0, $t7, 16
	add.d	$a0, $t6, $a0
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ori	$a0, $a4, 20
	add.d	$a0, $t6, $a0
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ori	$a0, $fp, 20
	add.d	$a0, $t6, $a0
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ori	$a0, $a5, 20
	add.d	$a0, $t6, $a0
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ori	$a0, $t7, 20
	add.d	$a0, $t6, $a0
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	lu12i.w	$a0, 103563
	ori	$a0, $a0, 253
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	add.d	$a1, $t6, $a5
	add.d	$a0, $t6, $t7
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	lu12i.w	$a7, 1
	add.d	$a0, $t6, $a7
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	lu12i.w	$s0, 4
	add.d	$a0, $t6, $s0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	add.d	$a0, $t6, $fp
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ori	$a0, $a4, 12
	st.d	$a0, $sp, 464                   # 8-byte Folded Spill
	add.d	$t4, $t6, $a0
	ori	$a0, $fp, 12
	st.d	$a0, $sp, 456                   # 8-byte Folded Spill
	add.d	$t0, $t6, $a0
	add.d	$a0, $t6, $a4
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ori	$a0, $a5, 12
	st.d	$a0, $sp, 448                   # 8-byte Folded Spill
	add.d	$t3, $t6, $a0
	st.d	$a6, $sp, 472                   # 8-byte Folded Spill
	add.d	$a6, $t6, $a6
	ori	$a0, $t7, 4
	st.d	$a0, $sp, 440                   # 8-byte Folded Spill
	add.d	$t8, $t6, $a0
	ori	$a0, $a5, 4
	st.d	$a0, $sp, 432                   # 8-byte Folded Spill
	add.d	$s1, $t6, $a0
	ori	$a0, $fp, 4
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	add.d	$s3, $t6, $a0
	ori	$a0, $a4, 8
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	add.d	$s5, $t6, $a0
	ori	$a0, $fp, 8
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	add.d	$s8, $t6, $a0
	ori	$a0, $a4, 4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	add.d	$a4, $t6, $a0
	ori	$a0, $a5, 8
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	add.d	$a5, $t6, $a0
	ori	$a0, $t7, 8
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	add.d	$t6, $t6, $a0
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_3:                                # %for.cond1.for.cond.cleanup4_crit_edge.us
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 1
	ld.d	$a0, $sp, 296                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 296                   # 8-byte Folded Spill
	ld.d	$t2, $sp, 352                   # 8-byte Folded Reload
	add.d	$t2, $t2, $a7
	ld.d	$s2, $sp, 344                   # 8-byte Folded Reload
	add.d	$s2, $s2, $a7
	ld.d	$s4, $sp, 336                   # 8-byte Folded Reload
	add.d	$s4, $s4, $a7
	ld.d	$s6, $sp, 328                   # 8-byte Folded Reload
	add.d	$s6, $s6, $a7
	ld.d	$t1, $sp, 360                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$t1, $t1, $a2
	ld.d	$s7, $sp, 320                   # 8-byte Folded Reload
	add.d	$s7, $s7, $a7
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	add.d	$ra, $ra, $a7
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 304                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a7
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 216                   # 8-byte Folded Reload
	add.d	$t4, $t4, $a7
	ld.d	$t0, $sp, 208                   # 8-byte Folded Reload
	add.d	$t0, $t0, $a7
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a7
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$t3, $sp, 200                   # 8-byte Folded Reload
	add.d	$t3, $t3, $a7
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	add.d	$a6, $a6, $a7
	ld.d	$t8, $sp, 184                   # 8-byte Folded Reload
	add.d	$t8, $t8, $a7
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	add.d	$s1, $s1, $a7
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	add.d	$s3, $s3, $a7
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	add.d	$s5, $s5, $a7
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	add.d	$s8, $s8, $a7
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	add.d	$a4, $a4, $a7
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a7
	ld.d	$t6, $sp, 128                   # 8-byte Folded Reload
	add.d	$t6, $t6, $a7
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beq	$a3, $a0, .LBB0_10
.LBB0_4:                                # %for.cond1.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_9 Depth 2
	st.d	$t6, $sp, 128                   # 8-byte Folded Spill
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$t8, $sp, 184                   # 8-byte Folded Spill
	st.d	$a6, $sp, 192                   # 8-byte Folded Spill
	st.d	$t3, $sp, 200                   # 8-byte Folded Spill
	st.d	$t0, $sp, 208                   # 8-byte Folded Spill
	st.d	$t4, $sp, 216                   # 8-byte Folded Spill
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$s7, $sp, 320                   # 8-byte Folded Spill
	st.d	$s6, $sp, 328                   # 8-byte Folded Spill
	st.d	$s4, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 344                   # 8-byte Folded Spill
	st.d	$t2, $sp, 352                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$t1, $sp, 360                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	sltui	$a0, $a0, 8
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	or	$a0, $a0, $a2
	andi	$a2, $a0, 1
	ori	$a0, $zero, 4
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	lu12i.w	$a5, 3
	lu12i.w	$t7, 2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	lu12i.w	$fp, 6
	lu12i.w	$a1, 5
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	ori	$t6, $zero, 4080
	ori	$t0, $zero, 4084
	ori	$t3, $zero, 4088
	ori	$t8, $zero, 4092
	bnez	$a2, .LBB0_8
# %bb.5:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	move	$s2, $zero
	ld.d	$s7, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	st.d	$a0, $sp, 424                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	st.d	$a0, $sp, 408                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	st.d	$a0, $sp, 400                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	st.d	$a0, $sp, 392                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t4, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	st.d	$a0, $sp, 384                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	st.d	$a0, $sp, 376                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	st.d	$a0, $sp, 416                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 256                   # 8-byte Folded Reload
	move	$s8, $s1
	ld.d	$t2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 232                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_6:                                # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $t4, $s2
	xvldx	$xr0, $t4, $s2
	xvld	$xr1, $a0, 4
	xvld	$xr2, $a0, 8
	xvld	$xr3, $a0, 12
	xvld	$xr4, $a0, 16
	xvld	$xr5, $a0, 20
	xvld	$xr6, $a0, 24
	xvld	$xr7, $a0, 28
	add.d	$a0, $a2, $s2
	xvld	$xr8, $a0, 4
	xvld	$xr9, $a0, 8
	xvld	$xr10, $a0, 12
	xvld	$xr11, $a0, 16
	xvld	$xr12, $a0, 20
	xvld	$xr13, $a0, 24
	xvld	$xr14, $a0, 28
	add.d	$a0, $t2, $s2
	xvld	$xr15, $a0, 4
	xvld	$xr16, $a0, 8
	xvld	$xr17, $a0, 12
	xvld	$xr18, $a0, 16
	xvld	$xr19, $a0, 20
	xvld	$xr20, $a0, 24
	xvld	$xr21, $a0, 28
	add.d	$a0, $t6, $s2
	xvld	$xr22, $a0, -28
	xvld	$xr23, $a0, -24
	xvld	$xr24, $a0, -20
	xvld	$xr26, $a0, -16
	xvld	$xr25, $a0, -12
	xvld	$xr27, $a0, -8
	xvld	$xr28, $a0, -4
	xvadd.w	$xr0, $xr1, $xr0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr0, $xr3, $xr0
	xvadd.w	$xr0, $xr4, $xr0
	xvldx	$xr1, $a2, $s2
	xvadd.w	$xr0, $xr5, $xr0
	xvadd.w	$xr0, $xr6, $xr0
	xvadd.w	$xr0, $xr7, $xr0
	xvadd.w	$xr0, $xr1, $xr0
	xvadd.w	$xr0, $xr8, $xr0
	xvadd.w	$xr0, $xr9, $xr0
	xvadd.w	$xr0, $xr10, $xr0
	xvadd.w	$xr0, $xr11, $xr0
	xvldx	$xr1, $a6, $s2
	xvadd.w	$xr0, $xr12, $xr0
	xvadd.w	$xr0, $xr13, $xr0
	xvadd.w	$xr0, $xr14, $xr0
	xvadd.w	$xr0, $xr1, $xr0
	xvldx	$xr1, $t3, $s2
	xvldx	$xr2, $fp, $s2
	xvldx	$xr3, $t1, $s2
	xvldx	$xr4, $a5, $s2
	xvadd.w	$xr0, $xr1, $xr0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr0, $xr3, $xr0
	xvadd.w	$xr0, $xr4, $xr0
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	xvldx	$xr1, $a0, $s2
	xvldx	$xr2, $s5, $s2
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	xvldx	$xr3, $a0, $s2
	xvldx	$xr4, $a3, $s2
	xvadd.w	$xr0, $xr1, $xr0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr0, $xr3, $xr0
	xvadd.w	$xr0, $xr4, $xr0
	xvldx	$xr1, $t8, $s2
	xvldx	$xr2, $a4, $s2
	xvldx	$xr3, $t0, $s2
	ld.d	$a0, $sp, 408                   # 8-byte Folded Reload
	xvldx	$xr4, $a0, $s2
	xvadd.w	$xr0, $xr1, $xr0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr0, $xr3, $xr0
	xvadd.w	$xr0, $xr4, $xr0
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	xvldx	$xr1, $a0, $s2
	ld.d	$a0, $sp, 400                   # 8-byte Folded Reload
	xvldx	$xr2, $a0, $s2
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	xvldx	$xr3, $a0, $s2
	xvldx	$xr4, $t2, $s2
	xvadd.w	$xr0, $xr1, $xr0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr0, $xr3, $xr0
	xvadd.w	$xr0, $xr4, $xr0
	xvadd.w	$xr0, $xr15, $xr0
	xvadd.w	$xr0, $xr16, $xr0
	xvadd.w	$xr0, $xr17, $xr0
	xvadd.w	$xr0, $xr18, $xr0
	xvadd.w	$xr0, $xr19, $xr0
	xvadd.w	$xr0, $xr20, $xr0
	xvadd.w	$xr0, $xr21, $xr0
	xvldx	$xr1, $s4, $s2
	xvldx	$xr2, $s1, $s2
	xvldx	$xr3, $t7, $s2
	xvldx	$xr4, $ra, $s2
	xvadd.w	$xr0, $xr1, $xr0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr0, $xr3, $xr0
	xvadd.w	$xr0, $xr4, $xr0
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	xvldx	$xr1, $a0, $s2
	ld.d	$a0, $sp, 384                   # 8-byte Folded Reload
	xvldx	$xr2, $a0, $s2
	ld.d	$a0, $sp, 416                   # 8-byte Folded Reload
	xvldx	$xr3, $a0, $s2
	ld.d	$a0, $sp, 344                   # 8-byte Folded Reload
	xvldx	$xr4, $a0, $s2
	xvadd.w	$xr0, $xr1, $xr0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr0, $xr3, $xr0
	xvadd.w	$xr0, $xr4, $xr0
	xvldx	$xr1, $t5, $s2
	xvldx	$xr2, $a1, $s2
	xvldx	$xr3, $s3, $s2
	xvldx	$xr4, $s6, $s2
	xvadd.w	$xr0, $xr1, $xr0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr0, $xr3, $xr0
	xvadd.w	$xr0, $xr4, $xr0
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	xvldx	$xr1, $a0, $s2
	ld.d	$a0, $sp, 392                   # 8-byte Folded Reload
	xvldx	$xr2, $a0, $s2
	ld.d	$a0, $sp, 424                   # 8-byte Folded Reload
	xvldx	$xr3, $a0, $s2
	ld.d	$a0, $sp, 352                   # 8-byte Folded Reload
	xvldx	$xr4, $a0, $s2
	xvadd.w	$xr0, $xr1, $xr0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr0, $xr3, $xr0
	xvadd.w	$xr0, $xr4, $xr0
	xvadd.w	$xr0, $xr22, $xr0
	xvadd.w	$xr0, $xr23, $xr0
	xvadd.w	$xr0, $xr24, $xr0
	xvadd.w	$xr0, $xr26, $xr0
	xvldx	$xr1, $t6, $s2
	xvadd.w	$xr0, $xr25, $xr0
	xvadd.w	$xr0, $xr27, $xr0
	xvadd.w	$xr0, $xr28, $xr0
	xvadd.w	$xr0, $xr1, $xr0
	xvreplgr2vr.w	$xr1, $s8
	xvmuh.w	$xr0, $xr0, $xr1
	xvsrai.w	$xr0, $xr0, 3
	xvsrli.w	$xr1, $xr0, 31
	xvadd.w	$xr0, $xr0, $xr1
	ld.d	$a0, $sp, 360                   # 8-byte Folded Reload
	xvstx	$xr0, $a0, $s2
	addi.d	$s7, $s7, -8
	addi.d	$s2, $s2, 32
	bnez	$s7, .LBB0_6
# %bb.7:                                # %middle.block
                                        #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	st.d	$s5, $sp, 280                   # 8-byte Folded Spill
	st.d	$a5, $sp, 288                   # 8-byte Folded Spill
	st.d	$t6, $sp, 296                   # 8-byte Folded Spill
	st.d	$t4, $sp, 304                   # 8-byte Folded Spill
	lu12i.w	$t5, 7
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	move	$s1, $s8
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	lu12i.w	$a5, 3
	lu12i.w	$t7, 2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	lu12i.w	$fp, 6
	lu12i.w	$a1, 5
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	ori	$t6, $zero, 4080
	ori	$t0, $zero, 4084
	ori	$t3, $zero, 4088
	ori	$t8, $zero, 4092
	beq	$a2, $a6, .LBB0_3
.LBB0_8:                                # %for.cond6.preheader.us.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	slli.d	$s2, $a0, 2
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	sub.d	$s7, $a2, $a0
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_9:                                # %for.cond6.preheader.us
                                        #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a6, $a2, $s2
	ld.w	$s4, $a6, -16
	ld.w	$s6, $a6, -12
	ld.w	$ra, $a6, -8
	ld.w	$t1, $a6, -4
	add.d	$s4, $s6, $s4
	add.d	$s4, $ra, $s4
	add.d	$t1, $t1, $s4
	ldx.w	$s4, $a2, $s2
	ld.w	$s6, $a6, 4
	ld.w	$ra, $a6, 8
	ld.w	$t2, $a6, 12
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	add.d	$t1, $t2, $t1
	ldx.w	$t2, $a6, $t6
	ldx.w	$s4, $a6, $t0
	ldx.w	$s6, $a6, $t3
	ldx.w	$ra, $a6, $t8
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ldx.w	$t2, $a6, $a7
	ori	$s4, $a7, 4
	ldx.w	$s4, $a6, $s4
	ori	$s6, $a7, 8
	ldx.w	$s6, $a6, $s6
	ori	$ra, $a7, 12
	ldx.w	$ra, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ori	$t2, $a7, 4080
	ldx.w	$t2, $a6, $t2
	ori	$s4, $a7, 4084
	ldx.w	$s4, $a6, $s4
	ori	$s6, $a7, 4088
	ldx.w	$s6, $a6, $s6
	ori	$ra, $a7, 4092
	ldx.w	$ra, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ldx.w	$t2, $a6, $t7
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ldx.w	$s4, $a6, $s4
	ldx.w	$s6, $a6, $t4
	ld.d	$ra, $sp, 472                   # 8-byte Folded Reload
	ldx.w	$ra, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ori	$t2, $t7, 4080
	ldx.w	$t2, $a6, $t2
	ori	$s4, $t7, 4084
	ldx.w	$s4, $a6, $s4
	ori	$s6, $t7, 4088
	ldx.w	$s6, $a6, $s6
	ori	$ra, $t7, 4092
	ldx.w	$ra, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ldx.w	$t2, $a6, $a5
	ld.d	$s4, $sp, 432                   # 8-byte Folded Reload
	ldx.w	$s4, $a6, $s4
	ldx.w	$s6, $a6, $a3
	ld.d	$ra, $sp, 448                   # 8-byte Folded Reload
	ldx.w	$ra, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ori	$t2, $a5, 4080
	ldx.w	$t2, $a6, $t2
	ori	$s4, $a5, 4084
	ldx.w	$s4, $a6, $s4
	ori	$s6, $a5, 4088
	ldx.w	$s6, $a6, $s6
	ori	$ra, $a5, 4092
	ldx.w	$ra, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ldx.w	$t2, $a6, $s0
	ori	$s4, $s0, 4
	ldx.w	$s4, $a6, $s4
	ori	$s6, $s0, 8
	ldx.w	$s6, $a6, $s6
	ori	$ra, $s0, 12
	ldx.w	$ra, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ori	$t2, $s0, 4080
	ldx.w	$t2, $a6, $t2
	ori	$s4, $s0, 4084
	ldx.w	$s4, $a6, $s4
	ori	$s6, $s0, 4088
	ldx.w	$s6, $a6, $s6
	ori	$ra, $s0, 4092
	ldx.w	$ra, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ldx.w	$t2, $a6, $a1
	ldx.w	$s4, $a6, $s3
	ldx.w	$s6, $a6, $s8
	ld.d	$ra, $sp, 456                   # 8-byte Folded Reload
	ldx.w	$ra, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ori	$t2, $a1, 4080
	ldx.w	$t2, $a6, $t2
	ori	$s4, $a1, 4084
	ldx.w	$s4, $a6, $s4
	ori	$s6, $a1, 4088
	ldx.w	$s6, $a6, $s6
	ori	$ra, $a1, 4092
	ldx.w	$ra, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ldx.w	$t2, $a6, $fp
	ldx.w	$s4, $a6, $a4
	ldx.w	$s6, $a6, $s5
	ld.d	$ra, $sp, 464                   # 8-byte Folded Reload
	ldx.w	$ra, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ori	$t2, $fp, 4080
	ldx.w	$t2, $a6, $t2
	ori	$s4, $fp, 4084
	ldx.w	$s4, $a6, $s4
	ori	$s6, $fp, 4088
	ldx.w	$s6, $a6, $s6
	ori	$ra, $fp, 4092
	ldx.w	$ra, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.d	$t1, $ra, $t1
	ldx.w	$t2, $a6, $t5
	ori	$s4, $t5, 4
	ldx.w	$s4, $a6, $s4
	ori	$s6, $t5, 8
	ldx.w	$s6, $a6, $s6
	ori	$ra, $t5, 12
	ldx.w	$a6, $a6, $ra
	add.d	$t1, $t2, $t1
	add.d	$t1, $s4, $t1
	add.d	$t1, $s6, $t1
	add.w	$a6, $a6, $t1
	mul.d	$a6, $a6, $s1
	srli.d	$t1, $a6, 63
	srai.d	$a6, $a6, 35
	add.d	$a6, $a6, $t1
	stx.w	$a6, $a0, $s2
	addi.d	$a0, $a0, 4
	addi.d	$s7, $s7, -1
	addi.d	$a2, $a2, 4
	bnez	$s7, .LBB0_9
	b	.LBB0_3
.LBB0_10:                               # %for.cond.cleanup
	fld.d	$fs4, $sp, 480                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 488                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 496                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 504                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 512                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 568                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 576                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 584                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 592                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 600                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 608
	ret
.Lfunc_end0:
	.size	boxBlurKernel, .Lfunc_end0-boxBlurKernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
