	.file	"dct8x8.c"
	.text
	.p2align 4,,15
	.globl	_Z6cosPiNf
	.type	_Z6cosPiNf, @function
_Z6cosPiNf:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	mcount
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	unpcklpd	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	cvtpd2ps	%xmm0, %xmm0
	ret
	.cfi_endproc
.LFE25:
	.size	_Z6cosPiNf, .-_Z6cosPiNf
	.p2align 4,,15
	.globl	_Z11switchFloatPfS_
	.type	_Z11switchFloatPfS_, @function
_Z11switchFloatPfS_:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	mcount
	popq	%rbp
	.cfi_def_cfa 7, 8
	movss	(%rsi), %xmm0
	movss	(%rdi), %xmm1
	movss	%xmm1, (%rsi)
	movss	%xmm0, (%rdi)
	ret
	.cfi_endproc
.LFE26:
	.size	_Z11switchFloatPfS_, .-_Z11switchFloatPfS_
	.p2align 4,,15
	.globl	_Z11switchShortPsS_
	.type	_Z11switchShortPsS_, @function
_Z11switchShortPsS_:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	mcount
	movzwl	(%rsi), %eax
	movzwl	(%rdi), %edx
	popq	%rbp
	.cfi_def_cfa 7, 8
	movw	%dx, (%rsi)
	movw	%ax, (%rdi)
	ret
	.cfi_endproc
.LFE27:
	.size	_Z11switchShortPsS_, .-_Z11switchShortPsS_
	.p2align 4,,15
	.globl	_Z17slow_float_dct8x8PA8_sS0_
	.type	_Z17slow_float_dct8x8PA8_sS0_, @function
