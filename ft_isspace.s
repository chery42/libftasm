# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isspace.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:05:12 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:05:15 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global _ft_isspace

	section .text

_ft_isspace:
	cmp		rdi, 32
	je		_success
	cmp		rdi, 9
	je		_success
	cmp		rdi, 10
	je		_success
	cmp		rdi, 11
	je		_success
	cmp		rdi, 12
	je		_success
	cmp		rdi, 13
	je		_success

_nope:
	mov		rax, 0
	ret

_success:
	mov		rax, 1
	ret

