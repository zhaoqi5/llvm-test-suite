	.file	"20020529-1.c"
	.text
	.globl	foo                             # -- Begin function foo
	.p2align	5
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	pcalau12i	$a4, %pc_hi20(f1.beenhere)
	ld.w	$a5, $a4, %pc_lo12(f1.beenhere)
	beqz	$a1, .LBB0_2
# %bb.1:                                # %for.cond.outer.split
	ori	$a0, $zero, 1
	bge	$a0, $a5, .LBB0_5
	b	.LBB0_11
.LBB0_2:                                # %for.cond.outer.split.us.lr.ph
	beqz	$a2, .LBB0_6
# %bb.3:                                # %for.cond.outer.split.us
	ori	$a2, $zero, 1
	addi.d	$a1, $a5, 1
	blt	$a2, $a5, .LBB0_12
# %bb.4:                                # %f1.exit.us
	bne	$a5, $a2, .LBB0_13
.LBB0_5:                                # %if.then
	ori	$a0, $zero, 2
	st.w	$a0, $a4, %pc_lo12(f1.beenhere)
	move	$a0, $zero
	ret
.LBB0_6:                                # %for.cond.outer.split.us.us.preheader
	ori	$a1, $zero, 1
	blt	$a1, $a5, .LBB0_11
# %bb.7:
	ori	$a2, $zero, 2
	slt	$a6, $a2, $a5
	masknez	$a2, $a2, $a6
	maskeqz	$a6, $a5, $a6
	or	$a2, $a6, $a2
	.p2align	4, , 16
.LBB0_8:                                # %f1.exit.us.us
                                        # =>This Inner Loop Header: Depth=1
	beq	$a5, $a1, .LBB0_5
# %bb.9:                                # %if.end.us.us
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.w	$a5, $a5, 1
	st.w	$a5, $a4, %pc_lo12(f1.beenhere)
	ld.w	$a6, $a0, 0
	st.h	$a3, $a0, 16
	bnez	$a6, .LBB0_14
# %bb.10:                               # %if.end8.us
                                        #   in Loop: Header=BB0_8 Depth=1
	ext.w.h	$a3, $a3
	bne	$a2, $a5, .LBB0_8
.LBB0_11:                               # %if.then.i.loopexit
	addi.d	$a1, $a5, 1
.LBB0_12:                               # %if.then.i
	st.w	$a1, $a4, %pc_lo12(f1.beenhere)
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %if.end.us
	st.w	$a1, $a4, %pc_lo12(f1.beenhere)
	ld.w	$a1, $a0, 0
	st.h	$a3, $a0, 16
.LBB0_14:                               # %if.then10
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	f1                              # -- Begin function f1
	.p2align	5
	.type	f1,@function
f1:                                     # @f1
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(f1.beenhere)
	ld.w	$a0, $a1, %pc_lo12(f1.beenhere)
	addi.d	$a2, $a0, 1
	ori	$a3, $zero, 2
	st.w	$a2, $a1, %pc_lo12(f1.beenhere)
	bge	$a0, $a3, .LBB1_2
# %bb.1:                                # %if.end
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	ret
.LBB1_2:                                # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	f1, .Lfunc_end1-f1
                                        # -- End function
	.section	.text.unlikely.,"ax",@progbits
	.globl	f2                              # -- Begin function f2
	.p2align	5
	.type	f2,@function
f2:                                     # @f2
# %bb.0:                                # %entry
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	f2, .Lfunc_end2-f2
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$zero, $sp, 0
	addi.d	$a0, $sp, 0
	st.d	$a0, $sp, 8
	ori	$a0, $zero, 23
	st.h	$a0, $sp, 16
	pcalau12i	$a0, %pc_hi20(f1.beenhere)
	ld.w	$a3, $a0, %pc_lo12(f1.beenhere)
	st.w	$zero, $sp, 18
	st.h	$zero, $sp, 22
	ori	$a2, $zero, 1
	addi.w	$a1, $a3, 1
	blt	$a2, $a3, .LBB3_3
# %bb.1:                                # %f1.exit.us.us.i.preheader
	bne	$a3, $a2, .LBB3_4
# %bb.2:                                # %if.then.critedge
	ori	$a1, $zero, 2
.LBB3_3:                                # %if.then.i.i
	st.w	$a1, $a0, %pc_lo12(f1.beenhere)
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB3_4:                                # %if.end8.us.i.lr.ph
	ori	$a2, $zero, 2
	slt	$a4, $a2, $a3
	masknez	$a2, $a2, $a4
	maskeqz	$a4, $a3, $a4
	or	$a2, $a4, $a2
	sub.w	$a4, $zero, $a3
	nor	$a3, $a3, $zero
	add.w	$a3, $a2, $a3
	sltu	$a5, $a4, $a3
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	addi.w	$a4, $a3, 1
	ori	$a5, $zero, 3
	bltu	$a4, $a5, .LBB3_7
# %bb.5:                                # %vector.ph
	bstrins.d	$a3, $zero, 0, 0
	add.w	$a1, $a1, $a3
	st.h	$zero, $sp, 16
	.p2align	4, , 16
.LBB3_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $a3, -2
	bnez	$a3, .LBB3_6
.LBB3_7:                                # %if.end8.us.i.preheader
	st.h	$zero, $sp, 16
	ori	$a3, $zero, 2
	.p2align	4, , 16
.LBB3_8:                                # %if.end8.us.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a4, $a1
	addi.w	$a1, $a1, 1
	beq	$a2, $a4, .LBB3_3
# %bb.9:                                # %f1.exit.us.us.i
                                        #   in Loop: Header=BB3_8 Depth=1
	bne	$a1, $a3, .LBB3_8
# %bb.10:                               # %foo.exit
	ori	$a1, $zero, 2
	st.w	$a1, $a0, %pc_lo12(f1.beenhere)
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        # -- End function
	.type	f1.beenhere,@object             # @f1.beenhere
	.local	f1.beenhere
	.comm	f1.beenhere,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
