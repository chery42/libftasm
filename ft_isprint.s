# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:04:58 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:05:01 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_isprint

	section	.text
_ft_isprint:
		cmp rdi, 126
		jg _false
		cmp rdi, 32
		jl _false
		mov rax, 1
		ret
_false:
		xor rax, rax
		ret
