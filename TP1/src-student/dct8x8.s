	.file	"dct8x8.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
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
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	_Z6cosPiNf, .-_Z6cosPiNf
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
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
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	_Z17slow_float_dct8x8PA8_sS0_
	.type	_Z17slow_float_dct8x8PA8_sS0_, @function
_Z17slow_float_dct8x8PA8_sS0_:
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
	subq	$280, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	call	mcount
	movsd	.LC5(%rip), %xmm6
	leaq	-176(%rbp), %rax
	movq	%rdi, -280(%rbp)
	movq	%rsi, -312(%rbp)
	movsd	%xmm6, -200(%rbp)
	movq	$Av, -296(%rbp)
	movl	$0, -288(%rbp)
	movq	%rax, -304(%rbp)
	movl	$0, -284(%rbp)
	.p2align 4,,10
	.p2align 3
.L4:
	movl	-284(%rbp), %r15d
	pxor	%xmm0, %xmm0
	leal	(%r15,%r15,2), %r12d
	leal	0(,%r15,8), %ebx
	cvtsi2sd	%r12d, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -208(%rbp)
	pxor	%xmm0, %xmm0
	leal	(%r15,%r15,4), %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -224(%rbp)
	pxor	%xmm0, %xmm0
	movl	%ebx, %edi
	addl	%r15d, %ebx
	subl	%r15d, %edi
	cvtsi2sd	%edi, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -216(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -232(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	-288(%rbp), %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -240(%rbp)
	pxor	%xmm0, %xmm0
	leal	(%r15,%r12,4), %eax
	xorl	%r12d, %r12d
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movl	%r15d, %eax
	movsd	%xmm0, -248(%rbp)
	pxor	%xmm0, %xmm0
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
.L9:
	pxor	%xmm5, %xmm5
	leal	(%r12,%r12), %ebx
	movq	-280(%rbp), %r14
	pxor	%xmm1, %xmm1
	xorl	%r15d, %r15d
	leal	(%rbx,%r12), %r13d
	cvtss2sd	(%rax), %xmm5
	movsd	%xmm5, -192(%rbp)
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L5:
	pxor	%xmm0, %xmm0
	movsd	%xmm1, -184(%rbp)
	cvtsi2sd	%r13d, %xmm0
	addl	%ebx, %r13d
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	-184(%rbp), %xmm1
.L7:
	movswl	(%r14), %eax
	pxor	%xmm2, %xmm2
	mulsd	-192(%rbp), %xmm0
	addl	$1, %r15d
	addq	$16, %r14
	movsd	-200(%rbp), %xmm3
	pxor	%xmm4, %xmm4
	cvtsi2sd	%eax, %xmm2
	movswl	-14(%r14), %eax
	pxor	%xmm5, %xmm5
	mulsd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	movapd	%xmm1, %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	addsd	%xmm3, %xmm2
	movsd	-208(%rbp), %xmm3
	movswl	-12(%r14), %eax
	mulsd	%xmm0, %xmm3
	cvtsi2sd	%eax, %xmm4
	movswl	-10(%r14), %eax
	mulsd	%xmm3, %xmm1
	addsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm3
	movsd	-224(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm2
	mulsd	%xmm4, %xmm2
	movsd	-232(%rbp), %xmm4
	mulsd	%xmm0, %xmm4
	addsd	%xmm2, %xmm3
	pxor	%xmm2, %xmm2
	cvtsi2sd	%eax, %xmm2
	movswl	-8(%r14), %eax
	movapd	%xmm3, %xmm1
	movsd	-216(%rbp), %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	pxor	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	movswl	-6(%r14), %eax
	cvtsi2sd	%eax, %xmm5
	movswl	-4(%r14), %eax
	mulsd	%xmm1, %xmm4
	movsd	-248(%rbp), %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm4, %xmm3
	movsd	-240(%rbp), %xmm4
	mulsd	%xmm0, %xmm4
	mulsd	-256(%rbp), %xmm0
	mulsd	%xmm5, %xmm4
	addsd	%xmm3, %xmm4
	pxor	%xmm3, %xmm3
	cvtsi2sd	%eax, %xmm3
	movswl	-2(%r14), %eax
	movapd	%xmm4, %xmm2
	cmpl	$8, %r15d
	mulsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm1
	jne	.L5
	cvttsd2si	%xmm0, %eax
	movq	-264(%rbp), %rdx
	addl	$1, %r12d
	addq	$32, -272(%rbp)
	addq	$16, %rdx
	movw	%ax, -16(%rdx)
	cmpl	$8, %r12d
	movq	%rdx, -264(%rbp)
	je	.L6
	pxor	%xmm0, %xmm0
	cvtsi2sd	%r12d, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movq	-272(%rbp), %rax
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L6:
	addl	$1, -284(%rbp)
	addl	$11, -288(%rbp)
	movl	-284(%rbp), %eax
	addq	$4, -296(%rbp)
	addq	$2, -304(%rbp)
	cmpl	$8, %eax
	je	.L8
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -200(%rbp)
	jmp	.L4
.L8:
	movq	-312(%rbp), %rax
	movdqa	-176(%rbp), %xmm0
	movups	%xmm0, (%rax)
	movdqa	-160(%rbp), %xmm0
	movups	%xmm0, 16(%rax)
	movdqa	-144(%rbp), %xmm0
	movups	%xmm0, 32(%rax)
	movdqa	-128(%rbp), %xmm0
	movups	%xmm0, 48(%rax)
	movdqa	-112(%rbp), %xmm0
	movups	%xmm0, 64(%rax)
	movdqa	-96(%rbp), %xmm0
	movups	%xmm0, 80(%rax)
	movdqa	-80(%rbp), %xmm0
	movups	%xmm0, 96(%rax)
	movdqa	-64(%rbp), %xmm0
	movups	%xmm0, 112(%rax)
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
.LFE28:
	.size	_Z17slow_float_dct8x8PA8_sS0_, .-_Z17slow_float_dct8x8PA8_sS0_
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	_Z15fast_float_dct8PfS_
	.type	_Z15fast_float_dct8PfS_, @function
_Z15fast_float_dct8PfS_:
.LFB30:
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
	movsd	.LC5(%rip), %xmm6
	xorl	%r14d, %r14d
	movq	%rdi, %r12
	movq	%rsi, %r15
	xorl	%r13d, %r13d
	movsd	%xmm6, -72(%rbp)
	xorl	%ebx, %ebx
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L20:
	movl	%ebx, %eax
	pxor	%xmm0, %xmm0
	sall	$4, %eax
	subl	%ebx, %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -72(%rbp)
.L15:
	testl	%ebx, %ebx
	je	.L19
	pxor	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	movsd	%xmm0, -56(%rbp)
	pxor	%xmm0, %xmm0
	leal	(%rbx,%rbx,2), %eax
	cvtsi2sd	%eax, %xmm0
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	pxor	%xmm1, %xmm1
	leal	(%rbx,%rbx,4), %eax
	pxor	%xmm5, %xmm5
	pxor	%xmm2, %xmm2
	cvtss2sd	(%r12), %xmm1
	mulsd	-56(%rbp), %xmm1
	cvtss2sd	4(%r12), %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm5, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm1, -56(%rbp)
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	pxor	%xmm2, %xmm2
	leal	0(,%rbx,8), %eax
	pxor	%xmm1, %xmm1
	movl	%eax, %edx
	movl	%eax, -60(%rbp)
	cvtss2sd	8(%r12), %xmm2
	subl	%ebx, %edx
	cvtsd2ss	-56(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	movsd	%xmm1, -56(%rbp)
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	pxor	%xmm2, %xmm2
	movl	-60(%rbp), %eax
	pxor	%xmm1, %xmm1
	cvtss2sd	12(%r12), %xmm2
	addl	%ebx, %eax
	cvtsd2ss	-56(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	%xmm1, -56(%rbp)
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	cvtss2sd	16(%r12), %xmm2
	cvtsd2ss	-56(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sd	%r13d, %xmm0
	movsd	%xmm1, -56(%rbp)
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	cvtss2sd	20(%r12), %xmm2
	cvtsd2ss	-56(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	movsd	%xmm1, -56(%rbp)
	mulsd	.LC0(%rip), %xmm0
	mulsd	.LC1(%rip), %xmm0
	call	cos
	pxor	%xmm2, %xmm2
	pxor	%xmm1, %xmm1
	cvtss2sd	24(%r12), %xmm2
	cvtsd2ss	-56(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm1
	movss	.LC8(%rip), %xmm0
.L16:
	pxor	%xmm2, %xmm2
	addl	$1, %ebx
	addq	$4, %r15
	addl	$11, %r13d
	addl	$13, %r14d
	cvtss2sd	%xmm1, %xmm2
	movss	28(%r12), %xmm1
	mulss	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	-72(%rbp), %xmm0
	addsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	mulss	.LC9(%rip), %xmm0
	movss	%xmm0, -4(%r15)
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
	movss	.LC7(%rip), %xmm0
	mulss	4(%r12), %xmm0
	pxor	%xmm1, %xmm1
	pxor	%xmm7, %xmm7
	cvtss2sd	%xmm0, %xmm1
	movss	.LC7(%rip), %xmm0
	mulss	(%r12), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm7, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movss	.LC7(%rip), %xmm1
	mulss	8(%r12), %xmm1
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	movss	.LC7(%rip), %xmm1
	mulss	12(%r12), %xmm1
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	movss	.LC7(%rip), %xmm0
	mulss	16(%r12), %xmm0
	cvtsd2ss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movss	.LC7(%rip), %xmm0
	mulss	20(%r12), %xmm0
	cvtsd2ss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movss	.LC7(%rip), %xmm0
	mulss	24(%r12), %xmm0
	cvtsd2ss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movss	.LC7(%rip), %xmm0
	cvtsd2ss	%xmm1, %xmm1
	jmp	.L16
	.cfi_endproc
.LFE30:
	.size	_Z15fast_float_dct8PfS_, .-_Z15fast_float_dct8PfS_
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely
.LCOLDB19:
	.text
.LHOTB19:
	.p2align 4,,15
	.globl	_Z15slow_float_dct8PfS_
	.type	_Z15slow_float_dct8PfS_, @function
_Z15slow_float_dct8PfS_:
.LFB31:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	call	mcount
	movss	.LC18(%rip), %xmm12
	movss	.LC14(%rip), %xmm1
	movups	16(%rdi), %xmm4
	xorps	%xmm1, %xmm12
	movaps	%xmm4, %xmm5
	movups	(%rdi), %xmm0
	shufps	$27, %xmm4, %xmm5
	movss	.LC12(%rip), %xmm13
	movss	.LC16(%rip), %xmm14
	addps	%xmm0, %xmm5
	shufps	$27, %xmm0, %xmm0
	movss	.LC13(%rip), %xmm2
	movss	.LC11(%rip), %xmm3
	subps	%xmm4, %xmm0
	movss	.LC17(%rip), %xmm9
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movss	-92(%rbp), %xmm0
	movaps	%xmm0, %xmm8
	movss	-88(%rbp), %xmm4
	movss	-96(%rbp), %xmm15
	movss	-84(%rbp), %xmm7
	addss	%xmm4, %xmm8
	subss	%xmm7, %xmm0
	movss	-76(%rbp), %xmm6
	addss	%xmm15, %xmm7
	movss	-72(%rbp), %xmm5
	mulss	%xmm1, %xmm5
	movaps	%xmm6, %xmm10
	mulss	%xmm1, %xmm6
	movaps	%xmm15, %xmm11
	mulss	%xmm12, %xmm10
	mulss	%xmm1, %xmm7
	subss	%xmm4, %xmm11
	mulss	%xmm8, %xmm1
	movss	-80(%rbp), %xmm4
	mulss	%xmm12, %xmm8
	addss	%xmm5, %xmm10
	addss	%xmm6, %xmm5
	movss	-68(%rbp), %xmm6
	addss	%xmm7, %xmm1
	addss	%xmm8, %xmm7
	movss	%xmm1, -64(%rbp)
	movaps	%xmm13, %xmm1
	movss	%xmm7, -60(%rbp)
	movaps	%xmm14, %xmm7
	mulss	%xmm0, %xmm1
	movq	-64(%rbp), %rax
	mulss	%xmm11, %xmm7
	mulss	%xmm14, %xmm0
	mulss	%xmm13, %xmm11
	movq	%rax, (%rsi)
	movss	4(%rsi), %xmm8
	addss	%xmm7, %xmm1
	subss	%xmm11, %xmm0
	movaps	%xmm4, %xmm11
	subss	%xmm10, %xmm4
	addss	%xmm10, %xmm11
	movaps	%xmm6, %xmm10
	movss	%xmm1, -56(%rbp)
	subss	%xmm5, %xmm10
	movss	%xmm0, -52(%rbp)
	movq	-56(%rbp), %rax
	movaps	%xmm4, %xmm1
	mulss	.LC15(%rip), %xmm4
	movss	.LC15(%rip), %xmm0
	addss	%xmm6, %xmm5
	mulss	%xmm2, %xmm1
	movaps	%xmm3, %xmm6
	mulss	%xmm10, %xmm0
	movq	%rax, 8(%rsi)
	mulss	%xmm10, %xmm2
	mulss	%xmm5, %xmm3
	mulss	%xmm11, %xmm6
	addss	%xmm0, %xmm1
	movaps	%xmm5, %xmm0
	subss	%xmm4, %xmm2
	movss	(%rsi), %xmm4
	mulss	%xmm9, %xmm0
	movss	12(%rsi), %xmm5
	mulss	%xmm11, %xmm9
	movaps	%xmm0, %xmm7
	addss	%xmm9, %xmm3
	movss	.LC9(%rip), %xmm0
	mulss	%xmm0, %xmm4
	subss	%xmm6, %xmm7
	mulss	%xmm0, %xmm2
	mulss	%xmm0, %xmm8
	mulss	%xmm0, %xmm3
	movss	%xmm4, (%rsi)
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm5
	movss	%xmm2, 12(%rsi)
	movss	%xmm8, 16(%rsi)
	movss	%xmm3, 4(%rsi)
	movss	8(%rsi), %xmm3
	mulss	%xmm0, %xmm3
	movss	%xmm1, 20(%rsi)
	mulss	%xmm7, %xmm0
	movss	%xmm5, 24(%rsi)
	movss	%xmm3, 8(%rsi)
	movss	%xmm0, 28(%rsi)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE31:
	.size	_Z15slow_float_dct8PfS_, .-_Z15slow_float_dct8PfS_
	.section	.text.unlikely
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.globl	_Z17fast_float_dct8x8PA8_sS0_
	.type	_Z17fast_float_dct8x8PA8_sS0_, @function
_Z17fast_float_dct8x8PA8_sS0_:
.LFB29:
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
	movdqa	%xmm0, %xmm3
	movdqa	%xmm1, %xmm2
	pcmpgtw	%xmm1, %xmm3
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm2
	movdqa	%xmm0, %xmm3
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -512(%rbp)
	cvtdq2ps	%xmm2, %xmm2
	movaps	%xmm2, -528(%rbp)
	movdqu	16(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm3
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm2
	movdqa	%xmm0, %xmm3
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -480(%rbp)
	cvtdq2ps	%xmm2, %xmm2
	movaps	%xmm2, -496(%rbp)
	movdqu	32(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm3
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm2
	movdqa	%xmm0, %xmm3
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -448(%rbp)
	cvtdq2ps	%xmm2, %xmm2
	movaps	%xmm2, -464(%rbp)
	movdqu	48(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm3
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm2
	movdqa	%xmm0, %xmm3
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -416(%rbp)
	cvtdq2ps	%xmm2, %xmm2
	movaps	%xmm2, -432(%rbp)
	movdqu	64(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm3
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm2
	movdqa	%xmm0, %xmm3
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -384(%rbp)
	cvtdq2ps	%xmm2, %xmm2
	movaps	%xmm2, -400(%rbp)
	movdqu	80(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm3
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm2
	movdqa	%xmm0, %xmm3
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -352(%rbp)
	cvtdq2ps	%xmm2, %xmm2
	movaps	%xmm2, -368(%rbp)
	movdqu	96(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm3
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm2
	cvtdq2ps	%xmm1, %xmm1
	movaps	%xmm1, -320(%rbp)
	cvtdq2ps	%xmm2, %xmm2
	movaps	%xmm2, -336(%rbp)
	movdqu	112(%rdi), %xmm1
	pcmpgtw	%xmm1, %xmm0
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm0, %xmm1
	punpcklwd	%xmm0, %xmm2
	cvtdq2ps	%xmm1, %xmm0
	movaps	%xmm0, -288(%rbp)
	cvtdq2ps	%xmm2, %xmm2
	movaps	%xmm2, -304(%rbp)
	.p2align 4,,10
	.p2align 3
.L23:
	leaq	-272(%rbp), %rax
	leaq	(%rax,%rbx), %rsi
	leaq	-528(%rbp), %rax
	leaq	(%rax,%rbx), %rdi
	addq	$32, %rbx
	call	_Z15slow_float_dct8PfS_
	cmpq	$256, %rbx
	jne	.L23
	movaps	-272(%rbp), %xmm4
	xorw	%bx, %bx
	movaps	-144(%rbp), %xmm1
	movaps	%xmm4, %xmm6
	movaps	-240(%rbp), %xmm0
	unpckhps	%xmm1, %xmm4
	unpcklps	%xmm1, %xmm6
	movaps	-112(%rbp), %xmm5
	movaps	%xmm0, %xmm1
	movaps	-208(%rbp), %xmm3
	unpcklps	%xmm5, %xmm1
	movaps	-176(%rbp), %xmm2
	unpckhps	%xmm5, %xmm0
	movaps	%xmm3, %xmm5
	movaps	-80(%rbp), %xmm8
	movaps	%xmm2, %xmm9
	movaps	-48(%rbp), %xmm7
	unpcklps	%xmm8, %xmm5
	unpckhps	%xmm8, %xmm3
	movaps	%xmm1, %xmm8
	unpcklps	%xmm7, %xmm9
	unpckhps	%xmm7, %xmm2
	movaps	%xmm6, %xmm7
	unpckhps	%xmm5, %xmm6
	unpcklps	%xmm5, %xmm7
	movaps	%xmm4, %xmm5
	unpckhps	%xmm3, %xmm4
	unpcklps	%xmm3, %xmm5
	unpcklps	%xmm9, %xmm8
	movaps	%xmm4, %xmm3
	movaps	%xmm0, %xmm4
	unpckhps	%xmm2, %xmm0
	unpcklps	%xmm2, %xmm4
	movaps	%xmm7, %xmm2
	unpckhps	%xmm9, %xmm1
	unpcklps	%xmm8, %xmm2
	unpckhps	%xmm8, %xmm7
	movaps	-64(%rbp), %xmm8
	movaps	%xmm2, -528(%rbp)
	movaps	%xmm6, %xmm2
	unpckhps	%xmm1, %xmm6
	unpcklps	%xmm1, %xmm2
	movaps	%xmm5, %xmm1
	unpckhps	%xmm4, %xmm5
	unpcklps	%xmm4, %xmm1
	movaps	-256(%rbp), %xmm4
	movaps	%xmm6, -480(%rbp)
	movaps	%xmm4, %xmm6
	movaps	%xmm1, -464(%rbp)
	movaps	%xmm3, %xmm1
	unpckhps	%xmm0, %xmm3
	unpcklps	%xmm0, %xmm1
	movaps	-224(%rbp), %xmm0
	movaps	%xmm1, -432(%rbp)
	movaps	%xmm5, -448(%rbp)
	movaps	%xmm3, -416(%rbp)
	movaps	%xmm2, -496(%rbp)
	movaps	%xmm7, -512(%rbp)
	movaps	-128(%rbp), %xmm1
	movaps	-96(%rbp), %xmm5
	unpcklps	%xmm1, %xmm6
	unpckhps	%xmm1, %xmm4
	movaps	-192(%rbp), %xmm3
	movaps	%xmm0, %xmm1
	movaps	-160(%rbp), %xmm2
	unpckhps	%xmm5, %xmm0
	unpcklps	%xmm5, %xmm1
	movaps	%xmm3, %xmm5
	movaps	-32(%rbp), %xmm7
	movaps	%xmm2, %xmm9
	unpcklps	%xmm8, %xmm5
	unpckhps	%xmm8, %xmm3
	movaps	%xmm1, %xmm8
	unpckhps	%xmm7, %xmm2
	unpcklps	%xmm7, %xmm9
	movaps	%xmm6, %xmm7
	unpckhps	%xmm5, %xmm6
	unpcklps	%xmm5, %xmm7
	movaps	%xmm4, %xmm5
	unpckhps	%xmm3, %xmm4
	unpcklps	%xmm3, %xmm5
	unpcklps	%xmm9, %xmm8
	movaps	%xmm4, %xmm3
	movaps	%xmm0, %xmm4
	unpckhps	%xmm2, %xmm0
	unpcklps	%xmm2, %xmm4
	movaps	%xmm7, %xmm2
	unpckhps	%xmm9, %xmm1
	unpcklps	%xmm8, %xmm2
	unpckhps	%xmm8, %xmm7
	movaps	%xmm2, -400(%rbp)
	movaps	%xmm6, %xmm2
	unpckhps	%xmm1, %xmm6
	unpcklps	%xmm1, %xmm2
	movaps	%xmm5, %xmm1
	unpckhps	%xmm4, %xmm5
	unpcklps	%xmm4, %xmm1
	movaps	%xmm7, -384(%rbp)
	movaps	%xmm1, -336(%rbp)
	movaps	%xmm3, %xmm1
	unpckhps	%xmm0, %xmm3
	unpcklps	%xmm0, %xmm1
	movaps	%xmm2, -368(%rbp)
	movaps	%xmm6, -352(%rbp)
	movaps	%xmm5, -320(%rbp)
	movaps	%xmm1, -304(%rbp)
	movaps	%xmm3, -288(%rbp)
	.p2align 4,,10
	.p2align 3
.L24:
	leaq	-272(%rbp), %rax
	leaq	(%rax,%rbx), %rsi
	leaq	-528(%rbp), %rax
	leaq	(%rax,%rbx), %rdi
	addq	$32, %rbx
	call	_Z15slow_float_dct8PfS_
	cmpq	$256, %rbx
	jne	.L24
	movaps	-272(%rbp), %xmm4
	movaps	-144(%rbp), %xmm1
	movaps	%xmm4, %xmm10
	movaps	-240(%rbp), %xmm0
	unpckhps	%xmm1, %xmm4
	unpcklps	%xmm1, %xmm10
	movaps	-112(%rbp), %xmm5
	movaps	%xmm0, %xmm1
	movaps	%xmm4, %xmm13
	movaps	-208(%rbp), %xmm3
	unpcklps	%xmm5, %xmm1
	unpckhps	%xmm5, %xmm0
	movaps	-80(%rbp), %xmm6
	movaps	%xmm3, %xmm5
	movaps	%xmm10, %xmm14
	movaps	-176(%rbp), %xmm2
	unpcklps	%xmm6, %xmm5
	unpckhps	%xmm6, %xmm3
	movaps	-48(%rbp), %xmm7
	movaps	%xmm2, %xmm6
	unpcklps	%xmm5, %xmm14
	unpcklps	%xmm7, %xmm6
	movaps	-224(%rbp), %xmm15
	unpckhps	%xmm5, %xmm10
	unpckhps	%xmm3, %xmm4
	movaps	%xmm1, %xmm5
	unpckhps	%xmm7, %xmm2
	unpcklps	%xmm6, %xmm5
	movaps	%xmm14, %xmm8
	unpcklps	%xmm3, %xmm13
	movaps	%xmm4, %xmm3
	movaps	%xmm0, %xmm4
	unpckhps	%xmm2, %xmm0
	unpcklps	%xmm5, %xmm8
	movaps	-96(%rbp), %xmm11
	unpckhps	%xmm5, %xmm14
	movaps	%xmm3, %xmm5
	unpckhps	%xmm0, %xmm3
	unpcklps	%xmm2, %xmm4
	cvttps2dq	%xmm8, %xmm8
	unpcklps	%xmm0, %xmm5
	movaps	-256(%rbp), %xmm0
	cvttps2dq	%xmm14, %xmm14
	unpckhps	%xmm6, %xmm1
	movaps	-128(%rbp), %xmm2
	movaps	%xmm0, %xmm9
	movaps	%xmm10, %xmm7
	cvttps2dq	%xmm5, %xmm5
	movaps	%xmm3, -544(%rbp)
	unpcklps	%xmm2, %xmm9
	unpckhps	%xmm2, %xmm0
	movaps	%xmm13, %xmm6
	movaps	%xmm15, %xmm2
	movaps	-192(%rbp), %xmm3
	unpckhps	%xmm11, %xmm15
	unpcklps	%xmm11, %xmm2
	unpcklps	%xmm1, %xmm7
	movaps	%xmm3, %xmm11
	unpckhps	%xmm1, %xmm10
	unpcklps	%xmm4, %xmm6
	movaps	-64(%rbp), %xmm1
	unpckhps	%xmm4, %xmm13
	cvttps2dq	%xmm7, %xmm7
	movaps	-160(%rbp), %xmm4
	unpcklps	%xmm1, %xmm11
	cvttps2dq	%xmm10, %xmm10
	unpckhps	%xmm1, %xmm3
	cvttps2dq	%xmm6, %xmm6
	movaps	-32(%rbp), %xmm12
	movaps	%xmm4, %xmm1
	cvttps2dq	%xmm13, %xmm13
	unpcklps	%xmm12, %xmm1
	unpckhps	%xmm12, %xmm4
	movaps	%xmm9, %xmm12
	unpckhps	%xmm11, %xmm9
	unpcklps	%xmm11, %xmm12
	movaps	%xmm0, %xmm11
	unpckhps	%xmm3, %xmm0
	unpcklps	%xmm3, %xmm11
	movaps	%xmm2, %xmm3
	unpckhps	%xmm1, %xmm2
	unpcklps	%xmm1, %xmm3
	movaps	%xmm15, %xmm1
	unpckhps	%xmm4, %xmm15
	unpcklps	%xmm4, %xmm1
	movaps	%xmm12, %xmm4
	unpckhps	%xmm3, %xmm12
	unpcklps	%xmm3, %xmm4
	movaps	%xmm9, %xmm3
	unpckhps	%xmm2, %xmm9
	unpcklps	%xmm2, %xmm3
	movaps	%xmm11, %xmm2
	cvttps2dq	%xmm12, %xmm12
	unpckhps	%xmm1, %xmm11
	cvttps2dq	%xmm4, %xmm4
	unpcklps	%xmm1, %xmm2
	movaps	%xmm0, %xmm1
	cvttps2dq	%xmm9, %xmm9
	unpckhps	%xmm15, %xmm0
	cvttps2dq	%xmm3, %xmm3
	unpcklps	%xmm15, %xmm1
	movdqa	%xmm8, %xmm15
	cvttps2dq	%xmm11, %xmm11
	punpcklwd	%xmm14, %xmm8
	cvttps2dq	%xmm2, %xmm2
	punpckhwd	%xmm14, %xmm15
	cvttps2dq	%xmm0, %xmm0
	cvttps2dq	%xmm1, %xmm1
	movdqa	%xmm8, %xmm14
	punpcklwd	%xmm15, %xmm8
	punpckhwd	%xmm15, %xmm14
	punpcklwd	%xmm14, %xmm8
	movups	%xmm8, (%r12)
	movdqa	%xmm7, %xmm8
	punpcklwd	%xmm10, %xmm7
	punpckhwd	%xmm10, %xmm8
	movdqa	%xmm7, %xmm10
	punpcklwd	%xmm8, %xmm7
	punpckhwd	%xmm8, %xmm10
	punpcklwd	%xmm10, %xmm7
	movups	%xmm7, 16(%r12)
	movdqa	%xmm6, %xmm7
	punpcklwd	%xmm13, %xmm6
	punpckhwd	%xmm13, %xmm7
	movdqa	%xmm6, %xmm8
	punpcklwd	%xmm7, %xmm6
	punpckhwd	%xmm7, %xmm8
	movdqa	%xmm5, %xmm7
	punpcklwd	%xmm8, %xmm6
	movups	%xmm6, 32(%r12)
	cvttps2dq	-544(%rbp), %xmm6
	punpcklwd	%xmm6, %xmm5
	punpckhwd	%xmm6, %xmm7
	movdqa	%xmm5, %xmm6
	punpcklwd	%xmm7, %xmm5
	punpckhwd	%xmm7, %xmm6
	punpcklwd	%xmm6, %xmm5
	movups	%xmm5, 48(%r12)
	movdqa	%xmm4, %xmm5
	punpcklwd	%xmm12, %xmm4
	punpckhwd	%xmm12, %xmm5
	movdqa	%xmm4, %xmm6
	punpcklwd	%xmm5, %xmm4
	punpckhwd	%xmm5, %xmm6
	punpcklwd	%xmm6, %xmm4
	movups	%xmm4, 64(%r12)
	movdqa	%xmm3, %xmm4
	punpcklwd	%xmm9, %xmm3
	punpckhwd	%xmm9, %xmm4
	movdqa	%xmm3, %xmm5
	punpcklwd	%xmm4, %xmm3
	punpckhwd	%xmm4, %xmm5
	punpcklwd	%xmm5, %xmm3
	movups	%xmm3, 80(%r12)
	movdqa	%xmm2, %xmm3
	punpcklwd	%xmm11, %xmm2
	punpckhwd	%xmm11, %xmm3
	movdqa	%xmm2, %xmm4
	punpcklwd	%xmm3, %xmm2
	punpckhwd	%xmm3, %xmm4
	punpcklwd	%xmm4, %xmm2
	movups	%xmm2, 96(%r12)
	movdqa	%xmm1, %xmm2
	punpcklwd	%xmm0, %xmm1
	punpckhwd	%xmm0, %xmm2
	movdqa	%xmm1, %xmm0
	punpcklwd	%xmm2, %xmm1
	punpckhwd	%xmm2, %xmm0
	punpcklwd	%xmm0, %xmm1
	movups	%xmm1, 112(%r12)
	addq	$528, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE29:
	.size	_Z17fast_float_dct8x8PA8_sS0_, .-_Z17fast_float_dct8x8PA8_sS0_
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
	.section	.text.unlikely
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4,,15
	.globl	dct8x8
	.type	dct8x8, @function
dct8x8:
.LFB27:
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
.LFE27:
	.size	dct8x8, .-dct8x8
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
	.globl	Av
	.data
	.align 64
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
.LC5:
	.long	0
	.long	1072693248
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC7:
	.long	1060439283
	.align 4
.LC8:
	.long	1065353216
	.align 4
.LC9:
	.long	1056964608
	.align 4
.LC11:
	.long	1065030845
	.align 4
.LC12:
	.long	1064076121
	.align 4
.LC13:
	.long	1062525732
	.align 4
.LC14:
	.long	1060439261
	.align 4
.LC15:
	.long	1057896890
	.align 4
.LC16:
	.long	1053028032
	.align 4
.LC17:
	.long	1044890862
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC18:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (GNU) 4.9.2 20141101 (Red Hat 4.9.2-1)"
	.section	.note.GNU-stack,"",@progbits
