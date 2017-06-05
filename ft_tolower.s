# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:06:58 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:06:59 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_tolower
	
	section	.text
_ft_tolower:
		mov rax, rdi
		cmp rax, 65
		jl _exit
		cmp rax, 90
		jg _exit
		add rax, 'a'
		sub rax, 'A'
		ret
_exit:
		ret
