# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:06:26 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:06:29 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	global	_ft_strcmp

	section	.text

_ft_strcmp:

	cmp rdi, 0
	je _out
	cmp rsi, 0
	je _out
	push rdi
	push rsi

_loop:
	mov al, [rdi]
	mov bl, [rsi]
	cmp al, bl
	jne _diff
	cmp al, 0
	mov rax, 0
	jz _out
	inc rdi
	inc rsi
	jmp _loop

_diff:
	jg _pos
	mov rax, -1
	jmp _out

_pos:
	mov rax, 1

_out:
	pop rsi
	pop rdi
	ret
