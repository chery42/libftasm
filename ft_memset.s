# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:05:33 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:05:35 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_memset

	section .text
_ft_memset:
		push rdi
		mov rcx, rdx
		mov rax, rsi

		cld
		rep stosb

		pop rax
		ret
