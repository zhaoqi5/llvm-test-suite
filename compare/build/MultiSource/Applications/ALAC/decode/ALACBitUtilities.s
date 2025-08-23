	.file	"ALACBitUtilities.c"
	.text
	.globl	BitBufferInit                   # -- Begin function BitBufferInit
	.p2align	5
	.type	BitBufferInit,@function
BitBufferInit:                          # @BitBufferInit
# %bb.0:                                # %entry
	st.d	$a1, $a0, 0
	bstrpick.d	$a3, $a2, 31, 0
	add.d	$a1, $a1, $a3
	st.d	$a1, $a0, 8
	st.w	$zero, $a0, 16
	st.w	$a2, $a0, 20
	ret
.Lfunc_end0:
	.size	BitBufferInit, .Lfunc_end0-BitBufferInit
                                        # -- End function
	.globl	BitBufferRead                   # -- Begin function BitBufferRead
	.p2align	5
	.type	BitBufferRead,@function
BitBufferRead:                          # @BitBufferRead
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 0
	ld.b	$a3, $a2, 0
	ld.bu	$a4, $a2, 1
	slli.d	$a3, $a3, 16
	ld.bu	$a5, $a2, 2
	ld.wu	$a6, $a0, 16
	slli.d	$a4, $a4, 8
	or	$a3, $a4, $a3
	or	$a3, $a3, $a5
	sll.w	$a3, $a3, $a6
	bstrpick.d	$a3, $a3, 23, 0
	add.d	$a4, $a6, $a1
	ori	$a5, $zero, 24
	sub.d	$a1, $a5, $a1
	srl.w	$a1, $a3, $a1
	bstrpick.d	$a3, $a4, 31, 3
	add.d	$a2, $a2, $a3
	st.d	$a2, $a0, 0
	andi	$a2, $a4, 7
	st.w	$a2, $a0, 16
	move	$a0, $a1
	ret
.Lfunc_end1:
	.size	BitBufferRead, .Lfunc_end1-BitBufferRead
                                        # -- End function
	.globl	BitBufferReadSmall              # -- Begin function BitBufferReadSmall
	.p2align	5
	.type	BitBufferReadSmall,@function
BitBufferReadSmall:                     # @BitBufferReadSmall
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 0
	ld.b	$a3, $a2, 0
	ld.bu	$a4, $a2, 1
	ld.wu	$a5, $a0, 16
	slli.d	$a3, $a3, 8
	or	$a3, $a3, $a4
	sll.w	$a3, $a3, $a5
	add.d	$a4, $a5, $a1
	bstrpick.d	$a3, $a3, 15, 0
	ori	$a5, $zero, 16
	sub.d	$a1, $a5, $a1
	srl.w	$a1, $a3, $a1
	bstrpick.d	$a3, $a4, 31, 3
	add.d	$a2, $a2, $a3
	st.d	$a2, $a0, 0
	andi	$a2, $a4, 7
	andi	$a1, $a1, 255
	st.w	$a2, $a0, 16
	move	$a0, $a1
	ret
.Lfunc_end2:
	.size	BitBufferReadSmall, .Lfunc_end2-BitBufferReadSmall
                                        # -- End function
	.globl	BitBufferReadOne                # -- Begin function BitBufferReadOne
	.p2align	5
	.type	BitBufferReadOne,@function
BitBufferReadOne:                       # @BitBufferReadOne
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 0
	ld.w	$a2, $a0, 16
	ld.bu	$a3, $a1, 0
	ori	$a4, $zero, 7
	sub.d	$a4, $a4, $a2
	srl.w	$a3, $a3, $a4
	addi.d	$a2, $a2, 1
	bstrpick.d	$a4, $a2, 31, 3
	add.d	$a1, $a1, $a4
	st.d	$a1, $a0, 0
	andi	$a2, $a2, 7
	andi	$a1, $a3, 1
	st.w	$a2, $a0, 16
	move	$a0, $a1
	ret
