	.file	"jcmaster.c"
	.text
	.globl	jinit_c_master_control          # -- Begin function jinit_c_master_control
	.p2align	5
	.type	jinit_c_master_control,@function
jinit_c_master_control:                 # @jinit_c_master_control
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
	addi.d	$sp, $sp, -752
	move	$fp, $a0
	ld.d	$a0, $a0, 8
	ld.d	$a3, $a0, 0
	move	$s6, $a1
	ori	$a1, $zero, 1
	ori	$a2, $zero, 48
	move	$a0, $fp
	jirl	$ra, $a3, 0
	move	$s5, $a0
	st.d	$a0, $fp, 424
	pcalau12i	$a0, %pc_hi20(prepare_for_pass)
	addi.d	$a0, $a0, %pc_lo12(prepare_for_pass)
	st.d	$a0, $s5, 0
	pcalau12i	$a0, %pc_hi20(pass_startup)
	addi.d	$a0, $a0, %pc_lo12(pass_startup)
	st.d	$a0, $s5, 8
	pcalau12i	$a0, %pc_hi20(finish_pass_master)
	addi.d	$a1, $a0, %pc_lo12(finish_pass_master)
	ld.w	$a0, $fp, 44
	st.d	$a1, $s5, 16
	st.w	$zero, $s5, 28
	beqz	$a0, .LBB0_5
# %bb.1:                                # %lor.lhs.false.i
	ld.w	$a1, $fp, 40
	beqz	$a1, .LBB0_5
# %bb.2:                                # %lor.lhs.false2.i
	ld.w	$a1, $fp, 68
	blez	$a1, .LBB0_5
# %bb.3:                                # %lor.lhs.false4.i
	ld.w	$a1, $fp, 48
	blez	$a1, .LBB0_5
# %bb.4:                                # %if.end.i
	lu12i.w	$a1, 15
	ori	$a2, $a1, 4060
	bgeu	$a2, $a0, .LBB0_6
	b	.LBB0_7
.LBB0_5:                                # %if.then.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 31
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 44
	lu12i.w	$a1, 15
	ori	$a2, $a1, 4060
	bltu	$a2, $a0, .LBB0_7
.LBB0_6:                                # %lor.lhs.false10.i
	ld.w	$a0, $fp, 40
	ori	$a1, $a1, 4061
	bltu	$a0, $a1, .LBB0_8
.LBB0_7:                                # %if.then15.i
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 40
	lu32i.d	$a1, 65500
	st.d	$a1, $a0, 40
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 40
.LBB0_8:                                # %if.end21.i
	ld.w	$a1, $fp, 48
	bstrpick.d	$a0, $a0, 31, 0
	mul.d	$a0, $a1, $a0
	srli.d	$a0, $a0, 32
	bnez	$a0, .LBB0_25
# %bb.9:                                # %if.end35.i
	ld.w	$a0, $fp, 64
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB0_26
.LBB0_10:                               # %if.end47.i
	ld.w	$a0, $fp, 68
	ori	$a1, $zero, 11
	blt	$a0, $a1, .LBB0_12
.LBB0_11:                               # %if.then51.i
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a1, 40
	ori	$a1, $zero, 10
	st.w	$a1, $a0, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 68
.LBB0_12:                               # %if.end63.i
	ori	$a1, $zero, 1
	ori	$a2, $zero, 1
	lu32i.d	$a2, 1
	st.d	$a2, $fp, 304
	blez	$a0, .LBB0_22
# %bb.13:                               # %for.body.i.preheader
	ld.d	$a1, $fp, 80
	move	$s0, $zero
	addi.d	$s1, $a1, 12
	ori	$a1, $zero, 1
	addi.w	$s2, $zero, -4
	ori	$s3, $zero, 16
	addi.w	$s4, $zero, -5
	ori	$a2, $zero, 1
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               # %if.then80.i
                                        #   in Loop: Header=BB0_16 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s3, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a2, $fp, 304
	ld.w	$a3, $s1, -4
	ld.w	$a1, $fp, 308
	ld.w	$a4, $s1, 0
	ld.w	$a0, $fp, 68
.LBB0_15:                               # %if.end85.i
                                        #   in Loop: Header=BB0_16 Depth=1
	slt	$a5, $a3, $a2
	masknez	$a3, $a3, $a5
	maskeqz	$a2, $a2, $a5
	or	$a2, $a2, $a3
	st.w	$a2, $fp, 304
	slt	$a3, $a4, $a1
	masknez	$a4, $a4, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a4
	st.w	$a1, $fp, 308
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, 96
	bge	$s0, $a0, .LBB0_18
.LBB0_16:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $s1, -4
	addi.w	$a4, $a3, -5
	bltu	$a4, $s2, .LBB0_14
# %bb.17:                               # %lor.lhs.false73.i
                                        #   in Loop: Header=BB0_16 Depth=1
	ld.w	$a4, $s1, 0
	addi.w	$a5, $a4, -5
	bgeu	$s4, $a5, .LBB0_14
	b	.LBB0_15
.LBB0_18:                               # %for.end.i
	blez	$a0, .LBB0_22
# %bb.19:                               # %for.body109.i.preheader
	ld.d	$a0, $fp, 80
	move	$s0, $zero
	addi.d	$s1, $a0, 28
	ori	$s2, $zero, 8
	ori	$s3, $zero, 1
	.p2align	4, , 16
