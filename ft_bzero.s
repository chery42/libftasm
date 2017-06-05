# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:01:46 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:01:59 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_bzero

	section .text
_ft_bzero:
		push rdi
		mov rcx, rsi
		xor rax, rax
		cld
		rep stosb
		pop rax
		ret
