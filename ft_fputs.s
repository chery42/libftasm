# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_fputs.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:03:21 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:03:24 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	extern _ft_strlen

	%define MACH_SYSCALL(nb)	0x2000000 | nb
	%define WRITE				4

	section .data
nulltxt: db "(null)", 10
.len: equ $ - nulltxt

	section .text
	global _ft_fputs

_ft_fputs:
	cmp	rdi, 0
	jz	_null

	call _ft_strlen

	push rdi
	mov rdi, rsi
	mov rdx, rax
	mov	rax, MACH_SYSCALL(WRITE)
	pop rsi
	syscall

	mov	rax, MACH_SYSCALL(WRITE)
	lea rsi, [rel nulltxt + 6]
	mov rdx, 1
	syscall
	jc	_error
	ret

_null:
	mov rdi, rsi
	mov	rax, MACH_SYSCALL(WRITE)
	lea rsi, [rel nulltxt]
	mov rdx, nulltxt.len
	syscall
	jc	_error
	ret

_error:
	mov rax, -1
	ret
