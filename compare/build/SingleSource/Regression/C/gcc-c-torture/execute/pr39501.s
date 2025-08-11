	.file	"pr39501.c"
	.text
	.globl	float_min1                      # -- Begin function float_min1
	.p2align	5
	.type	float_min1,@function
float_min1:                             # @float_min1
# %bb.0:                                # %entry
	fmin.s	$fa0, $fa0, $fa1
	ret
.Lfunc_end0:
	.size	float_min1, .Lfunc_end0-float_min1
                                        # -- End function
	.globl	float_min2                      # -- Begin function float_min2
	.p2align	5
	.type	float_min2,@function
float_min2:                             # @float_min2
# %bb.0:                                # %entry
	fmin.s	$fa0, $fa0, $fa1
	ret
.Lfunc_end1:
	.size	float_min2, .Lfunc_end1-float_min2
                                        # -- End function
	.globl	float_max1                      # -- Begin function float_max1
	.p2align	5
	.type	float_max1,@function
float_max1:                             # @float_max1
# %bb.0:                                # %entry
	fmax.s	$fa0, $fa0, $fa1
	ret
.Lfunc_end2:
	.size	float_max1, .Lfunc_end2-float_max1
                                        # -- End function
	.globl	float_max2                      # -- Begin function float_max2
	.p2align	5
	.type	float_max2,@function
float_max2:                             # @float_max2
# %bb.0:                                # %entry
	fmax.s	$fa0, $fa0, $fa1
	ret
.Lfunc_end3:
	.size	float_max2, .Lfunc_end3-float_max2
                                        # -- End function
	.globl	double_min1                     # -- Begin function double_min1
	.p2align	5
	.type	double_min1,@function
double_min1:                            # @double_min1
# %bb.0:                                # %entry
	fmin.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end4:
	.size	double_min1, .Lfunc_end4-double_min1
                                        # -- End function
	.globl	double_min2                     # -- Begin function double_min2
	.p2align	5
	.type	double_min2,@function
double_min2:                            # @double_min2
# %bb.0:                                # %entry
	fmin.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end5:
	.size	double_min2, .Lfunc_end5-double_min2
                                        # -- End function
	.globl	double_max1                     # -- Begin function double_max1
	.p2align	5
	.type	double_max1,@function
double_max1:                            # @double_max1
# %bb.0:                                # %entry
	fmax.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end6:
	.size	double_max1, .Lfunc_end6-double_max1
                                        # -- End function
	.globl	double_max2                     # -- Begin function double_max2
	.p2align	5
	.type	double_max2,@function
double_max2:                            # @double_max2
# %bb.0:                                # %entry
	fmax.d	$fa0, $fa0, $fa1
	ret
