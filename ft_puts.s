# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:05:55 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:05:56 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	extern _ft_strlen

	%define MACH_SYSCALL(nb)	0x2000000 | nb
	%define STDOUT				1
	%define WRITE				4

	section .data
nulltxt: db "(null)", 10
.len: equ $ - nulltxt

	section .text
	global _ft_puts

_ft_puts:
	cmp	rdi, 0
	jz	_null

	call _ft_strlen

	mov rdx, rax
	mov	rax, MACH_SYSCALL(WRITE)
	mov rsi, rdi
	mov rdi, STDOUT
	syscall

	mov	rax, MACH_SYSCALL(WRITE)
	lea rsi, [rel nulltxt + 6]
	mov rdi, STDOUT
	mov rdx, 1
	syscall
	jc	_error
	ret

_null:
	mov	rax, MACH_SYSCALL(WRITE)
	lea rsi, [rel nulltxt]
	mov rdi, STDOUT
	mov rdx, nulltxt.len
	syscall
	jc	_error
	ret

_error:
	mov rax, -1
	ret
