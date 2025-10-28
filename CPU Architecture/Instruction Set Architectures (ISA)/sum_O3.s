	.file	"sum.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Sum: "
.LC3:
	.string	"\n"
.LC4:
	.string	"Time: "
.LC5:
	.string	" s\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB6:
	.section	.text.startup,"ax",@progbits
.LHOTB6:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2466:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2466
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movl	$400000000, %edi
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x60,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x78
	.cfi_escape 0x10,0xd,0x2,0x76,0x70
	.cfi_escape 0x10,0xc,0x2,0x76,0x68
	pushq	%rbx
	subq	$8, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	vmovdqa	.LC0(%rip), %ymm0
	movq	%rax, %r13
	movq	%rax, %rbx
	leaq	400000000(%rax), %r12
	.p2align 4,,10
	.p2align 3
.L2:
	vmovdqu	%ymm0, (%rax)
	addq	$32, %rax
	cmpq	%rax, %r12
	jne	.L2
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L3:
	vpmovsxdq	(%rbx), %ymm1
	vmovdqu	(%rbx), %ymm2
	addq	$32, %rbx
	vpaddq	%ymm0, %ymm1, %ymm1
	vextracti128	$0x1, %ymm2, %xmm0
	vpmovsxdq	%xmm0, %ymm0
	vpaddq	%ymm1, %ymm0, %ymm0
	cmpq	%rbx, %r12
	jne	.L3
	vextracti128	$0x1, %ymm0, %xmm1
	vpaddq	%xmm0, %xmm1, %xmm0
	vpsrldq	$8, %xmm0, %xmm1
	vpaddq	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %r12
	vzeroupper
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorps	%xmm0, %xmm0, %xmm0
	movl	$5, %edx
	subq	%r14, %rax
	leaq	_ZSt4cout(%rip), %r14
	leaq	.LC2(%rip), %rsi
	movq	%r14, %rdi
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vdivsd	.LC1(%rip), %xmm0, %xmm3
	vmovq	%xmm3, %rbx
.LEHB1:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIxEERSoT_@PLT
	movq	%rax, %rdi
	movl	$1, %edx
	leaq	.LC3(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$6, %edx
	leaq	.LC4(%rip), %rsi
	movq	%r14, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vmovq	%rbx, %xmm0
	movq	%r14, %rdi
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rdi
	movl	$3, %edx
	leaq	.LC5(%rip), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.LEHE1:
	movq	%r13, %rdi
	movl	$400000000, %esi
	call	_ZdlPvm@PLT
	addq	$8, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L5:
	.cfi_restore_state
	endbr64
	movq	%rax, %r12
	jmp	.L4
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2466:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2466-.LLSDACSB2466
.LLSDACSB2466:
	.uleb128 .LEHB0-.LFB2466
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2466
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L5-.LFB2466
	.uleb128 0
.LLSDACSE2466:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2466
	.type	main.cold, @function
main.cold:
.LFSB2466:
.L4:
	.cfi_escape 0xf,0x3,0x76,0x60,0x6
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	.cfi_escape 0x10,0x6,0x2,0x76,0
	.cfi_escape 0x10,0xc,0x2,0x76,0x68
	.cfi_escape 0x10,0xd,0x2,0x76,0x70
	.cfi_escape 0x10,0xe,0x2,0x76,0x78
	movl	$400000000, %esi
	movq	%r13, %rdi
	vzeroupper
	call	_ZdlPvm@PLT
	movq	%r12, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
	.cfi_endproc
.LFE2466:
	.section	.gcc_except_table
.LLSDAC2466:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2466-.LLSDACSBC2466
.LLSDACSBC2466:
	.uleb128 .LEHB2-.LCOLDB6
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSEC2466:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE6:
	.section	.text.startup
.LHOTE6:
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB3063:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZStL8__ioinit(%rip), %rbp
	movq	%rbp, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	popq	%rbp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE3063:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.long	1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1104006501
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
