	.file	"dct8x8.c"
	.text
	.p2align 4,,15
	.globl	_Z17slow_float_dct8x8PA8_sS0_
	.type	_Z17slow_float_dct8x8PA8_sS0_, @function
_Z17slow_float_dct8x8PA8_sS0_:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	call	mcount
	movsd	.LC1(%rip), %xmm5
	leaq	-176(%rbp), %rax
	movq	%rdi, -280(%rbp)
	movq	%rsi, -312(%rbp)
	movsd	%xmm5, -200(%rbp)
	movq	$Av, -296(%rbp)
	movl	$0, -288(%rbp)
	movq	%rax, -304(%rbp)
	movl	$0, -284(%rbp)
	.p2align 4,,10
	.p2align 3
.L2:
	movl	-284(%rbp), %r15d
	leal	(%r15,%r15,2), %ebx
	leal	0(,%r15,8), %r12d
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	leal	(%r15,%r15,4), %eax
	movsd	%xmm0, -216(%rbp)
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	movl	%r12d, %edi
	movsd	%xmm0, -248(%rbp)
	addl	%r15d, %r12d
	subl	%r15d, %edi
	cvtsi2sd	%edi, %xmm0
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	movsd	%xmm0, -240(%rbp)
	cvtsi2sd	%r12d, %xmm0
	xorl	%r12d, %r12d
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	movsd	%xmm0, -232(%rbp)
	cvtsi2sd	-288(%rbp), %xmm0
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	leal	(%r15,%rbx,4), %eax
	movsd	%xmm0, -224(%rbp)
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	movl	%r15d, %eax
	movsd	%xmm0, -208(%rbp)
	sall	$4, %eax
	subl	%r15d, %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	movq	-304(%rbp), %rax
	movsd	%xmm0, -256(%rbp)
	movsd	.LC1(%rip), %xmm0
	movq	%rax, -264(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -272(%rbp)
	.p2align 4,,10
	.p2align 3
.L7:
	movss	(%rax), %xmm4
	leal	(%r12,%r12), %ebx
	movq	-280(%rbp), %r14
	xorl	%r15d, %r15d
	xorpd	%xmm1, %xmm1
	cvtps2pd	%xmm4, %xmm4
	leal	(%rbx,%r12), %r13d
	movsd	%xmm4, -192(%rbp)
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L3:
	cvtsi2sd	%r13d, %xmm0
	addl	%ebx, %r13d
	movsd	%xmm1, -184(%rbp)
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	movsd	-184(%rbp), %xmm1
.L5:
	movswl	(%r14), %esi
	mulsd	-192(%rbp), %xmm0
	addl	$1, %r15d
	movsd	-200(%rbp), %xmm2
	addq	$16, %r14
	cvtsi2sd	%esi, %xmm3
	movswl	-14(%r14), %esi
	mulsd	%xmm0, %xmm2
	mulsd	%xmm3, %xmm2
	cvtsi2sd	%esi, %xmm3
	movswl	-12(%r14), %esi
	addsd	%xmm1, %xmm2
	movsd	-216(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	cvtsi2sd	%esi, %xmm3
	movswl	-10(%r14), %esi
	addsd	%xmm1, %xmm2
	movsd	-248(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	cvtsi2sd	%esi, %xmm3
	movswl	-8(%r14), %esi
	addsd	%xmm2, %xmm1
	movsd	-240(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	mulsd	%xmm3, %xmm2
	cvtsi2sd	%esi, %xmm3
	movswl	-6(%r14), %esi
	addsd	%xmm1, %xmm2
	movsd	-232(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	cvtsi2sd	%esi, %xmm3
	movswl	-4(%r14), %esi
	addsd	%xmm2, %xmm1
	movsd	-224(%rbp), %xmm2
	mulsd	%xmm0, %xmm2
	mulsd	%xmm3, %xmm2
	cvtsi2sd	%esi, %xmm3
	movswl	-2(%r14), %esi
	cmpl	$8, %r15d
	addsd	%xmm1, %xmm2
	movsd	-208(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	mulsd	-256(%rbp), %xmm0
	mulsd	%xmm3, %xmm1
	addsd	%xmm2, %xmm1
	cvtsi2sd	%esi, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	jne	.L3
	cvttsd2si	%xmm1, %eax
	movq	-264(%rbp), %rdx
	addl	$1, %r12d
	addq	$32, -272(%rbp)
	addq	$16, -264(%rbp)
	cmpl	$8, %r12d
	movw	%ax, (%rdx)
	je	.L4
	cvtsi2sd	%r12d, %xmm0
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	movq	-272(%rbp), %rax
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L4:
	addl	$1, -284(%rbp)
	addl	$11, -288(%rbp)
	addq	$4, -296(%rbp)
	addq	$2, -304(%rbp)
	cmpl	$8, -284(%rbp)
	je	.L6
	cvtsi2sd	-284(%rbp), %xmm0
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	movsd	%xmm0, -200(%rbp)
	jmp	.L2
.L6:
	movq	-176(%rbp), %rax
	movq	-312(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-168(%rbp), %rax
	movq	%rax, 8(%rcx)
	movq	-160(%rbp), %rax
	movq	%rax, 16(%rcx)
	movq	-152(%rbp), %rax
	movq	%rax, 24(%rcx)
	movq	-144(%rbp), %rax
	movq	%rax, 32(%rcx)
	movq	-136(%rbp), %rax
	movq	%rax, 40(%rcx)
	movq	-128(%rbp), %rax
	movq	%rax, 48(%rcx)
	movq	-120(%rbp), %rax
	movq	%rax, 56(%rcx)
	movq	-112(%rbp), %rax
	movq	%rax, 64(%rcx)
	movq	-104(%rbp), %rax
	movq	%rax, 72(%rcx)
	movq	-96(%rbp), %rax
	movq	%rax, 80(%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, 88(%rcx)
	movq	-80(%rbp), %rax
	movq	%rax, 96(%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, 104(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, 112(%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, 120(%rcx)
	addq	$280, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE26:
	.size	_Z17slow_float_dct8x8PA8_sS0_, .-_Z17slow_float_dct8x8PA8_sS0_
	.p2align 4,,15
	.globl	_Z15fast_float_dct8PfS_
	.type	_Z15fast_float_dct8PfS_, @function
_Z15fast_float_dct8PfS_:
.LFB28:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	call	mcount
	movsd	.LC1(%rip), %xmm4
	xorl	%r14d, %r14d
	movq	%rdi, %r12
	movq	%rsi, %r15
	xorl	%r13d, %r13d
	movsd	%xmm4, -72(%rbp)
	xorl	%ebx, %ebx
	jmp	.L13
	.p2align 4,,10
	.p2align 3
.L17:
	movl	%ebx, %eax
	sall	$4, %eax
	subl	%ebx, %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	movsd	%xmm0, -72(%rbp)
.L13:
	testl	%ebx, %ebx
	je	.L16
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	leal	(%rbx,%rbx,2), %eax
	movsd	%xmm0, -56(%rbp)
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	call	cos
	movss	(%r12), %xmm1
	xorpd	%xmm3, %xmm3
	movss	4(%r12), %xmm2
	leal	(%rbx,%rbx,4), %eax
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	mulsd	-56(%rbp), %xmm1
	mulsd	%xmm0, %xmm2
	cvtsi2sd	%eax, %xmm0
	addsd	%xmm3, %xmm1
	unpcklpd	%xmm1, %xmm1
	cvtpd2ps	%xmm1, %xmm1
	mulsd	.LC2(%rip), %xmm0
	unpcklps	%xmm1, %xmm1
	mulsd	.LC3(%rip), %xmm0
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -56(%rbp)
	call	cos
	movss	8(%r12), %xmm2
	leal	0(,%rbx,8), %eax
	movsd	-56(%rbp), %xmm1
	cvtps2pd	%xmm2, %xmm2
	movl	%eax, %edx
	movl	%eax, -60(%rbp)
	subl	%ebx, %edx
	unpcklpd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm2
	cvtsi2sd	%edx, %xmm0
	cvtpd2ps	%xmm1, %xmm1
	unpcklps	%xmm1, %xmm1
	mulsd	.LC2(%rip), %xmm0
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LC3(%rip), %xmm0
	movsd	%xmm1, -56(%rbp)
	call	cos
	movss	12(%r12), %xmm2
	movl	-60(%rbp), %eax
	movsd	-56(%rbp), %xmm1
	cvtps2pd	%xmm2, %xmm2
	addl	%ebx, %eax
	unpcklpd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm2
	cvtsi2sd	%eax, %xmm0
	cvtpd2ps	%xmm1, %xmm1
	unpcklps	%xmm1, %xmm1
	mulsd	.LC2(%rip), %xmm0
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LC3(%rip), %xmm0
	movsd	%xmm1, -56(%rbp)
	call	cos
	movss	16(%r12), %xmm2
	movsd	-56(%rbp), %xmm1
	cvtps2pd	%xmm2, %xmm2
	unpcklpd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm2
	cvtsi2sd	%r13d, %xmm0
	cvtpd2ps	%xmm1, %xmm1
	unpcklps	%xmm1, %xmm1
	mulsd	.LC2(%rip), %xmm0
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LC3(%rip), %xmm0
	movsd	%xmm1, -56(%rbp)
	call	cos
	movss	20(%r12), %xmm2
	movsd	-56(%rbp), %xmm1
	cvtps2pd	%xmm2, %xmm2
	unpcklpd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm2
	cvtsi2sd	%r14d, %xmm0
	cvtpd2ps	%xmm1, %xmm1
	unpcklps	%xmm1, %xmm1
	mulsd	.LC2(%rip), %xmm0
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LC3(%rip), %xmm0
	movsd	%xmm1, -56(%rbp)
	call	cos
	movsd	-56(%rbp), %xmm1
	movss	24(%r12), %xmm2
	unpcklpd	%xmm1, %xmm1
	cvtps2pd	%xmm2, %xmm2
	cvtpd2ps	%xmm1, %xmm1
	mulsd	%xmm0, %xmm2
	movss	.LC5(%rip), %xmm0
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	unpcklpd	%xmm1, %xmm1
	cvtpd2ps	%xmm1, %xmm1
.L14:
	mulss	28(%r12), %xmm0
	addl	$1, %ebx
	addq	$4, %r15
	unpcklps	%xmm1, %xmm1
	addl	$11, %r13d
	addl	$13, %r14d
	cvtps2pd	%xmm1, %xmm1
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	mulsd	-72(%rbp), %xmm0
	addsd	%xmm0, %xmm1
	unpcklpd	%xmm1, %xmm1
	cvtpd2ps	%xmm1, %xmm1
	mulss	.LC6(%rip), %xmm1
	movss	%xmm1, -4(%r15)
	cmpl	$8, %ebx
	jne	.L17
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L16:
	.cfi_restore_state
	movss	.LC4(%rip), %xmm1
	mulss	(%r12), %xmm1
	movss	.LC4(%rip), %xmm0
	xorpd	%xmm5, %xmm5
	mulss	4(%r12), %xmm0
	unpcklps	%xmm1, %xmm1
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm1, %xmm1
	cvtps2pd	%xmm0, %xmm0
	addsd	%xmm5, %xmm1
	unpcklpd	%xmm1, %xmm1
	cvtpd2ps	%xmm1, %xmm1
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movss	.LC4(%rip), %xmm1
	mulss	8(%r12), %xmm1
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movss	.LC4(%rip), %xmm0
	mulss	12(%r12), %xmm0
	unpcklpd	%xmm1, %xmm1
	cvtpd2ps	%xmm1, %xmm1
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movss	.LC4(%rip), %xmm1
	mulss	16(%r12), %xmm1
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movss	.LC4(%rip), %xmm1
	mulss	20(%r12), %xmm1
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm1
	movss	.LC4(%rip), %xmm0
	mulss	24(%r12), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movss	.LC4(%rip), %xmm0
	unpcklpd	%xmm1, %xmm1
	cvtpd2ps	%xmm1, %xmm1
	jmp	.L14
	.cfi_endproc
.LFE28:
	.size	_Z15fast_float_dct8PfS_, .-_Z15fast_float_dct8PfS_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"\n==== Input ===="
.LC8:
	.string	"input[%d] = %f\n"
.LC9:
	.string	"\n==== Stage 1 ===="
.LC10:
	.string	"stage1[%d] = %f\n"
.LC11:
	.string	"\n==== Stage 2 ===="
.LC12:
	.string	"stage2[%d] = %f\n"
.LC13:
	.string	"\n==== Stage 3 ===="
.LC14:
	.string	"stage3[%d] = %f\n"
.LC15:
	.string	"\n==== Output ===="
.LC16:
	.string	"output[%d] = %f\n"
	.text
	.p2align 4,,15
	.globl	_Z15slow_float_dct8PfS_
	.type	_Z15slow_float_dct8PfS_, @function
_Z15slow_float_dct8PfS_:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	call	mcount
	xorl	%ebx, %ebx
	movq	%rdi, %r13
	movl	$.LC7, %edi
	movq	%rsi, %r12
	call	puts
	.p2align 4,,10
	.p2align 3
.L20:
	movss	0(%r13,%rbx,4), %xmm0
	movl	%ebx, %esi
	movl	$.LC8, %edi
	movl	$1, %eax
	addq	$1, %rbx
	cvtps2pd	%xmm0, %xmm0
	call	printf
	cmpq	$8, %rbx
	jne	.L20
	xorps	%xmm0, %xmm0
	movl	$.LC9, %edi
	xorps	%xmm1, %xmm1
	xorb	%bl, %bl
	movlps	16(%r13), %xmm0
	movlps	0(%r13), %xmm1
	movhps	24(%r13), %xmm0
	movhps	8(%r13), %xmm1
	shufps	$27, %xmm0, %xmm0
	addps	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	movlps	0(%r13), %xmm0
	movaps	%xmm1, -64(%rbp)
	xorps	%xmm1, %xmm1
	movhps	8(%r13), %xmm0
	shufps	$27, %xmm0, %xmm0
	movlps	16(%r13), %xmm1
	movhps	24(%r13), %xmm1
	subps	%xmm1, %xmm0
	movaps	%xmm0, -48(%rbp)
	call	puts
	.p2align 4,,10
	.p2align 3
.L22:
	movss	-64(%rbp,%rbx,4), %xmm0
	movl	%ebx, %esi
	movl	$.LC10, %edi
	movl	$1, %eax
	addq	$1, %rbx
	cvtps2pd	%xmm0, %xmm0
	call	printf
	cmpq	$8, %rbx
	jne	.L22
	movl	$.LC11, %edi
	xorb	%bl, %bl
	call	puts
	.p2align 4,,10
	.p2align 3
.L24:
	movss	(%r12,%rbx,4), %xmm0
	movl	%ebx, %esi
	movl	$.LC12, %edi
	movl	$1, %eax
	addq	$1, %rbx
	cvtps2pd	%xmm0, %xmm0
	call	printf
	cmpq	$8, %rbx
	jne	.L24
	movl	$.LC13, %edi
	xorb	%bl, %bl
	call	puts
	.p2align 4,,10
	.p2align 3
.L26:
	movss	-64(%rbp,%rbx,4), %xmm0
	movl	%ebx, %esi
	movl	$.LC14, %edi
	movl	$1, %eax
	addq	$1, %rbx
	cvtps2pd	%xmm0, %xmm0
	call	printf
	cmpq	$8, %rbx
	jne	.L26
	movl	$.LC15, %edi
	xorb	%bl, %bl
	call	puts
	.p2align 4,,10
	.p2align 3
.L28:
	movss	(%r12,%rbx,4), %xmm0
	movl	%ebx, %esi
	movl	$.LC16, %edi
	movl	$1, %eax
	addq	$1, %rbx
	cvtps2pd	%xmm0, %xmm0
	call	printf
	cmpq	$8, %rbx
	jne	.L28
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	_Z15slow_float_dct8PfS_, .-_Z15slow_float_dct8PfS_
	.p2align 4,,15
	.globl	_Z17fast_float_dct8x8PA8_sS0_
	.type	_Z17fast_float_dct8x8PA8_sS0_, @function
_Z17fast_float_dct8x8PA8_sS0_:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$528, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	call	mcount
	pxor	%xmm0, %xmm0
	xorl	%ebx, %ebx
	movdqu	(%rdi), %xmm1
	movq	%rsi, %r12
	movdqa	%xmm0, %xmm2
	movdqa	%xmm1, %xmm7
	pcmpgtw	%xmm1, %xmm2
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm2, %xmm7
	movdqa	%xmm0, %xmm2
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -512(%rbp)
	cvtdq2ps	%xmm7, %xmm3
	movaps	%xmm3, -528(%rbp)
	movdqu	16(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm2
	movdqa	%xmm1, %xmm7
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm2, %xmm7
	movdqa	%xmm0, %xmm2
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -480(%rbp)
	cvtdq2ps	%xmm7, %xmm3
	movaps	%xmm3, -496(%rbp)
	movdqu	32(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm2
	movdqa	%xmm1, %xmm5
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm2, %xmm5
	movdqa	%xmm0, %xmm2
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -448(%rbp)
	cvtdq2ps	%xmm5, %xmm3
	movaps	%xmm3, -464(%rbp)
	movdqu	48(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm2
	movdqa	%xmm1, %xmm7
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm2, %xmm7
	movdqa	%xmm0, %xmm2
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -416(%rbp)
	cvtdq2ps	%xmm7, %xmm3
	movaps	%xmm3, -432(%rbp)
	movdqu	64(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm2
	movdqa	%xmm1, %xmm5
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm2, %xmm5
	movdqa	%xmm0, %xmm2
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -384(%rbp)
	cvtdq2ps	%xmm5, %xmm3
	movaps	%xmm3, -400(%rbp)
	movdqu	80(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm2
	movdqa	%xmm1, %xmm7
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm2, %xmm7
	movdqa	%xmm0, %xmm2
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -352(%rbp)
	cvtdq2ps	%xmm7, %xmm3
	movaps	%xmm3, -368(%rbp)
	movdqu	96(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm2
	movdqa	%xmm1, %xmm5
	punpckhwd	%xmm2, %xmm1
	punpcklwd	%xmm2, %xmm5
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -320(%rbp)
	cvtdq2ps	%xmm5, %xmm3
	movaps	%xmm3, -336(%rbp)
	movdqu	112(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm0
	movdqa	%xmm1, %xmm7
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm7
	cvtdq2ps	%xmm1, %xmm0
	movaps	%xmm0, -288(%rbp)
	cvtdq2ps	%xmm7, %xmm2
	movaps	%xmm2, -304(%rbp)
	.p2align 4,,10
	.p2align 3
.L31:
	leaq	-272(%rbp), %rax
	leaq	(%rax,%rbx), %rsi
	leaq	-528(%rbp), %rax
	leaq	(%rax,%rbx), %rdi
	addq	$32, %rbx
	call	_Z15slow_float_dct8PfS_
	cmpq	$256, %rbx
	jne	.L31
	movaps	-272(%rbp), %xmm1
	xorw	%bx, %bx
	movaps	-144(%rbp), %xmm4
	movaps	%xmm1, %xmm5
	movaps	-240(%rbp), %xmm0
	unpckhps	%xmm4, %xmm1
	unpcklps	%xmm4, %xmm5
	movaps	-112(%rbp), %xmm3
	movaps	%xmm0, %xmm4
	movaps	-208(%rbp), %xmm6
	unpcklps	%xmm3, %xmm4
	movaps	-80(%rbp), %xmm2
	unpckhps	%xmm3, %xmm0
	movaps	%xmm6, %xmm3
	movaps	-176(%rbp), %xmm8
	unpckhps	%xmm2, %xmm6
	unpcklps	%xmm2, %xmm3
	movaps	-48(%rbp), %xmm7
	movaps	%xmm8, %xmm2
	unpckhps	%xmm7, %xmm8
	unpcklps	%xmm7, %xmm2
	movaps	%xmm5, %xmm7
	unpckhps	%xmm3, %xmm5
	unpcklps	%xmm3, %xmm7
	movaps	%xmm1, %xmm3
	unpckhps	%xmm6, %xmm1
	unpcklps	%xmm6, %xmm3
	movaps	%xmm4, %xmm6
	unpckhps	%xmm2, %xmm4
	unpcklps	%xmm2, %xmm6
	movaps	%xmm0, %xmm2
	unpckhps	%xmm8, %xmm0
	unpcklps	%xmm8, %xmm2
	movaps	%xmm7, %xmm8
	unpckhps	%xmm6, %xmm7
	unpcklps	%xmm6, %xmm8
	movaps	%xmm5, %xmm6
	unpckhps	%xmm4, %xmm5
	unpcklps	%xmm4, %xmm6
	movaps	%xmm3, %xmm4
	unpckhps	%xmm2, %xmm3
	unpcklps	%xmm2, %xmm4
	movaps	%xmm1, %xmm2
	unpckhps	%xmm0, %xmm1
	unpcklps	%xmm0, %xmm2
	movaps	-224(%rbp), %xmm0
	movaps	%xmm1, -416(%rbp)
	movaps	%xmm5, -480(%rbp)
	movaps	%xmm4, -464(%rbp)
	movaps	%xmm6, -496(%rbp)
	movaps	%xmm3, -448(%rbp)
	movaps	%xmm8, -528(%rbp)
	movaps	%xmm2, -432(%rbp)
	movaps	%xmm7, -512(%rbp)
	movaps	-256(%rbp), %xmm1
	movaps	-128(%rbp), %xmm4
	movaps	%xmm1, %xmm5
	movaps	-96(%rbp), %xmm3
	unpckhps	%xmm4, %xmm1
	unpcklps	%xmm4, %xmm5
	movaps	-192(%rbp), %xmm6
	movaps	%xmm0, %xmm4
	unpckhps	%xmm3, %xmm0
	movaps	-64(%rbp), %xmm2
	unpcklps	%xmm3, %xmm4
	movaps	%xmm6, %xmm3
	movaps	-160(%rbp), %xmm8
	unpckhps	%xmm2, %xmm6
	unpcklps	%xmm2, %xmm3
	movaps	-32(%rbp), %xmm7
	movaps	%xmm8, %xmm2
	unpckhps	%xmm7, %xmm8
	unpcklps	%xmm7, %xmm2
	movaps	%xmm5, %xmm7
	unpckhps	%xmm3, %xmm5
	unpcklps	%xmm3, %xmm7
	movaps	%xmm1, %xmm3
	unpckhps	%xmm6, %xmm1
	unpcklps	%xmm6, %xmm3
	movaps	%xmm4, %xmm6
	unpckhps	%xmm2, %xmm4
	unpcklps	%xmm2, %xmm6
	movaps	%xmm0, %xmm2
	unpckhps	%xmm8, %xmm0
	unpcklps	%xmm8, %xmm2
	movaps	%xmm7, %xmm8
	unpckhps	%xmm6, %xmm7
	unpcklps	%xmm6, %xmm8
	movaps	%xmm5, %xmm6
	unpckhps	%xmm4, %xmm5
	unpcklps	%xmm4, %xmm6
	movaps	%xmm3, %xmm4
	unpckhps	%xmm2, %xmm3
	unpcklps	%xmm2, %xmm4
	movaps	%xmm1, %xmm2
	unpckhps	%xmm0, %xmm1
	unpcklps	%xmm0, %xmm2
	movaps	%xmm8, -400(%rbp)
	movaps	%xmm7, -384(%rbp)
	movaps	%xmm6, -368(%rbp)
	movaps	%xmm5, -352(%rbp)
	movaps	%xmm4, -336(%rbp)
	movaps	%xmm3, -320(%rbp)
	movaps	%xmm2, -304(%rbp)
	movaps	%xmm1, -288(%rbp)
	.p2align 4,,10
	.p2align 3
.L33:
	leaq	-272(%rbp), %rax
	leaq	(%rax,%rbx), %rsi
	leaq	-528(%rbp), %rax
	leaq	(%rax,%rbx), %rdi
	addq	$32, %rbx
	call	_Z15slow_float_dct8PfS_
	cmpq	$256, %rbx
	jne	.L33
	movaps	-272(%rbp), %xmm3
	movaps	-144(%rbp), %xmm5
	movaps	%xmm3, %xmm14
	movaps	-240(%rbp), %xmm1
	unpckhps	%xmm5, %xmm3
	unpcklps	%xmm5, %xmm14
	movaps	-112(%rbp), %xmm7
	movaps	%xmm1, %xmm5
	movaps	%xmm3, %xmm12
	movaps	-208(%rbp), %xmm6
	unpcklps	%xmm7, %xmm5
	unpckhps	%xmm7, %xmm1
	movaps	-80(%rbp), %xmm4
	movaps	%xmm6, %xmm7
	movaps	-176(%rbp), %xmm0
	unpcklps	%xmm4, %xmm7
	movaps	-48(%rbp), %xmm2
	unpckhps	%xmm4, %xmm6
	movaps	%xmm0, %xmm4
	unpckhps	%xmm2, %xmm0
	movaps	-192(%rbp), %xmm8
	unpcklps	%xmm2, %xmm4
	unpcklps	%xmm6, %xmm12
	movaps	%xmm14, %xmm2
	unpckhps	%xmm6, %xmm3
	movaps	%xmm5, %xmm6
	unpckhps	%xmm4, %xmm5
	unpcklps	%xmm7, %xmm2
	unpcklps	%xmm4, %xmm6
	movaps	%xmm1, %xmm4
	unpckhps	%xmm0, %xmm1
	movaps	%xmm3, %xmm11
	unpckhps	%xmm7, %xmm14
	unpcklps	%xmm0, %xmm4
	unpckhps	%xmm1, %xmm3
	movaps	%xmm2, %xmm0
	movaps	%xmm14, %xmm15
	unpcklps	%xmm6, %xmm0
	movaps	%xmm12, %xmm13
	movaps	%xmm3, -544(%rbp)
	unpckhps	%xmm6, %xmm2
	unpcklps	%xmm1, %xmm11
	cvttps2dq	%xmm0, %xmm0
	unpcklps	%xmm5, %xmm15
	movaps	-256(%rbp), %xmm3
	unpckhps	%xmm5, %xmm14
	cvttps2dq	%xmm2, %xmm2
	unpcklps	%xmm4, %xmm13
	cvttps2dq	%xmm11, %xmm11
	movaps	-128(%rbp), %xmm6
	movaps	%xmm3, %xmm7
	cvttps2dq	%xmm15, %xmm15
	unpckhps	%xmm4, %xmm12
	cvttps2dq	%xmm14, %xmm14
	movaps	-224(%rbp), %xmm1
	unpcklps	%xmm6, %xmm7
	cvttps2dq	%xmm13, %xmm13
	unpckhps	%xmm6, %xmm3
	movaps	-96(%rbp), %xmm5
	movaps	%xmm1, %xmm6
	cvttps2dq	%xmm12, %xmm12
	movaps	-64(%rbp), %xmm4
	unpcklps	%xmm5, %xmm6
	movaps	-160(%rbp), %xmm10
	unpckhps	%xmm5, %xmm1
	movaps	%xmm8, %xmm5
	movaps	-32(%rbp), %xmm9
	unpckhps	%xmm4, %xmm8
	unpcklps	%xmm4, %xmm5
	movaps	%xmm10, %xmm4
	unpckhps	%xmm9, %xmm10
	unpcklps	%xmm9, %xmm4
	movaps	%xmm7, %xmm9
	unpckhps	%xmm5, %xmm7
	unpcklps	%xmm5, %xmm9
	movaps	%xmm3, %xmm5
	unpckhps	%xmm8, %xmm3
	unpcklps	%xmm8, %xmm5
	movaps	%xmm6, %xmm8
	unpckhps	%xmm4, %xmm6
	unpcklps	%xmm4, %xmm8
	movaps	%xmm1, %xmm4
	unpckhps	%xmm10, %xmm1
	unpcklps	%xmm10, %xmm4
	movaps	%xmm9, %xmm10
	unpckhps	%xmm8, %xmm9
	unpcklps	%xmm8, %xmm10
	movaps	%xmm7, %xmm8
	unpckhps	%xmm6, %xmm7
	cvttps2dq	%xmm9, %xmm9
	unpcklps	%xmm6, %xmm8
	cvttps2dq	%xmm10, %xmm10
	movaps	%xmm5, %xmm6
	unpckhps	%xmm4, %xmm5
	cvttps2dq	%xmm7, %xmm7
	unpcklps	%xmm4, %xmm6
	cvttps2dq	%xmm8, %xmm8
	movaps	%xmm3, %xmm4
	unpckhps	%xmm1, %xmm3
	cvttps2dq	%xmm5, %xmm5
	unpcklps	%xmm1, %xmm4
	cvttps2dq	%xmm6, %xmm6
	movdqa	%xmm0, %xmm1
	punpcklwd	%xmm2, %xmm0
	cvttps2dq	%xmm3, %xmm3
	punpckhwd	%xmm2, %xmm1
	cvttps2dq	%xmm4, %xmm4
	movdqa	%xmm0, %xmm2
	punpcklwd	%xmm1, %xmm0
	punpckhwd	%xmm1, %xmm2
	punpcklwd	%xmm2, %xmm0
	movdqu	%xmm0, (%r12)
	movdqa	%xmm15, %xmm0
	punpcklwd	%xmm14, %xmm15
	punpckhwd	%xmm14, %xmm0
	movdqa	%xmm15, %xmm1
	punpcklwd	%xmm0, %xmm15
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm13, %xmm0
	punpcklwd	%xmm12, %xmm13
	punpckhwd	%xmm12, %xmm0
	punpcklwd	%xmm1, %xmm15
	movdqa	%xmm13, %xmm1
	punpcklwd	%xmm0, %xmm13
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm11, %xmm0
	movdqu	%xmm15, 16(%r12)
	punpcklwd	%xmm1, %xmm13
	cvttps2dq	-544(%rbp), %xmm1
	punpcklwd	%xmm1, %xmm11
	punpckhwd	%xmm1, %xmm0
	movdqu	%xmm13, 32(%r12)
	movdqa	%xmm11, %xmm1
	punpcklwd	%xmm0, %xmm11
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm10, %xmm0
	punpcklwd	%xmm9, %xmm10
	punpckhwd	%xmm9, %xmm0
	punpcklwd	%xmm1, %xmm11
	movdqa	%xmm10, %xmm1
	punpcklwd	%xmm0, %xmm10
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm8, %xmm0
	punpcklwd	%xmm7, %xmm8
	punpckhwd	%xmm7, %xmm0
	punpcklwd	%xmm1, %xmm10
	movdqa	%xmm8, %xmm1
	punpcklwd	%xmm0, %xmm8
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm6, %xmm0
	punpcklwd	%xmm5, %xmm6
	punpckhwd	%xmm5, %xmm0
	punpcklwd	%xmm1, %xmm8
	movdqa	%xmm6, %xmm1
	punpcklwd	%xmm0, %xmm6
	punpckhwd	%xmm0, %xmm1
	movdqa	%xmm4, %xmm0
	punpcklwd	%xmm3, %xmm4
	punpckhwd	%xmm3, %xmm0
	punpcklwd	%xmm1, %xmm6
	movdqa	%xmm4, %xmm1
	punpcklwd	%xmm0, %xmm4
	punpckhwd	%xmm0, %xmm1
	movdqu	%xmm11, 48(%r12)
	punpcklwd	%xmm1, %xmm4
	movdqu	%xmm10, 64(%r12)
	movdqu	%xmm8, 80(%r12)
	movdqu	%xmm6, 96(%r12)
	movdqu	%xmm4, 112(%r12)
	addq	$528, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE27:
	.size	_Z17fast_float_dct8x8PA8_sS0_, .-_Z17fast_float_dct8x8PA8_sS0_
	.p2align 4,,15
	.globl	dct8x8
	.type	dct8x8, @function
dct8x8:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	mcount
	popq	%rbp
	.cfi_def_cfa 7, 8
	jmp	_Z17fast_float_dct8x8PA8_sS0_
	.cfi_endproc
.LFE25:
	.size	dct8x8, .-dct8x8
	.globl	Av
	.data
	.align 32
	.type	Av, @object
	.size	Av, 256
Av:
	.long	1040187392
	.long	1043662066
	.long	1043662066
	.long	1043662066
	.long	1043662066
	.long	1043662066
	.long	1043662066
	.long	1043662066
	.long	1043662066
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1043662066
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1043662066
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1043662066
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1043662066
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1043662066
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1043662066
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.long	1048576000
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	776530087
	.long	1074340351
	.align 8
.LC3:
	.long	0
	.long	1068498944
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC4:
	.long	1060439283
	.align 4
.LC5:
	.long	1065353216
	.align 4
.LC6:
	.long	1056964608
	.ident	"GCC: (GNU) 4.8.2 20131212 (Red Hat 4.8.2-7)"
	.section	.note.GNU-stack,"",@progbits
