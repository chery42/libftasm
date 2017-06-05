# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:03:21 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:03:24 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_isdigit
	global	_ft_isnumber

	section	.text
_ft_isdigit:
_ft_isnumber:
		cmp	rdi, '0'
		jl _false
		cmp rdi, '9'
		jg _false
		mov rax, 1
		ret
_false:
		xor rax, rax
		ret