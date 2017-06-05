# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:06:47 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:06:49 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_strlen

	section	.text

_ft_strlen:
	push rdi
	xor rcx, rcx
	xor rax, rax
	not rcx
	cld
	repne scasb
	not rcx
	dec rcx
	mov rax, rcx
	pop rdi
	ret
