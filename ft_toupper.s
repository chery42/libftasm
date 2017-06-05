# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:07:05 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:07:07 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_toupper

	section	.text
_ft_toupper:
		mov rax, rdi
		cmp rax, 97
		jl _exit
		cmp rax, 122
		jg _exit
		add rax, 'A'
		sub rax, 'a'
		ret
_exit:
		ret
