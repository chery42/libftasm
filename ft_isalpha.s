# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:03:21 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:03:24 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_isalpha

	section	.text
_ft_isalpha:

		cmp rdi, 'A'
		jl _false
		cmp rdi, 'Z'
		jle _true

		cmp rdi, 'a'
		jl _false
		cmp rdi, 'z'
		jle _true

_false:
		xor rax, rax
		ret

_true:
		mov rax, 1
		ret