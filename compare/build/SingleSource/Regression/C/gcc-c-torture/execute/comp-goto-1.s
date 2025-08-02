	.file	"comp-goto-1.c"
	.section	.text.unlikely.,"ax",@progbits
	.globl	f                               # -- Begin function f
	.p2align	5
	.type	f,@function
f:                                      # @f
# %bb.0:                                # %entry
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	f, .Lfunc_end0-f
                                        # -- End function
	.text
	.globl	simulator_kernel                # -- Begin function simulator_kernel
	.p2align	5
	.type	simulator_kernel,@function
simulator_kernel:                       # @simulator_kernel
# %bb.0:                                # %entry
	ld.d	$a4, $a1, 0
	addi.d	$a2, $a1, 8
	pcalau12i	$a3, %pc_hi20(.Ltmp0)
	addi.d	$a3, $a3, %pc_lo12(.Ltmp0)
	beqz	$a0, .LBB1_9
# %bb.1:                                # %if.then
	ori	$a5, $zero, 1
	blt	$a0, $a5, .LBB1_9
# %bb.2:                                # %for.body.preheader
	ld.d	$a6, $a1, 1032
	ori	$a7, $zero, 4
	pcalau12i	$a5, %pc_hi20(simulator_kernel.op_map)
	addi.d	$a5, $a5, %pc_lo12(simulator_kernel.op_map)
	bgeu	$a0, $a7, .LBB1_4
# %bb.3:
	move	$a7, $zero
	b	.LBB1_7
.LBB1_4:                                # %vector.ph
	bstrpick.d	$a7, $a0, 30, 2
	slli.d	$a7, $a7, 2
	addi.d	$t0, $a6, 16
	vinsgr2vr.w	$vr0, $a3, 0
	vinsgr2vr.w	$vr0, $a3, 1
	lu12i.w	$t1, 63
	ori	$t1, $t1, 4095
	vreplgr2vr.w	$vr1, $t1
	vrepli.b	$vr2, 0
	lu12i.w	$t1, -64
	vreplgr2vr.d	$vr3, $t1
	move	$t1, $a7
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr4, $t0, -16
	vld	$vr5, $t0, 0
	vslli.d	$vr6, $vr4, 46
	vsrai.d	$vr6, $vr6, 46
	vslli.d	$vr7, $vr5, 46
	vsrai.d	$vr7, $vr7, 46
	vpickve2gr.d	$t2, $vr6, 0
	slli.d	$t2, $t2, 3
	vpickve2gr.d	$t3, $vr6, 1
	slli.d	$t3, $t3, 3
	vpickve2gr.d	$t4, $vr7, 0
	slli.d	$t4, $t4, 3
	vpickve2gr.d	$t5, $vr7, 1
	slli.d	$t5, $t5, 3
	ldx.d	$t2, $a5, $t2
	ldx.d	$t3, $a5, $t3
	ldx.d	$t4, $a5, $t4
	ldx.d	$t5, $a5, $t5
	vinsgr2vr.d	$vr6, $t2, 0
	vinsgr2vr.d	$vr6, $t3, 1
	vinsgr2vr.d	$vr7, $t4, 0
	vinsgr2vr.d	$vr7, $t5, 1
	vshuf4i.w	$vr6, $vr6, 8
	vshuf4i.w	$vr7, $vr7, 8
	vsub.w	$vr6, $vr6, $vr0
	vsub.w	$vr7, $vr7, $vr0
	vand.v	$vr6, $vr6, $vr1
	vand.v	$vr7, $vr7, $vr1
	vilvl.w	$vr6, $vr2, $vr6
	vilvl.w	$vr7, $vr2, $vr7
	vand.v	$vr4, $vr4, $vr3
	vand.v	$vr5, $vr5, $vr3
	vor.v	$vr4, $vr4, $vr6
	vor.v	$vr5, $vr5, $vr7
	vst	$vr4, $t0, -16
	vst	$vr5, $t0, 0
	addi.d	$t1, $t1, -4
	addi.d	$t0, $t0, 32
	bnez	$t1, .LBB1_5
# %bb.6:                                # %middle.block
	beq	$a7, $a0, .LBB1_9
.LBB1_7:                                # %for.body.preheader51
	alsl.d	$a6, $a7, $a6, 3
	sub.d	$a0, $a0, $a7
	.p2align	4, , 16
.LBB1_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a6, 0
	slli.d	$t0, $a7, 46
	srai.d	$t0, $t0, 46
	slli.d	$t0, $t0, 3
	ldx.w	$t0, $a5, $t0
	sub.d	$t0, $t0, $a3
	bstrpick.d	$t0, $t0, 17, 0
	bstrins.d	$a7, $t0, 17, 0
	st.d	$a7, $a6, 0
	addi.d	$a0, $a0, -1
	addi.d	$a6, $a6, 8
	bnez	$a0, .LBB1_8
