	.file	"CMakeCCompilerId.c"
	.text
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	pcalau12i	$a1, %pc_hi20(info_compiler)
	ld.d	$a1, $a1, %pc_lo12(info_compiler)
	pcalau12i	$a2, %pc_hi20(info_platform)
	ld.d	$a2, $a2, %pc_lo12(info_platform)
	pcalau12i	$a3, %pc_hi20(info_arch)
	ld.d	$a3, $a3, %pc_lo12(info_arch)
	ldx.b	$a1, $a1, $a0
	ldx.b	$a2, $a2, $a0
	ldx.b	$a3, $a3, $a0
	add.d	$a1, $a2, $a1
	add.d	$a1, $a1, $a3
	pcalau12i	$a2, %pc_hi20(info_version)
	addi.d	$a2, $a2, %pc_lo12(info_version)
	pcalau12i	$a3, %pc_hi20(info_language_standard_default)
	ld.d	$a3, $a3, %pc_lo12(info_language_standard_default)
	pcalau12i	$a4, %pc_hi20(info_language_extensions_default)
	ld.d	$a4, $a4, %pc_lo12(info_language_extensions_default)
	ldx.b	$a2, $a2, $a0
	ldx.b	$a3, $a3, $a0
	ldx.b	$a0, $a4, $a0
	add.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	add.d	$a0, $a1, $a0
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"INFO:compiler[Clang]"
	.size	.L.str, 21

	.type	info_compiler,@object           # @info_compiler
	.data
	.globl	info_compiler
	.p2align	3, 0x0
info_compiler:
	.dword	.L.str
	.size	info_compiler, 8

	.type	info_version,@object            # @info_version
	.section	.rodata,"a",@progbits
	.globl	info_version
info_version:
	.asciz	"INFO:compiler_version[00000022.00000000.00000000]"
	.size	info_version, 50

	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"INFO:platform[Linux]"
	.size	.L.str.1, 21

	.type	info_platform,@object           # @info_platform
	.data
	.globl	info_platform
	.p2align	3, 0x0
info_platform:
	.dword	.L.str.1
	.size	info_platform, 8

	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"INFO:arch[]"
	.size	.L.str.2, 12

	.type	info_arch,@object               # @info_arch
	.data
	.globl	info_arch
	.p2align	3, 0x0
info_arch:
	.dword	.L.str.2
	.size	info_arch, 8

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"INFO:standard_default[17]"
	.size	.L.str.3, 26

	.type	info_language_standard_default,@object # @info_language_standard_default
	.data
	.globl	info_language_standard_default
	.p2align	3, 0x0
info_language_standard_default:
	.dword	.L.str.3
	.size	info_language_standard_default, 8

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"INFO:extensions_default[ON]"
	.size	.L.str.4, 28

	.type	info_language_extensions_default,@object # @info_language_extensions_default
	.data
	.globl	info_language_extensions_default
	.p2align	3, 0x0
info_language_extensions_default:
	.dword	.L.str.4
	.size	info_language_extensions_default, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