.LBB0_20:                               # %for.body109.i
                                        # =>This Inner Loop Header: Depth=1
	ld.wu	$a0, $fp, 40
	ld.w	$a1, $s1, -20
	ld.w	$a2, $fp, 304
	st.w	$s0, $s1, -24
	st.w	$s2, $s1, 8
	mul.d	$a0, $a1, $a0
	slli.w	$a1, $a2, 3
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 44
	ld.w	$a2, $s1, -16
	ld.w	$a3, $fp, 308
	st.w	$a0, $s1, 0
	mul.d	$a0, $a2, $a1
	slli.w	$a1, $a3, 3
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $fp, 40
	ld.w	$a3, $s1, -20
	ld.w	$a1, $fp, 304
	st.w	$a0, $s1, 4
	mul.d	$a0, $a3, $a2
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.wu	$a2, $fp, 44
	ld.w	$a3, $s1, -16
	ld.w	$a1, $fp, 308
	st.w	$a0, $s1, 12
	mul.d	$a0, $a3, $a2
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 68
	st.w	$a0, $s1, 16
	st.w	$s3, $s1, 20
	addi.w	$s0, $s0, 1
	addi.d	$s1, $s1, 96
	blt	$s0, $a1, .LBB0_20
# %bb.21:                               # %for.end150.loopexit.i
	ld.w	$a1, $fp, 308
.LBB0_22:                               # %initial_setup.exit
	ld.wu	$a0, $fp, 44
	slli.w	$a1, $a1, 3
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.d	$s3, $fp, 240
	st.w	$a0, $fp, 312
	beqz	$s3, .LBB0_27
# %bb.23:                               # %if.then
	ld.w	$a0, $fp, 232
	blez	$a0, .LBB0_28
# %bb.24:                               # %if.end.i26
	ld.w	$a0, $s3, 20
	bnez	$a0, .LBB0_33
	b	.LBB0_29
.LBB0_25:                               # %if.then30.i
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 69
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 64
	ori	$a1, $zero, 8
	beq	$a0, $a1, .LBB0_10
.LBB0_26:                               # %if.then38.i
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 13
	st.w	$a0, $a1, 40
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 68
	ori	$a1, $zero, 11
	bge	$a0, $a1, .LBB0_11
	b	.LBB0_12
.LBB0_27:                               # %if.end.thread
	st.w	$zero, $fp, 300
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 232
	b	.LBB0_109
.LBB0_28:                               # %if.then.i32
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 17
	st.d	$a1, $a0, 40
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$s3, $fp, 240
	ld.w	$a0, $s3, 20
	bnez	$a0, .LBB0_33
.LBB0_29:                               # %lor.lhs.false.i31
	ld.w	$a0, $s3, 24
	ori	$a1, $zero, 63
	bne	$a0, $a1, .LBB0_33
# %bb.30:                               # %if.else.i
	ld.w	$s0, $fp, 68
	st.w	$zero, $fp, 300
	blez	$s0, .LBB0_32
# %bb.31:                               # %for.body21.preheader.i
	slli.d	$a2, $s0, 2
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_32:                               # %if.end26.i
	move	$s1, $zero
	b	.LBB0_35
.LBB0_33:                               # %if.then7.i
	ld.w	$s0, $fp, 68
	ori	$s1, $zero, 1
	st.w	$s1, $fp, 300
	blez	$s0, .LBB0_35
# %bb.34:                               # %for.cond11.preheader.i.preheader
	slli.d	$a2, $s0, 8
	addi.d	$a0, $sp, 96
	ori	$a1, $zero, 255
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB0_35:                               # %if.end26.i
	ld.w	$a0, $fp, 232
	blez	$a0, .LBB0_96
# %bb.36:                               # %for.body30.lr.ph.i
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	addi.d	$s6, $s3, 8
	addi.w	$a0, $zero, -5
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$s1, $zero, 15
	ori	$a0, $zero, 1
	b	.LBB0_38
	.p2align	4, , 16
.LBB0_37:                               # %for.inc240.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.w	$a1, $fp, 232
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	addi.d	$s3, $s3, 36
	addi.w	$a0, $s7, 1
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	addi.d	$s6, $s6, 36
	bge	$s7, $a1, .LBB0_95
.LBB0_38:                               # %for.body30.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_46 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_88 Depth 3
                                        #     Child Loop BB0_62 Depth 2
	ld.wu	$s8, $s3, 0
	move	$s7, $a0
	addi.w	$a0, $s8, -5
	addi.w	$a1, $s8, 0
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	bltu	$a1, $a0, .LBB0_40
# %bb.39:                               # %if.end45.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	st.w	$s0, $a0, 44
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a0, 40
	ori	$a0, $zero, 4
	st.w	$a0, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	blez	$s0, .LBB0_52
.LBB0_40:                               # %for.body48.lr.ph.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.w	$a0, $s3, 4
	bltz	$a0, .LBB0_42
# %bb.41:                               # %lor.lhs.false52.peel.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.w	$a1, $fp, 68
	blt	$a0, $a1, .LBB0_43
.LBB0_42:                               # %if.then55.peel.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 17
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_43:                               # %for.inc78.peel.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$a0, $s2, .LBB0_53
# %bb.44:                               # %for.body48.i.preheader
                                        #   in Loop: Header=BB0_38 Depth=1
	move	$s5, $s3
	addi.d	$s0, $s8, -1
	move	$s3, $s6
	b	.LBB0_46
	.p2align	4, , 16
.LBB0_45:                               # %for.inc78.i
                                        #   in Loop: Header=BB0_46 Depth=2
	addi.d	$s0, $s0, -1
	addi.d	$s3, $s3, 4
	beqz	$s0, .LBB0_51
.LBB0_46:                               # %for.body48.i
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s4, $s3, 0
	bltz	$s4, .LBB0_49
# %bb.47:                               # %lor.lhs.false52.i
                                        #   in Loop: Header=BB0_46 Depth=2
	ld.w	$a0, $fp, 68
	bge	$s4, $a0, .LBB0_49
# %bb.48:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB0_46 Depth=2
	ld.w	$a0, $s3, -4
	blt	$a0, $s4, .LBB0_45
	b	.LBB0_50
	.p2align	4, , 16