.Lfunc_end3:
	.size	BitBufferReadOne, .Lfunc_end3-BitBufferReadOne
                                        # -- End function
	.globl	BitBufferPeek                   # -- Begin function BitBufferPeek
	.p2align	5
	.type	BitBufferPeek,@function
BitBufferPeek:                          # @BitBufferPeek
# %bb.0:                                # %entry
	ld.d	$a2, $a0, 0
	ld.b	$a3, $a2, 0
	ld.bu	$a4, $a2, 1
	slli.d	$a3, $a3, 16
	ld.bu	$a2, $a2, 2
	ld.wu	$a0, $a0, 16
	slli.d	$a4, $a4, 8
	or	$a3, $a4, $a3
	or	$a2, $a3, $a2
	sll.w	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 23, 0
	ori	$a2, $zero, 24
	sub.d	$a1, $a2, $a1
	srl.w	$a0, $a0, $a1
	ret
.Lfunc_end4:
	.size	BitBufferPeek, .Lfunc_end4-BitBufferPeek
                                        # -- End function
	.globl	BitBufferPeekOne                # -- Begin function BitBufferPeekOne
	.p2align	5
	.type	BitBufferPeekOne,@function
BitBufferPeekOne:                       # @BitBufferPeekOne
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 16
	ld.bu	$a1, $a1, 0
	ori	$a2, $zero, 7
	sub.d	$a0, $a2, $a0
	srl.w	$a0, $a1, $a0
	andi	$a0, $a0, 1
	ret
.Lfunc_end5:
	.size	BitBufferPeekOne, .Lfunc_end5-BitBufferPeekOne
                                        # -- End function
	.globl	BitBufferUnpackBERSize          # -- Begin function BitBufferUnpackBERSize
	.p2align	5
	.type	BitBufferUnpackBERSize,@function
BitBufferUnpackBERSize:                 # @BitBufferUnpackBERSize
# %bb.0:                                # %entry
	ld.d	$a4, $a0, 0
	ld.hu	$a1, $a4, 0
	ld.wu	$a2, $a0, 16
	revb.d	$a1, $a1
	srli.d	$a1, $a1, 48
	sll.w	$a3, $a1, $a2
	addi.d	$a1, $a2, 8
	bstrpick.d	$a5, $a1, 31, 3
	add.d	$a1, $a4, $a5
	st.d	$a1, $a0, 0
	andi	$a1, $a2, 7
	st.w	$a1, $a0, 16
	lu12i.w	$a2, 8
	and	$a6, $a3, $a2
	bstrpick.d	$a3, $a3, 14, 8
	bnez	$a6, .LBB6_2
# %bb.1:
	addi.w	$a0, $a3, 0
	ret
.LBB6_2:                                # %for.body.preheader
	add.d	$a4, $a5, $a4
	addi.d	$a4, $a4, 1
	.p2align	4, , 16
.LBB6_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a4, -1
	revb.d	$a5, $a5
	srli.d	$a5, $a5, 48
	sll.w	$a6, $a5, $a1
	srli.d	$a5, $a6, 8
	st.d	$a4, $a0, 0
	st.w	$a1, $a0, 16
	bstrins.d	$a5, $a3, 63, 7
	and	$a6, $a6, $a2
	addi.d	$a4, $a4, 1
	move	$a3, $a5
	bnez	$a6, .LBB6_3
# %bb.4:                                # %for.end
	addi.w	$a0, $a5, 0
	ret
.Lfunc_end6:
	.size	BitBufferUnpackBERSize, .Lfunc_end6-BitBufferUnpackBERSize
                                        # -- End function
	.globl	BitBufferGetPosition            # -- Begin function BitBufferGetPosition
	.p2align	5
	.type	BitBufferGetPosition,@function
BitBufferGetPosition:                   # @BitBufferGetPosition
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 8
	ld.w	$a2, $a0, 20
	ld.d	$a3, $a0, 0
	ld.w	$a0, $a0, 16
	sub.d	$a1, $a2, $a1
	add.d	$a1, $a3, $a1
	alsl.w	$a0, $a1, $a0, 3
	ret
