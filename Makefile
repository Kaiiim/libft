# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kkhalfao <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/12/06 15:58:28 by kkhalfao          #+#    #+#              #
#    Updated: 2017/03/01 12:35:30 by kkhalfao         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRC_PATH = src
SRC_NAME = ft_atoi.c \
		   ft_bzero.c \
		   ft_isalnum.c \
		   ft_isascii.c \
		   ft_isdigit.c \
		   ft_isalpha.c \
		   ft_isprint.c \
		   ft_memccpy.c \
		   ft_memchr.c \
		   ft_memcmp.c \
		   ft_memcpy.c \
		   ft_memmove.c \
		   ft_memset.c \
		   ft_strcat.c \
		   ft_strchr.c \
		   ft_strcmp.c \
		   ft_strcpy.c \
		   ft_strdup.c \
		   ft_strlcat.c \
		   ft_strlen.c \
		   ft_strncat.c \
		   ft_strncmp.c \
		   ft_strncpy.c \
		   ft_strnstr.c \
		   ft_strrchr.c \
		   ft_strstr.c \
		   ft_tolower.c \
		   ft_toupper.c \
		   ft_memalloc.c \
		   ft_memdel.c \
		   ft_strnew.c \
		   ft_strdel.c \
		   ft_strclr.c \
		   ft_striter.c \
		   ft_striteri.c \
		   ft_strmap.c \
		   ft_strmapi.c \
		   ft_strequ.c \
		   ft_strnequ.c \
		   ft_strsub.c \
		   ft_strjoin.c \
		   ft_strtrim.c \
		   ft_strsplit.c \
		   ft_putchar.c \
		   ft_putstr.c \
		   ft_putendl.c \
		   ft_putchar_fd.c \
		   ft_putstr_fd.c \
		   ft_putendl_fd.c \
		   ft_itoa.c \
		   ft_putnbr.c \
		   ft_putnbr_fd.c \
		   ft_lstnew.c \
		   ft_lstdelone.c \
		   ft_lstadd.c \
		   ft_lstdel.c \
		   ft_lstiter.c \
		   ft_lstmap.c \
		   ft_strndup.c \
		   ft_strclen.c \
		   ft_strjoin_free.c

OBJS = $(SRC_NAME:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
		@$(AR) -rcs $(NAME) $?
		@echo "\033[32m$(NAME) created successfully\033[0m"

%.o: $(SRC_PATH)/%.c
		@$(CC) -c -o $@ $< -I includes/ $(CFLAGS)

clean:
		@rm -f $(OBJS) $(OBJS_PRINTF)

fclean: clean
		@rm -f $(NAME)

re: fclean all