.LBB0_49:                               # %if.then55.i
                                        #   in Loop: Header=BB0_46 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 17
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $s3, -4
	blt	$a0, $s4, .LBB0_45
.LBB0_50:                               # %if.then69.i
                                        #   in Loop: Header=BB0_46 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 17
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_51:                               #   in Loop: Header=BB0_38 Depth=1
	move	$s3, $s5
	b	.LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_38 Depth=1
	move	$s2, $zero
	.p2align	4, , 16
.LBB0_53:                               # %for.end80.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.w	$s0, $s3, 20
	ld.w	$a0, $s3, 24
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$s6, $s3, 28
	ld.w	$a0, $fp, 300
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	ld.w	$s3, $s3, 32
	beqz	$a0, .LBB0_56
# %bb.54:                               # %if.then86.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ori	$a0, $zero, 63
	bgeu	$a0, $s0, .LBB0_64
.LBB0_55:                               # %if.then102.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_68
	.p2align	4, , 16
.LBB0_56:                               # %if.else199.i
                                        #   in Loop: Header=BB0_38 Depth=1
	or	$a0, $s6, $s0
	or	$a0, $a0, $s3
	bnez	$a0, .LBB0_58
# %bb.57:                               # %if.else199.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ori	$a0, $zero, 63
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_59
.LBB0_58:                               # %if.then207.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_59:                               # %if.end215.i
                                        #   in Loop: Header=BB0_38 Depth=1
	beqz	$s2, .LBB0_37
# %bb.60:                               # %for.body218.lr.ph.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ori	$s0, $zero, 4
	b	.LBB0_62
	.p2align	4, , 16
.LBB0_61:                               # %if.end233.i
                                        #   in Loop: Header=BB0_62 Depth=2
	ori	$a0, $zero, 2656
	add.d	$a0, $sp, $a0
	alsl.d	$a0, $s2, $a0, 2
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$s8, $s8, -1
	addi.d	$s0, $s0, 4
	beqz	$s8, .LBB0_37
.LBB0_62:                               # %for.body218.i
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.w	$s2, $a0, $s0
	slli.d	$a0, $s2, 2
	ori	$a1, $zero, 2656
	add.d	$a1, $sp, $a1
	ldx.w	$a0, $a0, $a1
	beqz	$a0, .LBB0_61
# %bb.63:                               # %if.then225.i
                                        #   in Loop: Header=BB0_62 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 17
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_61
	.p2align	4, , 16
.LBB0_64:                               # %lor.lhs.false90.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $s0, .LBB0_55
# %bb.65:                               # %lor.lhs.false90.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ori	$a0, $zero, 63
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB0_55
# %bb.66:                               # %lor.lhs.false90.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ori	$a0, $zero, 13
	bltu	$a0, $s6, .LBB0_55
# %bb.67:                               # %lor.lhs.false90.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ori	$a0, $zero, 14
	bgeu	$s3, $a0, .LBB0_55
.LBB0_68:                               # %if.end110.i
                                        #   in Loop: Header=BB0_38 Depth=1
	beqz	$s0, .LBB0_94
# %bb.69:                               # %if.else123.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB0_71
.LBB0_70:                               # %if.end134.sink.split.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_71:                               # %if.end134.i
                                        #   in Loop: Header=BB0_38 Depth=1
	beqz	$s2, .LBB0_37
# %bb.72:                               # %for.body137.lr.ph.i
                                        #   in Loop: Header=BB0_38 Depth=1
	move	$s8, $zero
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 4
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.w	$s2, $s6, -1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a0, $a0, $s0
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 96
	alsl.d	$a0, $s0, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_74
	.p2align	4, , 16
.LBB0_73:                               # %for.inc196.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beq	$s8, $a0, .LBB0_37
.LBB0_74:                               # %for.body137.i
                                        #   Parent Loop BB0_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_88 Depth 3
	slli.d	$a0, $s8, 2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	slli.d	$s4, $a0, 8
	beqz	$s0, .LBB0_76
# %bb.75:                               # %land.lhs.true145.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $sp, 96
	add.d	$a0, $a0, $s4
	ld.w	$a0, $a0, 0
	bltz	$a0, .LBB0_84
.LBB0_76:                               # %if.end156.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $s0, .LBB0_73
.LBB0_77:                               # %for.body159.lr.ph.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s6, .LBB0_85
# %bb.78:                               # %for.body159.i.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$s5, $a0, $s4
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_81
	.p2align	4, , 16
.LBB0_79:                               # %if.end190.sink.split.i
                                        #   in Loop: Header=BB0_81 Depth=3
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB0_80:                               # %if.end190.i
                                        #   in Loop: Header=BB0_81 Depth=3
	st.w	$s3, $s5, 0
	addi.w	$s4, $s4, -1
	addi.d	$s5, $s5, 4
	beqz	$s4, .LBB0_73
.LBB0_81:                               # %for.body159.i
                                        #   Parent Loop BB0_38 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bne	$s3, $s2, .LBB0_79
# %bb.82:                               # %for.body159.i
                                        #   in Loop: Header=BB0_81 Depth=3
	ld.w	$a0, $s5, 0
	bne	$s6, $a0, .LBB0_79
# %bb.83:                               # %for.body159.i
                                        #   in Loop: Header=BB0_81 Depth=3
	bgez	$a0, .LBB0_80
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_84:                               # %if.then148.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blt	$a0, $s0, .LBB0_73
	b	.LBB0_77
.LBB0_85:                               # %for.body159.lr.ph.split.us.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bne	$s3, $s2, .LBB0_90
# %bb.86:                               # %for.body159.us.i.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$s4, $a0, $s4
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_88
	.p2align	4, , 16
