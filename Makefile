# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chery <chery@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/12 22:02:47 by chery             #+#    #+#              #
#    Updated: 2017/05/12 22:02:56 by chery            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		:= libfts.a

NAME_COMPILE := libftasm_test

SRC			:=	ft_isdigit.s \
				ft_isalpha.s \
				ft_isalnum.s \
				ft_isascii.s \
				ft_isprint.s \
				ft_isspace.s \
				ft_memcpy.s \
				ft_memset.s \
				ft_strdup.s \
				ft_bzero.s \
				ft_strlen.s \
				ft_strcat.s \
				ft_toupper.s \
				ft_tolower.s \
				ft_puts.s \
				ft_fputs.s \
				ft_cat.s \
				ft_putchar.s \
				ft_putstr.s \
				ft_strcmp.s 

				

OBJ			:= $(SRC:%.s=%.o)

# Colors
NO_COLOR	:= \x1b[0m
GREEN		:= \x1b[32;01m
RED			:= \x1b[31;01m
YELLOW		:= \x1b[33;01m
GRAY		:= \x1b[30;01m


.PHONY: all re clean fclean

all: $(NAME)

$(NAME): $(OBJ)
	@printf "$(GRAY)Creating $(RED)$(NAME) $(NO_COLOR)"
	@ar rcs $(NAME) $(OBJ)
	@if [ -a $(NAME) ] ; \
	then \
		printf "\e[31G$(GREEN)✓$(NO_COLOR)\n" ; \
	fi;

%.o: %.s
	@printf "$(GRAY)Compiling $(GREEN)$(<:src/%.s=%) $(NO_COLOR)"
	@nasm -f macho64 $< -o $@
	@if [ -a $(<) ] ; \
	then \
		printf "\e[31G$(GREEN)✓$(NO_COLOR)\n" ; \
	fi;

clean:
	@printf "$(GRAY)Removing objects$(NO_COLOR)"
	@rm -f $(OBJ)
	@rm -f main.o
	@printf "\e[31G$(GREEN)✓$(NO_COLOR)\n"

fclean: clean
	@printf "$(GRAY)Removing library/executable$(NO_COLOR)"
	@rm -f $(NAME)
	@rm -f $(NAME_COMPILE)
	@printf "\e[31G$(GREEN)✓$(NO_COLOR)\n"

re: fclean all

compile: $(NAME_COMPILE)

$(NAME_COMPILE): $(NAME)
	@printf "$(GRAY)Creating $(RED)$(NAME_COMPILE) $(NO_COLOR)"
	@$(CC) -o main.o -c main.c
	@$(CC) -o $@ main.o $<
	@if [ -a $(NAME_COMPILE) ] ; \
	then \
		printf "\e[31G$(GREEN)✓$(NO_COLOR)\n" ; \
	fi;

recompile: clean fclean compile
