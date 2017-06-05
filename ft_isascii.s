# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:03:21 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:03:24 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_isascii

	section	.text
_ft_isascii:
		cmp rdi, 128
		jge _false
		mov rax, 1
		ret
_false:
		xor rax, rax
		ret