.LBB0_87:                               # %if.end190.us.i
                                        #   in Loop: Header=BB0_88 Depth=3
	st.w	$s3, $s4, 0
	addi.w	$s5, $s5, -1
	addi.d	$s4, $s4, 4
	beqz	$s5, .LBB0_73
.LBB0_88:                               # %for.body159.us.i
                                        #   Parent Loop BB0_38 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s4, 0
	blez	$a0, .LBB0_87
# %bb.89:                               # %if.then181.us.i
                                        #   in Loop: Header=BB0_88 Depth=3
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_87
.LBB0_90:                               # %for.body159.us.us.i.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$s4, $a0, $s4
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_92
	.p2align	4, , 16
.LBB0_91:                               # %if.end190.us.us.i
                                        #   in Loop: Header=BB0_92 Depth=3
	st.w	$s3, $s4, 0
	addi.w	$s5, $s5, -1
	addi.d	$s4, $s4, 4
	beqz	$s5, .LBB0_73
.LBB0_92:                               # %for.body159.us.us.i
                                        #   Parent Loop BB0_38 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a0, $s4, 0
	bltz	$a0, .LBB0_91
# %bb.93:                               # %if.else174.us.us.i
                                        #   in Loop: Header=BB0_92 Depth=3
	ld.d	$a0, $fp, 0
	st.w	$s7, $a0, 44
	ld.d	$a1, $fp, 0
	ld.d	$a1, $a1, 0
	st.w	$s1, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB0_91
	.p2align	4, , 16
.LBB0_94:                               # %if.then112.i
                                        #   in Loop: Header=BB0_38 Depth=1
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_70
	b	.LBB0_71
.LBB0_95:                               # %for.end243.loopexit.i
	ld.w	$s1, $fp, 300
	ld.w	$s0, $fp, 68
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
.LBB0_96:                               # %for.end243.i
	beqz	$s1, .LBB0_102
# %bb.97:                               # %for.cond247.preheader.i
	blez	$s0, .LBB0_107
# %bb.98:                               # %for.body250.i.preheader
	move	$s1, $zero
	addi.d	$s2, $sp, 96
	ori	$s3, $zero, 44
	b	.LBB0_100
	.p2align	4, , 16
.LBB0_99:                               # %for.inc261.i
                                        #   in Loop: Header=BB0_100 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 256
	bge	$s1, $s0, .LBB0_107
.LBB0_100:                              # %for.body250.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	bgez	$a0, .LBB0_99
# %bb.101:                              # %if.then255.i
                                        #   in Loop: Header=BB0_100 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s3, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$s0, $fp, 68
	b	.LBB0_99
.LBB0_102:                              # %for.cond265.preheader.i
	blez	$s0, .LBB0_107
# %bb.103:                              # %for.body268.i.preheader
	move	$s1, $zero
	ori	$a0, $zero, 2656
	add.d	$s2, $sp, $a0
	ori	$s3, $zero, 44
	b	.LBB0_105
	.p2align	4, , 16
.LBB0_104:                              # %for.inc278.i
                                        #   in Loop: Header=BB0_105 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s2, $s2, 4
	bge	$s1, $s0, .LBB0_107
.LBB0_105:                              # %for.body268.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB0_104
# %bb.106:                              # %if.then272.i
                                        #   in Loop: Header=BB0_105 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s3, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$s0, $fp, 68
	b	.LBB0_104
.LBB0_107:                              # %if.end
	ld.w	$a0, $fp, 300
	beqz	$a0, .LBB0_109
# %bb.108:                              # %if.then6
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 256
.LBB0_109:                              # %if.end7
	beqz	$s6, .LBB0_112
# %bb.110:                              # %if.then9
	ld.w	$a0, $fp, 256
	beqz	$a0, .LBB0_114
# %bb.111:                              # %if.end18.thread67
	ori	$a0, $zero, 1
	st.d	$a0, $s5, 32
	st.w	$zero, $s5, 44
	b	.LBB0_113
.LBB0_112:                              # %if.end18
	st.d	$zero, $s5, 32
	ld.w	$a0, $fp, 256
	st.w	$zero, $s5, 44
	beqz	$a0, .LBB0_115
.LBB0_113:                              # %if.then21
	ld.w	$a0, $fp, 232
	slli.d	$a0, $a0, 1
	b	.LBB0_116
.LBB0_114:                              # %if.end18.thread
	ori	$a0, $zero, 2
	st.d	$a0, $s5, 32
	st.w	$zero, $s5, 44
.LBB0_115:                              # %if.else23
	ld.w	$a0, $fp, 232
.LBB0_116:                              # %if.end26
	st.w	$a0, $s5, 40
	addi.d	$sp, $sp, 752
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
.Lfunc_end0:
	.size	jinit_c_master_control, .Lfunc_end0-jinit_c_master_control
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function prepare_for_pass
.LCPI1_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.p2align	5
	.type	prepare_for_pass,@function
prepare_for_pass:                       # @prepare_for_pass
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$s0, $a0, 424
	ld.w	$a0, $s0, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB1_45
# %bb.1:                                # %entry
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_7
# %bb.2:                                # %entry
	bnez	$a0, .LBB1_11
# %bb.3:                                # %sw.bb
	ld.d	$a2, $fp, 240
	beqz	$a2, .LBB1_17
# %bb.4:                                # %if.then.i
	ld.w	$a0, $s0, 44
	slli.d	$a1, $a0, 5
	alsl.d	$a3, $a0, $a1, 2
	ldx.w	$a4, $a2, $a3
	add.d	$a0, $a2, $a3
	st.w	$a4, $fp, 316
	blez	$a4, .LBB1_33
# %bb.5:                                # %for.body.lr.ph.i
	ld.d	$a1, $fp, 80
	ori	$a5, $zero, 4
	bgeu	$a4, $a5, .LBB1_28
# %bb.6:
	move	$a5, $zero
	b	.LBB1_31