_Z17slow_float_dct8x8PA8_sS0_:
.LFB29:
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
	movsd	.LC3(%rip), %xmm5
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
.L5:
	movl	-284(%rbp), %r15d
	leal	(%r15,%r15,2), %ebx
	leal	0(,%r15,8), %r12d
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	leal	(%r15,%r15,4), %eax
	movsd	%xmm0, -216(%rbp)
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movl	%r12d, %edi
	movsd	%xmm0, -248(%rbp)
	addl	%r15d, %r12d
	subl	%r15d, %edi
	cvtsi2sd	%edi, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -240(%rbp)
	cvtsi2sd	%r12d, %xmm0
	xorl	%r12d, %r12d
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -232(%rbp)
	cvtsi2sd	-288(%rbp), %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	leal	(%r15,%rbx,4), %eax
	movsd	%xmm0, -224(%rbp)
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movl	%r15d, %eax
	movsd	%xmm0, -208(%rbp)
	sall	$4, %eax
	subl	%r15d, %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movq	-304(%rbp), %rax
	movsd	%xmm0, -256(%rbp)
	movsd	.LC3(%rip), %xmm0
	movq	%rax, -264(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -272(%rbp)
	.p2align 4,,10
	.p2align 3
.L10:
	movss	(%rax), %xmm4
	leal	(%r12,%r12), %ebx
	movq	-280(%rbp), %r14
	xorl	%r15d, %r15d
	xorpd	%xmm1, %xmm1
	cvtps2pd	%xmm4, %xmm4
	leal	(%rbx,%r12), %r13d
	movsd	%xmm4, -192(%rbp)
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L6:
	cvtsi2sd	%r13d, %xmm0
	addl	%ebx, %r13d
	movsd	%xmm1, -184(%rbp)
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	-184(%rbp), %xmm1
.L8:
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
	jne	.L6
	cvttsd2si	%xmm1, %eax
	movq	-264(%rbp), %rdx
	addl	$1, %r12d
	addq	$32, -272(%rbp)
	addq	$16, -264(%rbp)
	cmpl	$8, %r12d
	movw	%ax, (%rdx)
	je	.L7
	cvtsi2sd	%r12d, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movq	-272(%rbp), %rax
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L7:
	addl	$1, -284(%rbp)
	addl	$11, -288(%rbp)
	addq	$4, -296(%rbp)
	addq	$2, -304(%rbp)
	cmpl	$8, -284(%rbp)
	je	.L9
	cvtsi2sd	-284(%rbp), %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -200(%rbp)
	jmp	.L5
.L9:
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
.LFE29:
	.size	_Z17slow_float_dct8x8PA8_sS0_, .-_Z17slow_float_dct8x8PA8_sS0_
	.p2align 4,,15
	.globl	_Z15slow_float_dct8PfS_
	.type	_Z15slow_float_dct8PfS_, @function
_Z15slow_float_dct8PfS_:
.LFB32:
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
	movsd	.LC3(%rip), %xmm4
	xorl	%r14d, %r14d
	movq	%rdi, %r12
	movq	%rsi, %r15
	xorl	%r13d, %r13d
	movsd	%xmm4, -72(%rbp)
	xorl	%ebx, %ebx
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L20:
	movl	%ebx, %eax
	sall	$4, %eax
	subl	%ebx, %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -72(%rbp)
.L16:
	testl	%ebx, %ebx
	je	.L19
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	leal	(%rbx,%rbx,2), %eax
	movsd	%xmm0, -56(%rbp)
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
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
	mulsd	.LC0(%rip), %xmm0
	unpcklps	%xmm1, %xmm1
	mulsd	.LC1(%rip), %xmm0
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
	mulsd	.LC0(%rip), %xmm0
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LC1(%rip), %xmm0
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
	mulsd	.LC0(%rip), %xmm0
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LC1(%rip), %xmm0
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
	mulsd	.LC0(%rip), %xmm0
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LC1(%rip), %xmm0
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
	mulsd	.LC0(%rip), %xmm0
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	mulsd	.LC1(%rip), %xmm0
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
.L17:
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
	jne	.L20
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
.L19:
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
	jmp	.L17
	.cfi_endproc
.LFE32:
	.size	_Z15slow_float_dct8PfS_, .-_Z15slow_float_dct8PfS_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC14:
	.string	"\n==== Input ===="
.LC15:
	.string	"input[%d] = %f\n"
.LC16:
	.string	"\n==== Stage 1 ===="
.LC17:
	.string	"stage1[%d] = %f\n"
.LC19:
	.string	"\n==== Stage 2 ===="
.LC20:
	.string	"stage2[%d] = %f\n"
.LC21:
	.string	"\n==== Stage 3 ===="
.LC22:
	.string	"stage3[%d] = %f\n"
.LC23:
	.string	"\n==== Output ===="
.LC24:
	.string	"output[%d] = %f\n"
	.text
	.p2align 4,,15
	.globl	_Z15fast_float_dct8PfS_
	.type	_Z15fast_float_dct8PfS_, @function
_Z15fast_float_dct8PfS_:
.LFB33:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	call	mcount
	xorl	%ebx, %ebx
	movq	%rdi, %r13
	movl	$.LC14, %edi
	movq	%rsi, %r12
	movl	$0x3f7b14bd, -60(%rbp)
	movl	$0x3f6c8359, -56(%rbp)
	movl	$0x3f54db24, -52(%rbp)
	movl	$0x3f3504dd, -48(%rbp)
	movl	$0x3f0e39ba, -44(%rbp)
	movl	$0x3ec3eec0, -40(%rbp)
	movl	$0x3e47c4ee, -36(%rbp)
	call	puts
	.p2align 4,,10
	.p2align 3
.L23:
	movss	0(%r13,%rbx,4), %xmm0
	movl	%ebx, %esi
	movl	$.LC15, %edi
	movl	$1, %eax
	addq	$1, %rbx
	cvtps2pd	%xmm0, %xmm0
	call	printf
	cmpq	$8, %rbx
	jne	.L23
	xorps	%xmm0, %xmm0
	movl	$.LC16, %edi
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
	movaps	%xmm1, -160(%rbp)
	xorps	%xmm1, %xmm1
	movhps	8(%r13), %xmm0
	shufps	$27, %xmm0, %xmm0
	movlps	16(%r13), %xmm1
	movhps	24(%r13), %xmm1
	subps	%xmm1, %xmm0
	movaps	%xmm0, -144(%rbp)
	call	puts
	.p2align 4,,10
	.p2align 3
.L25:
	movss	-160(%rbp,%rbx,4), %xmm0
	movl	%ebx, %esi
	movl	$.LC17, %edi
	movl	$1, %eax
	addq	$1, %rbx
	cvtps2pd	%xmm0, %xmm0
	call	printf
	cmpq	$8, %rbx
	jne	.L25
	movss	-156(%rbp), %xmm1
	movl	$.LC19, %edi
	movaps	%xmm1, %xmm4
	xorb	%bl, %bl
	movss	-152(%rbp), %xmm2
	addss	%xmm2, %xmm4
	movss	-160(%rbp), %xmm3
	movaps	%xmm3, %xmm5
	movss	-148(%rbp), %xmm0
	subss	%xmm2, %xmm3
	addss	%xmm0, %xmm5
	movss	-144(%rbp), %xmm2
	subss	%xmm0, %xmm1
	movss	.LC18(%rip), %xmm0
	movss	%xmm4, -200(%rbp)
	movss	%xmm4, -124(%rbp)
	movss	-48(%rbp), %xmm4
	xorps	%xmm4, %xmm0
	movss	%xmm5, -196(%rbp)
	movss	%xmm1, -192(%rbp)
	movss	%xmm1, -116(%rbp)
	movaps	%xmm0, %xmm6
	movss	-140(%rbp), %xmm1
	movss	-136(%rbp), %xmm0
	mulss	%xmm4, %xmm0
	movss	%xmm6, -172(%rbp)
	mulss	%xmm1, %xmm6
	movss	%xmm5, -128(%rbp)
	mulss	%xmm4, %xmm1
	movss	-132(%rbp), %xmm5
	movss	%xmm3, -188(%rbp)
	movss	%xmm3, -120(%rbp)
	addss	%xmm0, %xmm6
	movss	%xmm2, -164(%rbp)
	addss	%xmm1, %xmm0
	movss	%xmm2, -112(%rbp)
	movss	%xmm4, -168(%rbp)
	movss	%xmm5, -184(%rbp)
	movss	%xmm6, -176(%rbp)
	movss	%xmm6, -108(%rbp)
	movss	%xmm0, -180(%rbp)
	movss	%xmm0, -104(%rbp)
	movss	%xmm5, -100(%rbp)
	call	puts
	.p2align 4,,10
	.p2align 3
.L27:
	movss	-128(%rbp,%rbx,4), %xmm0
	movl	%ebx, %esi
	movl	$.LC20, %edi
	movl	$1, %eax
	addq	$1, %rbx
	cvtps2pd	%xmm0, %xmm0
	call	printf
	cmpq	$8, %rbx
	jne	.L27
	movss	-168(%rbp), %xmm0
	movl	$.LC21, %edi
	movss	-200(%rbp), %xmm2
	xorb	%bl, %bl
	movss	-196(%rbp), %xmm1
	mulss	%xmm0, %xmm1
	movss	-188(%rbp), %xmm5
	mulss	%xmm2, %xmm0
	movss	-192(%rbp), %xmm7
	movaps	%xmm7, %xmm3
	addss	%xmm1, %xmm0
	movss	%xmm0, -96(%rbp)
	movss	-172(%rbp), %xmm0
	mulss	%xmm2, %xmm0
	movss	-56(%rbp), %xmm2
	mulss	%xmm2, %xmm3
	mulss	%xmm5, %xmm2
	addss	%xmm1, %xmm0
	movaps	%xmm5, %xmm1
	movss	-164(%rbp), %xmm5
	movss	%xmm0, -92(%rbp)
	movss	-40(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	mulss	%xmm7, %xmm0
	movaps	%xmm5, %xmm7
	addss	%xmm3, %xmm1
	movss	-176(%rbp), %xmm3
	addss	%xmm3, %xmm7
	subss	%xmm2, %xmm0
	movss	%xmm1, -88(%rbp)
	movss	%xmm7, -164(%rbp)
	movss	%xmm7, -80(%rbp)
	movaps	%xmm5, %xmm7
	movss	%xmm0, -84(%rbp)
	subss	%xmm3, %xmm7
	movss	-184(%rbp), %xmm3
	movaps	%xmm3, %xmm5
	movss	%xmm7, -168(%rbp)
	movss	%xmm7, -76(%rbp)
	movss	-180(%rbp), %xmm7
	subss	%xmm7, %xmm5
	addss	%xmm3, %xmm7
	movss	%xmm5, -172(%rbp)
	movss	%xmm5, -72(%rbp)
	movss	%xmm7, -176(%rbp)
	movss	%xmm7, -68(%rbp)
	call	puts
	.p2align 4,,10
	.p2align 3
.L29:
	movss	-96(%rbp,%rbx,4), %xmm0
	movl	%ebx, %esi
	movl	$.LC22, %edi
	movl	$1, %eax
	addq	$1, %rbx
	cvtps2pd	%xmm0, %xmm0
	call	printf
	cmpq	$8, %rbx
	jne	.L29
	movss	-168(%rbp), %xmm7
	movq	-96(%rbp), %rax
	movss	-172(%rbp), %xmm8
	movl	$.LC23, %edi
	movaps	%xmm7, %xmm2
	xorb	%bl, %bl
	movaps	%xmm8, %xmm1
	movq	%rax, (%r12)
	movss	-52(%rbp), %xmm3
	movq	-88(%rbp), %rax
	movss	-44(%rbp), %xmm0
	mulss	%xmm3, %xmm2
	mulss	%xmm0, %xmm1
	movss	-176(%rbp), %xmm9
	movss	-164(%rbp), %xmm10
	mulss	%xmm7, %xmm0
	movaps	%xmm10, %xmm6
	mulss	%xmm8, %xmm3
	movss	-36(%rbp), %xmm4
	movq	%rax, 8(%r12)
	addss	%xmm1, %xmm2
	movaps	%xmm9, %xmm1
	movss	-60(%rbp), %xmm5
	mulss	%xmm5, %xmm6
	subss	%xmm0, %xmm3
	mulss	%xmm9, %xmm5
	movss	.LC6(%rip), %xmm0
	mulss	%xmm4, %xmm1
	movss	(%r12), %xmm7
	mulss	%xmm10, %xmm4
	mulss	%xmm0, %xmm7
	mulss	%xmm0, %xmm3
	subss	%xmm6, %xmm1
	movss	4(%r12), %xmm6
	addss	%xmm5, %xmm4
	movss	12(%r12), %xmm5
	mulss	%xmm0, %xmm6
	movss	%xmm7, (%r12)
	mulss	%xmm0, %xmm2
	movss	%xmm3, 12(%r12)
	mulss	%xmm0, %xmm5
	mulss	%xmm0, %xmm4
	mulss	%xmm0, %xmm1
	movss	%xmm6, 16(%r12)
	movss	%xmm2, 20(%r12)
	movss	%xmm5, 24(%r12)
	movss	%xmm4, 4(%r12)
	movss	8(%r12), %xmm4
	mulss	%xmm0, %xmm4
	movss	%xmm1, 28(%r12)
	movss	%xmm4, 8(%r12)
	call	puts
	.p2align 4,,10
	.p2align 3
.L31:
	movss	(%r12,%rbx,4), %xmm0
	movl	%ebx, %esi
	movl	$.LC24, %edi
	movl	$1, %eax
	addq	$1, %rbx
	cvtps2pd	%xmm0, %xmm0
	call	printf
	cmpq	$8, %rbx
	jne	.L31
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE33:
	.size	_Z15fast_float_dct8PfS_, .-_Z15fast_float_dct8PfS_
	.p2align 4,,15
	.globl	_Z17fast_float_dct8x8PA8_sS0_
	.type	_Z17fast_float_dct8x8PA8_sS0_, @function
_Z17fast_float_dct8x8PA8_sS0_:
.LFB30:
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
.L34:
	leaq	-272(%rbp), %rax
	leaq	(%rax,%rbx), %rsi
	leaq	-528(%rbp), %rax
	leaq	(%rax,%rbx), %rdi
	addq	$32, %rbx
	call	_Z15fast_float_dct8PfS_
	cmpq	$256, %rbx
	jne	.L34
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
.L36:
	leaq	-272(%rbp), %rax
	leaq	(%rax,%rbx), %rsi
	leaq	-528(%rbp), %rax
	leaq	(%rax,%rbx), %rdi
	addq	$32, %rbx
	call	_Z15fast_float_dct8PfS_
	cmpq	$256, %rbx
	jne	.L36
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
.LFE30:
	.size	_Z17fast_float_dct8x8PA8_sS0_, .-_Z17fast_float_dct8x8PA8_sS0_
	.section	.rodata.str1.1
.LC25:
	.string	"input[%d] = %hi\n"
.LC26:
	.string	"stage1[%d] = %hi\n"
.LC27:
	.string	"stage2[%d] = %d\n"
	.text
	.p2align 4,,15
	.globl	_Z15fast_fixed_dct8PsS_
	.type	_Z15fast_fixed_dct8PsS_, @function
_Z15fast_fixed_dct8PsS_:
.LFB34:
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
	subq	$88, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	call	mcount
	xorl	%r12d, %r12d
	movq	%rdi, %r13
	movl	$.LC14, %edi
	movq	%rsi, %rbx
	call	puts
	.p2align 4,,10
	.p2align 3
.L39:
	movswl	0(%r13,%r12,2), %edx
	movl	%r12d, %esi
	xorl	%eax, %eax
	movl	$.LC25, %edi
	addq	$1, %r12
	call	printf
	cmpq	$8, %r12
	jne	.L39
	movzwl	0(%r13), %edx
	movzwl	14(%r13), %eax
	xorb	%r12b, %r12b
	movzwl	2(%r13), %esi
	movzwl	4(%r13), %r8d
	movzwl	6(%r13), %r10d
	leal	(%rax,%rdx), %ecx
	subl	%eax, %edx
	movw	%dx, -82(%rbp)
	movw	%cx, -96(%rbp)
	movzwl	12(%r13), %ecx
	leal	(%rcx,%rsi), %edi
	subl	%ecx, %esi
	movw	%si, -84(%rbp)
	movw	%di, -94(%rbp)
	movzwl	10(%r13), %edi
	leal	(%rdi,%r8), %r9d
	subl	%edi, %r8d
	movl	$.LC16, %edi
	movw	%r8w, -86(%rbp)
	movw	%r9w, -92(%rbp)
	movzwl	8(%r13), %r9d
	leal	(%r9,%r10), %r11d
	subl	%r9d, %r10d
	movw	%r10w, -88(%rbp)
	movw	%r11w, -90(%rbp)
	call	puts
	.p2align 4,,10
	.p2align 3
.L41:
	movswl	-96(%rbp,%r12,2), %edx
	movl	%r12d, %esi
	xorl	%eax, %eax
	movl	$.LC26, %edi
	addq	$1, %r12
	call	printf
	cmpq	$8, %r12
	jne	.L41
	movzwl	-90(%rbp), %eax
	movzwl	-92(%rbp), %ecx
	xorl	%r13d, %r13d
	movzwl	-96(%rbp), %esi
	movzwl	-94(%rbp), %edx
	movswl	-86(%rbp), %r14d
	leal	(%rcx,%rdx), %edi
	leal	(%rax,%rsi), %r15d
	subl	%eax, %edx
	movzwl	-88(%rbp), %eax
	movw	%dx, -104(%rbp)
	subl	%ecx, %esi
	movw	%dx, -74(%rbp)
	movswl	-84(%rbp), %edx
	movw	%di, -122(%rbp)
	movw	%di, -78(%rbp)
	movl	$.LC19, %edi
	movw	%r15w, -80(%rbp)
	movw	%si, -102(%rbp)
	movw	%ax, -98(%rbp)
	movw	%ax, -72(%rbp)
	movabsq	$1799241906922478210, %rax
	movq	%rax, -112(%rbp)
	movabsq	$1799241906922478210, %rax
	movw	%si, -76(%rbp)
	movq	%rax, -120(%rbp)
	movswl	-120(%rbp), %eax
	movl	%eax, %ecx
	negl	%ecx
	movl	%ecx, -120(%rbp)
	movl	%ecx, %r12d
	movl	%eax, %ecx
	imull	%r14d, %r12d
	addl	%edx, %r14d
	imull	%edx, %ecx
	imull	%eax, %r14d
	movzwl	-82(%rbp), %eax
	addl	%ecx, %r12d
	sarl	$10, %r12d
	movw	%r12w, -70(%rbp)
	sarl	$10, %r14d
	movw	%r14w, -68(%rbp)
	movw	%ax, -100(%rbp)
	movw	%ax, -66(%rbp)
	call	puts
	.p2align 4,,10
	.p2align 3
.L45:
	leal	-5(%r13), %eax
	cmpl	$1, %eax
	ja	.L50
	movswl	-80(%rbp,%r13,2), %eax
	movl	%r13d, %esi
	movl	$.LC20, %edi
	cvtsi2ss	%eax, %xmm0
	movl	$1, %eax
	mulss	.LC28(%rip), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	call	printf
.L43:
	addq	$1, %r13
	cmpq	$8, %r13
	jne	.L45
	movzwl	-122(%rbp), %r13d
	movzwl	-112(%rbp), %ecx
	movabsq	$7668915764132970496, %rdx
	movzwl	-104(%rbp), %edi
	movzwl	-102(%rbp), %r8d
	salq	$16, %rdx
	sarq	$48, %rdx
	movl	%r13d, %eax
	addl	%r15d, %eax
	movl	%edi, %esi
	imull	%ecx, %eax
	imull	%ecx, %r15d
	movl	%r8d, %ecx
	imulw	-120(%rbp), %r13w
	movw	%ax, -64(%rbp)
	movabsq	$1799241906922478210, %rax
	salq	$16, %rax
	sarq	$48, %rax
	imull	%edx, %esi
	imull	%eax, %ecx
	addl	%r15d, %r13d
	movw	%r13w, -62(%rbp)
	imull	%r8d, %edx
	addl	%esi, %ecx
	movzwl	-100(%rbp), %esi
	imull	%edi, %eax
	movl	$.LC21, %edi
	movw	%cx, -60(%rbp)
	subl	%edx, %eax
	movw	%ax, -58(%rbp)
	movzwl	-98(%rbp), %eax
	leal	(%rax,%r12), %r15d
	movl	%eax, %r13d
	movl	%esi, %eax
	subl	%r14d, %eax
	subl	%r12d, %r13d
	addl	%esi, %r14d
	xorl	%r12d, %r12d
	movw	%r15w, -56(%rbp)
	movw	%r13w, -54(%rbp)
	movw	%ax, -98(%rbp)
	movw	%ax, -52(%rbp)
	movw	%r14w, -50(%rbp)
	call	puts
	.p2align 4,,10
	.p2align 3
.L47:
	movswl	-64(%rbp,%r12,2), %edx
	movl	%r12d, %esi
	xorl	%eax, %eax
	movl	$.LC22, %edi
	addq	$1, %r12
	call	printf
	cmpq	$8, %r12
	jne	.L47
	movq	-64(%rbp), %rax
	movzwl	-98(%rbp), %r12d
	movabsq	$1799241906922478210, %rsi
	movl	%r13d, %r11d
	movabsq	$1799241906922478210, %r8
	sarq	$48, %r8
	movsd	.LC29(%rip), %xmm0
	movq	%rax, %rcx
	movswl	%ax, %r10d
	shrq	$32, %rcx
	cvtsi2sd	%r10d, %xmm1
	movq	%rcx, %r9
	movabsq	$7668915764132970496, %rcx
	movl	%r12d, %edx
	movq	%rcx, -112(%rbp)
	movl	-112(%rbp), %edi
	sarq	$48, %rcx
	movq	%rsi, -112(%rbp)
	movl	-112(%rbp), %esi
	movswl	%r9w, %r9d
	imull	%ecx, %r11d
	sarl	$16, %edi
	sarl	$16, %esi
	imull	%esi, %edx
	imull	%ecx, %r12d
	addl	%r11d, %edx
	movl	%r15d, %r11d
	movw	%dx, -98(%rbp)
	movl	%r14d, %edx
	mulsd	%xmm0, %xmm1
	imull	%r8d, %r15d
	imull	%edi, %r14d
	cvttsd2si	%xmm1, %ecx
	imull	%edi, %r11d
	leal	(%r15,%r14), %edi
	imull	%esi, %r13d
	movswl	%di, %edi
	cvtsi2sd	%edi, %xmm1
	movl	$.LC23, %edi
	subl	%r13d, %r12d
	movswl	%r12w, %r12d
	imull	%r8d, %edx
	movq	%rax, %r8
	sarl	$16, %eax
	shrq	$48, %r8
	subl	%r11d, %edx
	movw	%cx, (%rbx)
	movswl	%dx, %edx
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	cvtsi2sd	%r9d, %xmm1
	movw	%cx, 2(%rbx)
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	cvtsi2sd	%r12d, %xmm1
	xorl	%r12d, %r12d
	movw	%cx, 4(%rbx)
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %ecx
	cvtsi2sd	%eax, %xmm1
	movw	%cx, 6(%rbx)
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movw	%ax, 8(%rbx)
	movswl	-98(%rbp), %eax
	cvtsi2sd	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movw	%ax, 10(%rbx)
	movswl	%r8w, %eax
	cvtsi2sd	%eax, %xmm1
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	cvtsi2sd	%edx, %xmm1
	movw	%ax, 12(%rbx)
	mulsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movw	%ax, 14(%rbx)
	call	puts
	.p2align 4,,10
	.p2align 3
.L49:
	movswl	(%rbx,%r12,2), %edx
	movl	%r12d, %esi
	xorl	%eax, %eax
	movl	$.LC24, %edi
	addq	$1, %r12
	call	printf
	cmpq	$8, %r12
	jne	.L49
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L50:
	.cfi_restore_state
	movswl	-80(%rbp,%r13,2), %edx
	movl	%r13d, %esi
	movl	$.LC27, %edi
	xorl	%eax, %eax
	call	printf
	jmp	.L43
	.cfi_endproc
.LFE34:
	.size	_Z15fast_fixed_dct8PsS_, .-_Z15fast_fixed_dct8PsS_
	.p2align 4,,15
	.globl	_Z17fast_fixed_dct8x8PA8_sS0_
	.type	_Z17fast_fixed_dct8x8PA8_sS0_, @function
_Z17fast_fixed_dct8x8PA8_sS0_:
.LFB31:
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
	subq	$24, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	call	mcount
	xorl	%ebx, %ebx
	movq	%rdi, %r13
	movq	%rsi, %r14
	.p2align 4,,10
	.p2align 3
.L53:
	leaq	(%rbx,%r14), %rsi
	leaq	(%rbx,%r13), %rdi
	addq	$16, %rbx
	call	_Z15fast_fixed_dct8PsS_
	cmpq	$128, %rbx
	jne	.L53
	leaq	16(%r14), %rsi
	leaq	128(%r13), %rcx
	cmpq	%rsi, %r13
	setae	-49(%rbp)
	cmpq	%rcx, %r14
	setae	%dil
	orb	%dil, -49(%rbp)
	leaq	32(%r14), %rdi
	cmpq	%rdi, %r13
	setae	-50(%rbp)
	cmpq	%rcx, %rsi
	setae	%sil
	orb	%sil, -50(%rbp)
	leaq	48(%r14), %rsi
	cmpq	%rsi, %r13
	setae	-51(%rbp)
	cmpq	%rdi, %rcx
	setbe	%dil
	orb	%dil, -51(%rbp)
	leaq	64(%r14), %rdi
	cmpq	%rdi, %r13
	setae	%bl
	cmpq	%rsi, %rcx
	setbe	%sil
	orl	%esi, %ebx
	leaq	80(%r14), %rsi
	cmpq	%rsi, %r13
	setae	-52(%rbp)
	cmpq	%rdi, %rcx
	setbe	%dil
	orb	%dil, -52(%rbp)
	leaq	96(%r14), %rdi
	cmpq	%rdi, %r13
	setae	-53(%rbp)
	cmpq	%rsi, %rcx
	setbe	%sil
	orb	%sil, -53(%rbp)
	leaq	112(%r14), %rsi
	cmpq	%rsi, %r13
	setae	-54(%rbp)
	cmpq	%rdi, %rcx
	setbe	%dil
	orb	%dil, -54(%rbp)
	leaq	128(%r14), %rdi
	cmpq	%rdi, %r13
	setae	%r15b
	cmpq	%rsi, %rcx
	setbe	%cl
	orl	%ecx, %r15d
	movzbl	-50(%rbp), %ecx
	andb	-49(%rbp), %cl
	andb	-51(%rbp), %cl
	andl	%ebx, %ecx
	andb	-52(%rbp), %cl
	andb	-53(%rbp), %cl
	testb	%cl, -54(%rbp)
	je	.L54
	testb	%r15b, %r15b
	je	.L54
	movdqu	(%r14), %xmm1
	movdqu	64(%r14), %xmm4
	movdqa	%xmm1, %xmm5
	movdqu	16(%r14), %xmm0
	punpckhwd	%xmm4, %xmm1
	punpcklwd	%xmm4, %xmm5
	movdqu	80(%r14), %xmm3
	movdqa	%xmm0, %xmm4
	movdqu	32(%r14), %xmm6
	punpcklwd	%xmm3, %xmm4
	movdqu	96(%r14), %xmm2
	punpckhwd	%xmm3, %xmm0
	movdqa	%xmm6, %xmm3
	movdqu	48(%r14), %xmm8
	punpckhwd	%xmm2, %xmm6
	punpcklwd	%xmm2, %xmm3
	movdqu	112(%r14), %xmm7
	movdqa	%xmm8, %xmm2
	punpckhwd	%xmm7, %xmm8
	punpcklwd	%xmm7, %xmm2
	movdqa	%xmm5, %xmm7
	punpckhwd	%xmm3, %xmm5
	punpcklwd	%xmm3, %xmm7
	movdqa	%xmm1, %xmm3
	punpckhwd	%xmm6, %xmm1
	punpcklwd	%xmm6, %xmm3
	movdqa	%xmm4, %xmm6
	punpckhwd	%xmm2, %xmm4
	punpcklwd	%xmm2, %xmm6
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm8, %xmm0
	punpcklwd	%xmm8, %xmm2
	movdqa	%xmm7, %xmm8
	punpckhwd	%xmm6, %xmm7
	punpcklwd	%xmm6, %xmm8
	movdqa	%xmm5, %xmm6
	punpckhwd	%xmm4, %xmm5
	punpcklwd	%xmm4, %xmm6
	movdqa	%xmm3, %xmm4
	punpckhwd	%xmm2, %xmm3
	punpcklwd	%xmm2, %xmm4
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm2
	movdqu	%xmm8, 0(%r13)
	movdqu	%xmm7, 16(%r13)
	movdqu	%xmm6, 32(%r13)
	movdqu	%xmm5, 48(%r13)
	movdqu	%xmm4, 64(%r13)
	movdqu	%xmm3, 80(%r13)
	movdqu	%xmm2, 96(%r13)
	movdqu	%xmm1, 112(%r13)
.L55:
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L57:
	leaq	(%r14,%r12), %rsi
	leaq	0(%r13,%r12), %rdi
	addq	$16, %r12
	call	_Z15fast_fixed_dct8PsS_
	cmpq	$128, %r12
	jne	.L57
	movzbl	-52(%rbp), %r12d
	andb	-54(%rbp), %r12b
	andb	-49(%rbp), %r12b
	andl	%r15d, %r12d
	andb	-50(%rbp), %r12b
	andb	-51(%rbp), %r12b
	testb	%r12b, -53(%rbp)
	je	.L58
	testb	%bl, %bl
	je	.L58
	movdqu	(%r14), %xmm1
	movdqu	64(%r14), %xmm4
	movdqa	%xmm1, %xmm5
	movdqu	16(%r14), %xmm0
	punpckhwd	%xmm4, %xmm1
	punpcklwd	%xmm4, %xmm5
	movdqu	80(%r14), %xmm3
	movdqa	%xmm0, %xmm4
	movdqu	32(%r14), %xmm6
	punpcklwd	%xmm3, %xmm4
	movdqu	96(%r14), %xmm2
	punpckhwd	%xmm3, %xmm0
	movdqa	%xmm6, %xmm3
	movdqu	48(%r14), %xmm8
	punpckhwd	%xmm2, %xmm6
	punpcklwd	%xmm2, %xmm3
	movdqu	112(%r14), %xmm7
	movdqa	%xmm8, %xmm2
	punpckhwd	%xmm7, %xmm8
	punpcklwd	%xmm7, %xmm2
	movdqa	%xmm5, %xmm7
	punpckhwd	%xmm3, %xmm5
	punpcklwd	%xmm3, %xmm7
	movdqa	%xmm1, %xmm3
	punpckhwd	%xmm6, %xmm1
	punpcklwd	%xmm6, %xmm3
	movdqa	%xmm4, %xmm6
	punpckhwd	%xmm2, %xmm4
	punpcklwd	%xmm2, %xmm6
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm8, %xmm0
	punpcklwd	%xmm8, %xmm2
	movdqa	%xmm7, %xmm8
	punpckhwd	%xmm6, %xmm7
	punpcklwd	%xmm6, %xmm8
	movdqa	%xmm5, %xmm6
	punpckhwd	%xmm4, %xmm5
	punpcklwd	%xmm4, %xmm6
	movdqa	%xmm3, %xmm4
	punpckhwd	%xmm2, %xmm3
	punpcklwd	%xmm2, %xmm4
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm2
	movdqu	%xmm8, 0(%r13)
	movdqu	%xmm7, 16(%r13)
	movdqu	%xmm6, 32(%r13)
	movdqu	%xmm5, 48(%r13)
	movdqu	%xmm4, 64(%r13)
	movdqu	%xmm3, 80(%r13)
	movdqu	%xmm2, 96(%r13)
	movdqu	%xmm1, 112(%r13)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L54:
	.cfi_restore_state
	movzwl	(%r14), %ecx
	movw	%cx, 0(%r13)
	movzwl	16(%r14), %ecx
	movw	%cx, 2(%r13)
	movzwl	32(%r14), %ecx
	movw	%cx, 4(%r13)
	movzwl	48(%r14), %ecx
	movw	%cx, 6(%r13)
	movzwl	64(%r14), %ecx
	movw	%cx, 8(%r13)
	movzwl	80(%r14), %ecx
	movw	%cx, 10(%r13)
	movzwl	96(%r14), %ecx
	movw	%cx, 12(%r13)
	movzwl	112(%r14), %ecx
	movw	%cx, 14(%r13)
	movzwl	2(%r14), %ecx
	movw	%cx, 16(%r13)
	movzwl	18(%r14), %ecx
	movw	%cx, 18(%r13)
	movzwl	34(%r14), %ecx
	movw	%cx, 20(%r13)
	movzwl	50(%r14), %ecx
	movw	%cx, 22(%r13)
	movzwl	66(%r14), %ecx
	movw	%cx, 24(%r13)
	movzwl	82(%r14), %ecx
	movw	%cx, 26(%r13)
	movzwl	98(%r14), %ecx
	movw	%cx, 28(%r13)
	movzwl	114(%r14), %ecx
	movw	%cx, 30(%r13)
	movzwl	4(%r14), %ecx
	movw	%cx, 32(%r13)
	movzwl	20(%r14), %ecx
	movw	%cx, 34(%r13)
	movzwl	36(%r14), %ecx
	movw	%cx, 36(%r13)
	movzwl	52(%r14), %ecx
	movw	%cx, 38(%r13)
	movzwl	68(%r14), %ecx
	movw	%cx, 40(%r13)
	movzwl	84(%r14), %ecx
	movw	%cx, 42(%r13)
	movzwl	100(%r14), %ecx
	movw	%cx, 44(%r13)
	movzwl	116(%r14), %ecx
	movw	%cx, 46(%r13)
	movzwl	6(%r14), %ecx
	movw	%cx, 48(%r13)
	movzwl	22(%r14), %ecx
	movw	%cx, 50(%r13)
	movzwl	38(%r14), %ecx
	movw	%cx, 52(%r13)
	movzwl	54(%r14), %ecx
	movw	%cx, 54(%r13)
	movzwl	70(%r14), %ecx
	movw	%cx, 56(%r13)
	movzwl	86(%r14), %ecx
	movw	%cx, 58(%r13)
	movzwl	102(%r14), %ecx
	movw	%cx, 60(%r13)
	movzwl	118(%r14), %ecx
	movw	%cx, 62(%r13)
	movzwl	8(%r14), %ecx
	movw	%cx, 64(%r13)
	movzwl	24(%r14), %ecx
	movw	%cx, 66(%r13)
	movzwl	40(%r14), %ecx
	movw	%cx, 68(%r13)
	movzwl	56(%r14), %ecx
	movw	%cx, 70(%r13)
	movzwl	72(%r14), %ecx
	movw	%cx, 72(%r13)
	movzwl	88(%r14), %ecx
	movw	%cx, 74(%r13)
	movzwl	104(%r14), %ecx
	movw	%cx, 76(%r13)
	movzwl	120(%r14), %ecx
	movw	%cx, 78(%r13)
	movzwl	10(%r14), %ecx
	movw	%cx, 80(%r13)
	movzwl	26(%r14), %ecx
	movw	%cx, 82(%r13)
	movzwl	42(%r14), %ecx
	movw	%cx, 84(%r13)
	movzwl	58(%r14), %ecx
	movw	%cx, 86(%r13)
	movzwl	74(%r14), %ecx
	movw	%cx, 88(%r13)
	movzwl	90(%r14), %ecx
	movw	%cx, 90(%r13)
	movzwl	106(%r14), %ecx
	movw	%cx, 92(%r13)
	movzwl	122(%r14), %ecx
	movw	%cx, 94(%r13)
	movzwl	12(%r14), %ecx
	movw	%cx, 96(%r13)
	movzwl	28(%r14), %ecx
	movw	%cx, 98(%r13)
	movzwl	44(%r14), %ecx
	movw	%cx, 100(%r13)
	movzwl	60(%r14), %ecx
	movw	%cx, 102(%r13)
	movzwl	76(%r14), %ecx
	movw	%cx, 104(%r13)
	movzwl	92(%r14), %ecx
	movw	%cx, 106(%r13)
	movzwl	108(%r14), %ecx
	movw	%cx, 108(%r13)
	movzwl	124(%r14), %ecx
	movw	%cx, 110(%r13)
	movzwl	14(%r14), %ecx
	movw	%cx, 112(%r13)
	movzwl	30(%r14), %ecx
	movw	%cx, 114(%r13)
	movzwl	46(%r14), %ecx
	movw	%cx, 116(%r13)
	movzwl	62(%r14), %ecx
	movw	%cx, 118(%r13)
	movzwl	78(%r14), %ecx
	movw	%cx, 120(%r13)
	movzwl	94(%r14), %ecx
	movw	%cx, 122(%r13)
	movzwl	110(%r14), %ecx
	movw	%cx, 124(%r13)
	movzwl	126(%r14), %ecx
	movw	%cx, 126(%r13)
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L58:
	movzwl	(%r14), %ecx
	movw	%cx, 0(%r13)
	movzwl	16(%r14), %ecx
	movw	%cx, 2(%r13)
	movzwl	32(%r14), %ecx
	movw	%cx, 4(%r13)
	movzwl	48(%r14), %ecx
	movw	%cx, 6(%r13)
	movzwl	64(%r14), %ecx
	movw	%cx, 8(%r13)
	movzwl	80(%r14), %ecx
	movw	%cx, 10(%r13)
	movzwl	96(%r14), %ecx
	movw	%cx, 12(%r13)
	movzwl	112(%r14), %ecx
	movw	%cx, 14(%r13)
	movzwl	2(%r14), %ecx
	movw	%cx, 16(%r13)
	movzwl	18(%r14), %ecx
	movw	%cx, 18(%r13)
	movzwl	34(%r14), %ecx
	movw	%cx, 20(%r13)
	movzwl	50(%r14), %ecx
	movw	%cx, 22(%r13)
	movzwl	66(%r14), %ecx
	movw	%cx, 24(%r13)
	movzwl	82(%r14), %ecx
	movw	%cx, 26(%r13)
	movzwl	98(%r14), %ecx
	movw	%cx, 28(%r13)
	movzwl	114(%r14), %ecx
	movw	%cx, 30(%r13)
	movzwl	4(%r14), %ecx
	movw	%cx, 32(%r13)
	movzwl	20(%r14), %ecx
	movw	%cx, 34(%r13)
	movzwl	36(%r14), %ecx
	movw	%cx, 36(%r13)
	movzwl	52(%r14), %ecx
	movw	%cx, 38(%r13)
	movzwl	68(%r14), %ecx
	movw	%cx, 40(%r13)
	movzwl	84(%r14), %ecx
	movw	%cx, 42(%r13)
	movzwl	100(%r14), %ecx
	movw	%cx, 44(%r13)
	movzwl	116(%r14), %ecx
	movw	%cx, 46(%r13)
	movzwl	6(%r14), %ecx
	movw	%cx, 48(%r13)
	movzwl	22(%r14), %ecx
	movw	%cx, 50(%r13)
	movzwl	38(%r14), %ecx
	movw	%cx, 52(%r13)
	movzwl	54(%r14), %ecx
	movw	%cx, 54(%r13)
	movzwl	70(%r14), %ecx
	movw	%cx, 56(%r13)
	movzwl	86(%r14), %ecx
	movw	%cx, 58(%r13)
	movzwl	102(%r14), %ecx
	movw	%cx, 60(%r13)
	movzwl	118(%r14), %ecx
	movw	%cx, 62(%r13)
	movzwl	8(%r14), %ecx
	movw	%cx, 64(%r13)
	movzwl	24(%r14), %ecx
	movw	%cx, 66(%r13)
	movzwl	40(%r14), %ecx
	movw	%cx, 68(%r13)
	movzwl	56(%r14), %ecx
	movw	%cx, 70(%r13)
	movzwl	72(%r14), %ecx
	movw	%cx, 72(%r13)
	movzwl	88(%r14), %ecx
	movw	%cx, 74(%r13)
	movzwl	104(%r14), %ecx
	movw	%cx, 76(%r13)
	movzwl	120(%r14), %ecx
	movw	%cx, 78(%r13)
	movzwl	10(%r14), %ecx
	movw	%cx, 80(%r13)
	movzwl	26(%r14), %ecx
	movw	%cx, 82(%r13)
	movzwl	42(%r14), %ecx
	movw	%cx, 84(%r13)
	movzwl	58(%r14), %ecx
	movw	%cx, 86(%r13)
	movzwl	74(%r14), %ecx
	movw	%cx, 88(%r13)
	movzwl	90(%r14), %ecx
	movw	%cx, 90(%r13)
	movzwl	106(%r14), %ecx
	movw	%cx, 92(%r13)
	movzwl	122(%r14), %ecx
	movw	%cx, 94(%r13)
	movzwl	12(%r14), %ecx
	movw	%cx, 96(%r13)
	movzwl	28(%r14), %ecx
	movw	%cx, 98(%r13)
	movzwl	44(%r14), %ecx
	movw	%cx, 100(%r13)
	movzwl	60(%r14), %ecx
	movw	%cx, 102(%r13)
	movzwl	76(%r14), %ecx
	movw	%cx, 104(%r13)
	movzwl	92(%r14), %ecx
	movw	%cx, 106(%r13)
	movzwl	108(%r14), %ecx
	movw	%cx, 108(%r13)
	movzwl	124(%r14), %ecx
	movw	%cx, 110(%r13)
	movzwl	14(%r14), %ecx
	movw	%cx, 112(%r13)
	movzwl	30(%r14), %ecx
	movw	%cx, 114(%r13)
	movzwl	46(%r14), %ecx
	movw	%cx, 116(%r13)
	movzwl	62(%r14), %ecx
	movw	%cx, 118(%r13)
	movzwl	78(%r14), %ecx
	movw	%cx, 120(%r13)
	movzwl	94(%r14), %ecx
	movw	%cx, 122(%r13)
	movzwl	110(%r14), %ecx
	movw	%cx, 124(%r13)
	movzwl	126(%r14), %edx
	movw	%dx, 126(%r13)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	_Z17fast_fixed_dct8x8PA8_sS0_, .-_Z17fast_fixed_dct8x8PA8_sS0_
	.p2align 4,,15
	.globl	dct8x8
	.type	dct8x8, @function
dct8x8:
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
	subq	$24, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	call	mcount
	xorl	%ebx, %ebx
	movq	%rdi, %r13
	movq	%rsi, %r14
	.p2align 4,,10
	.p2align 3
.L74:
	leaq	(%rbx,%r14), %rsi
	leaq	(%rbx,%r13), %rdi
	addq	$16, %rbx
	call	_Z15fast_fixed_dct8PsS_
	cmpq	$128, %rbx
	jne	.L74
	leaq	128(%r13), %rcx
	leaq	16(%r14), %rsi
	cmpq	%rcx, %r14
	setae	-49(%rbp)
	cmpq	%rsi, %r13
	setae	%dil
	orb	%dil, -49(%rbp)
	cmpq	%rcx, %rsi
	leaq	32(%r14), %rsi
	setae	-50(%rbp)
	cmpq	%rsi, %r13
	setae	%dil
	orb	%dil, -50(%rbp)
	cmpq	%rsi, %rcx
	leaq	48(%r14), %rsi
	setbe	-51(%rbp)
	cmpq	%rsi, %r13
	setae	%dil
	orb	%dil, -51(%rbp)
	cmpq	%rsi, %rcx
	leaq	64(%r14), %rsi
	setbe	%bl
	cmpq	%rsi, %r13
	setae	%dil
	orl	%edi, %ebx
	cmpq	%rsi, %rcx
	leaq	80(%r14), %rsi
	setbe	-52(%rbp)
	cmpq	%rsi, %r13
	setae	%dil
	orb	%dil, -52(%rbp)
	cmpq	%rsi, %rcx
	leaq	96(%r14), %rsi
	setbe	-53(%rbp)
	cmpq	%rsi, %r13
	setae	%dil
	orb	%dil, -53(%rbp)
	cmpq	%rsi, %rcx
	leaq	112(%r14), %rsi
	setbe	-54(%rbp)
	cmpq	%rsi, %r13
	setae	%dil
	orb	%dil, -54(%rbp)
	cmpq	%rsi, %rcx
	leaq	128(%r14), %rcx
	setbe	%r15b
	cmpq	%rcx, %r13
	setae	%cl
	orl	%ecx, %r15d
	movzbl	-50(%rbp), %ecx
	andb	-49(%rbp), %cl
	andb	-51(%rbp), %cl
	andl	%ebx, %ecx
	andb	-52(%rbp), %cl
	andb	-53(%rbp), %cl
	testb	%cl, -54(%rbp)
	je	.L75
	testb	%r15b, %r15b
	je	.L75
	movdqu	(%r14), %xmm1
	movdqu	64(%r14), %xmm4
	movdqa	%xmm1, %xmm5
	movdqu	16(%r14), %xmm0
	punpckhwd	%xmm4, %xmm1
	punpcklwd	%xmm4, %xmm5
	movdqu	80(%r14), %xmm3
	movdqa	%xmm0, %xmm4
	movdqu	32(%r14), %xmm6
	punpcklwd	%xmm3, %xmm4
	movdqu	96(%r14), %xmm2
	punpckhwd	%xmm3, %xmm0
	movdqa	%xmm6, %xmm3
	movdqu	48(%r14), %xmm8
	punpckhwd	%xmm2, %xmm6
	punpcklwd	%xmm2, %xmm3
	movdqu	112(%r14), %xmm7
	movdqa	%xmm8, %xmm2
	punpckhwd	%xmm7, %xmm8
	punpcklwd	%xmm7, %xmm2
	movdqa	%xmm5, %xmm7
	punpckhwd	%xmm3, %xmm5
	punpcklwd	%xmm3, %xmm7
	movdqa	%xmm1, %xmm3
	punpckhwd	%xmm6, %xmm1
	punpcklwd	%xmm6, %xmm3
	movdqa	%xmm4, %xmm6
	punpckhwd	%xmm2, %xmm4
	punpcklwd	%xmm2, %xmm6
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm8, %xmm0
	punpcklwd	%xmm8, %xmm2
	movdqa	%xmm7, %xmm8
	punpckhwd	%xmm6, %xmm7
	punpcklwd	%xmm6, %xmm8
	movdqa	%xmm5, %xmm6
	punpckhwd	%xmm4, %xmm5
	punpcklwd	%xmm4, %xmm6
	movdqa	%xmm3, %xmm4
	punpckhwd	%xmm2, %xmm3
	punpcklwd	%xmm2, %xmm4
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm2
	movdqu	%xmm8, 0(%r13)
	movdqu	%xmm7, 16(%r13)
	movdqu	%xmm6, 32(%r13)
	movdqu	%xmm5, 48(%r13)
	movdqu	%xmm4, 64(%r13)
	movdqu	%xmm3, 80(%r13)
	movdqu	%xmm2, 96(%r13)
	movdqu	%xmm1, 112(%r13)
.L76:
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L78:
	leaq	(%r14,%r12), %rsi
	leaq	0(%r13,%r12), %rdi
	addq	$16, %r12
	call	_Z15fast_fixed_dct8PsS_
	cmpq	$128, %r12
	jne	.L78
	movzbl	-52(%rbp), %r12d
	andb	-54(%rbp), %r12b
	andb	-49(%rbp), %r12b
	andl	%r15d, %r12d
	andb	-50(%rbp), %r12b
	andb	-51(%rbp), %r12b
	testb	%r12b, -53(%rbp)
	je	.L79
	testb	%bl, %bl
	je	.L79
	movdqu	(%r14), %xmm1
	movdqu	64(%r14), %xmm4
	movdqa	%xmm1, %xmm5
	movdqu	16(%r14), %xmm0
	punpckhwd	%xmm4, %xmm1
	punpcklwd	%xmm4, %xmm5
	movdqu	80(%r14), %xmm3
	movdqa	%xmm0, %xmm4
	movdqu	32(%r14), %xmm6
	punpcklwd	%xmm3, %xmm4
	movdqu	96(%r14), %xmm2
	punpckhwd	%xmm3, %xmm0
	movdqa	%xmm6, %xmm3
	movdqu	48(%r14), %xmm8
	punpckhwd	%xmm2, %xmm6
	punpcklwd	%xmm2, %xmm3
	movdqu	112(%r14), %xmm7
	movdqa	%xmm8, %xmm2
	punpckhwd	%xmm7, %xmm8
	punpcklwd	%xmm7, %xmm2
	movdqa	%xmm5, %xmm7
	punpckhwd	%xmm3, %xmm5
	punpcklwd	%xmm3, %xmm7
	movdqa	%xmm1, %xmm3
	punpckhwd	%xmm6, %xmm1
	punpcklwd	%xmm6, %xmm3
	movdqa	%xmm4, %xmm6
	punpckhwd	%xmm2, %xmm4
	punpcklwd	%xmm2, %xmm6
	movdqa	%xmm0, %xmm2
	punpckhwd	%xmm8, %xmm0
	punpcklwd	%xmm8, %xmm2
	movdqa	%xmm7, %xmm8
	punpckhwd	%xmm6, %xmm7
	punpcklwd	%xmm6, %xmm8
	movdqa	%xmm5, %xmm6
	punpckhwd	%xmm4, %xmm5
	punpcklwd	%xmm4, %xmm6
	movdqa	%xmm3, %xmm4
	punpckhwd	%xmm2, %xmm3
	punpcklwd	%xmm2, %xmm4
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm2
	movdqu	%xmm8, 0(%r13)
	movdqu	%xmm7, 16(%r13)
	movdqu	%xmm6, 32(%r13)
	movdqu	%xmm5, 48(%r13)
	movdqu	%xmm4, 64(%r13)
	movdqu	%xmm3, 80(%r13)
	movdqu	%xmm2, 96(%r13)
	movdqu	%xmm1, 112(%r13)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L75:
	.cfi_restore_state
	movzwl	(%r14), %ecx
	movw	%cx, 0(%r13)
	movzwl	16(%r14), %ecx
	movw	%cx, 2(%r13)
	movzwl	32(%r14), %ecx
	movw	%cx, 4(%r13)
	movzwl	48(%r14), %ecx
	movw	%cx, 6(%r13)
	movzwl	64(%r14), %ecx
	movw	%cx, 8(%r13)
	movzwl	80(%r14), %ecx
	movw	%cx, 10(%r13)
	movzwl	96(%r14), %ecx
	movw	%cx, 12(%r13)
	movzwl	112(%r14), %ecx
	movw	%cx, 14(%r13)
	movzwl	2(%r14), %ecx
	movw	%cx, 16(%r13)
	movzwl	18(%r14), %ecx
	movw	%cx, 18(%r13)
	movzwl	34(%r14), %ecx
	movw	%cx, 20(%r13)
	movzwl	50(%r14), %ecx
	movw	%cx, 22(%r13)
	movzwl	66(%r14), %ecx
	movw	%cx, 24(%r13)
	movzwl	82(%r14), %ecx
	movw	%cx, 26(%r13)
	movzwl	98(%r14), %ecx
	movw	%cx, 28(%r13)
	movzwl	114(%r14), %ecx
	movw	%cx, 30(%r13)
	movzwl	4(%r14), %ecx
	movw	%cx, 32(%r13)
	movzwl	20(%r14), %ecx
	movw	%cx, 34(%r13)
	movzwl	36(%r14), %ecx
	movw	%cx, 36(%r13)
	movzwl	52(%r14), %ecx
	movw	%cx, 38(%r13)
	movzwl	68(%r14), %ecx
	movw	%cx, 40(%r13)
	movzwl	84(%r14), %ecx
	movw	%cx, 42(%r13)
	movzwl	100(%r14), %ecx
	movw	%cx, 44(%r13)
	movzwl	116(%r14), %ecx
	movw	%cx, 46(%r13)
	movzwl	6(%r14), %ecx
	movw	%cx, 48(%r13)
	movzwl	22(%r14), %ecx
	movw	%cx, 50(%r13)
	movzwl	38(%r14), %ecx
	movw	%cx, 52(%r13)
	movzwl	54(%r14), %ecx
	movw	%cx, 54(%r13)
	movzwl	70(%r14), %ecx
	movw	%cx, 56(%r13)
	movzwl	86(%r14), %ecx
	movw	%cx, 58(%r13)
	movzwl	102(%r14), %ecx
	movw	%cx, 60(%r13)
	movzwl	118(%r14), %ecx
	movw	%cx, 62(%r13)
	movzwl	8(%r14), %ecx
	movw	%cx, 64(%r13)
	movzwl	24(%r14), %ecx
	movw	%cx, 66(%r13)
	movzwl	40(%r14), %ecx
	movw	%cx, 68(%r13)
	movzwl	56(%r14), %ecx
	movw	%cx, 70(%r13)
	movzwl	72(%r14), %ecx
	movw	%cx, 72(%r13)
	movzwl	88(%r14), %ecx
	movw	%cx, 74(%r13)
	movzwl	104(%r14), %ecx
	movw	%cx, 76(%r13)
	movzwl	120(%r14), %ecx
	movw	%cx, 78(%r13)
	movzwl	10(%r14), %ecx
	movw	%cx, 80(%r13)
	movzwl	26(%r14), %ecx
	movw	%cx, 82(%r13)
	movzwl	42(%r14), %ecx
	movw	%cx, 84(%r13)
	movzwl	58(%r14), %ecx
	movw	%cx, 86(%r13)
	movzwl	74(%r14), %ecx
	movw	%cx, 88(%r13)
	movzwl	90(%r14), %ecx
	movw	%cx, 90(%r13)
	movzwl	106(%r14), %ecx
	movw	%cx, 92(%r13)
	movzwl	122(%r14), %ecx
	movw	%cx, 94(%r13)
	movzwl	12(%r14), %ecx
	movw	%cx, 96(%r13)
	movzwl	28(%r14), %ecx
	movw	%cx, 98(%r13)
	movzwl	44(%r14), %ecx
	movw	%cx, 100(%r13)
	movzwl	60(%r14), %ecx
	movw	%cx, 102(%r13)
	movzwl	76(%r14), %ecx
	movw	%cx, 104(%r13)
	movzwl	92(%r14), %ecx
	movw	%cx, 106(%r13)
	movzwl	108(%r14), %ecx
	movw	%cx, 108(%r13)
	movzwl	124(%r14), %ecx
	movw	%cx, 110(%r13)
	movzwl	14(%r14), %ecx
	movw	%cx, 112(%r13)
	movzwl	30(%r14), %ecx
	movw	%cx, 114(%r13)
	movzwl	46(%r14), %ecx
	movw	%cx, 116(%r13)
	movzwl	62(%r14), %ecx
	movw	%cx, 118(%r13)
	movzwl	78(%r14), %ecx
	movw	%cx, 120(%r13)
	movzwl	94(%r14), %ecx
	movw	%cx, 122(%r13)
	movzwl	110(%r14), %ecx
	movw	%cx, 124(%r13)
	movzwl	126(%r14), %ecx
	movw	%cx, 126(%r13)
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L79:
	movzwl	(%r14), %ecx
	movw	%cx, 0(%r13)
	movzwl	16(%r14), %ecx
	movw	%cx, 2(%r13)
	movzwl	32(%r14), %ecx
	movw	%cx, 4(%r13)
	movzwl	48(%r14), %ecx
	movw	%cx, 6(%r13)
	movzwl	64(%r14), %ecx
	movw	%cx, 8(%r13)
	movzwl	80(%r14), %ecx
	movw	%cx, 10(%r13)
	movzwl	96(%r14), %ecx
	movw	%cx, 12(%r13)
	movzwl	112(%r14), %ecx
	movw	%cx, 14(%r13)
	movzwl	2(%r14), %ecx
	movw	%cx, 16(%r13)
	movzwl	18(%r14), %ecx
	movw	%cx, 18(%r13)
	movzwl	34(%r14), %ecx
	movw	%cx, 20(%r13)
	movzwl	50(%r14), %ecx
	movw	%cx, 22(%r13)
	movzwl	66(%r14), %ecx
	movw	%cx, 24(%r13)
	movzwl	82(%r14), %ecx
	movw	%cx, 26(%r13)
	movzwl	98(%r14), %ecx
	movw	%cx, 28(%r13)
	movzwl	114(%r14), %ecx
	movw	%cx, 30(%r13)
	movzwl	4(%r14), %ecx
	movw	%cx, 32(%r13)
	movzwl	20(%r14), %ecx
	movw	%cx, 34(%r13)
	movzwl	36(%r14), %ecx
	movw	%cx, 36(%r13)
	movzwl	52(%r14), %ecx
	movw	%cx, 38(%r13)
	movzwl	68(%r14), %ecx
	movw	%cx, 40(%r13)
	movzwl	84(%r14), %ecx
	movw	%cx, 42(%r13)
	movzwl	100(%r14), %ecx
	movw	%cx, 44(%r13)
	movzwl	116(%r14), %ecx
	movw	%cx, 46(%r13)
	movzwl	6(%r14), %ecx
	movw	%cx, 48(%r13)
	movzwl	22(%r14), %ecx
	movw	%cx, 50(%r13)
	movzwl	38(%r14), %ecx
	movw	%cx, 52(%r13)
	movzwl	54(%r14), %ecx
	movw	%cx, 54(%r13)
	movzwl	70(%r14), %ecx
	movw	%cx, 56(%r13)
	movzwl	86(%r14), %ecx
	movw	%cx, 58(%r13)
	movzwl	102(%r14), %ecx
	movw	%cx, 60(%r13)
	movzwl	118(%r14), %ecx
	movw	%cx, 62(%r13)
	movzwl	8(%r14), %ecx
	movw	%cx, 64(%r13)
	movzwl	24(%r14), %ecx
	movw	%cx, 66(%r13)
	movzwl	40(%r14), %ecx
	movw	%cx, 68(%r13)
	movzwl	56(%r14), %ecx
	movw	%cx, 70(%r13)
	movzwl	72(%r14), %ecx
	movw	%cx, 72(%r13)
	movzwl	88(%r14), %ecx
	movw	%cx, 74(%r13)
	movzwl	104(%r14), %ecx
	movw	%cx, 76(%r13)
	movzwl	120(%r14), %ecx
	movw	%cx, 78(%r13)
	movzwl	10(%r14), %ecx
	movw	%cx, 80(%r13)
	movzwl	26(%r14), %ecx
	movw	%cx, 82(%r13)
	movzwl	42(%r14), %ecx
	movw	%cx, 84(%r13)
	movzwl	58(%r14), %ecx
	movw	%cx, 86(%r13)
	movzwl	74(%r14), %ecx
	movw	%cx, 88(%r13)
	movzwl	90(%r14), %ecx
	movw	%cx, 90(%r13)
	movzwl	106(%r14), %ecx
	movw	%cx, 92(%r13)
	movzwl	122(%r14), %ecx
	movw	%cx, 94(%r13)
	movzwl	12(%r14), %ecx
	movw	%cx, 96(%r13)
	movzwl	28(%r14), %ecx
	movw	%cx, 98(%r13)
	movzwl	44(%r14), %ecx
	movw	%cx, 100(%r13)
	movzwl	60(%r14), %ecx
	movw	%cx, 102(%r13)
	movzwl	76(%r14), %ecx
	movw	%cx, 104(%r13)
	movzwl	92(%r14), %ecx
	movw	%cx, 106(%r13)
	movzwl	108(%r14), %ecx
	movw	%cx, 108(%r13)
	movzwl	124(%r14), %ecx
	movw	%cx, 110(%r13)
	movzwl	14(%r14), %ecx
	movw	%cx, 112(%r13)
	movzwl	30(%r14), %ecx
	movw	%cx, 114(%r13)
	movzwl	46(%r14), %ecx
	movw	%cx, 116(%r13)
	movzwl	62(%r14), %ecx
	movw	%cx, 118(%r13)
	movzwl	78(%r14), %ecx
	movw	%cx, 120(%r13)
	movzwl	94(%r14), %ecx
	movw	%cx, 122(%r13)
	movzwl	110(%r14), %ecx
	movw	%cx, 124(%r13)
	movzwl	126(%r14), %edx
	movw	%dx, 126(%r13)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE28:
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
.LC0:
	.long	776530087
	.long	1074340351
	.align 8
.LC1:
	.long	0
	.long	1068498944
	.align 8
.LC3:
	.long	0
	.long	1072693248
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
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC18:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC28:
	.long	1023410176
	.section	.rodata.cst8
	.align 8
.LC29:
	.long	0
	.long	1071644672
	.ident	"GCC: (GNU) 4.8.2 20131212 (Red Hat 4.8.2-7)"
	.section	.note.GNU-stack,"",@progbits
