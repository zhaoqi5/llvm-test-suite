	.file	"setpwates.c"
	.text
	.globl	setpwates                       # -- Begin function setpwates
	.p2align	5
	.type	setpwates,@function
setpwates:                              # @setpwates
# %bb.0:                                # %entry
	pcalau12i	$a0, %got_pc_hi20(numcells)
	ld.d	$a0, $a0, %got_pc_lo12(numcells)
	ld.w	$a2, $a0, 0
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB0_5
# %bb.1:                                # %for.body.lr.ph
	pcalau12i	$a1, %got_pc_hi20(cellarray)
	ld.d	$a1, $a1, %got_pc_lo12(cellarray)
	pcalau12i	$a3, %got_pc_hi20(pinsPerLen)
	ld.d	$a3, $a3, %got_pc_lo12(pinsPerLen)
	ld.d	$a1, $a1, 0
	addi.d	$a2, $a2, 1
	xvldrepl.d	$xr0, $a3, 0
	bstrpick.d	$a2, $a2, 31, 0
	lu52i.d	$a3, $zero, 1023
	xvreplgr2vr.d	$xr1, $a3
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %for.inc29
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a0, $a0, 1
	beq	$a0, $a2, .LBB0_5
.LBB0_3:                                # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	slli.d	$a3, $a0, 3
	ldx.d	$a3, $a1, $a3
	ld.d	$a3, $a3, 152
	beqz	$a3, .LBB0_2
	.p2align	4, , 16
.LBB0_4:                                # %for.body4
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $a3, 8
	xvfcmp.clt.d	$xr3, $xr0, $xr2
	xvfdiv.d	$xr2, $xr2, $xr0
	xvbitsel.v	$xr2, $xr1, $xr2, $xr3
	xvst	$xr2, $a3, 8
	ld.d	$a3, $a3, 0
	bnez	$a3, .LBB0_4
	b	.LBB0_2
.LBB0_5:                                # %for.end30
	ret
.Lfunc_end0:
	.size	setpwates, .Lfunc_end0-setpwates
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