.LBB1_7:                                # %sw.bb14
	ld.d	$a2, $fp, 240
	beqz	$a2, .LBB1_12
# %bb.8:                                # %if.then.i61
	ld.w	$a0, $s0, 44
	slli.d	$a1, $a0, 5
	alsl.d	$a3, $a0, $a1, 2
	ldx.w	$a4, $a2, $a3
	add.d	$a0, $a2, $a3
	st.w	$a4, $fp, 316
	blez	$a4, .LBB1_27
# %bb.9:                                # %for.body.lr.ph.i78
	ld.d	$a1, $fp, 80
	ori	$a5, $zero, 4
	bgeu	$a4, $a5, .LBB1_22
# %bb.10:
	move	$a5, $zero
	b	.LBB1_25
.LBB1_11:                               # %sw.default
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	ori	$a2, $zero, 47
	st.w	$a2, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
	b	.LBB1_82
.LBB1_12:                               # %if.else.i91
	ld.w	$a0, $fp, 68
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB1_14
# %bb.13:                               # %if.then15.i111
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a1, 40
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 68
.LBB1_14:                               # %if.end.i94
	st.w	$a0, $fp, 316
	blez	$a0, .LBB1_39
# %bb.15:                               # %for.body28.lr.ph.i101
	ld.d	$a1, $fp, 80
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB1_34
# %bb.16:
	move	$a2, $zero
	b	.LBB1_37
.LBB1_17:                               # %if.else.i
	ld.w	$a0, $fp, 68
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB1_19
# %bb.18:                               # %if.then15.i
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a1, 40
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 68
.LBB1_19:                               # %if.end.i
	st.w	$a0, $fp, 316
	blez	$a0, .LBB1_60
# %bb.20:                               # %for.body28.lr.ph.i
	ld.d	$a1, $fp, 80
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB1_55
# %bb.21:
	move	$a2, $zero
	b	.LBB1_58
.LBB1_22:                               # %vector.ph
	bstrpick.d	$a5, $a4, 30, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $fp, 336
	add.d	$a7, $a3, $a2
	addi.d	$a7, $a7, 12
	vreplgr2vr.d	$vr0, $a1
	vrepli.d	$vr1, 96
	move	$t0, $a5
	.p2align	4, , 16
.LBB1_23:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a7, -8
	ld.d	$t2, $a7, 0
	vinsgr2vr.d	$vr2, $t1, 0
	vinsgr2vr.d	$vr3, $t2, 0
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vori.b	$vr4, $vr0, 0
	vmadd.d	$vr4, $vr2, $vr1
	vori.b	$vr2, $vr0, 0
	vmadd.d	$vr2, $vr3, $vr1
	vst	$vr4, $a6, -16
	vst	$vr2, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB1_23
# %bb.24:                               # %middle.block
	beq	$a5, $a4, .LBB1_27
.LBB1_25:                               # %for.body.i83.preheader
	sub.d	$a4, $a4, $a5
	alsl.d	$a6, $a5, $fp, 3
	addi.d	$a6, $a6, 320
	alsl.d	$a3, $a5, $a3, 2
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_26:                               # %for.body.i83
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 5
	add.d	$a3, $a1, $a3
	st.d	$a3, $a6, 0
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB1_26
.LBB1_27:                               # %for.end.i68
	ld.w	$a1, $a0, 20
	st.w	$a1, $fp, 404
	ld.d	$a1, $a0, 24
	st.d	$a1, $fp, 408
	ld.w	$a0, $a0, 32
	b	.LBB1_40
.LBB1_28:                               # %vector.ph230
	bstrpick.d	$a5, $a4, 30, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $fp, 336
	add.d	$a7, $a3, $a2
	addi.d	$a7, $a7, 12
	vreplgr2vr.d	$vr0, $a1
	vrepli.d	$vr1, 96
	move	$t0, $a5
	.p2align	4, , 16
.LBB1_29:                               # %vector.body233
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a7, -8
	ld.d	$t2, $a7, 0
	vinsgr2vr.d	$vr2, $t1, 0
	vinsgr2vr.d	$vr3, $t2, 0
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vori.b	$vr4, $vr0, 0
	vmadd.d	$vr4, $vr2, $vr1
	vori.b	$vr2, $vr0, 0
	vmadd.d	$vr2, $vr3, $vr1
	vst	$vr4, $a6, -16
	vst	$vr2, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB1_29
# %bb.30:                               # %middle.block238
	beq	$a5, $a4, .LBB1_33
.LBB1_31:                               # %for.body.i.preheader
	sub.d	$a4, $a4, $a5
	alsl.d	$a6, $a5, $fp, 3
	addi.d	$a6, $a6, 320
	alsl.d	$a3, $a5, $a3, 2
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_32:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 5
	add.d	$a3, $a1, $a3
	st.d	$a3, $a6, 0
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB1_32
.LBB1_33:                               # %for.end.i
	ld.w	$a1, $a0, 20
	st.w	$a1, $fp, 404
	ld.d	$a1, $a0, 24
	st.d	$a1, $fp, 408
	ld.w	$a0, $a0, 32
	b	.LBB1_61
.LBB1_34:                               # %vector.ph192
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_0)
	addi.d	$a3, $fp, 336
	vreplgr2vr.d	$vr1, $a1
	vrepli.d	$vr2, 96
	vrepli.d	$vr3, 192
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_35:                               # %vector.body195
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr4, $vr1, 0
	vmadd.d	$vr4, $vr0, $vr2
	vadd.d	$vr5, $vr4, $vr3
	vst	$vr4, $a3, -16
	vst	$vr5, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_35
# %bb.36:                               # %middle.block198
	beq	$a2, $a0, .LBB1_39
