	.file	"decode.c"
	.text
	.globl	Gsm_Decoder                     # -- Begin function Gsm_Decoder
	.p2align	5
	.type	Gsm_Decoder,@function
Gsm_Decoder:                            # @Gsm_Decoder
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -496
	st.d	$ra, $sp, 488                   # 8-byte Folded Spill
	st.d	$fp, $sp, 480                   # 8-byte Folded Spill
	st.d	$s0, $sp, 472                   # 8-byte Folded Spill
	st.d	$s1, $sp, 464                   # 8-byte Folded Spill
	st.d	$s2, $sp, 456                   # 8-byte Folded Spill
	st.d	$s3, $sp, 448                   # 8-byte Folded Spill
	st.d	$s4, $sp, 440                   # 8-byte Folded Spill
	st.d	$s5, $sp, 432                   # 8-byte Folded Spill
	st.d	$s6, $sp, 424                   # 8-byte Folded Spill
	st.d	$s7, $sp, 416                   # 8-byte Folded Spill
	st.d	$s8, $sp, 408                   # 8-byte Folded Spill
	move	$s6, $a5
	move	$s5, $a4
	ld.h	$a5, $a5, 0
	ld.h	$t0, $a4, 0
	move	$fp, $a7
	move	$s7, $a6
	move	$s3, $a3
	move	$s4, $a2
	move	$s1, $a1
	move	$s0, $a0
	addi.d	$s2, $a0, 240
	addi.d	$a4, $sp, 328
	move	$a1, $a5
	move	$a2, $t0
	move	$a3, $a6
	pcaddu18i	$ra, %call36(Gsm_RPE_Decoding)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s4, 0
	ld.h	$a2, $s3, 0
	addi.d	$a3, $sp, 328
	move	$a0, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Gsm_Long_Term_Synthesis_Filtering)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 80
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s6, 2
	ld.h	$a2, $s5, 2
	addi.d	$a3, $s7, 26
	addi.d	$s8, $sp, 88
	addi.d	$a4, $sp, 328
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Gsm_RPE_Decoding)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s4, 2
	ld.h	$a2, $s3, 2
	addi.d	$a3, $sp, 328
	move	$a0, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Gsm_Long_Term_Synthesis_Filtering)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 80
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s6, 4
	ld.h	$a2, $s5, 4
	addi.d	$a3, $s7, 52
	addi.d	$s8, $sp, 168
	addi.d	$a4, $sp, 328
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Gsm_RPE_Decoding)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s4, 4
	ld.h	$a2, $s3, 4
	addi.d	$a3, $sp, 328
	move	$a0, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Gsm_Long_Term_Synthesis_Filtering)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 80
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s6, 6
	ld.h	$a2, $s5, 6
	addi.d	$a3, $s7, 78
	addi.d	$s5, $sp, 248
	addi.d	$a4, $sp, 328
	move	$a0, $s0
	pcaddu18i	$ra, %call36(Gsm_RPE_Decoding)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s4, 6
	ld.h	$a2, $s3, 6
	addi.d	$a3, $sp, 328
	move	$a0, $s0
	move	$a4, $s2
	pcaddu18i	$ra, %call36(Gsm_Long_Term_Synthesis_Filtering)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 80
	move	$a0, $s5
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $sp, 8
	move	$a0, $s0
	move	$a1, $s1
	move	$a3, $fp
	pcaddu18i	$ra, %call36(Gsm_Short_Term_Synthesis_Filter)
	jirl	$ra, $ra, 0
	ld.hu	$a6, $s0, 650
	addi.w	$a1, $zero, -160
	ori	$a0, $zero, 0
	ori	$a2, $zero, 0
	lu32i.d	$a2, 56360
	ori	$a3, $zero, 0
	lu32i.d	$a3, 32768
	lu12i.w	$a4, 7
	ori	$a4, $a4, 4095
	lu12i.w	$a5, -8
	lu32i.d	$a0, 1
	.p2align	4, , 16
.LBB0_1:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	ext.w.h	$a6, $a6
	ld.h	$a7, $fp, 0
	mul.d	$a6, $a6, $a2
	add.d	$a6, $a6, $a3
	srai.d	$a6, $a6, 48
	add.d	$a6, $a6, $a7
	slt	$a7, $a6, $a4
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a4, $a7
	or	$a6, $a6, $a7
	slt	$a7, $a5, $a6
	maskeqz	$a6, $a6, $a7
	masknez	$a7, $a5, $a7
	or	$a6, $a6, $a7
	slli.d	$a7, $a6, 48
	srai.d	$a7, $a7, 47
	slt	$t0, $a5, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a5, $t0
	or	$a7, $a7, $t0
	slt	$t0, $a7, $a4
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $a4, $t0
	or	$a7, $a7, $t0
	bstrpick.d	$a7, $a7, 15, 3
	slli.d	$a7, $a7, 3
	st.h	$a7, $fp, 0
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, 1
	and	$a7, $a1, $a0
	addi.d	$fp, $fp, 2
	beqz	$a7, .LBB0_1
# %bb.2:                                # %Postprocessing.exit
	st.h	$a6, $s0, 650
	ld.d	$s8, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 424                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 432                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 440                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 448                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 472                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 480                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 488                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 496
	ret
.Lfunc_end0:
	.size	Gsm_Decoder, .Lfunc_end0-Gsm_Decoder
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
