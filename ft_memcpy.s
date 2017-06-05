# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:05:24 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:05:27 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_memcpy

	section .text
_ft_memcpy:
		push rdi
		mov rcx, rdx

		cld
		rep movsb

		pop rax
		ret
