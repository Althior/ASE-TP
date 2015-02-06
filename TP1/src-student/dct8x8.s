	.file	"dct8x8.c"
	.text
	.p2align 4,,15
	.globl	_Z11cosPiNfixedf
	.type	_Z11cosPiNfixedf, @function
_Z11cosPiNfixedf:
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
	mulss	.LC2(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	ret
	.cfi_endproc
.LFE25:
	.size	_Z11cosPiNfixedf, .-_Z11cosPiNfixedf
	.p2align 4,,15
	.globl	_Z10transformQPsss
	.type	_Z10transformQPsss, @function
_Z10transformQPsss:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	mcount
	cmpw	%dx, %si
	jg	.L7
	jge	.L2
	movswl	(%rdi), %eax
	movl	%edx, %ecx
	subl	%esi, %ecx
	sarl	%cl, %eax
.L2:
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	movswl	(%rdi), %edi
	movl	%esi, %ecx
	subl	%edx, %ecx
	popq	%rbp
	.cfi_def_cfa 7, 8
	sall	%cl, %edi
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE26:
	.size	_Z10transformQPsss, .-_Z10transformQPsss
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"%f "
	.text
	.p2align 4,,15
	.globl	_Z13afficher_fixess
	.type	_Z13afficher_fixess, @function
_Z13afficher_fixess:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	mcount
	movl	$1, %eax
	movl	%esi, %ecx
	movswl	%di, %edi
	sall	%cl, %eax
	cvtsi2ss	%edi, %xmm0
	cvtsi2ss	%eax, %xmm1
	movl	$.LC3, %edi
	popq	%rbp
	.cfi_def_cfa 7, 8
	movl	$1, %eax
	divss	%xmm1, %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	jmp	printf
	.cfi_endproc
.LFE27:
	.size	_Z13afficher_fixess, .-_Z13afficher_fixess
	.p2align 4,,15
	.globl	_Z6cosPiNf
	.type	_Z6cosPiNf, @function
_Z6cosPiNf:
.LFB28:
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
.LFE28:
	.size	_Z6cosPiNf, .-_Z6cosPiNf
	.p2align 4,,15
	.globl	_Z11switchFloatPfS_
	.type	_Z11switchFloatPfS_, @function
_Z11switchFloatPfS_:
.LFB29:
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
.LFE29:
	.size	_Z11switchFloatPfS_, .-_Z11switchFloatPfS_
	.p2align 4,,15
	.globl	_Z11switchShortPsS_
	.type	_Z11switchShortPsS_, @function
_Z11switchShortPsS_:
.LFB30:
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
.LFE30:
	.size	_Z11switchShortPsS_, .-_Z11switchShortPsS_
	.p2align 4,,15
	.globl	_Z17slow_float_dct8x8PA8_sS0_
	.type	_Z17slow_float_dct8x8PA8_sS0_, @function
_Z17slow_float_dct8x8PA8_sS0_:
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
	subq	$280, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	call	mcount
	movsd	.LC5(%rip), %xmm5
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
.L13:
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
	movsd	.LC5(%rip), %xmm0
	movq	%rax, -264(%rbp)
	movq	-296(%rbp), %rax
	movq	%rax, -272(%rbp)
	.p2align 4,,10
	.p2align 3
.L18:
	movss	(%rax), %xmm4
	leal	(%r12,%r12), %ebx
	movq	-280(%rbp), %r14
	xorl	%r15d, %r15d
	xorpd	%xmm1, %xmm1
	cvtps2pd	%xmm4, %xmm4
	leal	(%rbx,%r12), %r13d
	movsd	%xmm4, -192(%rbp)
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L14:
	cvtsi2sd	%r13d, %xmm0
	addl	%ebx, %r13d
	movsd	%xmm1, -184(%rbp)
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	-184(%rbp), %xmm1
.L16:
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
	jne	.L14
	cvttsd2si	%xmm1, %eax
	movq	-264(%rbp), %rdx
	addl	$1, %r12d
	addq	$32, -272(%rbp)
	addq	$16, -264(%rbp)
	cmpl	$8, %r12d
	movw	%ax, (%rdx)
	je	.L15
	cvtsi2sd	%r12d, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movq	-272(%rbp), %rax
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L15:
	addl	$1, -284(%rbp)
	addl	$11, -288(%rbp)
	addq	$4, -296(%rbp)
	addq	$2, -304(%rbp)
	cmpl	$8, -284(%rbp)
	je	.L17
	cvtsi2sd	-284(%rbp), %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -200(%rbp)
	jmp	.L13
.L17:
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
.LFE32:
	.size	_Z17slow_float_dct8x8PA8_sS0_, .-_Z17slow_float_dct8x8PA8_sS0_
	.p2align 4,,15
	.globl	_Z15slow_float_dct8PfS_
	.type	_Z15slow_float_dct8PfS_, @function
_Z15slow_float_dct8PfS_:
.LFB35:
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
	movsd	.LC5(%rip), %xmm4
	xorl	%r14d, %r14d
	movq	%rdi, %r12
	movq	%rsi, %r15
	xorl	%r13d, %r13d
	movsd	%xmm4, -72(%rbp)
	xorl	%ebx, %ebx
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L27:
	movl	%ebx, %eax
	sall	$4, %eax
	subl	%ebx, %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -72(%rbp)
.L23:
	testl	%ebx, %ebx
	je	.L26
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
	movss	.LC7(%rip), %xmm0
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	unpcklpd	%xmm1, %xmm1
	cvtpd2ps	%xmm1, %xmm1
.L24:
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
	mulss	.LC8(%rip), %xmm1
	movss	%xmm1, -4(%r15)
	cmpl	$8, %ebx
	jne	.L27
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
.L26:
	.cfi_restore_state
	movss	.LC6(%rip), %xmm1
	mulss	(%r12), %xmm1
	movss	.LC6(%rip), %xmm0
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
	movss	.LC6(%rip), %xmm1
	mulss	8(%r12), %xmm1
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movss	.LC6(%rip), %xmm0
	mulss	12(%r12), %xmm0
	unpcklpd	%xmm1, %xmm1
	cvtpd2ps	%xmm1, %xmm1
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movss	.LC6(%rip), %xmm1
	mulss	16(%r12), %xmm1
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movss	.LC6(%rip), %xmm1
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
	movss	.LC6(%rip), %xmm0
	mulss	24(%r12), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movss	.LC6(%rip), %xmm0
	unpcklpd	%xmm1, %xmm1
	cvtpd2ps	%xmm1, %xmm1
	jmp	.L24
	.cfi_endproc
.LFE35:
	.size	_Z15slow_float_dct8PfS_, .-_Z15slow_float_dct8PfS_
	.p2align 4,,15
	.globl	_Z15fast_float_dct8PfS_
	.type	_Z15fast_float_dct8PfS_, @function
_Z15fast_float_dct8PfS_:
.LFB36:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	call	mcount
	xorps	%xmm1, %xmm1
	movss	.LC16(%rip), %xmm13
	xorps	%xmm2, %xmm2
	movss	.LC12(%rip), %xmm0
	movlps	16(%rdi), %xmm1
	xorps	%xmm0, %xmm13
	movlps	(%rdi), %xmm2
	movss	.LC10(%rip), %xmm9
	movhps	24(%rdi), %xmm1
	movss	.LC14(%rip), %xmm11
	movhps	8(%rdi), %xmm2
	movss	.LC11(%rip), %xmm3
	shufps	$27, %xmm1, %xmm1
	movss	.LC9(%rip), %xmm4
	movss	.LC15(%rip), %xmm5
	addps	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	movlps	(%rdi), %xmm1
	movaps	%xmm2, -96(%rbp)
	xorps	%xmm2, %xmm2
	movhps	8(%rdi), %xmm1
	shufps	$27, %xmm1, %xmm1
	movlps	16(%rdi), %xmm2
	movss	-92(%rbp), %xmm10
	movaps	%xmm10, %xmm12
	movhps	24(%rdi), %xmm2
	movss	-96(%rbp), %xmm15
	movss	-84(%rbp), %xmm14
	subps	%xmm2, %xmm1
	movaps	%xmm15, %xmm8
	subss	%xmm14, %xmm10
	addss	%xmm15, %xmm14
	movaps	%xmm1, -80(%rbp)
	mulss	%xmm0, %xmm14
	movss	-88(%rbp), %xmm1
	addss	%xmm1, %xmm12
	movss	-72(%rbp), %xmm6
	subss	%xmm1, %xmm8
	movss	-76(%rbp), %xmm1
	mulss	%xmm0, %xmm6
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm1
	movss	-80(%rbp), %xmm7
	mulss	%xmm12, %xmm0
	mulss	%xmm13, %xmm12
	mulss	%xmm13, %xmm2
	addss	%xmm6, %xmm1
	addss	%xmm14, %xmm0
	addss	%xmm14, %xmm12
	addss	%xmm6, %xmm2
	movss	-68(%rbp), %xmm6
	movss	%xmm0, -64(%rbp)
	movaps	%xmm11, %xmm0
	movss	%xmm12, -60(%rbp)
	movaps	%xmm9, %xmm12
	mulss	%xmm8, %xmm0
	movq	-64(%rbp), %rax
	mulss	%xmm9, %xmm8
	mulss	%xmm10, %xmm12
	mulss	%xmm11, %xmm10
	movq	%rax, (%rsi)
	movss	4(%rsi), %xmm9
	addss	%xmm12, %xmm0
	subss	%xmm8, %xmm10
	movss	%xmm0, -56(%rbp)
	movaps	%xmm6, %xmm0
	movss	%xmm10, -52(%rbp)
	movaps	%xmm7, %xmm10
	subss	%xmm2, %xmm7
	movq	-56(%rbp), %rax
	subss	%xmm1, %xmm0
	addss	%xmm2, %xmm10
	movss	.LC13(%rip), %xmm2
	addss	%xmm6, %xmm1
	movaps	%xmm4, %xmm6
	movaps	%xmm7, %xmm8
	mulss	.LC13(%rip), %xmm7
	mulss	%xmm0, %xmm2
	movq	%rax, 8(%rsi)
	mulss	%xmm3, %xmm8
	mulss	%xmm10, %xmm6
	mulss	%xmm0, %xmm3
	movss	.LC8(%rip), %xmm0
	mulss	%xmm0, %xmm9
	addss	%xmm2, %xmm8
	movaps	%xmm1, %xmm2
	mulss	%xmm4, %xmm1
	movss	(%rsi), %xmm4
	mulss	%xmm5, %xmm2
	subss	%xmm7, %xmm3
	mulss	%xmm10, %xmm5
	mulss	%xmm0, %xmm4
	mulss	%xmm0, %xmm8
	subss	%xmm6, %xmm2
	mulss	%xmm0, %xmm3
	addss	%xmm1, %xmm5
	movss	12(%rsi), %xmm1
	movss	%xmm4, (%rsi)
	mulss	%xmm0, %xmm1
	movss	8(%rsi), %xmm4
	mulss	%xmm0, %xmm4
	movss	%xmm3, 12(%rsi)
	mulss	%xmm0, %xmm5
	movss	%xmm9, 16(%rsi)
	mulss	%xmm0, %xmm2
	movss	%xmm8, 20(%rsi)
	movss	%xmm1, 24(%rsi)
	movss	%xmm4, 8(%rsi)
	movss	%xmm5, 4(%rsi)
	movss	%xmm2, 28(%rsi)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE36:
	.size	_Z15fast_float_dct8PfS_, .-_Z15fast_float_dct8PfS_
	.p2align 4,,15
	.globl	_Z17fast_float_dct8x8PA8_sS0_
	.type	_Z17fast_float_dct8x8PA8_sS0_, @function
_Z17fast_float_dct8x8PA8_sS0_:
.LFB33:
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
	call	_Z15fast_float_dct8PfS_
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
	call	_Z15fast_float_dct8PfS_
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
.LFE33:
	.size	_Z17fast_float_dct8x8PA8_sS0_, .-_Z17fast_float_dct8x8PA8_sS0_
	.p2align 4,,15
	.globl	_Z15fast_fixed_dct8PsS_
	.type	_Z15fast_fixed_dct8PsS_, @function
_Z15fast_fixed_dct8PsS_:
.LFB37:
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
	subq	$32, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	call	mcount
	movzwl	12(%rdi), %r11d
	movzwl	2(%rdi), %ecx
	movabsq	$-281470681743361, %r13
	movzwl	14(%rdi), %r9d
	movzwl	(%rdi), %r10d
	movabsq	$281474976710655, %r14
	movzwl	10(%rdi), %ebx
	movzwl	4(%rdi), %r12d
	movabsq	$1799241906922478210, %r8
	leal	(%r11,%rcx), %edx
	subl	%r11d, %ecx
	leal	(%r10,%r9), %eax
	movzwl	%cx, %ecx
	subl	%r9d, %r10d
	movzwl	%dx, %edx
	salq	$32, %rcx
	movw	%r10w, -68(%rbp)
	salq	$16, %rdx
	movzwl	%ax, %eax
	orq	%rdx, %rax
	leal	(%rbx,%r12), %edx
	subl	%ebx, %r12d
	andq	%r13, %rax
	movzwl	%dx, %edx
	salq	$32, %rdx
	orq	%rdx, %rax
	movzwl	6(%rdi), %edx
	movzwl	8(%rdi), %edi
	andq	%r14, %rax
	leal	(%rdi,%rdx), %r13d
	subl	%edi, %edx
	movzwl	%r12w, %edi
	salq	$16, %rdi
	movzwl	%dx, %edx
	salq	$48, %r13
	orq	%rdi, %rdx
	orq	%r13, %rax
	orq	%rcx, %rdx
	movswl	%r8w, %ecx
	movq	%rax, %rdi
	movq	%rax, %r14
	movl	%eax, %r12d
	salq	$16, %rdi
	movq	%rdx, %r15
	sarq	$48, %r14
	sarq	$48, %rdi
	salq	$16, %r15
	sarl	$16, %r12d
	leal	(%rdi,%r12), %r13d
	movq	%r15, %r10
	leal	(%r14,%rax), %r15d
	movl	%ecx, %ebx
	movl	%edx, %r11d
	sarq	$48, %r10
	negl	%ebx
	movswl	%r15w, %r15d
	movswl	%r13w, %r13d
	leal	(%r15,%r13), %r9d
	sarl	$16, %r11d
	subl	%edi, %eax
	imull	%ecx, %r15d
	cwtl
	movabsq	$7668915764132970496, %rdi
	imull	%ebx, %r13d
	addl	%r15d, %r13d
	movl	%eax, %r15d
	imull	%ecx, %r9d
	sarl	$12, %r13d
	movw	%r13w, -62(%rbp)
	movq	%r8, %r13
	salq	$16, %r13
	shrq	$48, %r13
	sarl	$12, %r9d
	subl	%r14d, %r12d
	movw	%r9w, -64(%rbp)
	movswl	%r12w, %r12d
	movl	$30273, %r9d
	imull	%r9d, %eax
	movl	%r12d, %r14d
	sall	$5, %edx
	imull	%r13d, %r12d
	movswl	%dx, %edx
	subl	%eax, %r12d
	movl	%ecx, %eax
	imull	%r10d, %eax
	addl	%r11d, %r10d
	sarl	$10, %r12d
	imull	%r11d, %ebx
	movw	%r12w, -58(%rbp)
	addl	%eax, %ebx
	movswl	-68(%rbp), %eax
	imull	%r13d, %r15d
	sarl	$10, %ebx
	imull	%r9d, %r14d
	movswl	%bx, %ebx
	leal	(%rdx,%rbx), %r9d
	subl	%ebx, %edx
	sall	$5, %eax
	sarl	%edx
	imull	%r10d, %ecx
	addl	%r15d, %r14d
	cwtl
	sarl	$10, %r14d
	movl	%eax, %ebx
	movq	%r8, %r10
	movw	%r14w, -60(%rbp)
	shrq	$48, %r10
	sarl	%r9d
	sarl	$10, %ecx
	movl	%r9d, %r15d
	movswl	%cx, %ecx
	subl	%ecx, %ebx
	addl	%eax, %ecx
	movq	-64(%rbp), %rax
	sarl	%ecx
	sarl	%ebx
	movl	%ecx, %r14d
	movq	%rax, %r11
	shrq	$32, %r11
	movq	%r11, %r13
	movq	%rax, %r11
	shrq	$48, %r11
	movswl	%r13w, %r13d
	movq	%r11, %r12
	movq	%r10, %r11
	movl	%edi, %r10d
	shrl	$16, %r10d
	shrq	$48, %rdi
	movswl	%r12w, %r12d
	imull	%r10d, %r14d
	imull	%r11d, %r15d
	addl	%r14d, %r15d
	shrl	$16, %r8d
	movl	%ebx, %r14d
	movl	%r15d, -68(%rbp)
	movl	%edx, %r15d
	sarl	$6, %r13d
	imull	%edi, %r15d
	sarl	$6, %r12d
	movw	%r13w, 4(%rsi)
	imull	%r8d, %r14d
	movw	%r12w, 12(%rsi)
	addl	%r15d, %r14d
	movl	-68(%rbp), %r15d
	imull	%ebx, %edi
	addl	%r14d, %r14d
	imull	%edx, %r8d
	movq	%rax, %rdx
	sarl	$21, %r14d
	salq	$16, %rdx
	sarl	$20, %eax
	movw	%r14w, 10(%rsi)
	sarl	$20, %edx
	movw	%ax, 8(%rsi)
	imull	%r11d, %ecx
	movw	%dx, (%rsi)
	subl	%r8d, %edi
	imull	%r10d, %r9d
	leal	(%r15,%r15), %edx
	addl	%edi, %edi
	sarl	$21, %edi
	sarl	$21, %edx
	movw	%di, 6(%rsi)
	subl	%r9d, %ecx
	movw	%dx, 2(%rsi)
	addl	%ecx, %ecx
	sarl	$21, %ecx
	movw	%cx, 14(%rsi)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE37:
	.size	_Z15fast_fixed_dct8PsS_, .-_Z15fast_fixed_dct8PsS_
	.p2align 4,,15
	.globl	_Z17fast_fixed_dct8x8PA8_sS0_
	.type	_Z17fast_fixed_dct8x8PA8_sS0_, @function
_Z17fast_fixed_dct8x8PA8_sS0_:
.LFB34:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	call	mcount
	xorl	%ebx, %ebx
	movq	%rdi, %r13
	movq	%rsi, %r12
	.p2align 4,,10
	.p2align 3
.L37:
	leaq	(%rbx,%r12), %rsi
	leaq	0(%r13,%rbx), %rdi
	addq	$16, %rbx
	call	_Z15fast_fixed_dct8PsS_
	cmpq	$128, %rbx
	jne	.L37
	movdqu	(%r12), %xmm1
	xorb	%bl, %bl
	movdqu	64(%r12), %xmm4
	movdqa	%xmm1, %xmm5
	movdqu	16(%r12), %xmm0
	punpckhwd	%xmm4, %xmm1
	punpcklwd	%xmm4, %xmm5
	movdqu	80(%r12), %xmm3
	movdqa	%xmm0, %xmm4
	movdqu	32(%r12), %xmm6
	punpcklwd	%xmm3, %xmm4
	movdqu	96(%r12), %xmm2
	punpckhwd	%xmm3, %xmm0
	movdqa	%xmm6, %xmm3
	movdqu	48(%r12), %xmm8
	punpckhwd	%xmm2, %xmm6
	punpcklwd	%xmm2, %xmm3
	movdqu	112(%r12), %xmm7
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
	movdqa	%xmm8, -160(%rbp)
	movdqa	%xmm7, -144(%rbp)
	movdqa	%xmm6, -128(%rbp)
	movdqa	%xmm5, -112(%rbp)
	movdqa	%xmm4, -96(%rbp)
	movdqa	%xmm3, -80(%rbp)
	movdqa	%xmm2, -64(%rbp)
	movdqa	%xmm1, -48(%rbp)
	.p2align 4,,10
	.p2align 3
.L39:
	leaq	-160(%rbp), %rax
	leaq	(%r12,%rbx), %rsi
	leaq	(%rax,%rbx), %rdi
	addq	$16, %rbx
	call	_Z15fast_fixed_dct8PsS_
	cmpq	$128, %rbx
	jne	.L39
	movdqu	(%r12), %xmm1
	movdqu	64(%r12), %xmm4
	movdqa	%xmm1, %xmm5
	movdqu	16(%r12), %xmm0
	punpckhwd	%xmm4, %xmm1
	punpcklwd	%xmm4, %xmm5
	movdqu	80(%r12), %xmm3
	movdqa	%xmm0, %xmm4
	movdqu	32(%r12), %xmm6
	punpcklwd	%xmm3, %xmm4
	movdqu	96(%r12), %xmm2
	punpckhwd	%xmm3, %xmm0
	movdqa	%xmm6, %xmm3
	movdqu	48(%r12), %xmm8
	punpckhwd	%xmm2, %xmm6
	punpcklwd	%xmm2, %xmm3
	movdqu	112(%r12), %xmm7
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
	movdqu	%xmm8, (%r12)
	movdqu	%xmm7, 16(%r12)
	movdqu	%xmm6, 32(%r12)
	movdqu	%xmm5, 48(%r12)
	movdqu	%xmm4, 64(%r12)
	movdqu	%xmm3, 80(%r12)
	movdqu	%xmm2, 96(%r12)
	movdqu	%xmm1, 112(%r12)
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE34:
	.size	_Z17fast_fixed_dct8x8PA8_sS0_, .-_Z17fast_fixed_dct8x8PA8_sS0_
	.p2align 4,,15
	.globl	dct8x8
	.type	dct8x8, @function
dct8x8:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	mcount
	popq	%rbp
	.cfi_def_cfa 7, 8
	jmp	_Z17fast_fixed_dct8x8PA8_sS0_
	.cfi_endproc
.LFE31:
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
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1191182336
	.section	.rodata.cst8
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.section	.rodata.cst4
	.align 4
.LC6:
	.long	1060439283
	.align 4
.LC7:
	.long	1065353216
	.align 4
.LC8:
	.long	1056964608
	.align 4
.LC9:
	.long	1065030845
	.align 4
.LC10:
	.long	1064076121
	.align 4
.LC11:
	.long	1062525732
	.align 4
.LC12:
	.long	1060439261
	.align 4
.LC13:
	.long	1057896890
	.align 4
.LC14:
	.long	1053028032
	.align 4
.LC15:
	.long	1044890862
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC16:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (GNU) 4.8.2 20131212 (Red Hat 4.8.2-7)"
	.section	.note.GNU-stack,"",@progbits
