# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dhendzel <dhendzel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/21 18:10:15 by dhendzel          #+#    #+#              #
#    Updated: 2022/10/21 18:41:59 by dhendzel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		= 	get_next_line.a

CC 		= 	cc

FLAGS		= 	-Wall -Wextra -Werror

SRC 		= 	get_next_line.c			\
                   	get_next_line_utils.c		\

OBJ 		= 	${SRC:.c=.o}

$(NAME): $(OBJ)
	$(CC) $(FLAGS) -c $(SRC)
	ar rc $(NAME) *.o

all: $(NAME)

bonus: $(BONUS_NAME)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME) $(BONUS_NAME)

re: fclean all

rere: 
	gcc -D BUFFER_SIZE=42 main.c get_next_line.c get_next_line.h get_next_line_utils.c

.PHONY: all clean fclean re bonus