# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putchar.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:05:43 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:05:45 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_putchar

	section	.data
char: db 0

	section .text
_ft_putchar:
		mov [rel char], rdi
		lea rsi, [rel char]
		mov rdi, 1
		mov rdx, 1
		mov rax, 0x2000004
		syscall
		jc _error
		ret
_error:
		mov rax, -1
		ret
