# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_putstr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:06:04 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:06:06 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	extern	_ft_strlen

	global	_ft_putstr

	section	.text
_ft_putstr:
		call _ft_strlen
		mov rdx, rax
		mov rsi, rdi
		mov rdi, 1
		mov rax, 0x2000004
		syscall
		jc _error
		ret
_error:
		mov rax, -1
		ret
