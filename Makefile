# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lsomrat <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/22 20:22:18 by lsomrat           #+#    #+#              #
#    Updated: 2022/07/22 20:22:27 by lsomrat          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS	= -Wall -Wextra -Werror
NAME	= libftprintf.a
SRCS	= ft_isalpha.c \

# SRCS_B	= ft_lstnew.c \
# 	  ft_lstadd_front.c \
# 	  ft_lstlast.c \
# 	  ft_lstsize.c \
# 	  ft_lstadd_back.c \
# 	  ft_lstdelone.c \
# 	  ft_lstclear.c \
# 	  ft_lstiter.c \
# 	  ft_lstmap.c 

OBJS	= ${SRCS:.c=.o}

# OBJS_B    = ${SRCS_B:.c=.o}

%.o: %.c
	gcc ${FLAGS} -c $< -o $@
	
$(NAME): ${OBJS}
	ar rcs ${NAME} ${OBJS}

# bonus: ${OBJS_B}
# 	ar rcs ${NAME} ${OBJS_B}

# norminette:
# 	norminette ${SRCS} ${SRCS_B}

norminette:
	norminette ${SRCS}
	
all: ${NAME}

clean:
	rm -f ${OBJS}
	# rm -f ${OBJS} ${OBJS_B}

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: norminette all