.LBB1_37:                               # %for.body28.i105.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a3, $a2, $fp, 3
	addi.d	$a3, $a3, 320
	alsl.d	$a2, $a2, $a2, 1
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB1_38:                               # %for.body28.i105
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $a3, 0
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 96
	bnez	$a0, .LBB1_38
.LBB1_39:                               # %for.end37.i97
	move	$a0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, 63
	st.d	$a1, $fp, 404
	st.w	$zero, $fp, 412
.LBB1_40:                               # %select_scan_parameters.exit116
	st.w	$a0, $fp, 416
	move	$a0, $fp
	pcaddu18i	$ra, %call36(per_scan_setup)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 404
	beqz	$a0, .LBB1_42
.LBB1_41:                               # %if.then19
	ld.d	$a0, $fp, 488
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 448
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	b	.LBB1_81
.LBB1_42:                               # %lor.lhs.false
	ld.w	$a0, $fp, 412
	beqz	$a0, .LBB1_41
# %bb.43:                               # %lor.lhs.false17
	ld.w	$a0, $fp, 252
	bnez	$a0, .LBB1_41
# %bb.44:                               # %if.end26
	ld.w	$a0, $s0, 36
	ori	$a1, $zero, 2
	st.w	$a1, $s0, 32
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 36
.LBB1_45:                               # %sw.bb28
	ld.w	$a0, $fp, 256
	bnez	$a0, .LBB1_78
# %bb.46:                               # %if.then31
	ld.d	$a2, $fp, 240
	beqz	$a2, .LBB1_50
# %bb.47:                               # %if.then.i119
	ld.d	$a0, $fp, 424
	ld.w	$a0, $a0, 44
	slli.d	$a1, $a0, 5
	alsl.d	$a3, $a0, $a1, 2
	ldx.w	$a4, $a2, $a3
	add.d	$a0, $a2, $a3
	st.w	$a4, $fp, 316
	blez	$a4, .LBB1_70
# %bb.48:                               # %for.body.lr.ph.i136
	ld.d	$a1, $fp, 80
	ori	$a5, $zero, 4
	bgeu	$a4, $a5, .LBB1_65
# %bb.49:
	move	$a5, $zero
	b	.LBB1_68
.LBB1_50:                               # %if.else.i149
	ld.w	$a0, $fp, 68
	ori	$a1, $zero, 5
	blt	$a0, $a1, .LBB1_52
# %bb.51:                               # %if.then15.i169
	ld.d	$a1, $fp, 0
	st.w	$a0, $a1, 44
	ld.d	$a0, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a1, 40
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $fp, 68
.LBB1_52:                               # %if.end.i152
	st.w	$a0, $fp, 316
	blez	$a0, .LBB1_76
# %bb.53:                               # %for.body28.lr.ph.i159
	ld.d	$a1, $fp, 80
	ori	$a2, $zero, 4
	bgeu	$a0, $a2, .LBB1_71
# %bb.54:
	move	$a2, $zero
	b	.LBB1_74
.LBB1_55:                               # %vector.ph243
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_0)
	addi.d	$a3, $fp, 336
	vreplgr2vr.d	$vr1, $a1
	vrepli.d	$vr2, 96
	vrepli.d	$vr3, 192
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_56:                               # %vector.body246
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr4, $vr1, 0
	vmadd.d	$vr4, $vr0, $vr2
	vadd.d	$vr5, $vr4, $vr3
	vst	$vr4, $a3, -16
	vst	$vr5, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_56
# %bb.57:                               # %middle.block252
	beq	$a2, $a0, .LBB1_60
.LBB1_58:                               # %for.body28.i.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a3, $a2, $fp, 3
	addi.d	$a3, $a3, 320
	alsl.d	$a2, $a2, $a2, 1
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB1_59:                               # %for.body28.i
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $a3, 0
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 96
	bnez	$a0, .LBB1_59
.LBB1_60:                               # %for.end37.i
	move	$a0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, 63
	st.d	$a1, $fp, 404
	st.w	$zero, $fp, 412
.LBB1_61:                               # %select_scan_parameters.exit
	st.w	$a0, $fp, 416
	move	$a0, $fp
	pcaddu18i	$ra, %call36(per_scan_setup)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 248
	bnez	$a0, .LBB1_63
# %bb.62:                               # %if.then
	ld.d	$a0, $fp, 464
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 472
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 440
	ld.d	$a2, $a0, 0
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a2, 0
.LBB1_63:                               # %if.end
	ld.d	$a0, $fp, 480
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 488
	ld.d	$a2, $a0, 0
	ld.w	$a1, $fp, 256
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 448
	ld.w	$a1, $s0, 40
	ld.d	$a2, $a0, 0
	ori	$s1, $zero, 1
	slt	$a0, $s1, $a1
	ori	$a1, $zero, 3
	maskeqz	$a1, $a1, $a0
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 432
	ld.d	$a2, $a0, 0
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a2, 0
	ld.w	$a0, $fp, 256
	bnez	$a0, .LBB1_81
# %bb.64:                               # %if.else
	st.w	$s1, $s0, 24
	b	.LBB1_82
.LBB1_65:                               # %vector.ph203
	bstrpick.d	$a5, $a4, 30, 2
	slli.d	$a5, $a5, 2
	addi.d	$a6, $fp, 336
	add.d	$a7, $a3, $a2
	addi.d	$a7, $a7, 12
	vreplgr2vr.d	$vr0, $a1
	vrepli.d	$vr1, 96
	move	$t0, $a5
	.p2align	4, , 16