.Lfunc_end7:
	.size	BitBufferGetPosition, .Lfunc_end7-BitBufferGetPosition
                                        # -- End function
	.globl	BitBufferByteAlign              # -- Begin function BitBufferByteAlign
	.p2align	5
	.type	BitBufferByteAlign,@function
BitBufferByteAlign:                     # @BitBufferByteAlign
# %bb.0:                                # %entry
	ld.w	$a2, $a0, 16
	beqz	$a2, .LBB8_11
# %bb.1:                                # %if.end
	beqz	$a1, .LBB8_7
# %bb.2:                                # %if.then1
	ori	$a1, $zero, 8
	beq	$a2, $a1, .LBB8_11
# %bb.3:                                # %while.body.i.preheader
	sub.w	$a2, $a1, $a2
	ori	$a3, $zero, 255
	move	$a4, $a2
	b	.LBB8_5
	.p2align	4, , 16
.LBB8_4:                                # %if.end31.i
                                        #   in Loop: Header=BB8_5 Depth=1
	sub.w	$a2, $a2, $a5
	beqz	$a2, .LBB8_9
.LBB8_5:                                # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	sltu	$a5, $a4, $a2
	masknez	$a6, $a2, $a5
	ld.d	$a7, $a0, 0
	maskeqz	$a5, $a4, $a5
	or	$a5, $a5, $a6
	sub.w	$a4, $a4, $a5
	ld.b	$a6, $a7, 0
	sub.d	$t0, $a1, $a5
	srl.w	$t0, $a3, $t0
	sll.w	$t0, $t0, $a4
	andn	$a6, $a6, $t0
	st.b	$a6, $a7, 0
	bnez	$a4, .LBB8_4
# %bb.6:                                # %if.then29.i
                                        #   in Loop: Header=BB8_5 Depth=1
	ld.d	$a4, $a0, 0
	addi.d	$a4, $a4, 1
	st.d	$a4, $a0, 0
	ori	$a4, $zero, 8
	b	.LBB8_4
.LBB8_7:                                # %if.else
	ori	$a1, $zero, 8
	beq	$a2, $a1, .LBB8_11
# %bb.8:                                # %if.then.i
	ld.d	$a2, $a0, 0
	move	$a1, $zero
	addi.d	$a2, $a2, 1
	st.d	$a2, $a0, 0
	b	.LBB8_10
.LBB8_9:                                # %while.end.i
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a4
.LBB8_10:                               # %if.end5.sink.split
	st.w	$a1, $a0, 16
.LBB8_11:                               # %if.end5
	ret
.Lfunc_end8:
	.size	BitBufferByteAlign, .Lfunc_end8-BitBufferByteAlign
                                        # -- End function
	.globl	BitBufferWrite                  # -- Begin function BitBufferWrite
	.p2align	5
	.type	BitBufferWrite,@function
BitBufferWrite:                         # @BitBufferWrite
# %bb.0:                                # %entry
	beqz	$a0, .LBB9_7
# %bb.1:                                # %entry
	beqz	$a2, .LBB9_7
# %bb.2:                                # %if.end3
	ld.w	$a4, $a0, 16
	ori	$a3, $zero, 8
	sub.w	$a5, $a3, $a4
	ori	$a4, $zero, 255
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_3:                                # %if.end31
                                        #   in Loop: Header=BB9_4 Depth=1
	beqz	$a2, .LBB9_6
.LBB9_4:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	sltu	$a6, $a5, $a2
	masknez	$a7, $a2, $a6
	maskeqz	$a6, $a5, $a6
	or	$a6, $a6, $a7
	ld.d	$a7, $a0, 0
	sub.w	$a2, $a2, $a6
	srl.w	$t0, $a1, $a2
	sub.w	$a5, $a5, $a6
	ld.b	$t1, $a7, 0
	sub.d	$a6, $a3, $a6
	srl.w	$a6, $a4, $a6
	sll.w	$t2, $a6, $a5
	andn	$t1, $t1, $t2
	and	$a6, $a6, $t0
	sll.w	$a6, $a6, $a5
	or	$a6, $t1, $a6
	st.b	$a6, $a7, 0
	bnez	$a5, .LBB9_3
