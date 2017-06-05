# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:06:13 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:06:16 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_strcat

	section .text
_ft_strcat:
		push rdi
		xor rcx, rcx
_first_loop:
		cmp [rdi], byte 0
		je _second_loop
		inc rdi
		jmp _first_loop
_second_loop:
		cmp [rsi], byte 0
		je _exit
		mov cl, [rsi]
		mov [rdi], cl
		inc rdi
		inc rsi
		jmp _second_loop
_exit:
		mov [rdi], byte 0
		pop rax
		ret
