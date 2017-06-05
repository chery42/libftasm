/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: chery <chery@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/05/12 22:07:12 by chery             #+#    #+#             */
/*   Updated: 2017/05/12 22:07:17 by chery            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef		LIBFTS_H
#define		LIBFTS_H

int			ft_isdigit(int c);
int			ft_isalpha(int c);
int			ft_isalnum(int c);
int			ft_isascii(int c);
int			ft_isprint(int c);
int 		ft_toupper(int c);
int 		ft_tolower(int c);
int 		ft_isspace(int c);
void		*ft_memcpy(void *dest, const void *src, size_t n);
void		*ft_memset(void *dest, int b, size_t n);
char		*ft_strdup(const char *str);
int 		ft_strcmp(const char *s1, const char *s2);
void		ft_bzero(void *str, size_t n);
int			ft_strlen(const char* str);
char		*ft_strcat(char* dest, const char* src);
int			ft_puts(const char* src);
int			ft_fputs(const char* src, int fd);
void		ft_cat(int fd);
int 		ft_putchar(int c);
void		ft_putstr(char *str);



#endif
