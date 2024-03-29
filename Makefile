# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lminta <lminta@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/02 20:58:32 by lminta            #+#    #+#              #
#    Updated: 2019/08/25 19:28:17 by lminta           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Werror -Wextra -c

OBJ = ft_abs.o ft_atoi.o ft_bzero.o ft_cut.o ft_isalnum.o \
ft_isalpha.o ft_isascii.o ft_isdigit.o ft_islower.o ft_isprint.o \
ft_isspace.o ft_isupper.o ft_itoa.o ft_letter_counter.o ft_lstadd.o \
ft_lstdel.o ft_lstdelone.o ft_lstiter.o ft_lstmap.o ft_lstnew.o \
ft_memalloc.o ft_memccpy.o ft_memchr.o ft_memcmp.o ft_memcpy.o \
ft_memdel.o ft_memmove.o ft_memset.o ft_pow.o ft_putchar.o \
ft_putchar_fd.o ft_putendl.o ft_putendl_fd.o ft_putnbr.o ft_putnbr_fd.o \
ft_putstr.o ft_putstr_fd.o ft_strcat.o ft_strchr.o ft_strclr.o \
ft_strcmp.o ft_strcpy.o ft_strdel.o ft_strdup.o ft_strequ.o ft_striter.o \
ft_striteri.o ft_strjoin.o ft_strlcat.o ft_strlen.o ft_strmap.o \
ft_strmapi.o ft_strncat.o ft_strncmp.o ft_strncpy.o ft_strnequ.o \
ft_strnew.o ft_strnstr.o ft_strrchr.o ft_strsplit.o ft_strstr.o \
ft_strsub.o ft_strtrim.o ft_tolower.o ft_toupper.o ft_word_counter.o \
ft_c_conj.o ft_c_diff.o ft_c_div.o ft_c_minus.o ft_c_mult.o ft_c_pow.o \
ft_c_set.o ft_c_sum.o

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

$(OBJ): %.o: %.c
	gcc $(FLAGS) $< -o $@

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all