.LBB1_9:                                # %if.end
	ld.d	$a6, $a4, 0
	addi.d	$a0, $a1, 1040
	addi.d	$a1, $a1, 1048
	slli.d	$a5, $a6, 46
	srai.d	$a5, $a5, 46
	add.d	$a7, $a3, $a5
	srli.d	$a5, $a6, 52
	andi	$a5, $a5, 1020
	ldx.wu	$a5, $a2, $a5
	addi.d	$a4, $a4, 8
	srli.d	$a6, $a6, 20
	andi	$a6, $a6, 1020
	jr	$a7
	.p2align	4, , 16
.Ltmp0:                                 # Block address taken
.LBB1_10:                               # %sim_base_addr
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a6, $a4, 0
	slli.d	$a5, $a6, 46
	srai.d	$a5, $a5, 46
	add.d	$a7, $a3, $a5
	srli.d	$a5, $a6, 52
	andi	$a5, $a5, 1020
	ldx.wu	$a5, $a2, $a5
	addi.d	$a4, $a4, 8
	srli.d	$a6, $a6, 20
	andi	$a6, $a6, 1020
	jr	$a7
	.p2align	4, , 16
.Ltmp1:                                 # Block address taken
.LBB1_11:                               # %L_LOAD32_RR
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
	bstrpick.d	$t0, $a5, 19, 12
	slli.d	$a7, $t0, 4
	ldx.w	$t2, $a0, $a7
	ld.d	$a7, $a4, 0
	srli.d	$t1, $a5, 12
	beq	$t2, $t1, .LBB1_14
	.p2align	4, , 16
.LBB1_12:                               # %if.end55
                                        #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t3, $zero, -1
	bge	$t3, $t2, .LBB1_16
# %bb.13:                               # %for.cond25
                                        #   in Loop: Header=BB1_12 Depth=2
	addi.d	$t0, $t0, -1
	andi	$t0, $t0, 255
	slli.d	$t2, $t0, 4
	ldx.w	$t2, $a0, $t2
	bne	$t2, $t1, .LBB1_12
.LBB1_14:                               # %if.then33
                                        #   in Loop: Header=BB1_11 Depth=1
	slli.d	$t0, $t0, 4
	ldx.d	$t0, $a1, $t0
	ldx.w	$a5, $t0, $a5
	stx.w	$a5, $a2, $a6
	slli.d	$a5, $a7, 46
	srai.d	$a5, $a5, 46
	add.d	$t0, $a3, $a5
	srli.d	$a5, $a7, 52
	andi	$a5, $a5, 1020
	ldx.wu	$a5, $a2, $a5
	addi.d	$a4, $a4, 8
	srli.d	$a6, $a7, 20
	andi	$a6, $a6, 1020
	jr	$t0
.Ltmp2:                                 # Block address taken
.LBB1_15:                               # %L_METAOP_DONE
	ldx.w	$a0, $a2, $a6
	ret
.LBB1_16:                               # %if.then58
	pcaddu18i	$ra, %call36(f)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	simulator_kernel, .Lfunc_end1-simulator_kernel
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1088
	lu12i.w	$a0, 2
	pcaddu18i	$ra, %call36(malloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4095
	add.d	$a0, $a0, $a1
	move	$a1, $a0
	bstrins.d	$a1, $zero, 11, 0
	ori	$a2, $zero, 291
	st.w	$a2, $sp, 1616
	lu12i.w	$a2, -291
	add.d	$a1, $a1, $a2
	st.d	$a1, $sp, 1624
	st.w	$zero, $sp, 24
	lu12i.w	$a1, 291
	ori	$a1, $a1, 1104
	st.w	$a1, $sp, 32
	ori	$a1, $zero, 1104
	bstrins.d	$a0, $a1, 11, 0
	ori	$fp, $zero, 88
	st.w	$fp, $a0, 0
	lu52i.d	$a0, $zero, 8
	vreplgr2vr.d	$vr0, $a0
	pcalau12i	$a0, %pc_hi20(program)
	addi.d	$a0, $a0, %pc_lo12(program)
	vst	$vr0, $a0, 0
	ori	$a1, $zero, 1
	lu52i.d	$a1, $a1, 8
	st.d	$a1, $a0, 16
	st.d	$a0, $sp, 16
	st.d	$a0, $sp, 1048
	ori	$a0, $zero, 3
	addi.d	$a1, $sp, 16
	pcaddu18i	$ra, %call36(simulator_kernel)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB2_2
# %bb.1:                                # %if.end
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB2_2:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
                                        # -- End function
	.type	simulator_kernel.op_map,@object # @simulator_kernel.op_map
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
simulator_kernel.op_map:
	.dword	.Ltmp1
	.dword	.Ltmp2
	.size	simulator_kernel.op_map, 16

	.type	program,@object                 # @program
	.bss
	.globl	program
	.p2align	4, 0x0
program:
	.space	24
	.size	program, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym program
