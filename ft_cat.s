# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:03:05 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:03:10 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_cat

	section .data
buffer: times 255 db 0
bufsize: equ $ - buffer

	section	.text
_ft_cat:
	; put rax to 'read' syscall
	mov rax, 0x2000003

	; stack rdi (initial fd)
	push rdi

	; buffer argument of 'read'
	lea rsi, [rel buffer]

	; size argument of 'read'
	mov rdx, bufsize

	; READ
	syscall

	; if error then quit
	jc _err

	; if eof then quit
	cmp rax, 0
	je _exit

	; fd argument for 'write' syscall
	mov rdi, 1

	; size argument for 'write' syscall
	mov rdx, rax

	; put rax to `write` sys call
	mov rax, 0x2000004

	; WRITE
	syscall

	; if error then quit
	jc _err

	; pop rdi (initial fd)
	pop rdi

	; back to the start
	jmp _ft_cat

_err:
	mov rax, 1
_exit:
	pop rdi
	ret