.Lfunc_end7:
	.size	double_max2, .Lfunc_end7-double_max2
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1040
	pcaddu18i	$ra, %call36(float_min1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1040
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.1:                                # %if.end
	movgr2fr.w	$fs0, $zero
	vldi	$vr0, -1040
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(float_min1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1040
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.2:                                # %if.end4
	vldi	$vr1, -1168
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(float_min1)
	jirl	$ra, $ra, 0
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.3:                                # %if.end8
	vldi	$vr0, -1168
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(float_min1)
	jirl	$ra, $ra, 0
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.4:                                # %if.end12
	vldi	$vr0, -1040
	vldi	$vr1, -1168
	pcaddu18i	$ra, %call36(float_min1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1040
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.5:                                # %if.end16
	vldi	$vr0, -1168
	vldi	$vr1, -1040
	pcaddu18i	$ra, %call36(float_min1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1040
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.6:                                # %if.end20
	vldi	$vr1, -1040
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(float_max1)
	jirl	$ra, $ra, 0
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.7:                                # %if.end24
	vldi	$vr0, -1040
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(float_max1)
	jirl	$ra, $ra, 0
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.8:                                # %if.end28
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1168
	pcaddu18i	$ra, %call36(float_max1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.9:                                # %if.end32
	movgr2fr.w	$fa1, $zero
	vldi	$vr0, -1168
	pcaddu18i	$ra, %call36(float_max1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.10:                               # %if.end36
	vldi	$vr0, -1040
	vldi	$vr1, -1168
	pcaddu18i	$ra, %call36(float_max1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.11:                               # %if.end40
	vldi	$vr0, -1168
	vldi	$vr1, -1040
	pcaddu18i	$ra, %call36(float_max1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.12:                               # %if.end44
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1040
	pcaddu18i	$ra, %call36(float_min2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1040
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.13:                               # %if.end48
	movgr2fr.w	$fs0, $zero
	vldi	$vr0, -1040
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(float_min2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1040
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.14:                               # %if.end52
	vldi	$vr1, -1168
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(float_min2)
	jirl	$ra, $ra, 0
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.15:                               # %if.end56
	vldi	$vr0, -1168
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(float_min2)
	jirl	$ra, $ra, 0
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.16:                               # %if.end60
	vldi	$vr0, -1040
	vldi	$vr1, -1168
	pcaddu18i	$ra, %call36(float_min2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1040
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.17:                               # %if.end64
	vldi	$vr0, -1168
	vldi	$vr1, -1040
	pcaddu18i	$ra, %call36(float_min2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1040
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.18:                               # %if.end68
	vldi	$vr1, -1040
	fmov.s	$fa0, $fs0
	pcaddu18i	$ra, %call36(float_max2)
	jirl	$ra, $ra, 0
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.19:                               # %if.end72
	vldi	$vr0, -1040
	fmov.s	$fa1, $fs0
	pcaddu18i	$ra, %call36(float_max2)
	jirl	$ra, $ra, 0
	fcmp.ceq.s	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.20:                               # %if.end76
	movgr2fr.w	$fa0, $zero
	vldi	$vr1, -1168
	pcaddu18i	$ra, %call36(float_max2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.21:                               # %if.end80
	movgr2fr.w	$fa1, $zero
	vldi	$vr0, -1168
	pcaddu18i	$ra, %call36(float_max2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.22:                               # %if.end84
	vldi	$vr0, -1040
	vldi	$vr1, -1168
	pcaddu18i	$ra, %call36(float_max2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.23:                               # %if.end88
	vldi	$vr0, -1168
	vldi	$vr1, -1040
	pcaddu18i	$ra, %call36(float_max2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -1168
	fcmp.ceq.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.24:                               # %if.end92
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -784
	pcaddu18i	$ra, %call36(double_min1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.25:                               # %if.end96
	movgr2fr.d	$fs0, $zero
	vldi	$vr0, -784
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(double_min1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.26:                               # %if.end100
	vldi	$vr1, -912
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(double_min1)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.27:                               # %if.end104
	vldi	$vr0, -912
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(double_min1)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.28:                               # %if.end108
	vldi	$vr0, -784
	vldi	$vr1, -912
	pcaddu18i	$ra, %call36(double_min1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.29:                               # %if.end112
	vldi	$vr0, -912
	vldi	$vr1, -784
	pcaddu18i	$ra, %call36(double_min1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.30:                               # %if.end116
	vldi	$vr1, -784
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(double_max1)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.31:                               # %if.end120
	vldi	$vr0, -784
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(double_max1)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.32:                               # %if.end124
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -912
	pcaddu18i	$ra, %call36(double_max1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.33:                               # %if.end128
	movgr2fr.d	$fa1, $zero
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(double_max1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.34:                               # %if.end132
	vldi	$vr0, -784
	vldi	$vr1, -912
	pcaddu18i	$ra, %call36(double_max1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.35:                               # %if.end136
	vldi	$vr0, -912
	vldi	$vr1, -784
	pcaddu18i	$ra, %call36(double_max1)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.36:                               # %if.end140
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -784
	pcaddu18i	$ra, %call36(double_min2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.37:                               # %if.end144
	movgr2fr.d	$fs0, $zero
	vldi	$vr0, -784
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(double_min2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.38:                               # %if.end148
	vldi	$vr1, -912
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(double_min2)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.39:                               # %if.end152
	vldi	$vr0, -912
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(double_min2)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.40:                               # %if.end156
	vldi	$vr0, -784
	vldi	$vr1, -912
	pcaddu18i	$ra, %call36(double_min2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.41:                               # %if.end160
	vldi	$vr0, -912
	vldi	$vr1, -784
	pcaddu18i	$ra, %call36(double_min2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.42:                               # %if.end164
	vldi	$vr1, -784
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(double_max2)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.43:                               # %if.end168
	vldi	$vr0, -784
	fmov.d	$fa1, $fs0
	pcaddu18i	$ra, %call36(double_max2)
	jirl	$ra, $ra, 0
	fcmp.ceq.d	$fcc0, $fa0, $fs0
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.44:                               # %if.end172
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -912
	pcaddu18i	$ra, %call36(double_max2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.45:                               # %if.end176
	movgr2fr.d	$fa1, $zero
	vldi	$vr0, -912
	pcaddu18i	$ra, %call36(double_max2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.46:                               # %if.end180
	vldi	$vr0, -784
	vldi	$vr1, -912
	pcaddu18i	$ra, %call36(double_max2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	beqz	$a0, .LBB8_48
# %bb.47:                               # %if.end184
	vldi	$vr0, -912
	vldi	$vr1, -784
	pcaddu18i	$ra, %call36(double_max2)
	jirl	$ra, $ra, 0
	vldi	$vr1, -912
	fcmp.ceq.d	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	bnez	$a0, .LBB8_49
.LBB8_48:                               # %if.then
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.LBB8_49:                               # %if.end188
	move	$a0, $zero
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
