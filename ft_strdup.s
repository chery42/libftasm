# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:06:38 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:06:39 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	extern	_malloc
	extern	_ft_strlen
	extern	_ft_strcat

	global	_ft_strdup

	section	.text
_ft_strdup:
		push rdi
		call _ft_strlen
		mov rdi, rax
		inc rdi
		
		call _malloc
		cmp rax, 0x00
		jz _exit
		
		pop rsi
		mov rdi, rax
		call _ft_strcat
		ret
_exit:
	ret