.LBB1_66:                               # %vector.body206
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t1, $a7, -8
	ld.d	$t2, $a7, 0
	vinsgr2vr.d	$vr2, $t1, 0
	vinsgr2vr.d	$vr3, $t2, 0
	vshuf4i.w	$vr2, $vr2, 16
	vslli.d	$vr2, $vr2, 32
	vsrai.d	$vr2, $vr2, 32
	vshuf4i.w	$vr3, $vr3, 16
	vslli.d	$vr3, $vr3, 32
	vsrai.d	$vr3, $vr3, 32
	vori.b	$vr4, $vr0, 0
	vmadd.d	$vr4, $vr2, $vr1
	vori.b	$vr2, $vr0, 0
	vmadd.d	$vr2, $vr3, $vr1
	vst	$vr4, $a6, -16
	vst	$vr2, $a6, 0
	addi.d	$t0, $t0, -4
	addi.d	$a6, $a6, 32
	addi.d	$a7, $a7, 16
	bnez	$t0, .LBB1_66
# %bb.67:                               # %middle.block211
	beq	$a5, $a4, .LBB1_70
.LBB1_68:                               # %for.body.i141.preheader
	sub.d	$a4, $a4, $a5
	alsl.d	$a6, $a5, $fp, 3
	addi.d	$a6, $a6, 320
	alsl.d	$a3, $a5, $a3, 2
	add.d	$a2, $a3, $a2
	addi.d	$a2, $a2, 4
	.p2align	4, , 16
.LBB1_69:                               # %for.body.i141
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	alsl.d	$a3, $a3, $a3, 1
	slli.d	$a3, $a3, 5
	add.d	$a3, $a1, $a3
	st.d	$a3, $a6, 0
	addi.d	$a4, $a4, -1
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB1_69
.LBB1_70:                               # %for.end.i126
	ld.w	$a1, $a0, 20
	st.w	$a1, $fp, 404
	ld.d	$a1, $a0, 24
	st.d	$a1, $fp, 408
	ld.w	$a0, $a0, 32
	b	.LBB1_77
.LBB1_71:                               # %vector.ph216
	bstrpick.d	$a2, $a0, 30, 2
	slli.d	$a2, $a2, 2
	pcalau12i	$a3, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a3, %pc_lo12(.LCPI1_0)
	addi.d	$a3, $fp, 336
	vreplgr2vr.d	$vr1, $a1
	vrepli.d	$vr2, 96
	vrepli.d	$vr3, 192
	move	$a4, $a2
	.p2align	4, , 16
.LBB1_72:                               # %vector.body219
                                        # =>This Inner Loop Header: Depth=1
	vori.b	$vr4, $vr1, 0
	vmadd.d	$vr4, $vr0, $vr2
	vadd.d	$vr5, $vr4, $vr3
	vst	$vr4, $a3, -16
	vst	$vr5, $a3, 0
	vaddi.du	$vr0, $vr0, 4
	addi.d	$a4, $a4, -4
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB1_72
# %bb.73:                               # %middle.block225
	beq	$a2, $a0, .LBB1_76
.LBB1_74:                               # %for.body28.i163.preheader
	sub.d	$a0, $a0, $a2
	alsl.d	$a3, $a2, $fp, 3
	addi.d	$a3, $a3, 320
	alsl.d	$a2, $a2, $a2, 1
	slli.d	$a2, $a2, 5
	add.d	$a1, $a1, $a2
	.p2align	4, , 16
.LBB1_75:                               # %for.body28.i163
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $a3, 0
	addi.d	$a0, $a0, -1
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 96
	bnez	$a0, .LBB1_75
.LBB1_76:                               # %for.end37.i155
	move	$a0, $zero
	ori	$a1, $zero, 0
	lu32i.d	$a1, 63
	st.d	$a1, $fp, 404
	st.w	$zero, $fp, 412
.LBB1_77:                               # %select_scan_parameters.exit174
	st.w	$a0, $fp, 416
	move	$a0, $fp
	pcaddu18i	$ra, %call36(per_scan_setup)
	jirl	$ra, $ra, 0
.LBB1_78:                               # %if.end32
	ld.d	$a0, $fp, 488
	ld.d	$a2, $a0, 0
	move	$a0, $fp
	move	$a1, $zero
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 448
	ld.d	$a2, $a0, 0
	ori	$a1, $zero, 2
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.w	$a0, $s0, 44
	bnez	$a0, .LBB1_80
# %bb.79:                               # %if.then38
	ld.d	$a0, $fp, 456
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB1_80:                               # %if.end39
	ld.d	$a0, $fp, 456
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB1_81:                               # %sw.epilog
	st.w	$zero, $s0, 24
.LBB1_82:                               # %sw.epilog
	ld.w	$a0, $s0, 40
	ld.w	$a1, $s0, 36
	ld.d	$a2, $fp, 16
	addi.w	$a3, $a0, -1
	xor	$a3, $a1, $a3
	sltui	$a3, $a3, 1
	st.w	$a3, $s0, 28
	beqz	$a2, .LBB1_84
# %bb.83:                               # %if.then50
	st.w	$a1, $a2, 24
	st.w	$a0, $a2, 28
.LBB1_84:                               # %if.end56
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	prepare_for_pass, .Lfunc_end1-prepare_for_pass
                                        # -- End function
	.p2align	5                               # -- Begin function pass_startup
	.type	pass_startup,@function
pass_startup:                           # @pass_startup
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 456
	ld.d	$a1, $fp, 424
	ld.d	$a2, $a0, 16
	st.w	$zero, $a1, 24
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 456
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.Lfunc_end2:
	.size	pass_startup, .Lfunc_end2-pass_startup
                                        # -- End function
	.p2align	5                               # -- Begin function finish_pass_master
	.type	finish_pass_master,@function
finish_pass_master:                     # @finish_pass_master
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 488
	ld.d	$s0, $fp, 424
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.w	$a0, $s0, 32
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB3_5
# %bb.1:                                # %entry
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_4
# %bb.2:                                # %entry
	bnez	$a0, .LBB3_8
# %bb.3:                                # %sw.bb
	ld.w	$a0, $fp, 256
	ori	$a1, $zero, 2
	st.w	$a1, $s0, 32
	bnez	$a0, .LBB3_8
	b	.LBB3_7
