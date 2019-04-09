	.globl hms_to_sec
	# Omformer et klokkeslett (angitt i timer, minutter og sekunder) til
	# antall sekunder.

	hms_to_sec:

	# Legg inn kode for funksjonen her:


	movq %rdi,%rax
	imulq $3600,%rax
	movq %rax,%r8
	movq %rsi,%rax
	imulq $60,%rax
	addq %r8,%rax
	addq %rdx,%rax
	ret


	.globl	sec_to_h
	# Gitt et tidspunkt (angitt som sekunder siden midnatt), finn timen.

	sec_to_h:

	# Legg inn kode for funksjonen her:
	movq	%rdi,%rax
	movq	$3600,%r8

	cqo
	idivq	%r8

	ret


	.globl	sec_to_s
	# Gitt et tidspunkt (angitt som sekunder siden midnatt), finn sekundet.

	sec_to_s:

	# Legg inn kode for funksjonen her
		movq	%rdi,%rax
		movq  $60,%r8

		cmp		%r8,%rax
		jl		positive2
		cqo
		idivq	%r8
		movq %rdx,%rax
	positive2:
	ret


	.globl	sec_to_m
	# Gitt et tidspunkt (angitt som sekunder siden midnatt), finn minuttet.

	sec_to_m:

	# Legg incln kode for funksjonen her:
	movq	%rdi,%rax
	movq	$3600,%r8

	cqo
	idivq %r8
	movq %rdx,%rax
	movq $60,%r8
	cqo
	idivq %r8







	ret