# %bb.5:                                # %if.then29
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a5, $a0, 0
	addi.d	$a5, $a5, 1
	st.d	$a5, $a0, 0
	ori	$a5, $zero, 8
	b	.LBB9_3
.LBB9_6:                                # %while.end
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $a5
	st.w	$a1, $a0, 16
.LBB9_7:                                # %cleanup
	ret
.Lfunc_end9:
	.size	BitBufferWrite, .Lfunc_end9-BitBufferWrite
                                        # -- End function
	.globl	BitBufferAdvance                # -- Begin function BitBufferAdvance
	.p2align	5
	.type	BitBufferAdvance,@function
BitBufferAdvance:                       # @BitBufferAdvance
# %bb.0:                                # %entry
	beqz	$a1, .LBB10_2
# %bb.1:                                # %if.then
	ld.w	$a2, $a0, 16
	ld.d	$a3, $a0, 0
	add.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 3
	add.d	$a2, $a3, $a2
	st.d	$a2, $a0, 0
	andi	$a1, $a1, 7
	st.w	$a1, $a0, 16
.LBB10_2:                               # %if.end
	ret
.Lfunc_end10:
	.size	BitBufferAdvance, .Lfunc_end10-BitBufferAdvance
                                        # -- End function
	.globl	BitBufferRewind                 # -- Begin function BitBufferRewind
	.p2align	5
	.type	BitBufferRewind,@function
BitBufferRewind:                        # @BitBufferRewind
# %bb.0:                                # %entry
	beqz	$a1, .LBB11_8
# %bb.1:                                # %if.end
	ld.w	$a2, $a0, 16
	bgeu	$a2, $a1, .LBB11_6
# %bb.2:                                # %if.end4
	sub.w	$a1, $a1, $a2
	ld.d	$a3, $a0, 0
	st.w	$zero, $a0, 16
	bstrpick.d	$a4, $a1, 31, 3
	andi	$a2, $a1, 7
	sub.d	$a1, $a3, $a4
	st.d	$a1, $a0, 0
	beqz	$a2, .LBB11_4
# %bb.3:                                # %if.then9
	ori	$a3, $zero, 8
	sub.d	$a2, $a3, $a2
	st.w	$a2, $a0, 16
	addi.d	$a1, $a1, -1
	st.d	$a1, $a0, 0
.LBB11_4:                               # %if.end13
	ld.d	$a2, $a0, 8
	ld.wu	$a3, $a0, 20
	sub.d	$a2, $a2, $a3
	bgeu	$a1, $a2, .LBB11_8
# %bb.5:                                # %if.then19
	move	$a1, $zero
	st.d	$a2, $a0, 0
	b	.LBB11_7
.LBB11_6:                               # %if.then2
	sub.d	$a1, $a2, $a1
.LBB11_7:                               # %cleanup.sink.split
	st.w	$a1, $a0, 16
.LBB11_8:                               # %cleanup
	ret
.Lfunc_end11:
	.size	BitBufferRewind, .Lfunc_end11-BitBufferRewind
                                        # -- End function
	.globl	BitBufferReset                  # -- Begin function BitBufferReset
	.p2align	5
	.type	BitBufferReset,@function
BitBufferReset:                         # @BitBufferReset
# %bb.0:                                # %entry
	ld.d	$a1, $a0, 8
	ld.wu	$a2, $a0, 20
	sub.d	$a1, $a1, $a2
	st.d	$a1, $a0, 0
	st.w	$zero, $a0, 16
	ret
.Lfunc_end12:
	.size	BitBufferReset, .Lfunc_end12-BitBufferReset
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