.LBB3_4:                                # %sw.bb3
	ori	$a0, $zero, 2
	st.w	$a0, $s0, 32
	b	.LBB3_8
.LBB3_5:                                # %sw.bb5
	ld.w	$a0, $fp, 256
	beqz	$a0, .LBB3_7
# %bb.6:                                # %if.then8
	ori	$a0, $zero, 1
	st.w	$a0, $s0, 32
.LBB3_7:                                # %if.end10
	ld.w	$a0, $s0, 44
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 44
.LBB3_8:                                # %sw.epilog
	ld.w	$a0, $s0, 36
	addi.d	$a0, $a0, 1
	st.w	$a0, $s0, 36
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	finish_pass_master, .Lfunc_end3-finish_pass_master
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function per_scan_setup
.LCPI4_0:
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	8                               # 0x8
	.text
	.p2align	5
	.type	per_scan_setup,@function
per_scan_setup:                         # @per_scan_setup
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
	ld.w	$a1, $a0, 316
	ori	$a0, $zero, 1
	bne	$a1, $a0, .LBB4_2
# %bb.1:                                # %if.then
	ld.d	$a1, $fp, 320
	ld.w	$a2, $a1, 28
	ld.w	$a3, $a1, 32
	pcalau12i	$a4, %pc_hi20(.LCPI4_0)
	vld	$vr0, $a4, %pc_lo12(.LCPI4_0)
	st.w	$a2, $fp, 352
	ld.w	$a2, $a1, 12
	st.w	$a3, $fp, 356
	vst	$vr0, $a1, 52
	st.w	$a0, $a1, 68
	mod.wu	$a3, $a3, $a2
	sltui	$a4, $a3, 1
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	st.w	$a2, $a1, 72
	st.w	$a0, $fp, 360
	st.w	$zero, $fp, 364
	b	.LBB4_12
.LBB4_2:                                # %if.else
	addi.w	$a0, $a1, -5
	addi.w	$a2, $zero, -5
	bltu	$a2, $a0, .LBB4_4
# %bb.3:                                # %if.then10
	ld.d	$a0, $fp, 0
	st.w	$a1, $a0, 44
	ld.d	$a1, $fp, 0
	ori	$a2, $zero, 24
	st.w	$a2, $a0, 40
	ori	$a0, $zero, 4
	st.w	$a0, $a1, 48
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_4:                                # %if.end18
	ld.w	$a1, $fp, 304
	ld.wu	$a0, $fp, 40
	slli.w	$a1, $a1, 3
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 308
	ld.wu	$a2, $fp, 44
	st.w	$a0, $fp, 352
	slli.w	$a1, $a1, 3
	move	$a0, $a2
	pcaddu18i	$ra, %call36(jdiv_round_up)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 316
	st.w	$a0, $fp, 356
	st.w	$zero, $fp, 360
	blez	$a1, .LBB4_12
# %bb.5:                                # %for.body.lr.ph
	move	$s0, $zero
	addi.d	$s1, $fp, 320
	addi.d	$s2, $fp, 364
	ori	$s3, $zero, 11
	ori	$s4, $zero, 1
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_6:                                # %for.inc
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.w	$a0, $fp, 316
	addi.d	$s0, $s0, 1
	bge	$s0, $a0, .LBB4_12
.LBB4_7:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
	slli.d	$a0, $s0, 3
	ldx.d	$a0, $s1, $a0
	ld.w	$a1, $a0, 8
	ld.w	$a2, $a0, 12
	st.w	$a1, $a0, 52
	st.w	$a2, $a0, 56
	ld.w	$a3, $a0, 28
	mul.w	$s5, $a2, $a1
	slli.d	$a4, $a1, 3
	st.w	$a4, $a0, 64
	mod.wu	$a3, $a3, $a1
	sltui	$a4, $a3, 1
	masknez	$a3, $a3, $a4
	maskeqz	$a1, $a1, $a4
	ld.w	$a4, $a0, 32
	st.w	$s5, $a0, 60
	or	$a1, $a1, $a3
	st.w	$a1, $a0, 68
	mod.wu	$a1, $a4, $a2
	sltui	$a3, $a1, 1
	ld.w	$a4, $fp, 360
	masknez	$a1, $a1, $a3
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	add.w	$a2, $a4, $s5
	st.w	$a1, $a0, 72
	blt	$a2, $s3, .LBB4_9
# %bb.8:                                # %if.then66
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 0
	st.w	$s3, $a0, 40
	move	$a0, $fp
	jirl	$ra, $a1, 0
.LBB4_9:                                # %if.end71
                                        #   in Loop: Header=BB4_7 Depth=1
	blez	$s5, .LBB4_6
# %bb.10:                               # %while.body.preheader
                                        #   in Loop: Header=BB4_7 Depth=1
	addi.d	$a0, $s5, 1
	.p2align	4, , 16
.LBB4_11:                               # %while.body
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $fp, 360
	addi.d	$a2, $a1, 1
	st.w	$a2, $fp, 360
	slli.d	$a1, $a1, 2
	addi.w	$a0, $a0, -1
	stx.w	$s0, $s2, $a1
	bltu	$s4, $a0, .LBB4_11
	b	.LBB4_6
.LBB4_12:                               # %if.end79
	ld.w	$a0, $fp, 276
	blez	$a0, .LBB4_14
# %bb.13:                               # %if.then82
	ld.wu	$a1, $fp, 352
	mul.d	$a0, $a1, $a0
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4095
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, 272
.LBB4_14:                               # %if.end91
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
	.size	per_scan_setup, .Lfunc_end4-per_scan_setup
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym prepare_for_pass
	.addrsig_sym pass_startup
	.addrsig_sym finish_pass_master
