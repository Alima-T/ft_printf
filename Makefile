# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aokhapki <aokhapki@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/27 19:52:49 by aokhapki          #+#    #+#              #
#    Updated: 2024/04/27 19:52:52 by aokhapki         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SOURCE		=	ft_printf.c \
				ft_print_int.c \
				ft_print_ch.c \
				ft_print_str.c \
				ft_print_hex_upper.c \
				ft_print_ptr.c 
				
OBJS			= $(SOURCE:.c=.o)
CC				= cc
RM				= rm -f
CFLAGS			= -Wall -Wextra -Werror
NAME			= libftprintf.a
all:			$(NAME)
$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)
clean:
				$(RM) $(OBJS)
fclean:			clean
				$(RM) $(NAME) $(OBJS)
re:				fclean $(NAME)
.PHONY:			all clean fclean re 
