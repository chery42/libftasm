# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:03:21 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:03:24 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	extern	_ft_isdigit
	extern	_ft_isalpha

	global	_ft_isalnum

	section	.text
_ft_isalnum:
		call _ft_isdigit
		cmp rax, 1
		je _exit
		call _ft_isalpha
_exit:
		ret
