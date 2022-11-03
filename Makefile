# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dhendzel <dhendzel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/21 18:10:15 by dhendzel          #+#    #+#              #
#    Updated: 2022/11/03 12:34:41 by dhendzel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		= 	get_next_line.a

CC 		= 	cc

FLAGS		= 	-Wall -Wextra -Werror

SRC 		= 	get_next_line.c			\
                   	get_next_line_utils.c		\

OBJ 		= 	${SRC:.c=.o}


rere: 
	gcc -D BUFFER_SIZE=42 main.c get_next_line.c get_next_line.h get_next_line_utils.c

.PHONY: all clean fclean re bonus